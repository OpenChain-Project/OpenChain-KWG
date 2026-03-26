---
title: "3. 오픈소스 콘텐츠 검토 및 승인"
weight: 3
type: docs
---

## 3.1 SBOM (Software Bill of Materials)

ISO/IEC 5230과 ISO/IEC 18974의 3.3.1항에서는 다음과 같이 BOM(Bill of Materials)에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.3.1 BOM

배포용 소프트웨어를 구성하는 오픈소스 컴포넌트(및 식별된 라이선스)에 대한 BOM(Bill of Materials)을 생성하고 관리하는 프로세스가 있어야 한다.

입증 자료:

* 3.3.1.1 배포용 소프트웨어를 구성하는 오픈소스 컴포넌트에 대한 정보를 식별, 추적, 검토, 승인 및 보관하는 문서화된 절차 
* 3.3.1.2 문서화된 절차가 적절히 준수되었음을 보여주는 배포용 소프트웨어에 대한 오픈소스 컴포넌트 기록

----------------

3.3.1 Bill of Materials

A process shall exist for creating and managing a bill of materials that includes each open source component (and its identified licenses) from which the supplied software is comprised.

Verification Material(s):

* 3.1.1.1  A documented procedure for identifying, tracking, reviewing, approving, and archiving information about the collection of open source components from which the supplied software is comprised.
* 3.3.1.2 Open source component records for the supplied software that demonstrates the documented procedure was properly followed.

{{% /pageinfo %}}

{{% pageinfo color="warning" %}}

ISO/IEC 18974

-----------

3.3.1 - SBOM (Software Bill of Materials)

배포용 소프트웨어를 구성하는 각 오픈소스 소프트웨어 컴포넌트 내역을 포함하는 BOM(Bill of Materials)을 생성하고 이를 유지하는 프로세스가 있어야 한다.

입증 자료:
- 3.3.1.1: 배포용 소프트웨어에 사용된 모든 오픈소스 소프트웨어가 배포용 소프트웨어의 수명 주기 동안 지속적으로 기록되도록 하는 문서화된 절차. 여기에는 배포용 소프트웨어에 사용된 모든 오픈소스 소프트웨어의 저장소도 포함된다.
- 3.3.1.2: 문서화된 절차가 적절히 준수되었음을 보여주는 배포용 소프트웨어에 대한 오픈소스 소프트웨어 컴포넌트 기록

----------------

3.3.1 - Software Bill of Materials (SBOM)

A process shall exist for creating and maintaining a bill of materials that includes each Open Source Software component from which the Supplied Software is comprised.

Verification Material(s):
- 3.3.1.1: A documented procedure ensuring all Open Source Software used in the Supplied Software is continuously recorded across the lifecycle of the Supplied Software. This includes an archive of all Open Source Software used in the Supplied Software;
- 3.3.1.2: Open Source Software Component Records for the Supplied Software that demonstrates the documented procedure was properly followed.

{{% /pageinfo %}}

### 3.1.1 SBOM 관리 절차 문서화

오픈소스 관리 활동의 가장 기본은 배포용 소프트웨어에 포함된 오픈소스 현황을 파악하는 것이다. 배포용 소프트웨어에 포함된 오픈소스와 그 라이선스를 식별하여 그 정보를 담고 있는 SBOM(Software Bill of Materials)을 작성하고 관리하는 프로세스를 구축해야 한다. 배포용 소프트웨어의 버전마다 어떤 오픈소스가 포함되어 있는지 알고 있어야 소프트웨어를 배포할 때 각 오픈소스의 라이선스가 요구하는 의무 사항을 준수할 수 있기 때문이다.

모든 오픈소스는 배포용 소프트웨어에 통합하기 전에 검토 및 승인되어야 한다. 오픈소스의 기능, 품질뿐만 아니라 출처, 라이선스 요건을 충족할 수 있는지 사전 검토가 되어야 한다. 이를 위해 검토 요청 → 리뷰 → 승인 과정이 필요하다. [[부록 02] 오픈소스 프로세스](../../../templates/2-process-template/)에서는 기업의 오픈소스 관리를 위한 프로세스 모든 과정에 관해 설명하고 있다. 

[1. 오픈소스 식별](../../../templates/2-process-template/#1-오픈소스-식별subidentification-of-open-sourcesub)부터 [6. 등록](../../../templates/2-process-template/#6-등록subregistrationsub)까지의 과정을 통해 SBOM을 작성하고 관리하게 된다.

또 이와 같은 오픈소스 프로세스의 모든 과정과 결과는 문서화가 되어야 한다. 이메일을 사용하는 것보다는 Jira, Bugzilla 등의 이슈 트래킹 시스템을 이용하는 것이 이러한 과정을 효율적으로 문서화 할 수 있다.

### 3.1.2 SBOM 기록

배포용 소프트웨어에 포함된 오픈소스 목록은 문서화하여 보관해야 한다. Eclipse 재단에서 후원하는 오픈소스 프로젝트인 [SW360](https://projects.eclipse.org/proposals/sw360)[^sw360]은 배포용 소프트웨어별로 포함하고 있는 오픈소스 목록을 트래킹할 수 있는 기능을 제공한다. SW360 사용 방법은 [부록 3. 오픈소스 도구](../../../tools/2-sw360)을 참고할 수 있다.

[^sw360]: SW360 - https://projects.eclipse.org/proposals/sw360

이 가이드에서는 SBOM 사용 정책에 대한 예시를 “[[부록 1] 샘플 오픈소스 정책의 6. 오픈소스 사용](../../../templates/1-policy/#6-오픈소스-사용)에서 제공한다.


## 3.2 라이선스 컴플라이언스

ISO/IEC 5230의 3.3.2항에서는 다음과 같이 라이선스 컴플라이언스에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.3.2 라이선스 컴플라이언스

프로그램은 배포용 소프트웨어에 대해 프로그램 참여자가 접할 수 있는 일반적인 오픈소스 라이선스의 사용 사례를 관리할 수 있어야 한다. 여기에는 다음과 같은 사용 사례가 포함될 수 있다(아래 목록이 모든 사례를 다루는 것은 아니며, 또한 이 사례를 모두 다뤄야만 하는 것은 아님). :

- 바이너리 형태로 배포
- 소스 형태로 배포
- 추가 라이선스 의무를 유발하는 다른 오픈소스와 통합
- 수정된 오픈소스 포함
- 배포용 소프트웨어 내의 다른 컴포넌트와 서로 호환되지 않는 라이선스 하의 오픈소스 또는 다른 소프트웨어를 포함
- 저작자 표시 요구사항을 갖는 오픈소스 포함

입증 자료:

* 3.3.2.1 배포용 소프트웨어 내의 오픈소스 컴포넌트에 대해 일반적인 오픈소스 라이선스 사용 사례를 처리하기 위한 문서화된 절차

----------------

3.3.2 License Compliance

The program shall be capable of managing common open source license use cases encountered by program participants for supplied software, which may include the following use cases (note that the list is neither exhaustive, nor might all of the use cases apply):

- Distributed in binary form;
- Distributed in source form;
- Integrated with other open source such that it triggers additional licensing obligations;
- Contains modified open source;
- Contains open source or other software under an incompatible license interacting with other components within the Supplied Software; and/or
- Contains open source with attribution requirements.

Verification Material(s):

* 3.3.2.1 A documented procedure for handling the common open source license use cases for the open source components of the supplied software.

{{% /pageinfo %}}

오픈소스 라이선스를 제대로 준수하기 위해서는 오픈소스 라이선스별로 요구하는 사항에 대해 정확히 알고 있어야 한다. 하지만 개별 소프트웨어 개발자가 이를 일일이 파악하는 것은 어려우므로 오픈소스 책임자는 자주 사용되는 오픈소스 라이선스에 대해 일반적인 사용 사례별 요구사항/주의사항을 정리하여 회사 내부에 공유하는 것이 좋다. 오픈소스 라이선스에 대한 일반적인 가이드와 라이선스 의무 요약 자료는 NIPA에서 제공하는 [공개소프트웨어 라이선스 가이드](https://www.oss.kr/oss_license)[^nipa-license]를 참고할 수 있다. 또한, 소프트웨어의 사용 사례별 라이선스 의무를 분석한 SK텔레콤의 오픈소스 라이선스 가이드[^gpl]도 좋은 사례가 된다. 

[^nipa-license]: NIPA 공개소프트웨어 라이선스 가이드 - https://www.oss.kr/oss_license

[^gpl]: SK텔레콤 오픈소스 라이선스 가이드 - https://sktelecom.github.io/guide/use/obligation/gpl-2.0/

[부록 2. 샘플 오픈소스 컴플라이언스 프로세스](../../../templates/2-process-template/)의 오픈소스 컴플라이언스 프로세스의 오픈소스 식별, 검사, 문제해결, 리뷰, 승인 단계를 통해 배포용 소프트웨어의 오픈소스 컴포넌트에 대해 일반적인 오픈소스 라이선스 사용 사례를 처리할 수 있다.

식별 및 검사 단계에서는 소스 코드 스캔 도구를 사용할 수 있다. 소스 코드 스캔 도구는 무료로 사용할 수 있는 오픈소스 기반 도구부터 상용 도구까지 다양하게 있는데, 각 도구는 특장점 들이 있지만 어떤 하나도 모든 문제를 해결할 수 있는 완벽한 기능을 제공하지 않는다. 따라서 기업은 제품의 특성과 요구사항에 맞는 적합한 도구를 선택해야 한다. 많은 기업이 이러한 자동화된 소스 코드 스캔 도구와 수동 검토를 병행하여 이용한다. Linux Foundation의 FOSSology[^fossology] 프로젝트는 오픈소스로 공개된 소스 코드 스캔 도구로서 기업들이 손쉽게 무료로 사용할 수 있다. 사용 방법은 [부록 3. 오픈소스 도구](../../../tools/2-sw360)를 참고한다. 

[^fossology]: FOSSology - http://fossology.org/

## 3.3 보안 보증

ISO/IEC 18974 표준은 다음과 같이 보안 보증 방법에 대한 문서화된 절차와 수행된 조치를 기록하도록 요구한다. 


{{% pageinfo color="warning" %}}

ISO/IEC 18974

-----------

3.3.2 - 보안 보증
- 검토 중인 배포용 소프트웨어 릴리스에 대한 BOM의 각 오픈소스 소프트웨어 컴포넌트에 대해 다음 사항을 확인한다.
- 알려진 취약점의 존재를 발견하기 위한 방법을 적용한다.
- 각각의 발견된 취약점과 할당된 점수에 대해 소프트웨어의 사용 사례에 적합하게 필요한 수정 단계를 결정 및 문서화하고 이전에 결정된 수준 이상(즉, 심각도 점수 4.5 이상인 모든 경우 등)에서는 고객 동의를 얻는다.
- 위험/영향 점수에 따라 적절한 조치를 취한다(예: 필요한 경우 고객에게 연락, 소프트웨어 컴포넌트 업그레이드, 추가 조치 없음 등).
- 새로 발견된 취약점이 이전에 배포된 배포용 소프트웨어에 있는 경우 위험/영향 점수에 따라 적절한 조치를 취한다(예: 보증이 필요한 고객에게 연락).
- 배포용 소프트웨어가 시장에 출시된 후 모니터링하고 알려진 취약점 또는 새로 발견된 취약점 노출에 대응하는 기능을 확보한다.

입증 자료:
- 3.3.2.1: 배포용 소프트웨어의 오픈소스 소프트웨어 컴포넌트에 대한 알려진 취약점의 탐지 및 해결을 위한 문서화된 절차
- 3.3.2.2: 각 오픈소스 소프트웨어 컴포넌트에 대해 식별된 알려진 취약점 및 수행된 조치에 대한 기록을 유지한다(조치가 필요하지 않은 경우도 포함).

----------------

3.3.2 - Security Assurance
- For each Open Source Software component in the bill of materials for the Supplied Software release under review;
- Apply method for detecting existence of Known Vulnerabilities;
- For each identified Known Vulnerability assign a risk/impact score;
- For each detection and assigned score determine and document necessary remediation steps suitable for the use-case of the software and get Customer Agreement at or above a previously determined level (i.e., all severity scores above 4.5 …);
- Depending on the risk/impact score take the appropriate action (e.g., contact customers if necessary, upgrade software component, no further action, …);
- If a Newly Discovered Vulnerability is present in previously distributed Supplied Software, depending on the risk/impact score take the appropriate action (e.g., contact customers if warranted);
- An ability to monitor Supplied Software after their release to market and to respond to Known Vulnerability or Newly Discovered Vulnerability disclosures.

Verification Material(s):
- 3.3.2.1: A documented procedure for handling detection and resolution of Known Vulnerabilities for the Open Source Software components of the Supplied Software;
- 3.3.2.2: For each Open Source Software component a record is maintained of the identified Known Vulnerabilities and action(s) taken (including even if no action was required).

{{% /pageinfo %}}

이를 위해 기업은 배포용 소프트웨어에서 알려진 취약점 존재 여부를 탐지하고, 식별된 위험이 출시 전에 해결해야 할 뿐 아니라 출시 후 새롭게 알려진 취약점에 대응하기 위한 방법과 절차를 갖춰야 한다.

먼저 기업은 배포용 소프트웨어에 알려진 취약점이 있는지 탐지하고, 식별된 위험을 출시 전에 해결해야 합니다. 이와 같이 알려진 취약점을 탐지하고 해결하는 절차는 [오픈소스 프로세스](../../../templates/2-process-template)의 오픈소스 식별 단계, 소스 코드 검사 단계, 문제 해결 단계를 통해 수행할 수 있다.

그리고, 배포용 소프트웨어의 릴리스 후 새롭게 알려진 취약점이 공개되었을 때 이미 배포된 소프트웨어에 존재하는지 확인하고, 해결하기 위해서는 신규 보안 취약점 대응 프로세스를 수립해야 한다. 2. 신규 보안취약점 대응 프로세스 샘플은 부록 2. 오픈소스 프로세스의 [2. 신규 보안취약점 대응 프로세스](../../../templates/2-process-template/#2-신규-보안취약점-대응-프로세스)에서 확인할 수 있다. 
