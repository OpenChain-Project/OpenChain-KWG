---
title: "cdxgen"
weight: 20
type: docs
categories: ["guide"]
tags: ["AI SBOM", "cdxgen", "CycloneDX", "도구"]
description: >
  프로젝트와 모델에서 CycloneDX SBOM을 생성하는 OWASP cdxgen의 AI BOM 모드 사용법을 실행
  출력과 함께 안내한다.
---

## 개요

cdxgen은 OWASP CycloneDX 프로젝트의 공식 SBOM 생성기다. 20개 이상의 언어와 패키지 매니저를
지원하고, 최신 버전에서 AI BOM 전용 모드를 제공한다. AI 애플리케이션의 의존성(PyTorch,
Transformers 등)을 자동으로 식별하며, CI/CD 파이프라인에 연동하기 좋다.

AI SBOM 관점에서 cdxgen의 강점은 속도와 자동화다. 약점은 라이선스 정보를 기본 실행에서 채우지
않는다는 점이다. 아래 실행 결과에서 이 특성이 드러난다. OWASP AIBOM Generator가 모델 카드 메타데이터
중심이라면, cdxgen은 코드와 의존성 중심이다. 둘을 함께 쓰면 모델과 의존성을 모두 다룬다.

## 주요 기능

- 소스 코드와 컨테이너 이미지에서 의존성을 식별해 CycloneDX SBOM을 생성한다.
- AI BOM 모드(`-t ai`)로 AI/ML 메타데이터(formulation)를 포함한다.
- Hugging Face 모델 URL, Modelfile, GGUF 아티팩트를 직접 입력으로 받는다.
- Dependency-Track 서버에 SBOM을 자동 제출해 지속 관리할 수 있다.

## 설치

```bash
# 일회성 실행 (Node.js 필요)
npx @cyclonedx/cdxgen@latest --version

# 전역 설치
npm install -g @cyclonedx/cdxgen
```

## 사용법 — AI BOM 생성

AI 프로젝트 디렉토리에서 AI BOM 모드로 실행한다.

```bash
# AI BOM 생성
cdxgen -t ai -o aibom.json .

# AI/ML 메타데이터(formulation)를 포함해 생성
cdxgen -t ai --include-formulation -o aibom.json .
```

아래는 사전학습 모델(`facebook/bart-large-cnn`)을 불러오는 요약 앱(`transformers`, `torch`
의존)에 cdxgen을 실제로 돌린 결과다. 의존성 5건을 자동 식별해 CycloneDX 1.7 BOM을 만든다.

```text
$ cdxgen -t python --include-formulation -o aibom.json .
CycloneDX Generator 12.5.1 (Node.js)

생성된 components — 5건 (CycloneDX 1.7):
  transformers     4.44.2    pkg:pypi/transformers@4.44.2      license: 비어 있음
  torch            2.4.0     pkg:pypi/torch@2.4.0             license: 비어 있음
  numpy            1.26.4    pkg:pypi/numpy@1.26.4            license: 비어 있음
  tokenizers       0.19.1    pkg:pypi/tokenizers@0.19.1       license: 비어 있음
  huggingface-hub  0.24.6    pkg:pypi/huggingface-hub@0.24.6   license: 비어 있음
```

**그림 1.** cdxgen 실행 출력 *(cdxgen 12.5.1, 실행 2026-06-13)*

생성된 컴포넌트 한 건은 다음과 같다. 식별 근거(evidence)는 채워지지만 `licenses` 필드는 비어
있다.

```json
{
  "name": "transformers",
  "version": "4.44.2",
  "purl": "pkg:pypi/transformers@4.44.2",
  "type": "library",
  "evidence": {
    "identity": [
      { "field": "purl", "confidence": 0.5,
        "methods": [{ "technique": "manifest-analysis", "value": "requirements.txt" }] }
    ]
  }
}
```

## 실행 결과가 보여주는 것

{{% alert title="cdxgen은 식별이 빠르되 라이선스는 사람이 보강한다" color="warning" %}}
cdxgen은 `requirements.txt`에서 의존성 5건을 빠르게 식별했지만, 각 컴포넌트의 `licenses` 필드가
비어 있다. 또 앱이 불러오는 사전학습 모델 `facebook/bart-large-cnn`은 코드 스캔만으로는 BOM에
잡히지 않았다. 인바운드 자재로 별도 수집해 추가해야 한다. cdxgen으로 의존성 골격을 빠르게 만든
뒤, 라이선스는 사람이 확인해 채우고 모델은 OWASP AIBOM Generator로 별도 생성해 병합하는 조합이
현실적이다.
{{% /alert %}}

## 참고

- AI SBOM 생성과 관리 절차: [3.9 AI SBOM](../../2-ai-extension/3-ai-sbom/)
- 모델 메타데이터 중심 생성기: [OWASP AIBOM Generator](../1-aibom-generator/)
- SBOM 관리: [Dependency-Track](../../../tools/7-dependency-track/), [cdxgen + Dependency-Track 연동](../../../tools/8-cdxgen-dt/)
- 공식: [cdxgen AI-BOM 문서](https://github.com/cdxgen/cdxgen/blob/master/docs/AI_BOM.md)
