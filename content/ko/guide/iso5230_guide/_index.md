---
title: "ISO/IEC 5230 준수 가이드"
linkTitle: "ISO/IEC 5230 준수 가이드"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "라이선스 컴플라이언스", "OpenChain"]
description: >
  ISO/IEC 5230의 24개 입증자료 항목을 조항별로 풀어서 설명하는 준수 가이드다.
---

이 가이드는 ISO/IEC 5230(OpenChain License Compliance)의 각 요구사항 조항을 하나씩
풀어서 설명한다. 각 조항이 요구하는 입증자료가 무엇인지, 어떻게 준수할 수 있는지,
바로 활용할 수 있는 샘플 문서는 무엇인지 안내한다.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

## 대상 독자

- 오픈소스 컴플라이언스 담당자 및 오픈소스 프로그램 매니저
- ISO/IEC 5230 인증 취득을 준비 중인 기업의 담당자
- 기존 오픈소스 관리 체계를 ISO 표준 기준으로 점검하고 싶은 실무자

## 이 가이드의 활용 방법

{{% alert title="기업 오픈소스 관리 가이드와의 관계" color="success" %}}

**[기업 오픈소스 관리 가이드](../opensource_for_enterprise/)** 는 오픈소스를
어떻게 관리할지 실무 구현 방법(정책·프로세스·도구·조직)을 설명한다.

**이 가이드(ISO/IEC 5230 준수 가이드)** 는 인증을 위해 무엇을 입증해야 하는지
조항 단위로 정리한다.

| 가이드 | 중점 | 활용 상황 |
|--------|------|-----------|
| 기업 오픈소스 관리 가이드 | 실무 구현 방법 (How to implement) | 오픈소스 관리 체계를 처음 구축할 때 |
| ISO/IEC 5230 준수 가이드 | 조항별 입증자료 기준 (What to prove) | 인증 준비 또는 자체 점검 시 |

두 가이드는 상호 보완적이다. 각 조항 페이지는 기업 오픈소스 관리 가이드의
대응 섹션으로 교차 링크를 제공한다.

{{% /alert %}}

## 전체 조항 체크리스트

ISO/IEC 5230은 총 **13개 조항, 24개 입증자료 항목**으로 구성된다.

### §3.1 프로그램 기반

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §3.1.1 | 정책 (Policy) | 2건 | [바로가기](./1-program-foundation/1-policy/) |
| §3.1.2 | 역량 (Competence) | 3건 | [바로가기](./1-program-foundation/2-competence/) |
| §3.1.3 | 인식 (Awareness) | 1건 | [바로가기](./1-program-foundation/3-awareness/) |
| §3.1.4 | 프로그램 범위 (Program Scope) | 1건 | [바로가기](./1-program-foundation/4-scope/) |
| §3.1.5 | 라이선스 의무 (License Obligations) | 1건 | [바로가기](./1-program-foundation/5-license-obligations/) |

### §3.2 관련 업무

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §3.2.1 | 외부 문의 대응 (Access) | 2건 | [바로가기](./2-relevant-tasks/1-access/) |
| §3.2.2 | 효과적 리소스 (Effectively Resourced) | 5건 | [바로가기](./2-relevant-tasks/2-resourced/) |

### §3.3 콘텐츠 검토 및 승인

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §3.3.1 | SBOM | 2건 | [바로가기](./3-content-review/1-sbom/) |
| §3.3.2 | 라이선스 컴플라이언스 (License Compliance) | 1건 | [바로가기](./3-content-review/2-license-compliance/) |

### §3.4 컴플라이언스 산출물

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §3.4.1 | 컴플라이언스 산출물 (Compliance Artifacts) | 2건 | [바로가기](./4-artifacts/1-compliance-artifacts/) |

### §3.5 커뮤니티 참여

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §3.5.1 | 기여 (Contributions) | 3건 | [바로가기](./5-community/1-contributions/) |

### §3.6 규격 준수

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §3.6.1 | 적합성 (Conformance) | 1건 | [바로가기](./6-conformance/1-conformance/) |
| §3.6.2 | 지속 기간 (Duration) | 1건 | [바로가기](./6-conformance/2-duration/) |

**합계: 13개 조항 / 24개 입증자료 항목**

## ISO/IEC 5230 인증 절차

ISO/IEC 5230 준수 여부를 공식적으로 인정받는 방법은 세 가지다.

{{% pageinfo %}}

**1단계. 자가 인증 (Self-Certification)**

OpenChain 프로젝트가 제공하는 온라인 체크리스트를 작성하여 자체적으로 준수 여부를
선언한다. 비용이 없으며 즉시 시작할 수 있다.

- 체크리스트: [https://certification.openchainproject.org/](https://certification.openchainproject.org/)
- 적합 대상: 인증을 처음 준비하거나 내부 점검 용도

---

**2단계. 독립 평가 (Independent Assessment)**

외부 전문가 또는 컨설팅 기관이 오픈소스 프로그램을 평가한다. 자가 인증보다 신뢰도가
높으며, 공급망 파트너에게 준수 수준을 입증하는 데 활용된다.

- 파트너 목록: [Open Compliance Directory](https://www.openchainproject.org/find-a-partner)

---

**3단계. 제3자 인증 (Third-party Certification)**

OpenChain이 공인한 인증 기관이 심사하여 공식 인증서를 발급한다. 가장 높은 신뢰도를
가지며, 글로벌 공급망 요구사항 충족에 적합하다.

- 공인 인증 기관 (2024년 기준): ORCRO, PwC, TÜV SÜD, Synopsys, Bureau Veritas

{{% /pageinfo %}}

{{% alert title="단계적 접근 권장" color="success" %}}
처음 인증을 준비하는 기업은 **자가 인증 → 독립 평가 → 제3자 인증** 순서로
단계적으로 진행하는 것을 권장한다. 자가 인증만으로도 많은 공급망 파트너가 요구하는
준수 수준을 충족할 수 있다.
{{% /alert %}}
