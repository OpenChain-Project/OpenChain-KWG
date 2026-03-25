---
title: "Syft"
weight: 6
type: docs
categories: ["guide"]
tags: ["Syft", "SBOM", "SPDX", "CycloneDX"]
---

Syft는 Anchore가 개발한 오픈소스 SBOM 생성 CLI 도구입니다.
컨테이너 이미지, 파일시스템, 아카이브를 스캔하여 포함된 패키지를 식별하고
SPDX 또는 CycloneDX 형식의 SBOM을 생성합니다.

- GitHub: <https://github.com/anchore/syft>
- 라이선스: Apache-2.0

## 주요 특징

- **다양한 스캔 대상**: 컨테이너 이미지(Docker, OCI), 로컬 파일시스템, tar 아카이브
- **폭넓은 생태계 지원**: Alpine(apk), Debian/Ubuntu(dpkg), RPM, Python, Java, Go, Node.js, Ruby, Rust 등
- **표준 출력 형식**: SPDX 2.2/2.3 (JSON·tag-value), CycloneDX 1.4/1.5 (JSON·XML), Syft JSON
- **Grype 연동**: Anchore의 취약점 스캐너 Grype와 자연스럽게 연동하여 SBOM 기반 취약점 분석 가능
- **빠른 설치**: 단일 바이너리 배포, 별도 런타임 불필요

## 설치 방법

### 스크립트 설치 (Linux/macOS)

```bash
curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin
```

### Homebrew (macOS)

```bash
brew install syft
```

### Docker

```bash
docker pull anchore/syft
```

## 기본 사용법

### (1) 컨테이너 이미지 스캔

```bash
# Docker 이미지 스캔 (SPDX JSON 출력)
syft ubuntu:22.04 -o spdx-json=sbom.spdx.json

# CycloneDX JSON 출력
syft ubuntu:22.04 -o cyclonedx-json=sbom.cdx.json
```

### (2) 로컬 디렉토리 스캔

```bash
syft dir:/path/to/project -o spdx-json=sbom.spdx.json
```

### (3) 표준 출력으로 결과 확인

```bash
# 터미널에서 패키지 목록 확인
syft ubuntu:22.04

# JSON 형식으로 표준 출력
syft ubuntu:22.04 -o json
```

### (4) Grype와 연동하여 취약점 스캔

```bash
# Syft로 SBOM 생성 후 Grype로 취약점 분석
syft ubuntu:22.04 -o json | grype
```

## CI/CD 연동 예시

```yaml
# GitHub Actions 예시
- name: Generate SBOM with Syft
  uses: anchore/sbom-action@v0
  with:
    image: myapp:latest
    format: spdx-json
    output-file: sbom.spdx.json
- name: Upload SBOM
  uses: actions/upload-artifact@v4
  with:
    name: sbom
    path: sbom.spdx.json
```

## 참고 자료

- Syft GitHub: <https://github.com/anchore/syft>
- Grype(취약점 스캐너): <https://github.com/anchore/grype>
- SPDX 표준: <https://spdx.dev/>
- CycloneDX 표준: <https://cyclonedx.org/>
