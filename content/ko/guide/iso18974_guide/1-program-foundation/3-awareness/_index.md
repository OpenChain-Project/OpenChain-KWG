---
title: "§4.1.3 인식"
weight: 30
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "인식"]
description: >
---

## 1. 조항 개요

§4.1.3은 ISO/IEC 5230 §3.1.3(인식)과 입증자료 구조가 동일하다. 프로그램
참여자가 프로그램의 목표, 자신의 기여 방법, 미준수 시 발생하는 영향을 인식하고
있음을 평가하고 기록하도록 요구한다. 5230과의 차이는 인식 평가의 **초점이
보안 보증**으로 전환된다는 점이다. 참여자는 라이선스 컴플라이언스뿐 아니라
취약점 관리 프로세스, CVD 절차, CVSS 기반 대응 기준을 인식하고 있어야 한다.

## 2. 해야 할 활동

- 프로그램 참여자가 오픈소스 보안 보증 프로그램의 목표(취약점 탐지·평가·
  대응·통보)를 이해하고 있는지 확인한다.
- 각 참여자가 자신의 역할이 보안 보증 체계에 어떻게 기여하는지 인식하고 있는지
  평가한다.
- 취약점 대응 프로세스를 미준수할 경우 발생하는 법적·사업적·보안적 영향에
  대한 인식을 평가한다.
- 인식 평가 결과를 문서로 기록하고 보관한다.
- 미흡한 참여자에 대해 추가 교육을 실시하고 재평가 결과를 보관한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §4.1.3 | 조직은 프로그램 참여자가 다음 사항을 인식하도록 해야 한다: 보안 보증 정책의 존재와 위치 / 보안 보증 관련 목표 / 프로그램 효과에 대한 자신의 기여 방법 / 프로그램 요구사항을 따르지 않을 경우 발생하는 영향 | **4.1.3.1** 프로그램 목표, 프로그램 내에서의 개인 기여, 프로그램 미준수의 영향 등이 포함되어야 하는 프로그램 참여자에 대한 평가된 인식에 대한 문서화된 증거 |

<details><summary>영문 원문 보기</summary>

> **§4.1.3 Awareness**
> The organization shall ensure that the program participants are aware of:
> - The open source software security assurance policy and where to find it;
> - Relevant open source software security assurance objectives;
> - Their contribution to the effectiveness of the program; and
> - The implications of not following the program's requirements.
>
> **Verification Material(s):**
> 4.1.3.1 Documented evidence of assessed awareness for the program
> participants - which shall include the program's objectives, contributions
> within the program, and implications of failing to follow the program's
> requirements.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 4.1.3.1 참여자 인식 평가 증거

**준수 방법**

ISO/IEC 5230 §3.1.3.1과 기본 방법은 동일하나, 인식 평가 문항이 **보안 보증**에
초점을 두어야 한다. 세 가지 핵심 인식 항목은 ①보안 보증 프로그램의 목표(취약점
식별·평가·대응·CVD), ②자신의 역할이 보안 체계에 기여하는 방법, ③프로세스
미준수 시 발생하는 보안·법적·사업적 위험이다.

평가 결과를 문서로 기록하고 보관하는 방법은 5230과 동일하다. 최소 연 1회
정기 평가를 실시하고, 신규 참여자는 합류 즉시 초기 평가를 수행한다.

**고려사항**

- **보안 특화 문항 설계**: 취약점 대응 절차, CVSS 기준, CVD 방침 등 보안
  보증 고유의 내용을 평가 문항에 포함한다.
- **역할별 심화 평가**: 보안 담당자는 기술적 취약점 분석 인식까지 평가하고,
  개발자는 안전한 코딩 관행 인식을 함께 평가한다.
- **평가 주기 및 증거 보관**: 최소 연 1회, 신규 참여자 합류 즉시 평가를
  실시하고 결과를 최소 3년간 보관한다.

**샘플**

아래는 보안 보증 관점의 정책 인식 확인서 샘플이다.

```
[오픈소스 보안 보증 정책 인식 확인서]

본인은 다음 사항을 숙지하였음을 확인합니다:

1. 당사 오픈소스 보안 보증 정책의 존재와 해당 문서의 위치
2. 오픈소스 컴포넌트 취약점 탐지·평가·대응·CVD 프로그램의 목표
3. 본인의 역할이 보안 보증 프로그램 운영에 기여하는 방법
4. 취약점 대응 프로세스를 준수하지 않을 경우 발생할 수 있는
   보안 침해, 법적 책임, 사업적 위험

이름: ________________  역할: ________________
서명: ________________  날짜: ________________
```

## 5. 참고

- 대응 ISO/IEC 5230 조항: [§3.1.3 인식](../../iso5230_guide/1-program-foundation/3-awareness/)
- 관련 가이드: [기업 오픈소스 관리 가이드 — 5. 교육](../../../opensource_for_enterprise/5-training/)
- 관련 템플릿: [오픈소스 정책 템플릿 — §6 교육 및 인식 제고](../../../templates/1-policy/)
