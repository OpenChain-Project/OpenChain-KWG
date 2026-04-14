---
title: "ISO/IEC 42001 가이드"
linkTitle: "ISO/IEC 42001 가이드"
weight: 40
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "AI 관리 시스템", "AI 컴플라이언스", "AIMS"]
description: >
  오픈소스 관점에서 ISO/IEC 42001 AI 관리 시스템 표준을 풀어 설명하는 가이드다.
  AI 시스템 개발·운영에서 오픈소스 컴플라이언스와 교차하는 핵심 요구사항을 다룬다.
---

이 가이드는 **오픈소스 담당자 관점**에서 ISO/IEC 42001(AI Management System)의 요구사항 중
오픈소스 관리와 교차하는 핵심 항목을 풀어서 설명한다. AI 시스템에서 오픈소스 프레임워크,
사전 훈련 모델, 학습 데이터셋을 사용할 때 무엇을 준수해야 하는지, AI SBOM은 어떻게 구성하는지
실무 중심으로 안내한다.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

## ISO/IEC 42001이란?

ISO/IEC 42001:2023은 조직이 AI 시스템을 책임감 있고 투명하게 개발·운영·관리하기 위한
**AI 관리 시스템(AIMS, AI Management System)** 국제 표준이다.

| 항목 | 내용 |
|------|------|
| **정식 명칭** | ISO/IEC 42001:2023 Information technology — Artificial intelligence — Management system |
| **제정 기관** | ISO/IEC JTC 1/SC 42 (인공지능) |
| **제정 연도** | 2023 |
| **표준 계열** | ISO 경영 시스템 표준 (ISO 9001, ISO 27001과 동일 구조) |
| **적용 대상** | AI 제품·서비스를 개발, 제공, 사용하는 모든 조직 |

{{% alert title="ISO/IEC 5230 · 18974와의 차이" color="warning" %}}

ISO/IEC 5230(라이선스 컴플라이언스)과 ISO/IEC 18974(보안 보증)는 **OpenChain 프로젝트**가
먼저 스펙을 만들고 ISO가 표준으로 채택한 것으로, 오픈소스 소프트웨어 관리에 특화되어 있다.
OpenChain이 무료 자가 인증 체크리스트를 제공한다.

**ISO/IEC 42001**은 ISO/IEC JTC 1 SC 42가 독자적으로 제정한 **AI 관리 시스템** 표준으로,
OpenChain과 무관하다. 오픈소스에 특화된 표준이 아니라 AI 거버넌스 전반을 다루며,
공식 자가 인증 체크리스트가 별도로 제공되지 않는다.

세 표준의 상세 비교는 **[표준 비교](./compare/)** 페이지를 참고한다.

{{% /alert %}}

## 이 가이드의 포지셔닝

{{% alert title="오픈소스 관점의 ISO 42001 가이드" color="success" %}}

ISO/IEC 42001은 AI 관리 시스템 전반(리스크, 거버넌스, 생애주기, 인적 감독 등)을 다루는
광범위한 표준이다. 이 가이드는 그 중에서 **오픈소스 관리와 교차하는 요구사항**에 집중한다.

| 이 가이드가 다루는 것 | 이 가이드가 다루지 않는 것 |
|----------------------|--------------------------|
| AI 시스템의 오픈소스 라이선스 컴플라이언스 | AI 윤리 거버넌스 전반 |
| AI 프레임워크·모델·데이터셋 오픈소스 관리 | AI 편향성·공정성 평가 |
| AI SBOM 구성 및 유지 | 인간 감독·설명가능성 요구사항 |
| 오픈소스 AI 모델 공급망 검증 | AI 시스템 성능 최적화 |

AI 컴플라이언스 전반에 대한 내용은 [기업 오픈소스 관리 가이드 — AI 컴플라이언스](../opensource_for_enterprise/7-ai-compliance/)를 참고한다.

{{% /alert %}}

## ISO/IEC 42001 준수 확인 방법

ISO 42001은 OpenChain처럼 공식 자가 인증 체크리스트를 제공하지 않는다.
조직은 다음 세 가지 방법으로 준수 여부를 확인하거나 선언할 수 있다.

{{% pageinfo %}}

**방법 1. 자체 갭 분석 (Self-assessment)**

조직이 내부적으로 ISO 42001의 각 조항("shall" 요구사항)을 검토하여 현재 수준을 평가하고
개선 계획을 수립한다. 비용이 없으며 이 가이드의 체크포인트를 활용할 수 있다.

---

**방법 2. 제2자 심사 (Second-party assessment)**

고객사 또는 파트너사가 직접 조직의 AI 관리 시스템을 평가한다.
공급망 신뢰 구축 목적에 활용된다.

---

**방법 3. 제3자 인증 (Third-party certification)**

BSI, TÜV SÜD 등 ISO 인증기관이 심사하여 공식 ISO 42001 인증서를 발급한다.
ISO 27001 인증과 동일한 방식으로 운영된다.

{{% /pageinfo %}}

## 가이드 구성

이 가이드는 ISO/IEC 42001의 §4–§10 구조를 따르되, 오픈소스 교차점이 있는 섹션을 중심으로 구성한다.

| 섹션 | ISO 42001 조항 | 오픈소스 교차점 |
|------|----------------|----------------|
| [표준 비교](./compare/) | — | ISO 5230·18974·42001 관계 |
| [1. 조직 맥락과 리더십](./1-context-leadership/) | §4·§5 | AI 정책에 OSS 원칙 포함 |
| [2. 기획](./2-planning/) | §6 | AI 리스크 평가, OSS 라이선스·취약점 리스크 |
| [3. 지원](./3-support/) | §7 | AI OSS 역량, AI SBOM 문서화 |
| [4. 운영](./4-operation/) | §8 | OSS 프레임워크·데이터셋·공급망 |
| └ [AI 시스템의 오픈소스 관리](./4-operation/1-oss-in-ai/) | §8.5·§8.6 | OSS 라이선스 컴플라이언스 |
| └ [AI SBOM](./4-operation/2-ai-sbom/) | §7.5·§8.5 | AI SBOM 구성 및 유지 |
| └ [AI 공급망 검증](./4-operation/3-supply-chain/) | §8.8 | 외부 OSS 모델 조달 검증 |
| [5. 성과 평가와 개선](./5-evaluation/) | §9·§10 | OSS 컴플라이언스 지표 |

## AI Work Group과의 연계

OpenChain Korea Work Group의 **AI Work Group**은 AI SBOM 컴플라이언스 가이드를 개발하고 있다.
이 가이드의 [AI SBOM](./4-operation/2-ai-sbom/) 섹션은 AI Work Group의 산출물과 연계된다.

- AI Work Group 활동: [리소스 — AI Work Group](../../resource/AI_work_group/)
