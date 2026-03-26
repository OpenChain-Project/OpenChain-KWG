---
title: "§3.6.2 지속 기간"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "지속 기간"]
description: >
---

## 1. 조항 개요

ISO/IEC 5230 인증은 한 번 취득으로 영구히 유효하지 않다. 규격의 새 버전이
발행되면 이전 버전 기준으로 인증을 받은 프로그램은 새 버전 발행 후 18개월까지만
적합성이 유지된다. §3.6.2는 프로그램이 적합성 인증을 취득한 날로부터 최근
18개월 이내에 규격의 모든 요구사항을 충족하고 있음을 확인하는 문서를 유지하도록
요구한다. 이 조항은 오픈소스 컴플라이언스 프로그램이 형식적 인증에 그치지 않고
지속적으로 운영되는지 확인하는 장치다.

## 2. 해야 할 활동

- 적합성 인증 취득 날짜를 기록하고 관리한다.
- 인증 취득 후 최근 18개월 이내에 규격의 모든 요구사항을 충족하고 있음을
  재확인하고 문서화한다.
- 새로운 버전의 규격이 발행된 경우 18개월 이내에 최신 버전 기준으로
  프로그램을 갱신하고 재확인한다.
- 정기적인 내부 감사를 통해 프로그램의 지속적 준수 여부를 점검한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §3.6.2 | 이 규격을 준수하는 프로그램은, 규격의 새 버전이 발행된 후 18개월이 경과할 때까지 이전에 준수하던 규격 버전에 대해서도 계속 준수하는 것으로 간주된다. 준수 프로그램이 최신 버전의 규격을 준수하도록 업데이트하는 것을 권장한다. | **3.6.2.1** 프로그램이 적합성 인증을 획득한 후 지난 18개월 동안 이 규격 버전의 모든 요구사항을 충족하고 있음을 확인하는 문서 |

<details><summary>영문 원문 보기</summary>

> **§3.6.2 Duration**
> A program that is conformant with this specification shall remain conformant
> even if the version of the specification it was conformant against is
> subsequently updated, for a period of 18 months after the new version of
> the specification is published. It is recommended that conformant programs
> be updated to be conformant with the latest version of the specification.
>
> **Verification Material(s):**
> 3.6.2.1 A document affirming the program meets all the requirements of this
> version of the specification, within the past 18 months of obtaining
> conformance.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 3.6.2.1 18개월 이내 요구사항 충족 확인 문서

**준수 방법**

적합성 인증 취득 후 18개월 이내에 프로그램이 규격의 모든 요구사항을 여전히
충족하고 있음을 확인하는 문서를 유지해야 한다. 이 문서가 입증자료 3.6.2.1이다.
가장 간단한 방법은 §3.6.1.1의 규격 준수 확인 문서를 정기적으로(최소 연 1회)
재검토하고 갱신하는 것이다. 갱신 시마다 검토 날짜와 검토자를 기록하여 최근
18개월 이내에 검토가 이루어졌음을 증명할 수 있도록 한다.

새로운 버전의 ISO/IEC 5230이 발행된 경우 18개월의 유예 기간 내에 최신 버전
기준으로 프로그램을 갱신하고 재확인 문서를 작성한다. 유예 기간을 초과하면
인증 효력이 만료되므로, 규격 개정 동향을 모니터링하고 적시에 대응하는 것이
중요하다.

**고려사항**

- **정기 재확인 일정 수립**: 최소 연 1회 정기 내부 감사를 통해 모든 입증자료
  항목의 유효성을 재확인하고 문서화한다.
- **규격 개정 모니터링**: OpenChain 프로젝트의 규격 개정 공지를 정기적으로
  확인하고, 새 버전 발행 시 18개월 이내에 대응 계획을 수립한다.
- **인증 만료 관리**: 인증 취득일과 유효 기간(18개월)을 캘린더 또는 관리
  시스템에 등록하여 만료 전 갱신 알림을 받도록 설정한다.
- **변경 사항 반영**: 조직 구조, 제품 포트폴리오, 프로세스 변경 발생 시 즉시
  프로그램에 반영하고 재확인 문서를 갱신한다.

**샘플**

아래는 ISO/IEC 5230 규격 준수 정기 재확인 기록 샘플이다.

```
[ISO/IEC 5230 규격 준수 정기 재확인 기록]

프로그램 명칭: [회사명] 오픈소스 컴플라이언스 프로그램
최초 인증 취득일: YYYY-MM-DD
준수 확인 규격: ISO/IEC 5230:2020 (버전 2.1)

| 재확인 날짜 | 확인 결과 | 변경 사항 | 검토자 | 비고 |
|------------|-----------|-----------|--------|------|
| 2025-01-10 | 전체 충족 | 담당자 변경 반영 (§3.2.2.1 갱신) | 홍길동 | - |
| 2026-01-08 | 전체 충족 | 없음 | 홍길동 | 다음 재확인 예정: 2027-01-08 |

다음 재확인 예정일: YYYY-MM-DD (최근 재확인일로부터 12개월 이내)
18개월 유효 기한: YYYY-MM-DD (최근 재확인일로부터 18개월)
```

아래는 규격 새 버전 발행 시 대응 체크리스트 샘플이다.

```
[ISO/IEC 5230 새 버전 발행 대응 체크리스트]

새 버전 발행일: YYYY-MM-DD
대응 기한 (18개월): YYYY-MM-DD

□ 새 버전과 현행 버전의 요구사항 변경 사항 파악
□ 변경된 요구사항에 따른 프로그램 갱신 계획 수립
□ 갱신 작업 완료 및 새 버전 기준 입증자료 정비
□ 새 버전 기준 규격 준수 확인 문서 작성 및 승인
□ 자가 인증 또는 인증 갱신 절차 진행
```

## 5. 참고

- OpenChain 규격 최신 버전 확인: [https://www.openchainproject.org/license-compliance](https://www.openchainproject.org/license-compliance)
- 자가 인증 갱신: [https://certification.openchainproject.org/](https://certification.openchainproject.org/)
- §3.6.1 적합성: [이전 조항 바로가기](../1-conformance/)
