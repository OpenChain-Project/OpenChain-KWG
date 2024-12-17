---
title: "OpenChain SBOM Study Group Kickoff Meeting"
linkTitle: "Kickoff meeting"
# weight: 10
date: 2024-07-30
type: docs
categories: ["study"]
tags: ["SBOM"]
description: 2024-07-30 OpenChain SBOM Study Group Kickoff Meeting
---

source: https://www.slideshare.net/slideshow/openchain-sbom-study-group-kick-off-call-2024-07-30/270623321

## 발표자 소개:

- Shane Coughlan, OpenChain Project의 General Manager
- Kobota San (Sony), 2024년 SBOM Study Group의 Chair

## 웨비나 소개와 목적:

OpenChain Project는 production, large-scale, complex supply chain에서 SBOM을 어떻게 사용할 것인가에 대한 질문에 답하기 위해 이 SBOM Study Group을 시작했습니다. 이 kick-off meeting은 향후 논의를 위한 구조를 설정하고 supply chain에서의 SBOM 사용에 대한 주요 고려사항을 소개하는 것을 목적으로 합니다.

## 목차

1. 소개 및 아젠다
2. Supply Chain에서의 SBOM 실용적 고려사항
3. SPDX Lite 사례 연구
4. 오픈 토론 및 다음 단계

## 1. 소개 및 아젠다

OpenChain Project의 General Manager인 Shane Coughlan이 회의를 시작하며 자신을 소개하고 study group의 목적을 설명했습니다. 그는 kick-off meeting의 아젠다를 다음과 같이 설명했습니다:

1. Supply chain에서 SBOM 사용의 실용적 고려사항 소개
2. 이러한 고려사항이 누구에게 적용되는지 논의
3. SPDX Lite에 대한 사례 연구를 통해 기존 market solution에 대해 논의
4. 다음 단계에 대한 오픈 토론

Shane은 OpenChain project가 community 내에서 효과적인 communication을 촉진하고 OpenChain community 및 그 이상에서 다양한 대화, 아이디어, 생각을 모으는 것을 목표로 한다고 강조했습니다.

## 2. Supply Chain에서의 SBOM 실용적 고려사항

Shane은 supply chain에서의 SBOM 사용에 대한 세 가지 주요 측면을 논의했습니다:

### 2.1 Compliance 문제

- Corporate license compliance
- Corporate security assurance
- 기타 compliance 관련 주제

### 2.2 규제

- United States Executive Order
- [NTIA](https://www.ntia.doc.gov/) minimum requirements
- European Union의 [Cyber Resilience Act](https://digital-strategy.ec.europa.eu/en/policies/cyber-resilience-act)

### 2.3 효율성

- Overhead를 낮게 유지하면서 compliance와 규제 해결
- Supplier가 현실적으로 SBOM 요구사항을 충족할 수 있도록 보장

Shane은 이러한 고려사항이 사용하는 SBOM format, 회사 규모, supply chain에서의 역할에 관계없이 open-source supply chain의 모든 사람에게 적용된다고 강조했습니다.

## 3. SPDX Lite 사례 연구

Sony의 Kobota San이 제한된 resource, deployment process에 대한 최소한의 조정, 제한된 시간이라는 과제를 해결하기 위해 설계된 SBOM format인 [SPDX](https://spdx.dev/) Lite에 대한 사례 연구를 발표했습니다.

### 3.1 배경 및 개발

- SPDX Lite는 OpenChain Japan community 내의 논의를 통해 개발되었습니다
- 복잡한 software supply chain 전반에 걸쳐 software 정보를 효과적으로 전달하는 것을 목표로 합니다
- 개발 과정에는 SPDX project와의 협력이 포함되었습니다

### 3.2 SPDX Lite의 주요 특징

- 전체 SPDX spec을 준수하면서 license compliance를 위해 설계되었습니다
- Package 수준 정보에 중점을 둔 단순화된 data structure
- Mandatory property에는 package name, version, creator, origin이 포함됩니다
- License 정보는 필수입니다 (전체 SPDX와 달리)
- 일부 property는 노력을 줄이기 위해 권장되지만 필수는 아닙니다

### 3.3 채택 및 사용

- 여러 일본 기업이 version 2.2부터 SPDX Lite를 사용해 왔습니다
- 단순성으로 인해 법률 및 지적 재산 전문가들 사이에서 인기가 있습니다
- Version 3.0에서의 spreadsheet 처리 과제는 현재 해결 중입니다

## 4. 오픈 토론 및 다음 단계

회의는 study group의 향후 방향에 대한 오픈 토론과 참가자들의 질문에 대한 답변으로 마무리되었습니다.

### 4.1 Study Group의 범위

- 참가자들은 특정 format보다는 SBOM의 content와 use case에 초점을 맞추어야 한다는 데 동의했습니다
- 그룹은 기업의 실무를 탐구하고 SBOM 관리에 대한 합의를 구축할 것입니다

### 4.2 Meeting 일정 및 형식

- 월 1회 meeting과 session당 하나의 사례 연구를 제안했습니다
- 1-2시간 길이의 meeting 제안
- 현재 시간대 유지에 동의 (유럽 오전, 아시아 오후)

### 4.3 Communication 채널

- 비동기 토론을 위한 전용 mailing list
- 실시간 communication을 위한 Slack channel
- 사례 연구 및 기타 자료 저장을 위한 GitHub repository

### 4.4 주요 토론 포인트

- 다양한 tool에서 생성된 SBOM의 품질과 상호 운용성
- 특히 자동차 산업과 같이 빈번한 update가 있는 산업에서 여러 SBOM 관리의 과제
- Supply chain에서 누락되거나 부정확한 metadata 해결의 중요성
- 다른 SBOM 관련 이니셔티브(예: OpenSSF, CISA)와의 잠재적 협력

이 kick-off meeting은 실제 과제와 해결책에 중점을 두고 supply chain에서의 실용적인 SBOM 사용에 대한 향후 논의의 기반을 성공적으로 마련했습니다.

---

# OpenChain SBOM Study Group Kick-Off Meeting 요약 보고서

## 주요 내용

1. SBOM의 실용적 고려사항
    - Compliance 문제 (license, security)
    - 규제 요구사항 (US Executive Order, NTIA, EU Cyber Resilience Act)
    - 효율성 (overhead 관리, supplier 요구사항 충족)
2. SPDX Lite 소개
    - 제한된 resource와 시간을 고려한 simplified SBOM format
    - Package 수준 정보 중심의 data structure
    - License 정보 필수 포함
3. Study Group 방향성
    - SBOM format보다 content와 use case에 초점
    - 기업 실무 탐구 및 SBOM 관리 합의 구축
    - 월 1회 meeting, 사례 연구 중심
4. 주요 과제
    - SBOM 품질 및 상호 운용성
    - 다수의 SBOM 관리 (특히 빈번한 update가 있는 산업)
    - Supply chain에서의 metadata 정확성

## 기업 오픈소스 관리 담당자를 위한 시사점

1. SBOM은 단순한 compliance tool을 넘어 supply chain 전체의 transparency와 security를 위한 핵심 요소로 부상하고 있습니다.
2. 다양한 규제와 industry 요구사항을 충족하면서도 효율적인 SBOM 관리 방안이 필요합니다.
3. SPDX Lite와 같은 simplified format은 SBOM 도입의 진입 장벽을 낮출 수 있습니다.
4. SBOM의 품질과 정확성이 중요한 과제로 대두되고 있으며, 이는 전체 supply chain의 신뢰성에 직접적인 영향을 미칩니다.
5. 빈번한 software update와 복잡한 supply chain 구조에서 SBOM을 효과적으로 관리하는 방안이 필요합니다.

## 기업 오픈소스 관리 담당자가 고려해야 할 Action Item

1. 현재 사용 중인 SBOM 생성 및 관리 process를 검토하고, 품질 향상을 위한 방안을 모색합니다.
2. SPDX Lite와 같은 simplified SBOM format 도입을 검토하여, SBOM 생성 및 관리의 진입 장벽을 낮출 수 있는 방안을 모색합니다.
3. Supply chain 전반에 걸친 SBOM 품질 관리 전략을 수립합니다. 특히 upstream 및 third-party component의 metadata 정확성 확보 방안을 마련합니다.
4. 빈번한 software update에 대응할 수 있는 SBOM 관리 system을 구축합니다. 특히 automotive와 같이 OTA update가 빈번한 industry의 경우, 다수의 SBOM version을 효율적으로 관리할 수 있는 방안을 마련합니다.
5. OpenChain SBOM Study Group과 같은 community 활동에 참여하여 industry best practice를 공유하고 습득합니다. 특히 월 1회 meeting과 case study 공유에 적극 참여합니다.
6. SBOM 관련 규제 동향(US Executive Order, NTIA, EU Cyber Resilience Act 등)을 지속적으로 모니터링하고, 이에 대한 대응 전략을 수립합니다.
7. SBOM의 interoperability 향상을 위해 표준화된 format(SPDX, CycloneDX 등) 사용을 검토하고, 필요시 내부 system을 이에 맞게 조정합니다.
8. Legal 및 IP 전문가와 협력하여 SBOM 정보의 법적 의미와 영향을 평가하고, 이를 risk management 전략에 반영합니다.
9. SBOM 생성 및 관리 tool의 품질을 평가하고, 필요시 개선 또는 대체 tool 도입을 검토합니다.
10. SBOM Study Group의 communication channel(mailing list, Slack, GitHub repository 등)을 활용하여 지속적으로 정보를 교환하고, 업계 동향을 파악합니다.