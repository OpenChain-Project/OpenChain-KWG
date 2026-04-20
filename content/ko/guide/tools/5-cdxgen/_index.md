---
title: "cdxgen"
weight: 5
type: docs
categories: ["guide"]
tags: ["cdxgen", "SBOM", "CycloneDX"]
---

cdxgen은 OWASP(Open Web Application Security Project)가 관리하는 오픈소스 SBOM 생성 도구입니다.
소스 코드, 빌드 결과물, 컨테이너 이미지를 분석하여 [CycloneDX](https://cyclonedx.org/) 형식의
SBOM을 자동으로 생성합니다.

- GitHub: <https://github.com/CycloneDX/cdxgen>
- 라이선스: Apache-2.0

## 주요 특징

- **광범위한 언어·생태계 지원**: Java(Maven/Gradle), Node.js, Python, Go, Rust, PHP, Ruby, .NET 등 20개 이상
- **다양한 스캔 대상**: 소스 코드 디렉토리, 컨테이너 이미지, GitHub 저장소
- **CycloneDX 표준 출력**: CycloneDX 1.4/1.5/1.6 JSON 및 XML 형식 지원
- **REPL 모드**: 대화형 인터페이스로 SBOM 탐색 및 조회 가능
- **CI/CD 통합**: GitHub Actions, GitLab CI 등 주요 파이프라인과 쉽게 연동

## 설치 방법

Node.js 18 이상이 설치된 환경에서 아래 명령으로 설치합니다.

```bash
npm install -g @cyclonedx/cdxgen
```

또는 Docker 이미지를 사용할 수 있습니다.

```bash
docker pull ghcr.io/cyclonedx/cdxgen
```

## 기본 사용법

> **참고**: 환경변수에 API 키가 설정된 경우 `SECURE MODE` 경고 메시지가 출력될 수 있습니다. 이는 빌드 도구가 환경변수를 읽을 수 있음을 알리는 정보성 메시지로, 스캔 결과에는 영향을 주지 않습니다.

### (1) 소스 코드 디렉토리 스캔

```bash
# 현재 디렉토리 스캔 후 CycloneDX JSON SBOM 생성
cdxgen -o sbom.json .

# 언어 명시 스캔 (자동 감지 실패 시)
cdxgen -t java -o sbom.json /path/to/project
```

### (2) 컨테이너 이미지 스캔

```bash
cdxgen -t docker -o sbom.json ubuntu:22.04
```

### (3) GitHub 저장소 스캔

```bash
cdxgen -t github -o sbom.json https://github.com/org/repo
```

### (4) REPL 모드로 SBOM 탐색

```bash
cdxgen --repl -o sbom.json .
```

## CI/CD 연동 예시

```yaml
# GitHub Actions 예시
- name: Generate SBOM with cdxgen
  run: |
    npm install -g @cyclonedx/cdxgen
    cdxgen -o sbom.json .
- name: Upload SBOM
  uses: actions/upload-artifact@v4
  with:
    name: sbom
    path: sbom.json
```

## 참고 자료

- cdxgen GitHub: <https://github.com/CycloneDX/cdxgen>
- CycloneDX 표준: <https://cyclonedx.org/>
- OWASP CycloneDX: <https://owasp.org/www-project-cyclonedx/>
