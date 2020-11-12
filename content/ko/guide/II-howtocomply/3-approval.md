---
title: "3. 오픈소스 콘텐츠 검토 및 승인"
weight: 3
type: docs
---

## 3.1 BOM (Bill of Materials)

{{% pageinfo %}}

### OpenChain 규격 2.1
-----------

### 3.1 BOM

배포 대상 소프트웨어를 구성하는 오픈소스 컴포넌트(및 식별된 라이선스)에 대한 BOM (Bill of Materials)을 생성하고 이를 관리하는 프로세스가 있어야 한다.

#### 입증 자료:

 3.3.1.1 배포 대상 소프트웨어를 구성하는 오픈소스 컴포넌트에 대한 정보를 식별, 추적, 검토, 승인 및 보관하기 위한 문서화된 절차
 3.3.1.2 문서화된 절차가 적절히 준수되었음을 보여주는 배포 대상 소프트웨어에 대한 오픈소스 컴포넌트 기록

----------------

### 3.1 Bill of Materials

A process exists for creating and managing a bill of materials that includes each Open Source component \(and its Identified Licenses\) from which the Supplied Software is comprised.

#### Verification Material\(s\):

 3.1.1 A documented procedure for identifying, tracking, reviewing, approving, and archiving information about the collection of Open Source components from which the Supplied Software is comprised.  
 3.1.2 Open Source component records for the Supplied Software that demonstrates the documented procedure was properly followed.

{{% /pageinfo %}}

오픈소스 컴플라이언스 활동의 가장 기본은 배포 대상 소프트웨어에 포함된 오픈소스 현황을 파악하는 것이다. 배포 대상 소프트웨어에 포함된 오픈소스와 그 라이선스를 식별하여 그 정보를 담고있는 BOM (Bill of Materials)을 작성하고 관리하는 프로세스를 구축해야 한다. 배포 대상 소프트웨어의 버전마다 어떤 오픈소스가 포함되어 있는지 알고 있어야 소프트웨어를 배포할 때 각 오픈소스의 라이선스가 요구하는 의무 사항을 준수할 수 있기 때문이다. 

모든 오픈소스는 배포 대상 소프트웨어에 통합하기 전에 검토 및 승인되어야 한다. 오픈소스의 기능, 품질 뿐만 아니라 출처, 라이선스 요건을 충족할 수 있는지 사전 검토가 되어야 한다. 이를 위해 검토 요청 → 리뷰 → 승인 과정이 필요하다. [\[부록 02\] 샘플 오픈소스 컴플라이언스 프로세스](../../appendix/2-process-template/)에서는 기업의 오픈소스 컴플라이언스를 위한 프로세스 전과정에 대해 설명하고 있다. 식별부터 등록까지의 과정을 통해 BOM을 작성하고 관리하게 된다.

배포 대상 소프트웨어에 포함된 오픈소스 목록은 문서화하여 보관해야 한다. Eclipse 재단에서 후원하는 오픈소스 프로젝트인 SW360\(https://projects.eclipse.org/proposals/ sw360\)은 배포 대상 소프트웨어별로 포함하고 있는 오픈소스 목록을 트래킹할 수 있는 기능을 제공한다. SW360 사용 방법은 [\[부록 03\] 오픈소스 도구 (FOSSology/SW360)](../..//appendix/3-tools/sw360/)을 참고할 수 있다.

이와 같은 오픈소스 컴플라이언스 프로세스의 모든 과정과 결과는 문서화가 되어야 한다. 이메일을 사용하는 것 보다는 Jira, Bugzilla 등의 이슈 트래킹 시스템을 이용하는 것이 이러한 과정을 효율적으로 문서화 할 수 있다.

## 3.2 라이선스 컴플라이언스

{{% pageinfo %}}

### OpenChain 규격 2.1
-----------

### 3.2 라이선스 컴플라이언스

프로그램은 배포 대상 소프트웨어에 대해 프로그램 참여자가 접할 수 있는 일반적인 오픈소스 라이선스의 사용 사례에 대해 어떻게 처리할지를 다뤄야 한다. 여기에는 다음과 같은 사용 사례가 포함될 수 있다(아래 사항이 모든 사례를 다루는 것은 아니며, 또한 이 사례를 모두 다뤄야만 하는 것은 아님) : 

 - 바이너리 형태로 배포
 - 소스 형태로 배포
 - 추가 라이선스 의무를 유발하는 다른 오픈소스와 통합
 - 수정된 오픈소스를 포함
 - 배포 대상 소프트웨어 내의 다른 컴포넌트와 서로 호환되지 않는 라이선스 하의 오픈소스 또는 다른 소프트웨어가 포함
 - 저작자 표시 요구사항을 갖는 오픈소스 포함

#### 입증 자료:

 3.2.1 배포 대상 소프트웨어 내의 오픈소스 컴포넌트에 대해 일반적인 오픈소스 라이선스 사용 사례를 다루는 문서화된 절차

----------------

### 3.2 License Compliance

The program shall be capable of managing common open source license use cases encountered by program participants for supplied software, which may include the following use cases (note that the list is neither exhaustive, nor might all of the use cases apply):

 - Distributed in binary form;
 - Distributed in source form;
 - Integrated with other open source such that it triggers additional licensing obligations;
 - Contains modified open source;
 - Contains open source or other software under an incompatible license interacting with other components within the Supplied Software; and/or
 - Contains open source with attribution requirements.

 #### Verification Material\(s\):

 3.3.2.1 A documented procedure for handling the common open source license use cases for the open source components of the supplied software.

{{% /pageinfo %}}


오픈소스 라이선스를 제대로 준수하기 위해서는 오픈소스 라이선스 별로 요구하는 사항에 대해 정확히 알고 있어야 한다. 하지만 개별 소프트웨어 개발자가 이를 일일이 파악하는 것은 어렵기 때문에 오픈소스 책임자는 자주 사용되는 오픈소스 라이선스에 대해 일반적인 사용 사례별 요구사항/주의사항을 정리하여 회사 내부에 공유하는 것이 좋다. 오픈소스 라이선스에 대한 일반적인 가이드와 라이선스 의무 요약 자료는 NIPA에서 제공하는“공개SW 라이선스 가이드”를 참고할 수 있다. \([https://www.oss.kr/oss\_license](https://www.oss.kr/oss_license)\) 

[\[부록 2\] 샘플 오픈소스 컴플라이언스 프로세스](../../appendix/2-process-template/)의 오픈소스 컴플라이언스 프로세스의 식별, 검사, 문제해결, 리뷰, 승인 단계를 통해 배포 대상 소프트웨어의 오픈소스 컴포넌트에 대해 일반적인 오픈소스 라이선스 사용 사례를 처리할 수 있다.


식별 및 검사 단계에서는 소스코드 스캔 도구를 사용할 수 있다. 소스코드 스캔 도구는 무료로 사용할 수 있는 오픈소스 기반 도구부터 상용 도구까지 다양하게 있는데, 각 도구들은 특장점 들이 있지만 어떤 하나도 모든 문제를 해결할 수 있는 완벽한 기능을 제공하지 않는다. 따라서 기업은 제품의 특성과 요구사항에 맞는 적합한 도구를 선택해야 한다. 많은 기업들이 이러한 자동화된 소스 코드 스캔 도구와 수동 검토를 병행하여 이용한다. Linux Foundation의 FOSSology 프로젝트는 오픈소스로 공개된 소스 코드 스캔 도구로서 기업들이 손쉽게 무료로 사용할 수 있다. 사용 방법은 [\[부록 03\] 오픈소스도구 \(FOSSology, SW360\)](../../appendix/3-tools/)을 참고할 수 있다.


