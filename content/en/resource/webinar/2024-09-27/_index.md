---
title: "2024-09-27 AI: 현재의 법적 환경"
linkTitle: "2024-09-27"
# weight: 10
date: 2024-09-27
type: docs
categories: ["webinar"]
tags: ["AI"]
description: 2024-09-27, AI, The Current Legal Landscape
---

source: https://openchainproject.org/featured/2024/09/27/webinar-ai-the-current-legal-landscape

## 목차

1. 소개
2. AI와 오픈소스의 교차점
3. 소송 개요
4. 법규/입법 개요
5. 데이터 보호와 AI
6. Q&A

## 1. 소개

### 제목
AI: 현재의 법적 환경

### 발표자 소개
- Tony: [GTC Law Group](https://www.gtclawgroup.com/)의 IP 전문 변호사. AI, 오픈소스, 특허 전략, 거래 분야 전문.
- Well: 기계학습 박사 학위 소지자. AI 제품 연구 과학자 및 프로그래머 경력.
- Stas: 전 [Amazon](https://www.amazon.com/) Kindle 팀 멤버, [Audible](https://www.audible.com/) 전 법무 자문, [Netflix](https://www.netflix.com/) AI 법무 담당. GTC의 AI 그룹 공동 리더.
- Shay: 데이터 프라이버시 및 사이버 보안 전문가. 신흥 기술 관련 자문 경험 풍부.

### 웨비나 소개와 목적
이 웨비나는 [OpenChain](https://www.openchainproject.org/) 커뮤니티에서 주최하는 AI 관련 법적 환경에 대한 논의의 연장선상에 있습니다. 지난해에 이어 GTC Law 팀이 생성형 AI를 둘러싼 현재의 법적 환경에 대해 포괄적으로 설명합니다. 이 웨비나의 목적은 AI 기술의 발전에 따른 법적 문제들을 살펴보고, 기업과 개발자들이 알아야 할 주요 사항들을 제공하는 것입니다.

## 2. AI와 오픈소스의 교차점

### AI의 발전 과정
- [AGI(Artificial General Intelligence)](https://en.wikipedia.org/wiki/Artificial_general_intelligence): 인간 수준의 지능을 가진 기계
- [AI(Artificial Intelligence)](https://en.wikipedia.org/wiki/Artificial_intelligence): 특정 작업에 대한 인간 지능 모방
- [Machine Learning](https://en.wikipedia.org/wiki/Machine_learning): AI의 한 기법, 데이터셋으로부터 학습하여 모델 생성
- [Deep Learning](https://en.wikipedia.org/wiki/Deep_learning): 대량의 데이터와 연산력 필요, 신경망 기반
- [Generative AI](https://en.wikipedia.org/wiki/Generative_artificial_intelligence): 새로운 데이터 생성 능력

### Generative AI 응용
- 텍스트 생성
- 이미지 생성
- 코드 생성
- 비디오 생성
- 음악 생성
- 합성 데이터 생성

### AI와 오픈소스 라이선스
많은 AI 도구들이 오픈소스 라이선스로 제공됩니다. 예를 들어:
- [PyTorch](https://pytorch.org/)
- [TensorFlow](https://www.tensorflow.org/)
- [OpenCV](https://opencv.org/)
- [Keras](https://keras.io/)
- [Transformers](https://huggingface.co/docs/transformers/index)

Meta의 [LLaMA](https://ai.meta.com/llama/) 모델은 "오픈소스"라고 불리지만, 실제로는 상업적 라이선스에 가깝습니다. 특히 7억 명 이상의 활성 사용자를 가진 경우 별도의 라이선스가 필요하며, LLaMA의 출력을 다른 언어 모델 개선에 사용할 수 없다는 제한이 있습니다.

### Responsible AI Licenses (RAIL)
[RAIL](https://www.licenses.ai/)은 AI 기술의 비윤리적 사용을 제한하기 위해 만들어진 라이선스입니다. 주요 특징:
- 사용 제한 조항 포함
- 하위 사용자에게도 동일한 행동 제한 요구
- 감시, 딥페이크, 의료, 범죄 기록 등에 대한 사용 제한

RAIL은 최근 많은 주목을 받고 있으며, MIT나 Apache 라이선스보다 더 많은 AI 모델에 적용되고 있습니다.

## 3. 소송 개요

AI, 특히 생성형 AI 제공업체들을 상대로 한 소송이 증가하고 있습니다. 주요 소송 분야:

### 컴퓨터 코드 관련
- [GitHub Copilot](https://github.com/features/copilot) 관련 집단 소송
- 주요 쟁점: DMCA 위반, 계약 위반, 과실, 사기

### 이미지 관련
- [Stability AI](https://stability.ai/)의 [Stable Diffusion](https://stability.ai/stable-diffusion) 관련 소송
- 주요 쟁점: 저작권 침해, DMCA 위반, 불공정 경쟁

### 문서 관련
- 저자들의 저작권 침해 소송
- 주요 쟁점: 직접 및 간접 저작권 침해, DMCA 위반, 불공정 경쟁

### 음악 관련
- 실제 녹음물 및 가사 관련 소송
- 주요 쟁점: 저작권 침해, DMCA 위반

### GitHub Copilot 소송 사례
- 주요 쟁점: DMCA 위반, 오픈소스 라이선스 위반, GitHub 이용약관 위반
- 최근 법원은 원고의 일부 주장을 기각

### Getty Images vs Stability AI 소송 사례
- 주요 쟁점: 저작권 침해, 저작권 관리 정보 위반, 상표 희석
- Stable Diffusion이 Getty Images의 워터마크를 변형하여 사용한 점이 쟁점

## 4. 법규/입법 개요

AI 규제는 크게 네 가지 유형으로 분류할 수 있습니다:

1. 기존 법률 적용
   - 소비자 보호, 차별 금지, 프라이버시 등

2. 일반 AI 규제
   - [EU AI Act](https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai)
   - [Colorado Consumer Protections for AI](https://leg.colorado.gov/bills/sb23-169)
   - [Utah Artificial Intelligence Policy Act](https://le.utah.gov/~2024/bills/static/SB0217.html)

3. 산업 또는 사용 사례별 AI 규제
   - 보험사의 AI 사용
   - 고용 결정에서의 AI 사용
   - 정부의 AI 조달 및 사용

4. 정책 수립 중심
   - AI 규제 제안을 위한 태스크포스 설립
   - AI 기술의 중요성을 인식하는 선언
   - AI 채택을 촉진하기 위한 정부 지출 프로그램 수립

## 5. 데이터 보호와 AI

### 2024년 프라이버시 법 요약
- 20개의 포괄적 프라이버시 법
- 2020년부터 2026년 사이에 발효
- 대부분 "소비자"의 "개인 데이터"에 적용
- 캘리포니아 법은 더 광범위한 적용 범위

### AI와 데이터 보호의 교차점
- 보안 문제와 데이터 유출
- 복잡한 프라이버시 준수 의무
- 자동화된 의사 결정 시스템에 대한 소비자 옵트아웃 권리
- 고위험 AI 시스템에 대한 추가 요구사항
- 편향과 차별 방지에 중점

### 사례 연구: AI 훈련을 위한 데이터 스크래핑
- 중요한 결정, 프로파일링, AI/LLM 훈련 등의 사용 사례
- 개인 데이터, 민감 데이터, 이미지, 사용자 생성 콘텐츠 등의 데이터 사용
- 인간 개입, 신뢰성, 투명성, 정확성, 편향/차별 등의 출력 관련 고려사항

## 6. Q&A

Q: LLAMA 모델의 "다른 모델 개선에 사용 불가" 조항에 대해 설명해주세요.
A: 라이선스 조항에 따르면, LLAMA 자료나 그 결과물을 LLAMA 2나 그 파생물을 제외한 다른 대규모 언어 모델을 개선하는 데 사용할 수 없습니다. 이는 Meta가 경쟁을 제한하고 자사의 모델 우위를 유지하려는 의도로 보입니다.

Q: RAIL 라이선스가 모든 라이선스를 "스노우플레이크"로 만드는 것 아닌가요?
A: RAIL의 기본 아이디어는 사용 제한과 하위 사용자 준수를 요구하는 것이지만, 실제로는 몇 가지 표준화된 버전으로 수렴하고 있습니다. 예를 들어, Hugging Face에서는 "Creative ML OpenRAIL-M" 라이선스가 23,000개 이상의 모델에 사용되고 있습니다.

Q: 소송의 타임라인은 어떻게 되나요?
A: 정확한 타임라인은 없지만, 유사한 소송 사례를 보면 최종 결정까지 5-10년이 걸릴 수 있습니다. 법률은 종종 새로운 기술을 따라가는 데 시간이 걸리므로, 판례법보다는 법규를 통한 지침이 먼저 나올 가능성이 높습니다.

Q: 교육 분야에서 AI 사용 감지 도구의 편향성 문제는 어떻게 해결해야 하나요?
A: 이는 중요한 문제입니다. 도구 자체에만 의존하지 말고 인간의 판단을 병행해야 합니다. 캘리포니아의 새로운 규정은 자동화된 의사결정이 중요한 요소인 경우에도 규제 범위에 포함시키려 하고 있습니다. 이는 교육자가 도구에 과도하게 의존하는 경우에도 규제 대상이 될 수 있음을 의미합니다.

---

## 요약 보고서

### 기업의 오픈소스 관리 담당자에게 갖는 의미

1. AI 기술과 오픈소스의 융합: 많은 AI 도구들이 오픈소스로 제공되고 있어, 오픈소스 관리의 중요성이 더욱 커지고 있습니다.

2. 새로운 라이선스 유형 등장: RAIL과 같은 새로운 라이선스 유형이 등장하고 있어, 이에 대한 이해와 관리가 필요합니다.

3. 법적 리스크 증가: AI 관련 소송이 증가하고 있어, 오픈소스 사용 시 법적 리스크에 대한 주의가 필요합니다.

4. 데이터 보호 의무 강화: AI 사용에 따른 데이터 보호 의무가 강화되고 있어, 오픈소스 AI 도구 사용 시에도 이를 고려해야 합니다.

5. 규제 환경 변화: AI 관련 규제가 빠르게 변화하고 있어, 이에 대한 지속적인 모니터링이 필요합니다.

### 고려해야 할 Action Item

1. AI 관련 오픈소스 라이선스 검토: 사용 중인 AI 도구들의 라이선스를 철저히 검토하고, 특히 RAIL과 같은 새로운 라이선스 유형에 주의를 기울입니다.

2. 데이터 사용 정책 수립: AI 훈련에 사용되는 데이터의 출처와 사용 권한을 명확히 하는 정책을 수립합니다.

3. AI 사용 가이드라인 제정: 회사 내 AI 도구 사용에 대한 가이드라인을 만들어 법적 리스크를 최소화합니다.

4. 정기적인 컴플라이언스 검토: AI 관련 법규 준수 여부를 정기적으로 검토하고 필요한 조치를 취합니다.

5. AI 윤리 정책 수립:
