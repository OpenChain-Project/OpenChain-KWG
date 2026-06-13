---
title: "모델·컨테이너 스캐너 (Lab700x, Trivy, Syft)"
linkTitle: "모델·컨테이너 스캐너"
weight: 30
type: docs
categories: ["guide"]
tags: ["AI SBOM", "보안", "도구"]
description: >
  AI 모델 바이너리와 추론 서버, AI 패키지를 분석하는 보안 스캐너의 주요 기능과 사용법을 소개한다.
---

이 페이지는 AI SBOM 생성을 보완하는 분석·식별 도구를 소개한다. 생성 도구(OWASP AIBOM
Generator, cdxgen)가 "무엇이 들어 있는가"를 기록한다면, 이 도구들은 "그것이 안전한가"와 "어떤
버전인가"를 본다. 아래 명령과 기능은 각 도구의 공식 문서를 기준으로 정리했다(이 가이드에서
실측한 도구는 [OWASP AIBOM Generator](../1-aibom-generator/)와 [cdxgen](../2-cdxgen/)이다).

## Lab700x AI SBOM Scanner — 모델 바이너리 정적 분석

AI 모델 파일 자체를 정적 분석해 정보를 추출하는 도구다. `.safetensors`, `.pt`(PyTorch),
`.pkl`(Pickle) 같은 모델 바이너리를 실행하지 않고 직접 들여다본다(deep introspection).

- **주요 기능**: 모델을 실행(Execute)하지 않고 내부 구조를 파악하므로, 모델 파일에 숨겨진 악성
  코드(Pickle 인젝션 등)나 취약점, 라이선스 위반 요소를 배포 전에 검출한다.
- **AI SBOM에서의 역할**: 외부에서 도입한 모델을 인입 게이트에서 검사하는 데 쓴다.
  [3.5 라이선스 의무](../../2-ai-extension/1-license-obligations/)의 인입 메타데이터 강제와
  결합하면, 메타데이터 검증과 바이너리 안전성 검사를 함께 수행할 수 있다.

Pickle 형식 모델은 역직렬화 시 임의 코드가 실행될 수 있어 공급망 위험이 크다. 모델을 실행하지
않고 검사한다는 점이 이 도구의 핵심이다.

## Trivy — LLM 추론 서버 컨테이너 스캔

Aqua Security의 오픈소스 스캐너로, 컨테이너 이미지와 파일시스템의 취약점을 점검한다. 최근 AI
모델 인프라 인식을 추가했다.

- **주요 기능**: Ollama, LocalAI 같은 LLM 추론 서버 컨테이너를 스캔해, 포함된 오픈소스 라이브러리와
  컨테이너 취약점을 수집한다.
- **사용법**:

```bash
# 컨테이너 이미지 스캔 (취약점)
trivy image ollama/ollama:latest

# SBOM(CycloneDX) 생성
trivy image --format cyclonedx --output sbom.json ollama/ollama:latest
```

AI 모델을 컨테이너로 배포하는 환경에서 추론 서버의 취약점과 구성요소를 SBOM으로 남기는 데 쓴다.

## Syft — AI 패키지와 가상환경 식별

Anchore의 SBOM 생성기로, 컨테이너와 파일시스템, 가상환경을 스캔한다.

- **주요 기능**: Python 가상환경을 분석해 PyTorch, Transformers 등 AI 가동에 쓰인 패키지의 정확한
  버전을 수집한다. SPDX와 CycloneDX 형식으로 출력한다.
- **사용법**:

```bash
# 디렉토리 스캔 후 CycloneDX 출력
syft scan dir:. -o cyclonedx-json=sbom.json

# 컨테이너 이미지 스캔
syft scan registry:python:3.11-slim -o spdx-json
```

cdxgen과 역할이 비슷하므로, 이미 Anchore 도구 모음(Syft, Grype)을 쓰는 조직이라면 Syft로 AI
애플리케이션의 의존성 SBOM을 생성하고 Grype로 취약점을 점검하는 조합이 자연스럽다.

## 도구 조합 권고

한 도구로 전부 해결되지 않는다. 실무에서는 역할을 나눠 조합한다.

| 목적 | 도구 |
|------|------|
| 모델 메타데이터 AIBOM 생성 | OWASP AIBOM Generator |
| 의존성 SBOM 생성 | cdxgen, Syft |
| 모델 바이너리 안전성 검사 | Lab700x AI SBOM Scanner |
| 추론 서버·컨테이너 취약점 | Trivy |
| SBOM 저장·취약점 모니터링 | [Dependency-Track](../../../tools/7-dependency-track/) |

## 참고

- AI SBOM 생성과 관리 절차: [3.9 AI SBOM](../../2-ai-extension/3-ai-sbom/)
- 생성 도구 실측: [OWASP AIBOM Generator](../1-aibom-generator/), [cdxgen](../2-cdxgen/)
