---
title: "3.2 역량"
weight: 20
type: docs
categories: ["guide"]
tags: ["AI SBOM", "역량", "역할"]
description: >
  AI SBOM 컴플라이언스 프로그램의 역할과 책임을 정의하고, 역할별 역량을 식별해 평가하는 방법을
  안내한다.
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 1 — 프로그램 기반** 단계에서 구축한다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

## 1. 조항 개요

정책(3.1)이 무엇을 해야 하는지 정한다면, 역량은 그 일을 할 수 있는 사람을 보장한다. AI SBOM
컴플라이언스는 코드 라이선스만 다루던 오픈소스 컴플라이언스보다 넓은 지식을 요구한다. 모델
가중치와 데이터셋의 라이선스, 모델 카드 해석, 신흥 AI 규제, 비표준 라이선스의 사용 제한까지
판단해야 한다.

3.2는 프로그램의 성과에 영향을 미치는 역할과 책임을 식별하고, 각 역할에 필요한 역량을 정해
참여자가 그 역량을 갖추도록 보장할 것을 요구한다. 규격은 사용 사례와 관련된 경우 거버넌스, 보안,
안전, 프라이버시, 개발, 공급자 관리 기능의 역량을 갖추도록 명시한다.

## 2. 해야 할 활동

- 프로그램의 성과에 영향을 미치는 역할과 그 책임을 식별해 문서화한다.
- 각 역할에 필요한 역량(거버넌스, 보안, 안전, 프라이버시, 개발, 공급자 관리)을 정의한다.
- AI 고유 역량(모델·데이터셋 라이선스, 모델 카드 해석, AI 규제)을 역할별 역량에 추가한다.
- 교육, 훈련, 경험을 근거로 참여자가 역량을 갖추도록 한다.
- 역량 평가 증거를 보존하고, 목록을 최신으로 유지하도록 정기 점검한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| 3.2 | 프로그램의 수행과 효과성에 영향을 미치는 역할과 책임을 식별하고, 각 역할에 필요한 역량을 정해 참여자가 갖추도록 보장해야 한다. 사용 사례와 관련된 경우 거버넌스·보안·안전·프라이버시·개발·공급자 관리 기능의 역량을 갖춘다. | **3.2.1** 참여자별 책임이 명시된, 문서화된 역할 목록<br>**3.2.2** 각 역할에 대한 역량을 식별한 문서<br>**3.2.3** 참여자별 평가된 역량의 문서화된 증거(목록 최신화를 위한 정기 점검 포함) |

<details><summary>영문 원문 보기</summary>

> **3.2 Competence**
> The organisation shall identify the roles and the corresponding responsibilities of those roles
> that affect the performance and effectiveness of the program; determine the necessary competence
> of program participants fulfilling each role (Governance, Security, Safety, Privacy, Development,
> Supplier management if relevant to the use case); ensure that program participants are competent on
> the basis of appropriate education, training, and/or experience; and retain appropriate documented
> information as evidence of competence.
>
> **Verification material(s):**
> - A documented list of roles with corresponding responsibilities for the different participants in
>   the program.
> - A document that identifies the competencies for each role.
> - Documented evidence of assessed competence for each program participant, with periodic checks to
>   keep the list up-to-date.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 3.2.1 역할과 책임 목록

**준수 방법**

프로그램에 관여하는 역할과 각 역할의 책임을 문서로 정리한다. AI SBOM 프로그램은 일반 오픈소스
역할에 더해 AI 거버넌스와 모델·데이터셋 검토 역할을 포함한다. 책임을 구체적으로 적어야 이후
역량 정의(3.2.2)와 책임 배정(3.8.4)이 명확해진다.

**샘플**

```
| 역할 | 책임 |
|------|------|
| AI 거버넌스 책임자 | 프레임워크 승인, 규제 의무 판단, 정기 검토 주관 |
| AI SBOM 검증 담당 | AI SBOM 생성·검토·승인, 인바운드 자재 반영 |
| 라이선스 검토 담당 | 모델·데이터셋·모델 트리 라이선스 의무 판단 |
| 데이터 담당 | 학습·검증 데이터셋 출처와 라이선스 관리 |
```

---

### 3.2.2 역할별 필요 역량

**준수 방법**

각 역할이 갖춰야 할 역량을 정의한다. 규격이 든 여섯 기능(거버넌스, 보안, 안전, 프라이버시,
개발, 공급자 관리) 가운데 역할과 사용 사례에 해당하는 것을 정하고, AI 고유 역량을 더한다. 예를
들어 라이선스 검토 담당에게는 비표준 라이선스(Llama 커뮤니티, OpenRAIL)의 사용 제한을 해석하는
역량이 필요하다.

**샘플**

```
| 역할 | 필요 역량 |
|------|----------|
| AI 거버넌스 책임자 | 거버넌스, AI 규제(EU 인공지능법·한국 AI 기본법) 이해, 위험 관리 |
| AI SBOM 검증 담당 | 개발, SPDX·CycloneDX 형식, 모델 카드 해석, 생성 도구 운영 |
| 라이선스 검토 담당 | 공급자 관리, 오픈소스·비표준 라이선스 해석, 모델 트리 추적 |
| 데이터 담당 | 프라이버시, 데이터셋 라이선스, 출처 관리 |
```

---

### 3.2.3 역량 평가 증거

**준수 방법**

각 참여자가 역할에 필요한 역량을 실제로 갖췄는지 평가하고 그 증거를 보존한다. 교육 이수, 자격,
실무 경험이 근거가 된다. AI 규제와 라이선스는 빠르게 바뀌므로 목록을 정기적으로 점검해 최신
상태로 유지한다.

**고려사항**

- **평가 근거 다양화**: 교육 이수만이 아니라 실무 산출물(예: 라이선스 검토 기록)도 역량 증거로
  활용한다.
- **정기 점검**: 신규 규제 시행이나 새 라이선스 유형 등장 시 역량 요건을 재검토한다.
- **공백 보완**: 평가에서 역량 공백이 드러나면 교육이나 외부 전문성으로 보완한다([3.8 자원](../../3-relevant-tasks/2-resourced/)).

**샘플 (역량 평가 기록부)**

```
| 참여자(직무) | 역할 | 평가 항목 | 평가 근거 | 결과 | 평가일 |
|-------------|------|----------|----------|------|--------|
| 이OO | AI SBOM 검증 담당 | CycloneDX ML-BOM 작성 | 사내 교육 + 실무 산출물 | 충족 | 2026-03-10 |
| 박OO | 라이선스 검토 담당 | 비표준 라이선스 해석 | OSS 법무 경력 5년 | 충족 | 2026-03-10 |
```

## 5. 참고

- 역할에 자원을 붙이는 절차: [3.8 효과적 자원 배분](../../3-relevant-tasks/2-resourced/)
- 참여자 인지 확보: [3.3 인지](../3-awareness/)
- ISO/IEC 5230 역량 본보기: [ISO/IEC 5230 준수 가이드 — 3.1.2 역량](../../../iso5230_guide/1-program-foundation/2-competence/)
