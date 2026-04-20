---
title: "OSV-SCALIBR"
weight: 4
type: docs
categories: ["guide"]
tags: ["OSV-SCALIBR", "SBOM", "취약점"]
---

OSV-SCALIBR (Open Source Vulnerabilities - Software Composition Analysis LIBRary)은
Google이 개발한 오픈소스 소프트웨어 구성 분석 도구입니다.
파일시스템, 컨테이너 이미지, 바이너리를 스캔하여 포함된 패키지를 식별하고,
[OSV(Open Source Vulnerabilities)](https://osv.dev/) 데이터베이스와 대조하여
알려진 취약점을 검출합니다. SPDX, CycloneDX 형식의 SBOM 생성도 지원합니다.

- GitHub: <https://github.com/google/osv-scalibr>
- 라이선스: Apache-2.0

## 1. 주요 특징

- **다양한 스캔 대상 지원**: 로컬 파일시스템, 컨테이너 이미지, 아카이브 파일
- **폭넓은 생태계 지원**: Go, Python, Java(Maven), JavaScript(npm), Rust, Ruby 등
- **OSV DB 연동**: 스캔 결과를 OSV 데이터베이스와 대조하여 CVE 등 취약점 정보 제공
- **다양한 SBOM 출력 형식**: SPDX 2.3, CycloneDX JSON 형식으로 결과 내보내기 가능
- **CLI 및 라이브러리 이중 제공**: 독립 실행 바이너리(CLI)와 Go 라이브러리 모두 제공

## 2. 설치 방법

Go 1.21 이상이 설치된 환경에서 아래 명령으로 설치합니다.

```bash
go install github.com/google/osv-scalibr/binary/scalibr@latest
```

설치 후 바이너리는 `$(go env GOPATH)/bin/scalibr` 경로에 위치합니다.
PATH에 `$(go env GOPATH)/bin`이 포함되어 있으면 `scalibr` 명령으로 바로 실행할 수 있습니다.

또는 소스에서 직접 빌드할 수 있습니다.

```bash
git clone https://github.com/google/osv-scalibr.git
cd osv-scalibr
go build -o scalibr ./binary/scalibr/...
```

## 3. 기본 사용법

OSV-SCALIBR은 서브커맨드 없이 플래그(flag) 방식으로 실행합니다.

#### (1) 파일시스템 스캔

```bash
# 현재 디렉토리 스캔 후 결과 파일 생성
scalibr --root=. --result=result.textproto

# SPDX JSON 형식으로 SBOM 생성
scalibr --root=/path/to/project -o spdx23-json=sbom.spdx.json

# CycloneDX JSON 형식으로 SBOM 생성
scalibr --root=/path/to/project -o cdx-json=sbom.cdx.json

# 여러 형식 동시 출력
scalibr --root=/path/to/project \
  --result=result.textproto \
  -o spdx23-json=sbom.spdx.json \
  -o cdx-json=sbom.cdx.json
```

#### (2) 컨테이너 이미지 스캔

```bash
# 원격 이미지 스캔
scalibr --remote-image=ubuntu:22.04 --result=result.textproto -o cdx-json=sbom.cdx.json

# 로컬 Docker 이미지 스캔 (docker image ls 에 표시되는 이미지)
scalibr --image-local-docker=ubuntu:22.04 --result=result.textproto
```

#### (3) 결과 확인

```bash
# CycloneDX JSON 결과에서 컴포넌트 목록 조회
cat sbom.cdx.json | jq '.components[].name'

# SPDX JSON 결과에서 패키지 목록 조회
cat sbom.spdx.json | jq '.packages[].name'
```

## 4. 활용 시나리오

OSV-SCALIBR은 CI/CD 파이프라인에 통합하여 빌드·배포 단계에서 자동으로
취약점을 검출하는 데 적합합니다.

```yaml
# GitHub Actions 예시
- name: Install OSV-SCALIBR
  run: go install github.com/google/osv-scalibr/binary/scalibr@latest

- name: Run OSV-SCALIBR
  run: |
    scalibr --root=. -o cdx-json=sbom.cdx.json --result=result.textproto

- name: Upload SBOM
  uses: actions/upload-artifact@v4
  with:
    name: sbom
    path: sbom.cdx.json
```

## 5. 참고 자료

- OSV-SCALIBR GitHub: <https://github.com/google/osv-scalibr>
- OSV 데이터베이스: <https://osv.dev/>
- SPDX 공식 사이트: <https://spdx.dev/>
- CycloneDX 공식 사이트: <https://cyclonedx.org/>
