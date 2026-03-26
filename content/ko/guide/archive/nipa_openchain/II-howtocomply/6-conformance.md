---
title: "6. 규격 요구사항 준수"
weight: 6
type: docs
---

## 6.1 적합성

ISO/IEC 5230의 3.6.1항과 과 ISO/IEC 18974의 3.4.1항에서는 다음과 같이 적합성에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.6.1 적합성

프로그램이 OpenChain에 적합하다고 간주하기 위해서는 조직은 프로그램이 이 규격에서 제시한 모든 요구사항을 충족하는지 확인해야 한다.

입증 자료:

* 3.6.1.1 3.1.4조에서 명시한 프로그램이 이 규격의 모든 요구사항을 충족함을 확인하는 문서


----------------

3.6.1 Conformance

In order for a program to be deemed OpenChain conformant, the organization shall affirm that the program satisfies the requirements presented in this document.

Verification Materials(s):

* 3.6.1.1 A document affirming the program specified in §3.1.4 satisfies all the requirements of this document.

{{% /pageinfo %}}

{{% pageinfo color="warning"%}}

ISO/IEC 18974

-----------

3.4.1 - 완전성
프로그램이 이 규격을 준수하는 것으로 간주되기 위해서, 조직은 프로그램이 이 문서에 제시된 요구사항을 충족한다는 것을 확인해야 한다.

입증 자료:

- 3.4.1.1: §3.1.4에 명시된 프로그램이 이 문서의 모든 요구 사항을 충족함을 확인하는 문서화된 증거.

----------------

3.4.1 - Completeness

For a Program to be deemed conformant with this specification, the organization shall affirm that the Program satisfies the requirements presented in this document.

Verification Material(s):
- 3.4.1.1: Documented Evidence affirming the Program specified in §3.1.4 satisfies all the requirements of this document.

{{% /pageinfo %}}

ISO/IEC 5230과 ISO/IEC 18974의 모든 요구사항을 충족하는 기업은 이를 Linux Foundation OpenChain Project의 Self Certification을 통해 자체 인증을 선언할 수 있다. 어느 하나의 요구사항이라도 충족하지 못한다면 각 표준에 적합하다고 할 수 없다.  

- ISO/IEC 5230 Self Certification : https://www.openchainproject.org/checklist-iso-5230-2020
- ISO/IEC 18974 Self Certification : https://www.openchainproject.org/checklist-iso-dis-18974

두 표준의의 모든 요구사항을 충족한다면, 부록 1. 샘플 오픈소스 정책의 [10. ISO 표준 준수 선언과 유지](../../../templates/1-policy/#10-iso-표준-준수-선언과-유지)에서와 같이 ISO 표준을 준수한다고 정책 문서상에 명시할 수 있다.

~~~
10. ISO 표준 준수 선언과 유지

회사는 소프트웨어 공급망에서의 오픈소스 컴플라이언스 수준 향상을 위해 Linux Foundation의 OpenChain 프로젝트의 정신을 지지하며 적극적으로 참여합니다.

- 회사는 이 오픈소스 정책을 적용하여 2021년 10월 1일부로 ISO/IEC 5230:2020을 준수함을 보장합니다.

~~~


## 6.2 지속 기간

ISO/IEC 5230의 3.6.2항과 ISO/IEC 18974의 3.4.2항에서는 다음과 같이 지속 기간에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.6.2 지속 기간

이 규격의 버전 2.1에 적합한 OpenChain 프로그램은 적합성 인증을 획득한 날로부터 18개월 동안 지속되어야 한다. 적합성 인증 등록 절차는 OpenChain 프로젝트의 웹사이트에서 확인할 수 있다.

입증 자료:

* 3.6.2.1 프로그램이 적합성 인증을 획득한 후 지난 18개월 동안 이 규격 버전(v2.1)의 모든 요구사항을 충족하고 있음을 확인하는 문서

----------------

3.6.2 Duration

A program that is OpenChain conformant with this version of the specification shall last 18 months from the date conformance validation was obtained. The conformance validation registration procedure can be found on the OpenChain project’s website.

Verification Materials(s):

* 3.6.2.1 A document affirming the program meets all the requirements of this document, within the past 18 months of obtaining conformance validation.

{{% /pageinfo %}}

{{% pageinfo color="warning" %}}

ISO/IEC 18974

-----------

3.4.2 - 지속 기간

이 버전의 규격을 준수하는 프로그램은 다음의 시기마다 다시 검토가 되어야 한다. : 1차 인증일로부터 18개월, 2차 인증일로부터 24개월, 3차 인증일로부터 36개월. 이후에는 36개월마다 검토가 필요하다.

입증 자료:

- 3.4.2.1: 프로그램이 적합성 인증을 획득한 후 지난 18개월 동안 이 규격의 모든 요구사항을 충족하고 있음을 확인하는 문서

----------------

3.4.2 - Duration

A Program that is conformant with this version of the specification will have a review period as follows: 18 months from the first certification, 24 months from the second certification and 36 months from the third certification. It will require review every 36 months after this.

Verification Material(s):

- 3.4.2.1: A document affirming the Program meets all the requirements of this specification, within the past 18 months of obtaining conformance validation.

{{% /pageinfo %}}

기업은 ISO 표준을 준수한다고 선언한 이후에도 계속해서 유지하는 것이 중요하다. ISO 표준에서는 준수한다고  선언한 이후에도 최소 18개월 이상은 변함없이 ISO 표준의 모든 요구사항을 준수하고 있어야 함을 요구한다.

기업은 ISO 표준을 준수한다고 선언한 이후 적어도 18개월 이상 계속해서 준수하는 상태를 유지하여야 하며, 그렇게 하고 있다면, 부록 1. 샘플 오픈소스 정책의 [10. ISO 표준 준수 선언과 유지](../../../templates/1-policy/#10-iso-표준-준수-선언과-유지)에서와 같이 ISO표준을 18개월 이상 계속하여 충족하고 있음을 문서상에 명시할 수 있다. 

~~~
10. ISO 표준 준수 선언과 유지

- 회사는 적합성 인증을 획득한 후 18개월 이상 ISO/IEC 5230:2020의 모든 요구사항을 충족함을 보장합니다.
- 회사는 최소 18개월 간격으로 적합성을 검토하고 필요에 따라 정책을 변경 및 갱신합니다.

~~~

여기까지 완료하면 기업은 드디어 ISO/IEC 5230, ISO/IEC 18974의 모든 요구사항을 충족하게 된다.