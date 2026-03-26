---
title: "ISO/IEC 18974 준수 가이드"
linkTitle: "ISO/IEC 18974 준수 가이드"
weight: 30
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "보안 보증", "OpenChain"]
description: >
  ISO/IEC 18974의 25개 입증자료 항목을 조항별로 풀어서 설명하는 준수 가이드다.
---

이 가이드는 ISO/IEC 18974(OpenChain Security Assurance)의 각 요구사항 조항을
하나씩 풀어서 설명한다. 각 조항이 요구하는 입증자료가 무엇인지, 어떻게 준수할
수 있는지, 바로 활용할 수 있는 샘플 문서는 무엇인지 안내한다.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

## 대상 독자

- 오픈소스 보안 보증 체계를 처음 수립하는 기업의 보안 담당자 및 오픈소스 프로그램 매니저
- DevSecOps 환경에서 오픈소스 취약점 관리 프로세스를 구축하는 엔지니어
- ISO/IEC 5230 인증 취득 후 ISO/IEC 18974 추가 인증을 준비하는 기업 담당자

## ISO/IEC 5230과의 관계

{{% alert title="ISO/IEC 18974는 ISO/IEC 5230 위에 보안 레이어를 추가한다" color="warning" %}}

**ISO/IEC 5230(라이선스 컴플라이언스)** 은 오픈소스 라이선스 의무 이행을
체계적으로 관리하는 기반 프로그램을 다룬다.

**ISO/IEC 18974(보안 보증)** 은 그 위에 취약점 탐지·평가·대응이라는 보안
레이어를 추가한다. 두 규격은 정책·역량·SBOM 등 핵심 인프라를 공유하며,
18974는 이를 보안 관점에서 확장하고 심화한다.

| 구분 | ISO/IEC 5230 | ISO/IEC 18974 |
|------|-------------|--------------|
| 목적 | 라이선스 컴플라이언스 | 보안 보증 |
| 입증자료 | 24개 | 25개 |
| 공통 기반 조항 | — | 16개 (5230과 대응) |
| 18974 전용 조항 | — | 9개 (보안 특화) |
| 핵심 추가 요소 | — | 취약점 탐지·대응·CVD 절차 |

{{% /alert %}}

{{% alert title="권장 취득 경로" color="success" %}}
오픈소스 보안 보증 인증을 처음 준비하는 기업은 **ISO/IEC 5230 취득 →
ISO/IEC 18974 추가 취득** 순서로 단계적으로 진행하는 것을 권장한다.
5230에서 구축한 정책·프로세스·SBOM 인프라를 18974에서 그대로 활용할 수
있어 추가 비용과 노력을 최소화할 수 있다.

두 규격의 조항별 상세 비교는 **[ISO/IEC 5230 vs 18974 비교](./compare/)** 페이지를 참고한다.
{{% /alert %}}

## 이 가이드의 활용 방법

{{% alert title="기업 오픈소스 관리 가이드와의 관계" color="success" %}}

**[기업 오픈소스 관리 가이드](../opensource_for_enterprise/)** 는 오픈소스를
어떻게 관리할지 실무 구현 방법(정책·프로세스·도구·조직)을 설명한다.

**이 가이드(ISO/IEC 18974 준수 가이드)** 는 보안 보증 인증을 위해 무엇을
입증해야 하는지 조항 단위로 정리한다.

| 가이드 | 중점 | 활용 상황 |
|--------|------|-----------|
| 기업 오픈소스 관리 가이드 | 실무 구현 방법 (How to implement) | 오픈소스 관리 체계를 처음 구축할 때 |
| ISO/IEC 18974 준수 가이드 | 조항별 입증자료 기준 (What to prove) | 보안 보증 인증 준비 또는 자체 점검 시 |

{{% /alert %}}

## 전체 조항 체크리스트

ISO/IEC 18974는 총 **11개 조항, 25개 입증자료 항목**으로 구성된다.
★ 표시는 ISO/IEC 5230 대비 추가되거나 보안 관점으로 변경된 항목이다.

### §4.1 프로그램 기반

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §4.1.1 | 정책 (Policy) | 2건 | [바로가기](./1-program-foundation/1-policy/) |
| §4.1.2 | 역량 (Competence) ★ | 6건 | [바로가기](./1-program-foundation/2-competence/) |
| §4.1.3 | 인식 (Awareness) | 1건 | [바로가기](./1-program-foundation/3-awareness/) |
| §4.1.4 | 프로그램 범위 (Program Scope) ★ | 3건 | [바로가기](./1-program-foundation/4-scope/) |
| §4.1.5 | 표준 관행 구현 (Standard Practice Implementation) ★ | 1건 | [바로가기](./1-program-foundation/5-standard-practice/) |

### §4.2 관련 업무

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §4.2.1 | 접근성 (Access) | 2건 | [바로가기](./2-relevant-tasks/1-access/) |
| §4.2.2 | 효과적 리소스 (Effectively Resourced) | 4건 | [바로가기](./2-relevant-tasks/2-resourced/) |

### §4.3 콘텐츠 검토 및 승인

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §4.3.1 | SBOM | 2건 | [바로가기](./3-content-review/1-sbom/) |
| §4.3.2 | 보안 보증 (Security Assurance) ★ | 2건 | [바로가기](./3-content-review/2-security-assurance/) |

### §4.4 규격 준수

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| §4.4.1 | 완전성 (Completeness) | 1건 | [바로가기](./4-conformance/1-completeness/) |
| §4.4.2 | 기간 (Duration) | 1건 | [바로가기](./4-conformance/2-duration/) |

**합계: 11개 조항 / 25개 입증자료 항목**

{{% pageinfo %}}

★ **ISO/IEC 5230 대비 18974 추가 항목 요약**

| 조항 | 추가 내용 | 추가 항목 수 |
|------|-----------|:-----------:|
| §4.1.2 역량 | 참여자 목록(4.1.2.3), 주기적 검토 증거(4.1.2.5), 내부 모범 사례 일치 검증(4.1.2.6) | +3건 |
| §4.1.4 프로그램 범위 | 성과 메트릭(4.1.4.2), 지속적 개선 증거(4.1.4.3) | +2건 |
| §4.1.5 표준 관행 구현 | 8가지 취약점 처리 방법 전체에 대한 문서화 절차(4.1.5.1) | 신규 조항 |
| §4.3.2 보안 보증 | 취약점 탐지·해결 절차(4.3.2.1), 취약점 및 조치 기록(4.3.2.2) | 신규 조항 |

{{% /pageinfo %}}

## ISO/IEC 18974 인증 절차

ISO/IEC 18974 준수 여부를 공식적으로 인정받는 방법은 세 가지다.

{{% pageinfo %}}

**1단계. 자가 인증 (Self-Certification)**

OpenChain 프로젝트가 제공하는 온라인 체크리스트를 작성하여 자체적으로 준수
여부를 선언한다. 비용이 없으며 즉시 시작할 수 있다.

- 체크리스트: [https://certification.openchainproject.org/](https://certification.openchainproject.org/)
- 적합 대상: 인증을 처음 준비하거나 내부 점검 용도

---

**2단계. 독립 평가 (Independent Assessment)**

외부 전문가 또는 컨설팅 기관이 보안 보증 프로그램을 평가한다. 공급망 파트너에게
준수 수준을 입증하는 데 활용된다.

- 파트너 목록: [Open Compliance Directory](https://www.openchainproject.org/find-a-partner)

---

**3단계. 제3자 인증 (Third-party Certification)**

OpenChain이 공인한 인증 기관이 심사하여 공식 인증서를 발급한다. 글로벌 공급망
요구사항 충족에 적합하다.

- 공인 인증 기관 (2024년 기준): ORCRO, PwC, TÜV SÜD, Synopsys, Bureau Veritas

{{% /pageinfo %}}

{{% alert title="단계적 접근 권장" color="success" %}}
ISO/IEC 5230을 이미 취득한 기업은 기존 인프라(정책·역량·SBOM)를 활용하여
보안 보증 특화 항목(§4.1.5, §4.3.2)을 추가하는 방식으로 효율적으로 18974
인증을 준비할 수 있다.
{{% /alert %}}
