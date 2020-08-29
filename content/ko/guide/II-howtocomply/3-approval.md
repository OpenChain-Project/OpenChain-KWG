---
title: "3. 오픈소스 콘텐츠 검토 및 승인"
weight: 3
type: docs
---

## 3.1 BOM (Bill of Materials)

{{% pageinfo %}}

### OpenChain Specification 2.0
-----------

### 3.1 BOM

공급 대상 소프트웨어를 구성하는 각 오픈소스 컴포넌트\(및 식별된 라이선스\)를 포함하는 BOM을 작성하고 관리하는 프로세스가 있다.

#### 입증 자료:

 3.1.1 공급 대상 소프트웨어를 구성하는 오픈소스 컴포넌트 모음에 대한 정보를 식별, 추적, 검토, 승인 및 보관하는 문서화된 절차  
 3.1.2 공급 대상 소프트웨어에 대해 문서화된 절차가 적절히 준수되었음을 입증하는 오픈소스 컴포넌트 기록.

----------------

### 3.1 Bill of Materials

A process exists for creating and managing a bill of materials that includes each Open Source component \(and its Identified Licenses\) from which the Supplied Software is comprised.

#### Verification Material\(s\):

 3.1.1 A documented procedure for identifying, tracking, reviewing, approving, and archiving information about the collection of Open Source components from which the Supplied Software is comprised.  
 3.1.2 Open Source component records for the Supplied Software that demonstrates the documented procedure was properly followed.

{{% /pageinfo %}}

오픈소스 컴플라이언스 활동의 가장 기본은 바로 공급 대상 소프트웨어에 포함된 오픈소스 현황을 파악하는 것이다. 공급 대상 소프트웨어에 포함된 오픈소스와 그 라이선스를 식별하여 그 정보를 담고있는 BOM을 작성하고 관리하는 프로세스를 구축해야 한다. 공급 대상 소프트웨어마다 어떤 오픈소스가 포함되어 있는지 알고 있어야 소프트웨어를 배포할 때 각 라이선스가 요구하는 의무 사항을 준수할 수 있기 때문이다. 모든 오픈소스는 배포 대상 소프트웨어에 통합하기 전에 검토 및 승인되어야 한다. 오픈소스의 기능, 품질 뿐만 아니라 출처, 라이선스 요건을 충족하는지 검토가 되야 한다. 이를 위해 검토 요청 → 리뷰 → 승인 과정이 필요하다. \[부록 02\]에서는 기업의 오픈소스 컴플라이언스를 위한 프로세스 전과정에 대해 설명하고 있다. 식별부터 등록까지의 과정을 통해 BOM을 작성하고 관리하게 된다.

{% page-ref page="../../appendix/process.md" %}

공급 대상 소프트웨어에 포함된 오픈소스 목록은 문서화하여 보관해야 한다. Eclipse 재단에서 후원하는 오픈소스 프로젝트인 SW360\(https://projects.eclipse.org/proposals/ sw360\)은 공급 대상 소프트웨어별로 포함하고 있는 오픈소스 목록을 트래킹할 수 있는 기능을 제공한다. SW360 사용 방법은 \[부록 03\]을 참고할 수 있다.

{% page-ref page="../../appendix/tools/" %}

오픈소스 컴플라이언스 프로세스의 모든 과정과 결과는 문서화가 되어야 한다. 이메일을 사용하는 것 보다는 Jira, Bugzilla 등의 이슈 트래킹 시스템을 이용하는 것이 이러한 과정을 효율적으로 문서화 할 수 있다.

## 3.2 라이선스 컴플라이언스

{{% pageinfo %}}

### OpenChain Specification 2.0
-----------

### 3.2 라이선스 컴플라이언스

프로그램은 공급 대상 소프트웨어에 대해 소프트웨어 공급 담당자가 접하게 되는 일반적인 오픈소스 사용 사례를 관리할 수 있어야 하며, 다음과 같은 사례가 포함될 수 있다\(이 목록이 완전한 것은 아니며, 모든 사용 사례가 적용되어야 하는 것은 아니다\).:

- 바이너리 형태로 배포;  
 - 소스 형태로 배포;  
 - Copyleft 의무를 발생시킬 수 있는 다른 오픈소스와 통합;  
 - 수정한 오픈소스를 포함;  
 - 공급 대상 소프트웨어 내에서 상호 작용하는 다른 컴포넌트와 호환되지 않는 라이선스 하의 오픈소스 또는 기타 소프트웨어를 포함; - 저작자 표시 요건이 있는 오픈소스를 포함.

#### 입증 자료:

 3.2.1 공급 대상 소프트웨어의 오픈소스 컴포넌트에 대해 일반적인 오픈소스 라이선스 사용 사례를 처리하기 위한 문서화된 절차.

----------------

### 3.2 License Compliance

The Program must be capable of managing common Open Source license use cases encountered by Software Staff for Supplied Software, which may include the following use cases \(note that the list is neither exhaustive, nor may all of the use cases apply\):

- distributed in binary form;  
 - distributed in source form;  
 - integrated with other Open Source such that it may trigger copyleft obligations;  
 - contains modified Open Source;  
 - contains Open Source or other software under an incompatible license interacting with other components within the Supplied Software; and/or - contains Open Source with attribution requirements.

 #### Verification Material\(s\):

 A documented procedure for handling the common Open Source license use cases for the Open Source components of the Supplied Software.

{{% /pageinfo %}}


오픈소스 라이선스를 제대로 준수하기 위해서는 오픈소스 라이선스 별로 요구하는 사항에 대해 정확히 알고 있어야 한다. 개별 소프트웨어 개발자가 이를 일일이 파악하는 것은 어렵기 때문에 오픈소스 책임자는 자주 사용되는 오픈소스 라이선스 들에 대해 일반적인 사용 사례별 요구사항/주의사항을 정리하여 회사 내부에 공유하는 것이 좋다. 오픈소스 책임자는 자주 사용되는 오픈소스 라이선스별로 일반적인 사용 사례에 대한 의무 요약 자료를 제공한다. 오픈소스 라이선스에 대한 일반적인 가이드와 라이선스 의무 요약 자료는 NIPA에서 제공하는“공개SW 라이선스 가이드”를 참고할 수 있다. \([https://www.oss.kr/oss\_license](https://www.oss.kr/oss_license)\) \[부록 2\] 오픈소스 컴플라이언스 프로세스 \(예시\)의 오픈소스 컴플라이언스 프로세스의 식별, 검사, 문제해결, 리뷰, 승인 단계를 통해 공급 대상 소프트웨어의 오픈소스 컴포넌트에 대해 일반적인 오픈소스 라이선스 사용 사례를 처리할 수 있다.

{% page-ref page="../../appendix/process.md" %}

식별 및 검사 단계에서는 소스코드 스캔 도구를 사용할 수 있다. 소스코드 스캔 도구는 무료로 사용할 수 있는 오픈소스 기반 도구부터 상용 도구까지 다양하게 있다. 각 도구들은 특장점 들이 있지만 어떤 하나도 모든 문제를 해결할 수 있는 완벽한 기능을 제공하지 않는다. 따라서 기업은 제품의 특성과 요구사항에 맞는 적합한 도구를 선택해야 한다. 많은 기업들이 이러한 자동화된 소스 코드 스캔 도구와 수동 검토를 병행하여 이용한다. Linux Foundation의 FOSSology Project는 오픈소스로 공개된 소스 코드 스캔 도구로서 기업들이 손쉽게 무료로 사용할 수 있다. 사용 방법은 \[부록 03\] 오픈소스도구 \(FOSSology, SW360\) 참고할 수 있다.

{% page-ref page="../../appendix/tools/" %}

