---
title: "§4.1.2 역량"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "역량"]
description: >
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 2 — 역량 및 교육** 단계에서 구축합니다. ISO/IEC 5230 대비 참여자 목록(4.1.2.3), 주기적 검토 증거(4.1.2.5), 내부 모범 사례 일치 검증(4.1.2.6) 3개 항목이 추가됩니다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

## 1. 조항 개요

§4.1.2는 ISO/IEC 5230 §3.1.2(역량)와 기본 구조는 동일하지만, 입증자료 항목이
3건 더 많다. 5230이 역할 목록·역량 정의·역량 평가 증거 3가지를 요구하는 반면,
18974는 여기에 **참여자 목록 및 역할 매핑(4.1.2.3)**, **주기적 검토 및 프로세스
변경 증거(4.1.2.5)**, **내부 모범 사례와의 일치 검증(4.1.2.6)** 을 추가로
요구한다. 이 세 가지 추가 항목은 역량 체계가 형식에 그치지 않고 실제로 최신
상태를 유지하며 업계 표준과 정합성을 갖추고 있음을 입증하도록 요구한다.

## 2. 해야 할 활동

- 프로그램 역할별 책임 목록을 작성한다 (5230과 동일).
- 각 역할에 필요한 역량을 정의하고 문서화한다 (5230과 동일).
- **참여자 이름과 각자의 역할을 매핑한 목록**을 별도로 작성한다 (18974 추가).
- 각 참여자의 역량을 평가하고 기록한다 (5230과 동일).
- **주기적으로 역량 체계를 검토하고 프로세스 변경 사항을 기록한다** (18974 추가).
- **역량 체계가 회사 내부 모범 사례와 일치하는지 확인하고 담당자를 지정한다**
  (18974 추가).

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §4.1.2 | 조직은 프로그램의 성과와 효율에 영향을 미치는 역할과 책임을 확인하고, 각 역할의 필요 역량을 결정하며, 참여자의 역량을 확인하고 필요 시 조치를 취하고, 역량 보유 증거를 문서화하여 유지해야 한다. | **4.1.2.1** 여러 프로그램 참여자에 대한 해당 책임이 있는 문서화된 역할 목록<br>**4.1.2.2** 각 역할에 대한 역량을 식별하는 문서<br>**4.1.2.3** 참여자 목록 및 해당 역할 ★<br>**4.1.2.4** 각 프로그램 참여자에 대해 평가된 역량에 대한 문서화된 증거<br>**4.1.2.5** 주기적인 검토 및 프로세스 변경에 대한 문서화된 증거 ★<br>**4.1.2.6** 이러한 프로세스가 회사 내부 모범 사례와 일치하며 최신 상태를 유지하고 있는지, 그리고 이를 확인하는 담당자가 지정되었는지에 대한 문서화된 증거 ★ |

★ = ISO/IEC 5230 §3.1.2 대비 추가 항목

<details><summary>영문 원문 보기</summary>

> **§4.1.2 Competence**
> The organization shall:
> - Identify the roles and responsibilities that impact the performance and
>   effectiveness of the program;
> - Determine the necessary competence of program participants fulfilling
>   each role;
> - Ensure that program participants are competent on the basis of appropriate
>   education, training, and/or experience;
> - Where applicable, take actions to acquire the necessary competence;
> - Retain appropriate documented information as evidence of competence.
>
> **Verification Material(s):**
> 4.1.2.1 A documented list of roles with corresponding responsibilities for
> the different participants in the program.
> 4.1.2.2 A document that identifies the competencies for each role.
> 4.1.2.3 List of participants and their roles.
> 4.1.2.4 Documented evidence of assessed competence for each program
> participant.
> 4.1.2.5 Documented evidence of periodic reviews and changes to the process.
> 4.1.2.6 Documented evidence that these processes align with and are
> up-to-date with company internal best practices, and that a person has been
> assigned to make sure they remain so.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 4.1.2.1 역할과 책임 목록 문서

ISO/IEC 5230 §3.1.2.1과 동일하다. 보안 보증 관점에서 보안 담당(DevSecOps,
취약점 분석)의 역할을 명확히 포함해야 한다. 작성 방법은
[§3.1.2.1 역할과 책임 목록 문서](../../iso5230_guide/1-program-foundation/2-competence/)를 참고한다.

---

### 4.1.2.2 역할별 필요 역량 문서

ISO/IEC 5230 §3.1.2.2와 동일하다. 보안 담당 역할에 **CVSS 점수 해석, 취약점
분석 도구(OSV-SCALIBR, Dependency-Track 등) 운용, DevSecOps 이해** 역량을
포함해야 한다. 작성 방법은
[§3.1.2.2 역할별 필요 역량 문서](../../iso5230_guide/1-program-foundation/2-competence/)를 참고한다.

---

### 4.1.2.3 참여자 목록 및 역할 ★

**준수 방법**

4.1.2.1의 역할 목록과 달리, 이 항목은 **실제 인원의 이름**과 그들이 담당하는
역할을 매핑한 목록을 요구한다. 조직도 상의 역할이 아니라 현재 프로그램에
참여하는 실제 담당자가 누구인지를 명확히 하는 것이 목적이다. 인사 변동 시
즉시 갱신해야 한다.

**고려사항**

- **이름 또는 직무명**: 개인 이름 대신 직무명을 사용해도 무방하나, 특정인을
  식별할 수 있는 수준이어야 한다.
- **겸임 명시**: 여러 역할을 겸임하는 경우 모든 역할을 기재한다.
- **갱신 즉시성**: 담당자 변경 즉시 문서를 갱신하고 버전을 업데이트한다.

**샘플**

```
| 이름 | 역할 | 연락처 | 지정일 |
|------|------|--------|--------|
| 홍길동 | 오픈소스 프로그램 매니저 | oss@company.com | 2025-01-01 |
| 김철수 | 보안 담당 (DevSecOps) | security@company.com | 2025-01-01 |
| 이영희 | 법무 담당 | legal@company.com | 2025-01-01 |
| 박인프라 | IT 담당 | it@company.com | 2025-03-15 |
```

---

### 4.1.2.4 역량 평가 증거

ISO/IEC 5230 §3.1.2.3과 동일하다. 작성 방법은
[§3.1.2.3 역량 평가 증거](../../iso5230_guide/1-program-foundation/2-competence/)를 참고한다.

---

### 4.1.2.5 주기적 검토 및 프로세스 변경 증거 ★

**준수 방법**

역량 체계(역할 정의, 역량 기준, 평가 방법)를 주기적으로 검토하고, 검토 과정에서
발생한 변경 사항을 기록해야 한다. 새로운 보안 도구 도입, 조직 구조 변경, 취약점
대응 프로세스 개선 등이 역량 체계에 반영되었는지 확인하는 것이 핵심이다. 검토
기록 자체가 입증자료 4.1.2.5다.

**고려사항**

- **검토 주기**: 최소 연 1회 정기 검토를 실시하고, 조직·프로세스 변경 시 즉시
  검토한다.
- **변경 이력 기록**: 변경 내용, 변경 이유, 변경 날짜, 변경자를 기록한다.
- **검토 증거 형식**: 검토 회의록, 검토 완료 확인서, 변경 이력 로그 등이
  증거로 활용 가능하다.

**샘플**

```
[역량 체계 정기 검토 기록]

| 검토 날짜 | 검토 내용 | 변경 사항 | 검토자 |
|----------|-----------|-----------|--------|
| 2025-01-10 | 전체 역할·역량 검토 | 보안 담당 역량에 CVSS v4.0 해석 항목 추가 | 홍길동 |
| 2026-01-08 | 전체 역할·역량 검토 | Dependency-Track 운용 역량 IT 담당에 추가 | 홍길동 |
```

---

### 4.1.2.6 내부 모범 사례 일치 검증 ★

**준수 방법**

역량 정의 및 평가 프로세스가 회사 내부 모범 사례(HR 정책, 기술 교육 기준 등)와
정합성을 유지하고 있는지 확인하며, 이를 지속적으로 관리하는 담당자를 지정해야
한다. 역량 체계가 산업 표준이나 내부 지침과 괴리되지 않도록 하는 것이 목적이다.

**고려사항**

- **담당자 지정**: 역량 체계의 최신성과 내부 모범 사례 정합성을 관리하는
  책임자를 명시적으로 지정하고 기록한다.
- **모범 사례 기준**: 업계 표준(NIST SSDF, ISO 27001 등), 사내 보안 정책,
  DevSecOps 가이드라인 등을 모범 사례 기준으로 활용할 수 있다.

**샘플**

```
[내부 모범 사례 정합성 확인서]

역량 체계 관리 담당자: 홍길동 (오픈소스 프로그램 매니저)
마지막 정합성 검토일: 2026-01-08
참조 모범 사례 기준: 사내 보안 교육 기준 v3.0, NIST SSDF 1.1

검토 결과:
- 보안 담당 역량 기준이 사내 보안 교육 커리큘럼과 일치함 ✓
- 취약점 분석 도구 역량이 최신 도구(Dependency-Track v4.x)를 반영함 ✓
- 다음 정합성 검토 예정일: 2027-01-08
```

## 5. 참고

- 대응 ISO/IEC 5230 조항: [§3.1.2 역량](../../iso5230_guide/1-program-foundation/2-competence/)
- 관련 가이드: [기업 오픈소스 관리 가이드 — 1. 조직](../../../opensource_for_enterprise/1-teams/)
- 관련 템플릿: [오픈소스 정책 템플릿 — Appendix 1. 담당자 현황](../../../templates/1-policy/appendix/)
