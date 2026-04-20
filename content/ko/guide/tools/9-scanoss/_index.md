---
title: "SCANOSS"
weight: 9
type: docs
categories: ["guide"]
tags: ["SCANOSS", "SCA", "SBOM"]
---

SCANOSS는 오픈소스 컴포넌트를 파일 단위뿐 아니라 **스니펫(코드 조각) 단위**까지 식별할 수 있는
소프트웨어 구성 분석(SCA) 도구입니다.
1억 개 이상의 파일을 인덱싱한 지식베이스(OSSKB, Open Source Knowledge Base)와
대조하여 라이선스·저작권 정보를 검출하고, CycloneDX·SPDX 형식의 SBOM을 자동으로 생성합니다.

- GitHub: <https://github.com/scanoss>
- 공식 사이트: <https://www.scanoss.com>
- 라이선스: Apache-2.0

## 1. 주요 특징

- **스니펫 수준 매칭**: 파일 전체가 아닌 코드 일부를 복사·수정한 경우도 출처 추적 가능
- **대규모 지식베이스**: OSSKB에 1억 개 이상의 오픈소스 파일 인덱싱 — 주요 패키지 저장소와 GitHub 커버
- **SBOM 자동 생성**: CycloneDX(JSON/XML) 및 SPDX 형식 출력 지원
- **CLI & REST API 이중 제공**: `scanoss-py`(Python) CLI와 REST API를 모두 지원하여 자동화 통합이 용이
- **CI/CD 파이프라인 통합**: GitHub Actions 등 CI 환경에서 커맨드 한 줄로 스캔 가능

## 2. 설치 방법

Python 3.8 이상 환경에서 pip로 설치합니다.

```bash
pip install scanoss
```

설치 확인:

```bash
scanoss-py --version
```

## 3. 기본 사용법

#### (1) 디렉토리 스캔

```bash
# 현재 디렉토리 스캔 후 결과를 JSON으로 저장
scanoss-py scan . --output results.json
```

#### (2) SBOM 생성 (CycloneDX)

```bash
# 스캔 결과를 CycloneDX JSON 형식의 SBOM으로 변환
scanoss-py component crypto --input results.json --format cyclonedx --output sbom.json
```

#### (3) 결과 확인

```bash
# 검출된 컴포넌트 목록 조회
cat results.json | python3 -c "
import json, sys
data = json.load(sys.stdin)
for f, matches in data.items():
    for m in matches:
        if m.get('id') != 'none':
            print(f\"{f}: {m.get('component','?')} ({m.get('licenses','?')})\")"
```

## 4. CI/CD 연동

GitHub Actions에서 스캔을 자동화하는 예시입니다.

```yaml
# .github/workflows/scanoss.yml
name: SCANOSS License Scan

on: [push, pull_request]

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Install SCANOSS
        run: pip install scanoss
      - name: Run scan
        run: scanoss-py scan . --output results.json
      - name: Generate SBOM
        run: scanoss-py component crypto --input results.json --format cyclonedx --output sbom.json
      - name: Upload SBOM
        uses: actions/upload-artifact@v4
        with:
          name: sbom
          path: sbom.json
```

## 5. 참고 자료

- SCANOSS GitHub: <https://github.com/scanoss>
- SCANOSS 공식 문서: <https://docs.scanoss.com>
- OSSKB 지식베이스: <https://osskb.org>
- CycloneDX 공식 사이트: <https://cyclonedx.org>
