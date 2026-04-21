---
title: "7. AI 컴플라이언스"
linkTitle: "7. AI 컴플라이언스"
weight: 70
type: docs
categories: ["guide"]
tags: ["AI 컴플라이언스", "ISO/IEC 42001", "AI SBOM", "AI 공급망"]
description: >
  AI 시스템을 개발·운영하는 기업이 오픈소스 관점에서 고려해야 할 AI 컴플라이언스 요소를 설명한다.
  ISO/IEC 42001 AI 관리 시스템 표준의 오픈소스 교차 요구사항을 중심으로 안내한다.
---

AI 시스템은 오픈소스 프레임워크, 사전 훈련된 모델, 오픈 데이터셋을 광범위하게 활용한다.
오픈소스 관리 체계(ISO/IEC 5230 · 18974)를 운영하는 기업은 AI 시스템 개발 단계에서도
오픈소스 컴플라이언스 원칙을 적용해야 한다.
또한 AI 코딩 도구(GitHub Copilot, Claude Code, Cursor 등)를 활용하는 개발 환경에서도
라이선스 혼입과 취약 패키지 도입에 대한 새로운 관리 체계가 필요하다.

ISO/IEC 42001(AI 관리 시스템)은 AI 거버넌스 전반을 다루며, 그 중 일부 조항이
오픈소스 관리와 직접 교차한다. 이 섹션은 그 교차점을 실무 관점에서 정리한다.

---

## AI 시스템에서 오픈소스가 사용되는 세 가지 영역

```
AI 시스템
  ├── 1. AI 프레임워크 · 라이브러리
  │       (PyTorch, TensorFlow, Hugging Face Transformers, LangChain 등)
  │       → 일반 오픈소스 라이선스 컴플라이언스 적용
  │
  ├── 2. 사전 훈련 모델 (Pre-trained Model)
  │       (Llama, Mistral, Falcon, BERT 등)
  │       → 모델별 커스텀 라이선스 확인 필요
  │
  └── 3. 학습 데이터셋
          (Common Crawl, Wikipedia, CC-BY 데이터셋 등)
          → 오픈 데이터 라이선스 의무 이행
```

각 영역별로 기존 오픈소스 컴플라이언스 프로세스와 다른 지점이 있으므로 아래를 참고한다.

---

## 1. AI 프레임워크 · 라이브러리 관리

AI 개발에 사용하는 오픈소스 프레임워크와 라이브러리는 일반 소프트웨어와 동일하게
ISO/IEC 5230의 오픈소스 관리 프로세스를 적용한다.

### 주요 AI 프레임워크 라이선스

| 프레임워크 | 라이선스 | 상업적 사용 | 주요 의무 |
|-----------|---------|:----------:|---------|
| PyTorch | BSD 3-Clause | ✅ 가능 | 저작권 표시 |
| TensorFlow | Apache 2.0 | ✅ 가능 | 저작권 표시, 변경 고지 |
| Hugging Face Transformers | Apache 2.0 | ✅ 가능 | 저작권 표시 |
| LangChain | MIT | ✅ 가능 | 저작권 표시 |
| scikit-learn | BSD 3-Clause | ✅ 가능 | 저작권 표시 |

### 체크포인트

{{% alert title="ISO/IEC 5230 · 18974 적용" color="success" %}}
- SBOM에 모든 AI 프레임워크·라이브러리와 버전을 포함한다
- 각 프레임워크의 라이선스 의무(저작권 고지, 변경 고지 등)를 이행한다
- FOSSology, FOSSLight 등 기존 스캔 도구로 AI 코드 저장소도 분석한다
{{% /alert %}}

---

## 2. 사전 훈련 모델 (Pre-trained Model) 관리

사전 훈련 모델은 일반 오픈소스 라이브러리와 다른 **커스텀 라이선스**를 사용하는 경우가 많다.
특히 상업적 사용 제한이나 파생 모델 공개 의무를 포함하는 경우가 있어 주의가 필요하다.

### 주요 오픈소스 AI 모델 라이선스 유형

| 라이선스 유형 | 대표 모델 | 상업적 사용 | 파생 모델 공개 |
|-------------|---------|:----------:|:-----------:|
| Apache 2.0 | Falcon, Mistral 7B | ✅ 가능 | ❌ 불필요 |
| MIT | GPT-2, GPT-J | ✅ 가능 | ❌ 불필요 |
| Llama Community License | Llama 3 | 조건부 (MAU 7억 이하 무료) | ❌ 불필요 |
| CC-BY 4.0 | 일부 학술 모델 | ✅ 가능 | 저작자 표시 필요 |
| CC-BY-NC | 일부 연구 모델 | ❌ 비상업적 한정 | — |

{{% alert title="주의: 모델 라이선스는 개별 확인 필수" color="warning" %}}
AI 모델 라이선스는 표준화되지 않아 모델마다 조건이 다르다.
Hugging Face 모델 허브 등에서 모델 카드(Model Card)와 라이선스를 반드시 직접 확인해야 한다.
특히 다음 사항을 검토한다:
- 상업적 사용 허용 여부
- 사용자 수(MAU) 또는 매출 기반 제한 조건
- 파생 모델(Fine-tuning) 공개 의무
- AI 시스템에 사용한 모델 명시 의무
{{% /alert %}}

### AI SBOM에 모델 정보 포함

SBOM(소프트웨어 구성 목록)에 사전 훈련 모델을 포함하는 **AI SBOM**을 구성한다.

```yaml
# AI SBOM 모델 항목 예시 (SPDX 3.0 AI Profile 기반)
- name: "meta-llama/Llama-3.1-8B"
  version: "3.1"
  license: "Llama Community License Agreement"
  primaryPurpose: "inference"
  hyperparameter:
    contextWindow: 131072
  modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B"
```

AI SBOM 구성 방법은 [AI SBOM 가이드](../../iso42001_guide/4-operation/2-ai-sbom/)를 참고한다.

---

## 3. 학습 데이터셋 관리

AI 모델 학습에 사용한 데이터셋에 오픈 데이터 또는 크리에이티브 커먼즈 라이선스가
적용된 경우 해당 라이선스 조건을 이행해야 한다.

### 오픈 데이터 라이선스 주요 유형

| 라이선스 | 저작자 표시 | 상업적 사용 | 동일 조건 변경 허락 |
|---------|:----------:|:----------:|:-----------------:|
| CC0 | ❌ 불필요 | ✅ 가능 | ❌ 불필요 |
| CC-BY 4.0 | ✅ 필요 | ✅ 가능 | ❌ 불필요 |
| CC-BY-SA 4.0 | ✅ 필요 | ✅ 가능 | ✅ 필요 |
| CC-BY-NC 4.0 | ✅ 필요 | ❌ 비상업적 한정 | ❌ 불필요 |

### 체크포인트

- AI SBOM에 학습 데이터셋과 라이선스를 기록한다
- CC-BY 계열 데이터 사용 시 모델 카드(Model Card) 또는 시스템 문서에 출처를 명시한다
- CC-BY-SA 조건의 데이터를 학습에 사용한 경우, 파생 모델의 라이선스 처리를 법무팀과 협의한다

---

## 4. ISO/IEC 42001과의 연계

기업이 ISO/IEC 42001 AI 관리 시스템을 운영하거나 준비 중인 경우,
다음 조항이 오픈소스 관리와 직접 연결된다.

| ISO 42001 조항 | 오픈소스 담당자 역할 |
|----------------|---------------------|
| §5.2 AI 정책 | AI 정책에 오픈소스 사용 원칙 포함 |
| §6.1.2 AI 리스크 평가 | OSS 라이선스·취약점 리스크 식별·평가 |
| §7.5 문서화 | AI SBOM 수립·유지 |
| §8.5 AI 생애주기 | 개발 단계별 OSS 컴플라이언스 검토 |
| §8.6 AI 데이터 | 데이터셋 라이선스 관리 |
| §8.8 외부 AI 조달 | 외부 오픈소스 모델 공급망 검증 |

ISO/IEC 42001의 오픈소스 교차 요구사항 전체 가이드: **[ISO/IEC 42001 가이드](../../iso42001_guide/)**

---

## 5. AI Work Group 산출물 활용

OpenChain Korea Work Group의 AI Work Group은 AI SBOM 컴플라이언스 가이드를 개발했다.
이 가이드는 AI 시스템의 구성 요소(모델, 데이터셋, 프레임워크)를 SPDX 3.0 AI 프로파일
형식으로 문서화하는 방법을 상세히 안내한다.

- AI Work Group 활동 및 가이드: **[리소스 — AI Work Group](../../../resource/AI_work_group/)**

---

## 6. AI 코딩 도구 사용 시 컴플라이언스

GitHub Copilot, Claude Code, Cursor, Windsurf 등 AI 코딩 도구는 개발 생산성을 높이지만,
오픈소스 컴플라이언스 관점의 새로운 위험을 함께 가져온다.

- **라이선스 혼입 위험**: AI는 오픈소스 코드를 학습하여 유사한 코드를 생성한다. GPL 등 Copyleft 코드가 무심코 혼입될 수 있다.
- **취약 패키지 추천**: AI는 학습 데이터 기준의 오래된 버전을 추천하는 경우가 있어 알려진 CVE가 포함된 패키지가 도입될 수 있다.
- **의존성 SBOM 누락**: AI가 제안하는 의존성 패키지도 SBOM 및 취약점 관리 대상이다.

### 보장 수준별 4단계 전략

| 단계 | 핵심 수단 | 보장 수준 | 권장 대상 |
|------|-----------|-----------|-----------|
| 1단계: 프롬프트 의존 | 없음 (개인 기억) | 낮음 | 개인 실험 |
| 2단계: AI 규칙 내재화 | CLAUDE.md · .cursorrules 등 | 중간 | 팀 공동작업 |
| 3단계: CI/CD 자동 차단 | syft · grype · ORT | 높음 | 팀·조직 |
| 4단계: 지속적 모니터링 | Dependabot · Renovate + AI | 매우 높음 | 조직·전사 |

1단계는 즉시 시작할 수 있지만, 3단계부터 진정한 자동 차단(Hard Block)이 작동한다.

### AI 규칙 파일에 오픈소스 정책 내재화

CLAUDE.md · .cursorrules · .clinerules 등 AI 도구의 설정 파일에 오픈소스 정책을
미리 명시하면 AI가 코드를 생성할 때 자동으로 정책을 인지한다.

```markdown
## 오픈소스 정책

### 라이선스 관리
새로운 외부 패키지 추가 시 반드시 라이선스를 확인하고 명시할 것.

**허용 라이선스**: MIT, Apache-2.0, BSD-2-Clause, BSD-3-Clause, ISC
**주의 라이선스** (법무 검토 필요): LGPL, MPL
**금지 라이선스** (사전 승인 없이 사용 불가): GPL, AGPL, SSPL

### 보안 관리
- 알려진 CVE 취약점이 있는 패키지 버전 사용 금지
- 의존성 추가 후 취약점 감사 실행: `npm audit` / `pip-audit` / `trivy fs .`

### SBOM 관리
- 의존성 변경 시 SBOM 업데이트 필요
- 생성 도구: syft, cdxgen, trivy
```

{{% alert title="주의: AI 규칙만으로는 Hard Block 불가" color="warning" %}}
AI 규칙 파일은 "권장사항"으로 작동한다. AI가 실수하거나 개발자가 무시해도 막아주지 않는다.
정책 위반을 기계적으로 차단하려면 CI/CD 파이프라인 게이팅이 필요하다.
{{% /alert %}}

### CI/CD 파이프라인 자동 차단

PR 병합 전 SCA(소프트웨어 구성 분석) 도구로 자동 검증한다.

| 역할 | 도구 | 동작 |
|------|------|------|
| SBOM 생성 | syft | 의존성 전체를 CycloneDX/SPDX 형식으로 추출 |
| 취약점 차단 | grype | High/Critical CVE 발견 시 빌드 실패 |
| 라이선스 차단 | ORT / 스크립트 | 금지 라이선스 발견 시 빌드 실패 |

CI/CD 구성 방법은 [4. 도구](../4-tool/)를 참고한다.
