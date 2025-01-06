---
title: "6. 준수 선언"
linkTitle: "6. 준수 선언"
weight: 60
type: docs
categories: ["guide"]
tags: ["준수"]
description: >
---


ISO/IEC 5230과 ISO/IEC 18974의 모든 요구사항을 준수하는 오픈소스 프로그램(오픈소스 정책 / 프로세스 / 도구 / 조직)을 구축한 기업은 다음 두 가지를 문서화하여 명시해야 합니다.

### (1) 표준 요구사항 충족 확인

ISO/IEC 5230과 ISO/IEC 18974는 다음과 같이 프로그램이 모든 요구사항을 충족함을 확인하는 문서를 요구합니다:

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.6.1.1 A document affirming the program specified in §3.1.4 satisfies all the requirements of this document.<br>`3.1.4조에서 명시한 프로그램이 이 규격의 모든 요구사항을 충족함을 확인하는 문서`

{{% /alert %}}

{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.4.1.1: Documented Evidence affirming the Program specified in §3.1.4 satisfies all the requirements of this document.<br>`§3.1.4에 명시된 프로그램이 이 문서의 모든 요구 사항을 충족함을 확인하는 문서화된 증거.`

{{% /alert %}}

이를 위해 기업은 다음과 같은 내용을 포함하는 문서를 작성해야 합니다:

```
[회사명]의 오픈소스 프로그램은 ISO/IEC 5230:2020(오픈소스 라이선스 컴플라이언스)과 ISO/IEC 18974(오픈소스 보안 보증)의 모든 요구사항을 충족합니다. 

이는 다음의 문서와 프로세스를 통해 확인할 수 있습니다:
1. 오픈소스 정책 문서
2. 오픈소스 프로세스 문서
3. 오픈소스 교육 및 평가 기록
4. SBOM(Software Bill of Materials) 관리 시스템
5. 오픈소스 라이선스 컴플라이언스 산출물 생성 및 보관 시스템
6. 오픈소스 보안 취약점 관리 시스템
7. 외부 문의 대응 프로세스 기록

[날짜]
[오픈소스 프로그램 매니저 서명]
```

### (2) 지속적 준수 보장 선언

ISO/IEC 5230과 ISO/IEC 18974는 또한 적합성 인증 획득 후 18개월 동안 모든 요구사항을 충족하고 있음을 확인하는 문서를 요구합니다:

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.6.2.1 A document affirming the program meets all the requirements of this document, within the past 18 months of obtaining conformance validation.<br>`프로그램이 적합성 인증을 획득한 후 지난 18개월 동안 이 규격 버전(v2.1)의 모든 요구사항을 충족하고 있음을 확인하는 문서`

{{% /alert %}}

{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.4.2.1: A document affirming the Program meets all the requirements of this specification, within the past 18 months of obtaining conformance validation.<br>`프로그램이 적합성 인증을 획득한 후 지난 18개월 동안 이 규격의 모든 요구사항을 충족하고 있음을 확인하는 문서`

{{% /alert %}}

이를 위해 기업은 다음과 같은 내용을 포함하는 문서를 작성하고 주기적으로 갱신해야 합니다:

```
[회사명]은 ISO/IEC 5230:2020(오픈소스 라이선스 컴플라이언스)과 ISO/IEC 18974(오픈소스 보안 보증)의 적합성 인증을 획득한 후 18개월 이상 모든 요구사항을 충족하는 상태를 유지할 것을 보장합니다.

이를 위해 다음과 같은 활동을 수행합니다:
1. 최소 6개월마다 내부 감사를 실시하여 모든 요구사항 충족 여부를 확인
2. 연 1회 이상 외부 전문가의 검토를 받아 프로그램의 효과성 평가
3. 프로그램 참여자에 대한 지속적인 교육 및 역량 평가 실시
4. 오픈소스 정책 및 프로세스의 정기적인 검토 및 업데이트
5. 새로운 기술 동향 및 법적 요구사항 변화에 대한 모니터링 및 대응

[날짜]
[오픈소스 프로그램 매니저 서명]
```

기업은 이러한 문서를 오픈소스 정책에 포함시키거나, 외부에 공개된 웹사이트를 통해 게재할 수 있습니다. 예를 들어, [SK텔레콤](https://www.sktelecom.com/)은 자사의 오픈소스 포털 사이트에 이러한 내용을 게재하고 있습니다:
![](sktiso.png)
[https://sktelecom.github.io/compliance/iso5230/](https://sktelecom.github.io/compliance/iso5230/)
이러한 문서화를 통해 기업은 ISO/IEC 5230과 ISO/IEC 18974의 모든 요구사항을 충족하게 되며, 오픈소스 라이선스 컴플라이언스와 보안 보증에 대한 지속적인 관리와 개선을 보장할 수 있습니다.

![](totalno.png)

