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
알려진 취약점을 검출합니다. SPDX 형식의 SBOM 생성도 지원합니다.

- GitHub: <https://github.com/google/osv-scalibr>
- 라이선스: Apache-2.0

### 1. 주요 특징

- **다양한 스캔 대상 지원**: 로컬 파일시스템, 컨테이너 이미지, 아카이브 파일
- **폭넓은 생태계 지원**: Go, Python, Java(Maven), JavaScript(npm), Rust, Ruby 등
- **OSV DB 연동**: 스캔 결과를 OSV 데이터베이스와 대조하여 CVE 등 취약점 정보 제공
- **SBOM 출력**: SPDX 2.3 형식으로 결과 내보내기 가능
- **CLI 및 라이브러리 이중 제공**: 독립 실행 바이너리(CLI)와 Go 라이브러리 모두 제공

### 2. 설치 방법

Go 1.21 이상이 설치된 환경에서 아래 명령으로 빌드합니다.

```bash
git clone https://github.com/google/osv-scalibr.git
cd osv-scalibr
go build -o scalibr ./binary/cli/...
```

또는 [Releases 페이지](https://github.com/google/osv-scalibr/releases)에서
사전 빌드된 바이너리를 내려받아 사용할 수 있습니다.

### 3. 기본 사용법

#### (1) 파일시스템 스캔

```bash
# 현재 디렉토리 스캔 후 취약점 결과 출력
./scalibr scan --result=result.json /path/to/project

# SPDX 형식으로 SBOM 생성
./scalibr scan --output=sbom.spdx.json /path/to/project
```

#### (2) 컨테이너 이미지 스캔

```bash
./scalibr scan --image=ubuntu:22.04 --result=result.json
```

#### (3) 결과 확인

```bash
# JSON 결과 파일에서 취약점 목록 조회
cat result.json | jq '.findings[].adv.id'
```

### 4. 활용 시나리오

OSV-SCALIBR은 CI/CD 파이프라인에 통합하여 빌드·배포 단계에서 자동으로
취약점을 검출하는 데 적합합니다.

```yaml
# GitHub Actions 예시
- name: Run OSV-SCALIBR
  run: |
    ./scalibr scan --result=result.json .
    # 취약점 발견 시 빌드 실패
    jq -e '.findings | length == 0' result.json
```

### 5. 참고 자료

- OSV-SCALIBR GitHub: <https://github.com/google/osv-scalibr>
- OSV 데이터베이스: <https://osv.dev/>
- SPDX 공식 사이트: <https://spdx.dev/>
