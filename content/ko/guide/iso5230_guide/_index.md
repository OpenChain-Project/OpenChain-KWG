---
title: "ISO/IEC 5230 준수 가이드"
linkTitle: "ISO/IEC 5230 준수 가이드"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "라이선스 컴플라이언스", "OpenChain"]
description: >
  ISO/IEC 5230의 25개 입증자료 항목을 조항별로 풀어서 설명하는 준수 가이드다.
---

이 가이드는 ISO/IEC 5230(OpenChain License Compliance)의 각 요구사항 조항을 하나씩
풀어서 설명한다. 각 조항이 요구하는 입증자료가 무엇인지, 어떻게 준수할 수 있는지,
바로 활용할 수 있는 샘플 문서는 무엇인지 안내한다.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

## 대상 독자

- 오픈소스 컴플라이언스 담당자 및 오픈소스 프로그램 매니저
- **처음 오픈소스 관리 체계를 구축하는 신규 담당자**
- ISO/IEC 5230 인증 취득을 준비 중인 기업의 담당자
- 기존 오픈소스 관리 체계를 ISO 표준 기준으로 점검하고 싶은 실무자

## 이 가이드의 활용 방법

{{% alert title="기업 오픈소스 관리 가이드와의 관계" color="success" %}}

이 가이드는 **처음 구축**하는 담당자와 **인증을 준비**하는 담당자 모두에게 활용할 수 있다.
아래 [단계별 구축 로드맵](#단계별-구축-로드맵)을 따라가면 구축 순서와 각 단계에서
만들어야 할 산출물을 파악할 수 있고, 각 조항 페이지에서 구체적인 구현 방법과 샘플을
확인할 수 있다.

**[기업 오픈소스 관리 가이드](../opensource_for_enterprise/)** 는 조직·정책·프로세스·도구·교육
영역을 실무 관점으로 설명하는 보완 가이드다. 두 가이드의 각 조항·섹션은 서로 교차 링크로
연결되어 있다.

{{% /alert %}}

## 단계별 구축 로드맵

처음 오픈소스 관리 체계를 구축하는 담당자를 위한 단계별 가이드다.
ISO/IEC 5230의 25개 입증자료를 **구축 우선순위** 기준으로 5단계로 나눴다.
각 단계를 순서대로 진행하면 ISO/IEC 5230 자가 인증이 가능한 수준에 도달한다.

---

### Phase 1 — 기반 수립

**목표**: 오픈소스 관리 프로그램의 범위를 정하고, 정책을 수립하고, 담당 조직을 구성한다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.1.4.1** | 프로그램 적용 범위 문서 | [§3.1.4 →](./1-program-foundation/4-scope/) |
| ☐ | **3.1.1.1** | 문서화된 오픈소스 정책 | [§3.1.1 →](./1-program-foundation/1-policy/) |
| ☐ | **3.1.1.2** | 정책 전파 절차 | [§3.1.1 →](./1-program-foundation/1-policy/) |
| ☐ | **3.2.2.1** | 역할 담당자 이름 문서 | [§3.2.2 →](./2-relevant-tasks/2-resourced/) |
| ☐ | **3.2.2.2** | 역할 배치 및 예산 확인 | [§3.2.2 →](./2-relevant-tasks/2-resourced/) |
| ☐ | **3.2.2.3** | 법률 자문 접근 방법 | [§3.2.2 →](./2-relevant-tasks/2-resourced/) |
| ☐ | **3.2.2.4** | 내부 책임 할당 절차 | [§3.2.2 →](./2-relevant-tasks/2-resourced/) |
| ☐ | **3.2.2.5** | 미준수 사례 검토·수정 절차 | [§3.2.2 →](./2-relevant-tasks/2-resourced/) |

**완료 산출물**: 오픈소스 프로그램 범위 문서, 오픈소스 정책 문서, 역할·책임 문서

---

### Phase 2 — 역량 및 교육

**목표**: 프로그램 참여자의 역할별 역량을 정의하고, 인식 수준을 평가한다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.1.2.1** | 역할과 책임 목록 문서 | [§3.1.2 →](./1-program-foundation/2-competence/) |
| ☐ | **3.1.2.2** | 역할별 필요 역량 기술 문서 | [§3.1.2 →](./1-program-foundation/2-competence/) |
| ☐ | **3.1.2.3** | 역량 평가 증거 | [§3.1.2 →](./1-program-foundation/2-competence/) |
| ☐ | **3.1.3.1** | 참여자 인식 평가 증거 | [§3.1.3 →](./1-program-foundation/3-awareness/) |

**완료 산출물**: 역할·역량 정의 문서, 교육 이수 기록, 인식 평가 결과

---

### Phase 3 — 프로세스 구축

**목표**: 오픈소스 사용·검토·배포에 필요한 핵심 프로세스를 수립한다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.1.5.1** | 라이선스 의무사항 검토 절차 | [§3.1.5 →](./1-program-foundation/5-license-obligations/) |
| ☐ | **3.3.1.1** | SBOM 관리 절차 | [§3.3.1 →](./3-content-review/1-sbom/) |
| ☐ | **3.3.1.2** | 오픈소스 컴포넌트 기록 | [§3.3.1 →](./3-content-review/1-sbom/) |
| ☐ | **3.3.2.1** | 라이선스 사용 사례 처리 절차 | [§3.3.2 →](./3-content-review/2-license-compliance/) |
| ☐ | **3.4.1.1** | 컴플라이언스 산출물 준비·배포 절차 | [§3.4.1 →](./4-artifacts/1-compliance-artifacts/) |
| ☐ | **3.4.1.2** | 컴플라이언스 산출물 보관 절차 | [§3.4.1 →](./4-artifacts/1-compliance-artifacts/) |

**완료 산출물**: 라이선스 의무 검토 절차서, SBOM 관리 절차서, 컴플라이언스 산출물

---

### Phase 4 — 운영 체계 수립

**목표**: 외부 문의에 대응하는 창구를 마련하고, 오픈소스 기여 정책을 수립한다.
기여 활동을 허용하지 않는 기업은 §3.5.1 항목을 건너뛸 수 있다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.2.1.1** | 외부 문의 공개 채널 | [§3.2.1 →](./2-relevant-tasks/1-access/) |
| ☐ | **3.2.1.2** | 외부 문의 내부 대응 절차 | [§3.2.1 →](./2-relevant-tasks/1-access/) |
| ☐ | **3.5.1.1** | 오픈소스 기여 정책 *(기여 허용 시)* | [§3.5.1 →](./5-community/1-contributions/) |
| ☐ | **3.5.1.2** | 기여 관리 절차 *(기여 허용 시)* | [§3.5.1 →](./5-community/1-contributions/) |
| ☐ | **3.5.1.3** | 기여 정책 인식 절차 *(기여 허용 시)* | [§3.5.1 →](./5-community/1-contributions/) |

**완료 산출물**: 외부 문의 대응 채널(이메일·웹폼 등), 기여 정책 문서(해당 시)

---

### Phase 5 — 적합성 확인 및 유지

**목표**: Phase 1~4의 모든 입증자료를 점검하고 ISO/IEC 5230 자가 인증을 선언한다.
이후 18개월마다 적합성을 재확인한다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.6.1.1** | 모든 요구사항 충족 확인 문서 | [§3.6.1 →](./6-conformance/1-conformance/) |
| ☐ | **3.6.2.1** | 18개월 이내 요구사항 충족 확인 문서 | [§3.6.2 →](./6-conformance/2-duration/) |

**완료 산출물**: 자가 인증 선언문, 정기 재확인 기록

{{% alert title="자가 인증 바로 시작하기" color="success" %}}
Phase 1~5를 모두 완료했다면 OpenChain 자가 인증 체크리스트로 준수 여부를 공식 선언할 수 있다.
[https://certification.openchainproject.org/](https://certification.openchainproject.org/)
{{% /alert %}}

## 전체 조항 체크리스트

ISO/IEC 5230은 총 **13개 조항, 25개 입증자료 항목**으로 구성된다.

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

**합계: 13개 조항 / 25개 입증자료 항목**

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
