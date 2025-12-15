---
title: "2024-10-10 데이터가 AI 공급망에서 차지하는 역할"
linkTitle: "2024-10-10"
# weight: 10
date: 2024-10-10
type: docs
categories: ["webinar"]
tags: ["AI"]
description: 2024-10-10, The Role of Data in the Supply Chain of AI
---

source: https://openchainproject.org/news/2024/10/10/webinar-the-role-of-data-in-the-supply-chain-of-ai 

## 목차
1. **발표자 소개**  
2. **웨비나 소개와 목적**  
3. **AI 공급망과 데이터의 중요성**  
4. **공개 데이터셋 및 AI 모델의 활용과 리스크**  
5. **AI 규제와 데이터 투명성의 미래**  
6. **기업을 위한 전략 및 액션 아이템**

---

## 1. 발표자 소개

Nick Schifano는 FastCatalog.ai의 CEO이자 창립자로, AI와 법적 프레임워크 분야의 전문가입니다. Microsoft에서 11년간 근무하며 기술 규제 및 AI/ML 법적 검토를 주도했으며, 특히 AI 모델 훈련에 필요한 데이터 사용 검토 시스템을 설계했습니다. 현재 FastCatalog.ai를 통해 AI 공급망 관리 기술과 서비스를 제공하고 있습니다.

---

## 2. 웨비나 소개와 목적

이번 웨비나는 AI 공급망에서 데이터가 차지하는 역할과 관련된 주요 이슈를 다루며, 다음과 같은 주제를 중심으로 논의되었습니다:

- 모델 계보와 훈련 데이터에 숨겨진 리스크
- 데이터 투명성의 중요성과 기업에 미치는 영향
- AI 및 데이터 공급망 관리 전략
- EU AI Act 등 새로운 규제에 대비하는 방법

Nick Schifano는 이러한 주제를 통해 기업들이 새로운 규제 환경에 대비하고 AI 공급망을 효과적으로 관리할 수 있도록 실질적인 가이드를 제공했습니다.

---

## 3. AI 공급망과 데이터의 중요성

### 3.1 AI 시스템 구축 과정
AI 시스템은 크게 네 단계로 나뉩니다:
1. **소싱(Source)**: 훈련 데이터, 기존 모델, 훈련 프레임워크 등 필요한 자원을 확보.
2. **구축(Build)**: 데이터를 사용해 모델을 훈련하거나 기존 모델을 미세 조정.
3. **배포(Deploy)**: 완성된 모델을 클라우드, 온프레미스 또는 디바이스에 배포.
4. **관리(Manage)**: 전체 프로세스를 지속적으로 모니터링하고 규제 준수 여부를 확인.

### 3.2 데이터의 역할
AI 모델 훈련에는 다양한 형태의 데이터가 필요합니다:
- 공개 데이터셋 (예: [Common Crawl](https://commoncrawl.org/), [Red Pajama](https://github.com/togethercomputer/RedPajamaData))
- 오픈소스 모델 (예: [Meta Llama](https://huggingface.co/meta-llama/Llama-3.1-70B-Instruct))
- 훈련 프레임워크 (예: [PyTorch](https://pytorch.org/), [TensorFlow](https://www.tensorflow.org/))

Nick은 특히 공개 데이터셋과 오픈소스 모델이 제공하는 기회와 위험 요소를 강조하며, 각 구성 요소가 어떻게 AI 제품에 영향을 미치는지를 설명했습니다.

---

## 4. 공개 데이터셋 및 AI 모델의 활용과 리스크

### 4.1 주요 공개 데이터셋
- **[Common Crawl](https://commoncrawl.org/)**: 인터넷 전반을 크롤링한 텍스트 데이터를 포함하며, OpenAI 및 Meta 등의 대규모 언어 모델 훈련에 활용됨.
- **[Red Pajama](https://github.com/togethercomputer/RedPajamaData)**: Apache 2.0 라이선스를 따르지만 Common Crawl 기반으로 생성되어 법적 복잡성이 존재.
- **[BookCorpus](https://huggingface.co/datasets/bookcorpus/bookcorpus)**: 전자책 데이터를 포함하며 저작권 문제를 야기할 가능성이 있음.

### 4.2 오픈소스 모델
- **[Llama 3.1](https://huggingface.co/meta-llama/Llama-3.1-70B-Instruct)** (Meta): 특정 라이선스 조건(예: "Built with Llama" 표시 의무) 포함.
- **[Black Forest FLUX](https://huggingface.co/black-forest-labs/FLUX.1-dev)**: 비상업적 사용만 허용하는 라이선스를 따름.

### 4.3 주요 과제
Nick은 다음과 같은 문제들을 지적했습니다:
- 데이터 출처 불명확성으로 인한 법적 리스크.
- 저작권 침해 가능성과 이에 따른 소송 사례(예: 뉴욕타임즈 vs OpenAI).
- 특정 지역(예: EU)에서 요구되는 투명성 기준 충족 여부.

---

## 5. AI 규제와 데이터 투명성의 미래

### 5.1 주요 규제 동향
Nick은 여러 지역에서 시행 중인 규제를 다음과 같이 요약했습니다:
- **[EU AI Act](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689)**: 훈련 데이터 출처 공개 및 기술 문서 유지 의무화.
- **미국 캘리포니아 AB 2013 법안**: 생성형 AI 훈련 데이터 투명성 요구.
- **[일본 METI 가이드라인](https://www.meti.go.jp/english/)**: 데이터 출처 추적 가능성 확보 권장.

### 5.2 글로벌 협력 가능성
GDPR처럼 EU AI Act가 글로벌 표준으로 자리 잡을 가능성을 논의했지만, 각 지역별로 상이한 접근 방식이 존재함을 강조했습니다.

---

## 6. 기업을 위한 전략 및 액션 아이템

### 6.1 오픈소스 관리 담당자를 위한 의미
오픈소스 및 공개 데이터를 사용하는 기업은 다음 사항을 고려해야 합니다:
- 공개된 라이선스 조건 준수 여부 확인.
- 훈련 데이터 및 모델 사용 내역 투명하게 기록.
- 새로운 규제에 대비해 내부 프로세스 정비.

### 6.2 고려해야 할 Action Item
1. **데이터 및 모델 카탈로그 구축**:
   - 사용 중인 모든 데이터셋과 모델의 출처, 라이선스 조건 등을 기록.
2. **투명성 보고서 작성 프로세스 마련**:
   - 규제가 요구하는 정보를 포함한 표준화된 보고서 작성 체계 수립.
3. **리스크 관리 방안 개발**:
   - 저작권 침해나 기타 법적 문제 발생 시 대응 절차 마련.
4. **내부 승인 프로세스 강화**:
   - 안전한 프로파일(예: 오픈소스 라이선스 준수)을 정의하고 빠른 승인 절차 제공.

---

이번 웨비나는 AI 공급망 관리에서 데이터를 중심으로 한 복잡한 문제들을 심도 있게 다루며 기업들이 직면할 수 있는 도전 과제를 명확히 했습니다. Nick Schifano는 기술적·법적 전문성을 바탕으로 실질적인 조언을 제공하며, 참석자들에게 큰 통찰을 안겨주었습니다.
