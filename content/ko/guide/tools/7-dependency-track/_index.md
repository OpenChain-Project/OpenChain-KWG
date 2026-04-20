---
title: "Dependency-Track"
weight: 7
type: docs
categories: ["guide"]
tags: ["Dependency-Track", "SBOM", "취약점", "CycloneDX"]
---

Dependency-Track은 OWASP가 관리하는 오픈소스 SBOM 관리 및 취약점 분석 플랫폼입니다.
업로드된 SBOM(CycloneDX, SPDX)을 기반으로 컴포넌트별 취약점을 지속적으로 모니터링하고,
정책 위반 여부를 자동으로 평가합니다.

- GitHub: <https://github.com/DependencyTrack/dependency-track>
- 공식 문서: <https://docs.dependencytrack.org/>
- 라이선스: Apache-2.0

## 주요 특징

- **SBOM 기반 지속 모니터링**: SPDX 및 CycloneDX 형식의 SBOM을 업로드하면 컴포넌트별 최신 취약점을 자동으로 추적
- **다양한 취약점 데이터소스 연동**: NVD, OSV, GitHub Advisories, VulnDB 등
- **정책 엔진**: 라이선스 정책, 취약점 심각도 기준, 컴포넌트 사용 가능 여부를 규칙으로 정의하여 자동 평가
- **REST API**: CI/CD 파이프라인과 통합하여 빌드 시 SBOM을 자동 업로드하고 결과를 피드백
- **웹 UI 대시보드**: 프로젝트별 위험 점수, 취약점 현황, 라이선스 분포를 한눈에 파악
- **알림**: Slack, 이메일, Webhook 등 다양한 채널로 신규 취약점 알림 발송

## 설치 방법

Docker Compose를 사용하는 방법이 가장 간편합니다.

```bash
# 공식 Docker Compose 파일 다운로드
curl -LO https://raw.githubusercontent.com/DependencyTrack/dependency-track/HEAD/src/main/docker/docker-compose.yml

# 실행
docker compose up -d
```

기본적으로 API 서버는 포트 8081, 프론트엔드는 포트 8080에서 실행됩니다.
초기 관리자 계정: `admin` / `admin` (최초 로그인 후 즉시 변경 필요)

## 기본 사용법

### (1) 웹 UI에서 프로젝트 생성 및 SBOM 업로드

1. `http://localhost:8080` 접속
2. **Projects** → **Create Project** 클릭
3. 프로젝트 이름·버전 입력 후 저장
4. 해당 프로젝트 → **Components** 탭 → **Upload BOM** 클릭
5. SBOM 파일(`.cdx.json` 또는 `.spdx.json`) 업로드

업로드 후 Dependency-Track이 자동으로 취약점 분석을 시작합니다.

### (2) API를 통한 SBOM 업로드 (CI/CD 연동)

```bash
# API Key는 Administration > Access Management > Teams에서 발급
API_KEY="your-api-key"
PROJECT_UUID="your-project-uuid"

curl -X PUT \
  "http://localhost:8081/api/v1/bom" \
  -H "X-Api-Key: ${API_KEY}" \
  -H "Content-Type: multipart/form-data" \
  -F "project=${PROJECT_UUID}" \
  -F "bom=@sbom.cdx.json"
```

### (3) GitHub Actions 연동 예시

```yaml
- name: Upload SBOM to Dependency-Track
  uses: DependencyTrack/gh-upload-sbom@v3
  with:
    serverhostname: dependency-track.example.com
    apikey: ${{ secrets.DT_API_KEY }}
    project: ${{ secrets.DT_PROJECT_UUID }}
    bomfilename: sbom.cdx.json
```

## cdxgen / Syft와 함께 사용하기

Dependency-Track은 SBOM 생성 도구(cdxgen, Syft)와 함께 사용할 때 가장 효과적입니다.

```
cdxgen 또는 Syft  →  SBOM 생성  →  Dependency-Track 업로드  →  지속 모니터링
```

- SBOM 생성: [cdxgen](../5-cdxgen/) 또는 [Syft](../6-syft/)로 빌드 시 SBOM 생성
- 중앙 관리: Dependency-Track에 업로드하여 전사 프로젝트 취약점 현황 통합 관리

cdxgen과 Dependency-Track을 조합하여 라이선스 정책 및 취약점 모니터링 환경을 처음부터 구축하는 방법은 [오픈소스 관리 자동화 환경 구성: cdxgen + Dependency-Track](../8-cdxgen-dt/)을 참조하시기 바랍니다.

## 참고 자료

- Dependency-Track 공식 문서: <https://docs.dependencytrack.org/>
- Dependency-Track GitHub: <https://github.com/DependencyTrack/dependency-track>
- CycloneDX 표준: <https://cyclonedx.org/>
