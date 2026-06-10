---
title: "도구 구축 레시피"
linkTitle: "도구 구축 레시피"
weight: 40
type: docs
categories: ["guide"]
tags: ["금융", "오픈소스", "도구", "Dependency-Track", "폐쇄망"]
description: >
  폐쇄망 온프레미스 환경에서 SBOM 생성과 지속 취약점 감시를 구축하는 docker-compose 예제와
  연동 절차다. cdxgen으로 SBOM을 만들어 Dependency-Track에 등록하는 흐름을 보여 준다.
---

이 레시피는 폐쇄망에서 SBOM(Software Bill of Materials) 생성과 지속 취약점 감시를 구축하는
예제다. 빠른 출발점으로 기존 [cdxgen과 Dependency-Track 파이프라인 튜토리얼](../../../tools/8-cdxgen-dt/)을
금융권 기준으로 정리했다. 특정 제품을 권하기보다, 오픈소스·온프레미스 도구로 구축하는 방법을
보여 주는 것이 목적이다.

{{% alert title="폐쇄망 전제" color="warning" %}}
아래 예제는 도구 이미지를 내려받는 단계를 포함한다. 폐쇄망에서는 이미지와 취약점
데이터베이스를 외부에서 받아 사내 컨테이너 레지스트리와 미러로 옮긴 뒤 내부에서만 받도록
구성한다. 반입 절차는 [폐쇄망 운영](../../0-closed-network/#반입-통제)을 참고한다.
{{% /alert %}}

## Dependency-Track 구축

[Dependency-Track](../../../tools/7-dependency-track/)은 SBOM을 등록해 두면 취약점
데이터베이스가 갱신될 때마다 영향받는 컴포넌트를
자동으로 다시 평가한다. 운영 시스템의 지속 모니터링에 쓴다. 아래는 API 서버와 프런트엔드를
함께 띄우는 docker-compose 예제다.

```yaml
# docker-compose.yml
volumes:
  dependency-track:

services:
  dtrack-apiserver:
    image: dependencytrack/apiserver:latest
    deploy:
      resources:
        limits:
          memory: 12288m
        reservations:
          memory: 8192m
    ports:
      - "8081:8080"
    volumes:
      - "dependency-track:/data"
    restart: unless-stopped

  dtrack-frontend:
    image: dependencytrack/frontend:latest
    depends_on:
      - dtrack-apiserver
    environment:
      - API_BASE_URL=http://localhost:8081
    ports:
      - "8080:8080"
    restart: unless-stopped
```

폐쇄망에서는 `image` 값을 사내 레지스트리 주소로 바꾼다. 예를 들어 `dependencytrack/apiserver:latest`
대신 `registry.internal/dependencytrack/apiserver:4.x`처럼 사내에 미러링한 이미지를 가리킨다.
버전 태그는 `latest` 대신 검증한 고정 버전을 쓰는 것이 안전하다.

`API_BASE_URL`은 사용자의 브라우저가 API 서버를 호출할 때 쓰는 주소이므로, 사내 서버에
올릴 때는 `localhost` 대신 그 서버의 호스트명으로 바꾼다(예: `http://dtrack.internal:8081`).

띄운 뒤 접속해 첫 관리자 비밀번호를 바꾸고, SBOM 업로드에 쓸 API 키를 발급한다.

```bash
# 서비스를 올린다
docker compose up -d

# 상태를 확인한다
docker compose ps
```

환경에 따라 `docker compose`(플러그인) 대신 `docker-compose`(하이픈) 명령을 써야 할 수 있다.
하이픈 명령(구버전 v1)은 예제의 `deploy.resources` 메모리 제한을 무시하므로, 제한을
적용하려면 `--compatibility` 옵션을 함께 준다.

![구축 후 Dependency-Track 대시보드 화면](./dt-dashboard.png)

*그림: 구축을 마치고 SBOM을 등록하면 보게 되는 Dependency-Track 대시보드. 화면은
[cdxgen·Dependency-Track 튜토리얼](../../../tools/8-cdxgen-dt/)의 캡처를 재사용했다.
계정 설정과 API 키 발급의 단계별 화면도 그 튜토리얼에 있다.*

## SBOM 생성과 등록 연동

[cdxgen](../../../tools/5-cdxgen/)으로 프로젝트의 SBOM을 만들고, 그 결과를 Dependency-Track에 업로드한다. 업로드된 SBOM은
이후 취약점 데이터베이스가 갱신될 때마다 자동으로 재평가된다. cdxgen은 언어 생태계에 따라
의존성을 해석하면서 빌드 도구와 패키지 저장소에 접근하므로, 폐쇄망에서는 npm·Maven 등의
저장소 설정이 사내 미러를 가리키도록 해 둔 상태에서 실행한다.

```bash
# 1) cdxgen으로 CycloneDX 형식 SBOM을 생성한다
#    -r 은 하위 디렉터리의 여러 매니페스트를 재귀로 수집한다
cdxgen --spec-version 1.6 -r -o sbom.json /path/to/project

# 2) Dependency-Track 프로젝트에 SBOM을 업로드한다
curl -X POST "http://localhost:8081/api/v1/bom" \
  -H "X-Api-Key: ${DT_API_KEY}" \
  -F "projectName=my-service" \
  -F "projectVersion=1.0.0" \
  -F "autoCreate=true" \
  -F "bom=@sbom.json"
```

cdxgen 최신 버전은 CycloneDX 1.7을 기본으로 생성하는데, Dependency-Track 버전에 따라 1.6까지만
받는 경우가 있다. 업로드가 거부되면 위처럼 `--spec-version 1.6`을 지정해 형식을 맞춘다.
`autoCreate=true`는 같은 이름·버전의 프로젝트가 없으면 새로 만든다. 운영 시스템마다 프로젝트를
두고 SBOM을 등록하면, 신규 취약점이 공개될 때 영향받는 시스템을 한곳에서 파악할 수 있다. 이 흐름은
[관리](../../5-manage/#지속-취약점-모니터링)에서 다룬 지속 모니터링을 구현한 것이다.

## 오프라인 취약점 데이터베이스

폐쇄망에서는 Dependency-Track이 참조하는 취약점 데이터 소스의 주소를 관리 화면에서 내부
미러로 바꿔 구성한다. 데이터 소스별 미러 구성의 난도와 사전 검증, 명령줄 점검 도구(Grype,
Trivy)의 캐시 반입 방식은
[폐쇄망 운영의 오프라인 취약점 관리](../../0-closed-network/#오프라인-취약점-관리)에서 다룬다.

## 도구 선택 기준

이 레시피는 cdxgen과 Dependency-Track을 예로 들었으나, 같은 일을 하는 다른 오픈소스 도구로
바꿔도 된다. 도구를 고를 때는 [폐쇄망 운영](../../0-closed-network/#폐쇄망에-맞는-도구-선택)에서
제시한 기준(온프레미스 설치, 오프라인 데이터베이스 갱신, 표준 형식 입출력, 도구 자체의 라이선스)을
따른다. 도구별 설치와
사용법은 [도구 페이지](../../../tools/)에 정리돼 있다.

---

*최종 검토일: 2026-06-10. 이 페이지는 규제 변화 시, 그리고 연 1회 정기적으로 재검토한다.*
