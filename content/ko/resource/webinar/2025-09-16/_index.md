---
title: "EU Cyber Resilience Act (CRA): 오픈소스 개발자가 반드시 알아야 할 생존 가이드"
linkTitle: "EU CRA 소개"
# weight: 10
date: 2025-09-16
type: docs
categories: ["webinar"]
tags: ["CRA"]
description: 2025-09-16 Introduction to the Cyber Resilience Act (CRA)
---

source: https://openchainproject.org/news/2025/09/16/webinar-cra 


2025년 9월 16일, OpenChain Project는 유럽 연합(EU)의 새로운 사이버 보안법인 CRA(Cyber Resilience Act)를 주제로 긴급 웨비나를 개최했습니다. 이번 웨비나에서는 Linux Foundation의 오픈소스 공급망 보안 책임자이자 20년 이상의 경력을 가진 보안 전문가 David A. Wheeler가 연사로 나서 CRA의 핵심과 대응 방안을 명쾌하게 풀어냈습니다.

"나는 유럽에 안 사는데?", "우리 회사는 미국 회사인데?"라고 생각하셨나요? 만약 당신이 만드는 소프트웨어가 유럽 시장에 판매되거나 사용된다면, 이 법은 100% 당신에게 적용됩니다. 심지어 오픈소스 개발자라도 예외가 아닐 수 있습니다.

이번 포스팅에서는 웨비나의 핵심 내용을 A to Z로 상세히 정리해 드립니다.

---

## 1. CRA란 무엇인가? (그리고 왜 중요한가?)

### 이것은 '가이드라인'이 아니라 '법(Law)'입니다.

CRA는 단순한 권고 사항이 아닙니다. EU 시장에 출시되는 "디지털 요소가 포함된 모든 제품(Products with Digital Elements, PDE)"에 적용되는 강력한 규제입니다.

- 시행일: 2024년 12월 10일 발효 (이미 법입니다!)
- 본격 적용: 2027년 12월 11일 (완전 적용)
- 벌금: 최대 1,500만 유로(약 220억 원) 또는 전 세계 매출의 2.5% 중 더 큰 금액

### 전 세계가 영향권입니다

David Wheeler는 강조했습니다. "CRA는 EU 법이지만 사실상 글로벌 법이다."

소프트웨어 시장은 국경이 없습니다. 당신이 한국이나 미국에서 개발했더라도, 그 결과물이 유럽 시장에 배포된다면 CRA 준수 의무가 발생합니다.

---

## 2. 나는 어떤 역할인가? (Manufacturer vs. Steward)

CRA에서 가장 헷갈리면서도 중요한 부분은 "내가 어떤 역할로 정의되는가"입니다. 역할에 따라 의무가 천지 차이이기 때문입니다.

### Manufacturer (제조업체)

가장 무거운 책임을 지는 주체입니다.

- 정의: 상업적 활동(Commercial Activity)의 일환으로 제품을 시장에 출시하는 자.
- 핵심 기준: 돈을 받고 파는가? (직접 판매, 유료 지원, 특정 데이터 수집 등)
- 오픈소스라도? 네. 오픈소스 프로젝트라도 상업적 이익(Monetization)을 위해 운영된다면 Manufacturer로 간주됩니다.

### Open Source Software Steward (오픈소스 스튜어드)

이번 최종 법안에 새로 추가된 중요한 개념입니다.

- 정의: 상업적 목적 없이 오픈소스 프로젝트의 개발을 지속적으로 지원하는 법인 (예: Linux Foundation, Eclipse Foundation 등).
- 의무: Manufacturer보다는 가볍지만 여전히 중요합니다. 보안 정책 수립, 취약점 관리 및 보고 협력 등의 의무가 있습니다.

### 순수 오픈소스 개발자/기여자

- 희소식: 단순히 취미로 개발하거나 비영리 목적으로 코드만 기여하는 개인 개발자는 CRA 적용 대상이 아닙니다.
- 주의: 하지만 당신의 코드를 가져다 쓰는 기업(Manufacturer)은 당신에게 "이 코드 안전한가요?"라고 묻기 시작할 것입니다.

---

## 3. Manufacturer가 해야 할 일 (To-Do List)

만약 당신이 Manufacturer로 분류된다면, 다음의 의무를 반드시 지켜야 합니다.

1. CE 마크 부착: 제품이 CRA 요구사항을 충족함을 증명하는 마크를 붙여야 판매 가능합니다.
2. 보안 내재화 (Security by Design): 개발 초기부터 보안을 고려해야 합니다. (알려진 악용 가능 취약점이 없어야 함)
3. SBOM(Software Bill of Materials) 제공: 최소한 최상위 의존성(Top-level dependencies) 목록을 포함한 SBOM을 보유해야 합니다.
4. 취약점 보고 (Vulnerability Reporting): 이게 가장 무섭습니다.
    - 24시간 이내: 활발히 악용되는 취약점(Actively Exploited Vulnerability) 인지 시 조기 경보(Early Warning) 제출.
    - 72시간 이내: 상세 보고서 제출.
    - 14일 이내: 조치 완료 후 최종 보고서 제출.
    - *David의 코멘트:* "24시간은 영업일 기준이 아닙니다. 주말, 공휴일 상관없이 그냥 24시간입니다."

---

## 4. 어떻게 준비해야 하나요? (Action Plan)

David Wheeler는 "지금 당장 준비하지 않으면 나중에 패닉에 빠질 것"이라고 경고하며 3가지 액션 플랜을 제시했습니다.

### Step 1: 무료 교육 듣기 (강력 추천)

Linux Foundation과 OpenSSF가 만든 무료 교육 코스가 있습니다. 이 코스를 듣고 수료 배지를 따세요. 팀원들에게도 듣게 하세요.

- 과정명: Understanding the EU Cyber Resilience Act (LFEL1001)
- 비용: 무료
- 링크: [https://training.linuxfoundation.org/express-learning/understanding-the-eu-cyber-resilience-act-cra-lfel1001/](https://training.linuxfoundation.org/express-learning/understanding-the-eu-cyber-resilience-act-cra-lfel1001/)

### Step 2: 보안 교육 이수

개발자들이 보안 코딩을 할 줄 알아야 합니다.

- 추천 과정: Developing Secure Software (LFD121) - 역시 무료입니다.

### Step 3: 표준 준수

CRA는 매우 높은 수준의 요구사항만 명시하고, 구체적인 기술적 방법은 "표준(Standards)"을 따르라고 합니다. 현재 CEN/CENELEC이 표준을 만들고 있습니다. 이 표준을 준수하면 법을 준수한 것으로 간주(Presumption of Conformity)되므로, 관련 표준 동향을 예의주시해야 합니다.

---

## 결론: 규제를 기회로

CRA는 귀찮은 규제일 수 있지만, 반대로 생각하면 "보안이 검증된 소프트웨어"라는 품질 보증 마크가 될 수 있습니다.

2027년은 멀어 보이지만, 제품 개발 사이클을 고려하면 내일부터 당장 준비해야 합니다. 지금 바로 팀 내에서 "우리는 Manufacturer인가?"라는 질문부터 시작해 보세요.

---

## 관련 링크

- 웨비나 다시보기: [YouTube 링크](https://www.youtube.com/watch?v=eczSUFGN2h8)
- 무료 CRA 교육 코스: [LFEL1001 바로가기](https://training.linuxfoundation.org/express-learning/understanding-the-eu-cyber-resilience-act-cra-lfel1001/)
- OpenChain Project: [https://openchainproject.org](https://openchainproject.org/)

---

*본 포스팅은 2025년 9월 16일 진행된 OpenChain 웨비나 내용을 바탕으로 재구성되었습니다.*

*by Gemini 3.0*