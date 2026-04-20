---
title: "FOSSLight"
weight: 3
type: docs
categories: ["guide"]
tags: ["FOSSLight", "SBOM", "의존성", "라이선스", "컴플라이언스"]
---

FOSSLight는 LG Electronics가 주도하는 오픈소스 컴플라이언스 도구 모음입니다.
소스 코드·의존성·바이너리를 분석하는 **FOSSLight Scanner**와,
분석 결과를 중앙에서 관리하는 웹 플랫폼 **FOSSLight Hub**로 구성됩니다.

- GitHub (Hub): <https://github.com/fosslight/fosslight>
- GitHub (Scanner): <https://github.com/fosslight/fosslight_scanner>
- 공식 문서: <https://fosslight.org/fosslight-guide/>
- 라이선스: AGPL-3.0-only

## 주요 특징

### FOSSLight Hub

- **컴플라이언스 프로세스 통합 관리**: 프로젝트별 BOM 관리, 라이선스 의무사항 이행, 공지문 생성까지 일괄 처리
- **취약점 모니터링**: NVD·CVE 연동으로 사용 중인 오픈소스의 취약점 현황 추적
- **3rd Party 관리**: 외부 소프트웨어 공급망의 오픈소스 현황 등록 및 관리
- **SBOM 관리**: SPDX(ISO 표준) 형식 지원

### FOSSLight Dependency Scanner

- **14개 이상의 패키지 매니저 지원**: NPM, Yarn, Maven, Gradle, PyPI, Go, Cargo, NuGet, CocoaPods 등
- **자동 감지**: manifest 파일을 자동으로 탐지하여 분석
- **직·간접 의존성 분석**: 전이적 의존성까지 재귀적으로 수집
- **다양한 출력 형식**: Excel, SPDX, CycloneDX, YAML, CSV

## FOSSLight Hub 설치

Docker Compose를 사용합니다. 공식 저장소를 clone하여 실행합니다.

```bash
# 저장소 clone
git clone https://github.com/fosslight/fosslight.git
cd fosslight

# 실행 (db + web 서비스만 기동)
docker compose up -d db web
```

기본적으로 웹 UI는 포트 **8180**에서 실행됩니다.

> **첫 실행 시** DB 초기화와 애플리케이션 기동에 1~2분 소요됩니다.
> `docker compose logs -f web` 으로 기동 상태를 확인할 수 있습니다.

### 초기 로그인

브라우저에서 `http://localhost:8180` 접속 후 아래 계정으로 로그인합니다.

| 항목 | 값 |
|------|-----|
| ID | `admin` |
| Password | `admin` |

> 최초 로그인 후 비밀번호를 즉시 변경하세요.
> 기능을 먼저 체험하려면 [데모 사이트](https://demo.fosslight.org/)를 이용할 수 있습니다.

### 서버 관리

```bash
# 중지
docker compose stop db web

# 재시작
docker compose start db web

# 완전 종료 (볼륨 유지)
docker compose down
```

## FOSSLight Dependency Scanner 설치 및 사용

Python 3.10 이상 환경에서 설치합니다. virtualenv 사용을 권장합니다.

```bash
pip3 install fosslight_dependency
```

### 기본 사용법

```bash
# 현재 디렉토리 분석 (패키지 매니저 자동 감지)
fosslight_dependency

# 경로 지정 분석
fosslight_dependency -p /path/to/project

# 출력 형식 지정 (excel/csv/yaml/spdx-json/cyclonedx-json)
fosslight_dependency -p /path/to/project -f yaml -o ./output

# 특정 경로 제외
fosslight_dependency -p /path/to/project -e "test/" "node_modules/"
```

분석 결과는 `fosslight_report_dep_[날짜시간].xlsx` 파일로 저장됩니다.

### 패키지 매니저별 사전 조건

일부 패키지 매니저는 분석 전 빌드 도구 설치가 필요합니다.

| 패키지 매니저 | 사전 조건 |
|-------------|---------|
| NPM / Yarn | `npm install -g license-checker` |
| Gradle | `./gradlew downloadLicenses` 실행 |
| Maven | Maven 3.5.4+, Java 11+ |
| Go / Cargo / Helm | 별도 조건 없음 |
| CocoaPods | macOS, `pod install` 완료 |

### FOSSLight Hub와의 연동 흐름

```
fosslight_dependency 실행
    → SBOM 파일(xlsx/spdx/cyclonedx) 생성
        → FOSSLight Hub에 프로젝트 생성
            → 스캔 결과 업로드
                → 라이선스·취약점 현황 확인
```

## 참고 자료

- FOSSLight Hub 가이드: <https://fosslight.org/hub-guide/>
- FOSSLight Scanner 가이드: <https://fosslight.org/fosslight-guide/>
- 데모 사이트: <https://demo.fosslight.org/>
- FOSSLight GitHub: <https://github.com/fosslight>
