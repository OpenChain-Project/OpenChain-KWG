---
title: "§4.4.2 기간"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "기간"]
description: >
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 5 — 적합성 확인 및 유지** 단계에서 구축합니다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

## 1. 조항 개요

§4.4.2는 ISO/IEC 5230 §3.6.2(지속 기간)와 동일한 구조다. 적합성 인증을 취득한
후 18개월 이내에 이 규격의 모든 요구사항을 충족하고 있음을 확인하는 문서를
유지하도록 요구한다. 규격의 새 버전이 발행되면 18개월의 유예 기간 동안 이전
버전 기준 인증이 유지되며, 유예 기간 내에 최신 버전 기준으로 갱신하는 것을
권장한다.

## 2. 해야 할 활동

- 적합성 인증 취득 날짜를 기록하고 관리한다.
- 인증 취득 후 최근 18개월 이내에 규격의 모든 요구사항을 충족하고 있음을
  재확인하고 문서화한다.
- 새로운 버전의 ISO/IEC 18974가 발행된 경우 18개월 이내에 최신 버전 기준으로
  프로그램을 갱신하고 재확인한다.
- 정기적인 내부 감사를 통해 25개 입증자료 항목의 지속적 준수 여부를 점검한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §4.4.2 | 이 규격을 준수하는 프로그램은 규격의 새 버전이 발행된 후 18개월이 경과할 때까지 이전 버전에 대해서도 계속 준수하는 것으로 간주된다. 준수 프로그램을 최신 버전으로 업데이트하는 것을 권장한다. | **4.4.2.1** 프로그램이 적합성 검증을 획득한 후 지난 18개월 이내에 이 규격의 모든 요구 사항을 충족함을 확인하는 문서 |

<details><summary>영문 원문 보기</summary>

> **§4.4.2 Duration**
> A program that is conformant with this specification shall remain conformant
> even if the version of the specification it was conformant against is
> subsequently updated, for a period of 18 months after the new version of
> the specification is published. It is recommended that conformant programs
> be updated to be conformant with the latest version of the specification.
>
> **Verification Material(s):**
> 4.4.2.1 A document affirming the program meets all the requirements of this
> version of the specification, within the past 18 months of obtaining
> conformance.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 4.4.2.1 18개월 이내 요구사항 충족 확인 문서

**준수 방법**

ISO/IEC 5230 §3.6.2.1과 동일한 방식으로, §4.4.1.1의 규격 준수 확인 문서를
최소 연 1회 재검토하고 갱신한다. 갱신 시마다 검토 날짜와 검토자를 기록하여
최근 18개월 이내에 검토가 이루어졌음을 증명한다.

ISO/IEC 5230과 18974를 동시에 운영하는 경우, 두 규격의 정기 재확인 일정을
통합하여 연 1회 통합 감사로 처리하면 관리 효율이 높다.

**샘플**

```
[ISO/IEC 18974 규격 준수 정기 재확인 기록]

최초 인증 취득일: YYYY-MM-DD
준수 확인 규격: ISO/IEC 18974:2023 (버전 1.0)

| 재확인 날짜 | 확인 결과 | 변경 사항 | 검토자 | 비고 |
|------------|-----------|-----------|--------|------|
| 2025-01-10 | 전체 충족 | 취약점 해결 전문성 문서 갱신 (§4.2.2.3) | 홍길동 | - |
| 2026-01-08 | 전체 충족 | 성과 메트릭 목표치 상향 (§4.1.4.2) | 홍길동 | - |

다음 재확인 예정일: YYYY-MM-DD
18개월 유효 기한: YYYY-MM-DD
```

## 5. 참고

- 대응 ISO/IEC 5230 조항: [§3.6.2 지속 기간](../../iso5230_guide/6-conformance/2-duration/)
- OpenChain 규격 최신 버전 확인: [https://www.openchainproject.org/security-assurance](https://www.openchainproject.org/security-assurance)
