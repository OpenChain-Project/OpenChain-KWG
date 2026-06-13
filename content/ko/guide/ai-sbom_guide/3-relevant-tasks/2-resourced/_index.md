---
title: "3.8 효과적 자원 배분"
weight: 20
type: docs
categories: ["guide"]
tags: ["AI SBOM", "자원", "책임"]
description: >
  AI SBOM 컴플라이언스 프로그램에 책임과 인력, 재원, 법률 전문성을 배정하고 부적합을 시정하는
  절차를 안내한다.
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 3 — 운영 체계** 단계에서 구축한다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

## 1. 조항 개요

역량(3.2)이 "누가 무엇을 할 수 있어야 하는가"를 정의한다면, 효과적 자원 배분은 그 역할에 실제로
사람과 시간, 예산을 붙여 프로그램이 작동하게 만든다. 정책과 절차가 문서로만 존재하고 자원이
없으면 컴플라이언스는 이름뿐이다.

3.8은 프로그램 과제에 책임을 배정하고 충분한 자원을 배분할 것을 요구한다. 입증자료는 다섯
가지로, 역할 담당자 명시, 인력과 재원 제공, 법률 전문성 접근, 내부 책임 배정 절차, 부적합 시정
절차를 다룬다. 규격은 ISO/IEC 42001 부속서 B(Annex B)의 자원 관련 절(B.4.2, B.4.6)과 인간 감독
판단 절(B.9.3)을 참조로 든다.

## 2. 해야 할 활동

- 프로그램 과제의 성공적 실행을 위해 책임(accountability)을 배정한다.
- 과제에 충분한 시간과 재원을 배분한다.
- AI SBOM 컴플라이언스에 관한 법률 전문성을 필요한 사람이 이용할 수 있게 한다.
- 정책과 과제를 검토·갱신하는 절차를 둔다.
- 부적합 사례를 검토하고 시정하는 절차를 둔다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| 3.8 | 프로그램 과제에 책임을 배정하고 충분한 시간과 재원을 배분하며, 법률 전문성 접근과 부적합 시정 절차를 갖춰야 한다. | **3.8.1** 프로그램 역할을 맡은 인물·그룹·기능이 식별된 문서<br>**3.8.2** 식별된 역할에 인력이 배치되고 적절한 재원이 제공되었음<br>**3.8.3** AI SBOM 컴플라이언스를 처리할 전문성의 식별(내부 또는 외부)<br>**3.8.4** AI SBOM 컴플라이언스 내부 책임을 배정하는 문서화된 절차<br>**3.8.5** 부적합 사례의 검토·시정을 처리하는 문서화된 절차 |

<details><summary>영문 원문 보기</summary>

> **3.8 Effectively resourced**
> Identify and Resource Program Task(s): assign accountability to ensure the successful execution of
> program tasks; program tasks are sufficiently resourced (time and adequate funding allocated); a
> process exists for reviewing and updating the policy and supporting tasks; legal expertise
> pertaining to AI SBOM Compliance is accessible to those who may need such guidance; and a process
> exists for the resolution of AI SBOM Compliance issues.
>
> **Verification material(s):**
> - Document with name of persons, group or function in program role(s) identified.
> - The identified program roles have been properly staffed and adequate funding provided.
> - Identification of expertise available to address AI SBOM Compliance matters which could be
>   internal or external.
> - A documented procedure that assigns internal responsibilities for AI SBOM Compliance.
> - A documented procedure for handling the review and remediation of non-compliant cases.
>
> See, e.g., Sections B.4.2 and B.4.6 of Annex B of ISO/IEC 42001. Section B.9.3 also provides
> guidance to determine if human resources for human oversight should be incorporated.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 3.8.1 역할 담당자 식별 문서

**준수 방법**

프로그램 역할을 맡은 사람이나 그룹, 기능을 이름과 함께 문서로 식별한다. 개인 이동에 대비해
직무명을 함께 적는 편이 안정적이다. AI SBOM 프로그램에는 일반 오픈소스 역할에 더해 AI 거버넌스
책임자와 AI SBOM 검증 담당, 모델·데이터셋 라이선스 검토 담당이 필요하다.

**샘플**

```
| 역할 | 담당자(직무) | 연락처 |
|------|-------------|--------|
| AI 거버넌스 책임자 | 김OO (AI 윤리·거버넌스 리드) | ai-gov@company.com |
| AI SBOM 검증 담당 | 이OO (플랫폼 엔지니어) | sbom@company.com |
| 라이선스 검토 담당 | 박OO (오픈소스 법무) | oss-legal@company.com |
| 보안 담당 | 최OO (제품 보안) | psirt@company.com |
```

---

### 3.8.2 인력 배치와 재원 제공

**준수 방법**

식별된 역할에 실제로 인력이 배치되고 예산이 할당되었음을 보인다. 투입 비율(예: 30%)과 연간
예산 근거를 기록한다. AI SBOM 컴플라이언스는 모델·데이터셋 검토와 도구 운영에 시간이 들므로,
역할별 투입을 현실적으로 산정한다.

**고려사항**

- **투입 비율 명시**: 겸직이면 AI SBOM 업무에 할당된 시간 비율을 적는다.
- **도구 예산**: AI SBOM 생성·관리 도구와 법무 자문 비용을 예산에 포함한다.

**샘플**

```
| 역할 | 담당자 | 투입 비율 | 연간 예산 근거 | 승인자/승인일 |
|------|--------|----------|---------------|--------------|
| AI 거버넌스 책임자 | 김OO | 30% | 인건비 + 규제 자문 | CTO / 2026-01-15 |
| AI SBOM 검증 담당 | 이OO | 50% | 인건비 + 도구 운영 | CTO / 2026-01-15 |
```

---

### 3.8.3 법률 전문성 접근

**준수 방법**

AI SBOM 컴플라이언스에 관한 법률 전문성을 필요한 사람이 이용할 수 있게 한다. 비표준 라이선스
해석과 규제 의무 판단은 법무의 몫이므로, 내부 법무 또는 외부 법무법인 가운데 접근 경로를
명시한다. 에스컬레이션 기준(어떤 사안을 법무로 올리는가)을 함께 정한다.

**샘플**

```
- 내부: 오픈소스 법무 담당 (박OO) — 1차 라이선스 검토
- 외부: ○○ 법무법인 AI·IP 팀 — 비표준 라이선스 분쟁, 규제 해석
- 에스컬레이션 기준: 정책의 금지·조건부 목록에 없는 라이선스, 다운스트림 공개 의무 판단,
  규제 신규 적용 사안
```

---

### 3.8.4 내부 책임 배정 절차

**준수 방법**

AI SBOM 컴플라이언스의 내부 책임을 배정하는 절차를 문서화한다. 책임이 모호하면 누락이 생기므로,
업무별로 실행(R), 승인(A), 자문(C), 통보(I)를 구분하는 RACI 매트릭스가 효과적이다.

**샘플 (RACI 매트릭스)**

| 업무 | AI 거버넌스 책임자 | AI SBOM 검증 담당 | 라이선스 검토 담당 | 보안 담당 |
|------|:---:|:---:|:---:|:---:|
| AI SBOM 생성 | I | R | C | I |
| 라이선스 의무 검토 | A | C | R | I |
| 투명성 의무 검토 | A | C | R | I |
| 취약점 모니터링 | I | C | I | R |
| 프레임워크 정기 검토 | R/A | C | C | C |

*R 실행, A 승인, C 자문, I 통보*

---

### 3.8.5 부적합 검토·시정 절차

**준수 방법**

부적합 사례(예: 금지 라이선스 모델 도입, AI SBOM 누락, 투명성 의무 미이행)를 검토하고 시정하는
절차를 둔다. 심각도에 따라 처리 기한을 달리한다. AI에서는 모델이 이미 배포된 뒤 라이선스 문제가
드러나는 경우가 있으므로, 회수나 교체를 포함한 시정 경로를 마련한다.

**샘플 (시정 절차와 심각도 기준)**

```
시정 절차: 식별·보고 → 심각도 평가 → 원인 분석 → 시정 조치 → 재발 방지 → 기록

| 심각도 | 예시 | 처리 기한 |
|--------|------|----------|
| 높음 | 금지 라이선스 모델이 외부 배포 제품에 포함 | 즉시 대응(48시간 내 격리·교체 검토) |
| 중간 | AI SBOM에 인바운드 모델 누락 | 7일 내 보강 |
| 낮음 | 모델 카드 메타데이터 일부 미기재 | 다음 정기 검토 시 처리 |
```

## 5. 참고

- 역할별 역량 정의: [3.2 역량](../../1-program-foundation/2-competence/)
- 부적합 시정과 연결되는 거버넌스 검토: [3.10 거버넌스](../../4-governance/1-governance/)
- ISO/IEC 5230 자원 배분 본보기: [ISO/IEC 5230 준수 가이드 — 3.2.2 효과적 리소스](../../../iso5230_guide/2-relevant-tasks/2-resourced/)
