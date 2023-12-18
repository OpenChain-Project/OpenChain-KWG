---
title: "2. 관련 업무 정의 및 지원"
weight: 2
type: docs
---

오픈소스 프로그램이 효과적으로 운용되기 위해서는 충분한 리소스와 인력 할당이 필요하다. 여기에서는 이를 위한 요구사항을 정의한다.

## 2.1 접근성

ISO/IEC 5230과 ISO/IEC 18974의 3.2.1항에서는 다음과 같이 접근성에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.2.1 외부 문의 대응 (Access)

외부의 오픈소스 문의에 효과적으로 대응하기 위한 프로세스를 유지해야 한다. 제 3자가 오픈소스 컴플라이언스에 대해 문의 할 수 있는 방법을 공개해야 한다.

입증 자료:

* 3.2.1.1 제 3자가 오픈소스 라이선스 컴플라이언스에 대해 문의 할 수 있는 공개된 방법 (담당자 이메일 주소, 또는 Linux Foundation의 Open Compliance Directory 활용 등)
* 3.2.1.2 제 3자의 오픈소스 라이선스 컴플라이언스 문의에 대응하기 위한 내부의 문서화된 절차

----------------

3.2.1 Access

Maintain a process to effectively respond to external open source inquiries. Publicly identify a means by which a third party can make an open source compliance inquiry.

Verification material(s):

* 3.2.1.1 Publicly visible method that allows any third party to make an open source license compliance inquiry (e.g., via a published contact email address, or the Linux Foundation's Open Compliance Directory).
* 3.2.1.2 An internal documented procedure for responding to third party open source license compliance inquiries.

{{% /pageinfo %}}

{{% pageinfo color="warning"%}}

ISO/IEC 18974

-----------

3.2.1 - 외부 문의 대응

알려진 취약점에 대한 외부 문의에 효과적으로 대응하기 위한 프로세스를 유지해야 한다. 제3자가 특정 소프트웨어 제품과 관련하여 알려진 취약점에 대해 문의할 수 있는 방법을 공개해야 한다.

입증 자료:
- 3.2.1.1: 제3자가 알려진 취약점 또는 새로 발견된 취약점에 대해 문의할 수 있는 공개된 방법 (예: 이메일 주소 또는 프로그램 참여자가 모니터링하는 웹 포털)
- 3.2.1.2: 제3자에 의한 알려진 취약점 또는 새로 발견된 취약점 문의에 대응하기 위한 내부의 문서화된 절차

----------------

3.2.1 - Access

Maintain a process to effectively respond to Known Vulnerability external inquiries. Publicly identify a means by which a third party can inquire about a Known Vulnerability with respect to a given software offering.

Verification Material(s):
- 3.2.1.1: Publicly visible method to allow third parties to make Known Vulnerability or Newly Discovered Vulnerability enquires (e.g., via an email address or web portal that is monitored by Program Participants);
- 3.2.1.2: An internal documented procedure exists for responding to third party Known Vulnerability or Newly Discovered Vulnerability inquiries.


{{% /pageinfo %}}

### 2.1.1 연락 담당자 지정

오픈소스를 사용하여 개발한 제품 혹은 서비스에 대해 고객 및 오픈소스 저작권자가 기업에 오픈소스 관련 문의, 요청 및 클레임을 제기하는 경우가 있다. 외부 문의 및 요청의 주된 내용은 다음과 같다.

* 특정 제품 및 서비스에 오픈소스가 사용되었는지 문의
* 서면 약정(Written Offer)에 언급된 GPL, LGPL 라이선스 하의 소스 코드 제공 요청
* 오픈소스 고지문에 명시되지 않았지만, 제품에서 발견된 오픈소스에 대한 해명 및 소스 코드 공개 요청
* GPL, LGPL 등의 의무로 공개된 소스 코드에 누락된 파일 및 빌드 방법 제공 요청
* 저작권 표시 요청

기업은 이러한 외부 문의를 처리할 담당자를 지정해야 한다. 일반적으로 오픈소스 프로그램 매니저가 담당한다. 

### 2.1.2 연락 담당자 정보 공개

외부의 오픈소스 개발자가 특정 기업의 오픈소스 컴플라이언스 관련 이슈를 논의하기 위해 기업 담당자에게 연락하고 싶어도 연락 방법을 찾지 못하다가 결국 바로 법적 클레임을 제기하는 경우가 있다. 이를 방지하기 위해 기업은 제 3자가 기업에 오픈소스 관련하여 문의 및 요청을 할 수 있는 연락 방법을 항시 공개적으로 밝혀야 한다. 

외부에서 기업에 오픈소스 관련된 문의를 할 수 있는 연락 방법은 (1) 기업 오픈소스 프로그램 매니저의 이메일 주소를 공개하거나, (2) Linux Foundation의 [Open Compliance Directory](https://compliance.linuxfoundation.org/references/open-compliance-directory/)[^directory]를 이용하는 것이다. 기업 오픈소스 프로그램 사무소의 대표 이메일 주소는 제품 및 서비스와 동봉하는 오픈소스 고지문에 포함하여 공개하는 것도 한 방법이다. 

[^directory]: Open Compliance Directory - https://compliance.linuxfoundation.org/references/open-compliance-directory/

Linux Foundation은 기업이 오픈소스 담당자의 연락처를 공개할 수 있도록 Open Compliance Directory라는 공간을 마련하였다.

![directory.png](../directory.png) 

_<center>< https://compliance.linuxfoundation.org/references/open-compliance-directory/ ></center>_

<br>

기업의 오픈소스 담당자는 "Add an Organization"을 이용하여 기업의 연락처를 등록한다. 외부 개발자는 "Request a Contact"에서 오픈소스 컴플라이언스 관련 문의 및 요청을 할 수 있다. 이를 통해 오픈소스 개발자들은 원하는 기업의 컨택 포인트 정보를 쉽게 확인할 수 있고, 법적 클레임까지 제기하기 이전에 기업의 오픈소스 담당자와 오픈소스 컴플라이언스 이슈를 논의하여 문제를 해결할 수 있다. Open Compliance Directory에 기업 정보 및 연락 방법을 등록하는 것이 소송 리스크를 줄일 수 있는 방법의 하나다.

### 2.1.3 문의 대응 절차 문서화

기업이 외부 클레임에 의해 법적 소송까지 당하지 않기 위해서는 외부 문의 및 요청에 가능한 빠르고 정확하게 대응하는 것이 중요하다. 이를 위해 기업은 외부 오픈소스 문의를 빠르고 효과적으로 대응 할 수 있는 프로세스를 갖추고 있어야 한다. 

위의 내용은 다음의 예시 문장을 오픈소스 정책에 반영할 수 있다.  

~~~
9. 외부 문의 대응

(1) 외부 문의 대응 책임
외부로부터 오픈소스에 대한 문의 및 요청에 대한 대응은 오픈소스 프로그램 매니저가 담당합니다.

- 오픈소스 프로그램 매니저는 회사 내의 적절한 인원에게 문의에 대한 전체 또는 일부의 처리를 할당할 수 있습니다. 필요할 경우 법률 담당자에게 문의하여 처리합니다.
- 외부로부터 오픈소스에 대한 문의를 받은 사람은 누구나 이를 오픈소스 프로그램 매니저에게 알려서 신속한 대응이 될 수 있게 합니다.

(2) 연락처 공개
오픈소스 프로그램 매니저는 외부에서 오픈소스 관련한 문의 및 요청을 할 수 있도록 담당자의 연락처를 공개적으로 제공합니다.

- 오픈소스 고지문에 연락받을 수 있는 이메일 주소 정보를 제공합니다.
- 오픈소스 웹사이트에 이메일 주소 정보를 제공합니다.
- Linux Foundation의 Open Compliance Directory에 연락처를 등록합니다.

(3) 외부 문의 대응 절차
외부로부터의 오픈소스 문의에 신속하고 정확하게 대응한다면 클레임이나 법적 소송 위험을 크게 줄일 수 있습니다. 이를 위해 회사는 외부의 오픈소스 문의에 대응하기 위해 회사의 오픈소스 프로세스에서 정의한 외부 문의 대응 절차를 준수합니다.
~~~

또한 이 가이드에서는 외부 문의에 대응하기 위한 일반적인 절차에 대한 예시를 [[부록 2] 오픈소스 프로세스의 3. 외부 문의 대응 프로세스](../../../templates/2-process-template/#3-외부-문의-대응-프로세스)에서 제공한다.


## 2.2 효과적인 리소스 제공

ISO/IEC 5230과 ISO/IEC 18974의 3.2.2항에서는 다음과 같이 효과적인 오픈소스 프로그램의 운영을 위한 리소스 제공에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

### ISO/IEC 5230
-----------

3.2.2 효과적인 리소스 제공

프로그램이 효과적일 수 있도록 다음과 같이 업무를 정의하고 리소스를 제공해야 한다:

* 프로그램을 성공적으로 수행할 수 있도록 각 업무에 대한 책임을 할당한다. 
* 프로그램의 업무를 위한 충분한 리소스를 제공한다.
  * 업무 수행 시간을 할당한다.
  * 예산을 적절하게 지원한다.
* 정책 및 지원 업무를 검토하고 개선하는 프로세스가 존재한다.
* 오픈소스 라이선스 컴플라이언스와 관련된 전문 법률 자문을 이용 할 수 있게 한다.
* 오픈소스 라이선스 컴플라이언스 문제를 해결하기 위한 프로세스가 존재한다.

입증 자료:
* 3.2.2.1 프로그램 내 각 역할을 담당하는 인원, 그룹 또는 직무의 이름을 기재한 문서
* 3.2.2.2 프로그램 내 각 역할을 담당하는 인원이 적합하게 배치되고, 예산이 적절하게 지원되어야 한다.
* 3.2.2.3 오픈소스 라이선스 컴플라이언스 문제 해결을 위해 내부 또는 외부의 전문 법률 자문을 이용하는 방법
* 3.2.2.4 오픈소스 컴플라이언스에 대한 내부 책임을 할당하는 문서화된 절차
* 3.2.2.5 미준수 사례를 검토하고 이를 수정하기 위한 문서화된 절차


----------------

3.2.2 Effectively resourced

Identify and Resource Program Task(s):

* Assign accountability to ensure the successful execution of program tasks.
* Program tasks are sufficiently resourced:
  * Time to perform the tasks have been allocated; and
  * Adequate funding has been allocated.
* A process exists for reviewing and updating the policy and supporting tasks;
* Legal expertise pertaining to open source license compliance is accessible to those who may need such guidance; and
* A process exists for the resolution of open source license compliance issues.

Verification material(s):
* 3.2.2.1 Document with name of persons, group or function in program role(s) identified.
* 3.2.2.2 The identified program roles have been properly staffed and adequate funding provided.
* 3.2.2.3 Identification of legal expertise available to address open source license compliance matters which could be internal or external.
* 3.2.2.4 A documented procedure that assigns internal responsibilities for open source compliance.
* 3.2.2.5 A documented procedure for handling the review and remediation of non-compliant cases.

{{% /pageinfo %}}

{{% pageinfo color="warning"%}}

### ISO/IEC 18974
-----------

3.2.2 - 효과적인 리소스 제공

프로그램이 효과적일 수 있도록 다음과 같이 업무를 정의하고 리소스를 제공해야 한다:

- 프로그램을 성공적으로 수행할 수 있도록 각 업무에 대한 책임을 할당한다.
- 프로그램의 업무를 위한 충분한 리소스를 제공한다.
- 업무를 수행하기에 충분한 시간을 할당한다.
- 예산을 적절하게 지원한다.
- 정책 및 지원 업무를 검토하고 개선하는 프로세스가 존재한다.
- 알려진 취약점과 관련된 전문 기술 자문을 이용할 수 있게 한다.

입증 자료:
- 3.2.2.1: 프로그램 내 각 역할을 담당하는 인원, 그룹 또는 직무의 이름을 기재한 문서
- 3.2.2.2: 프로그램 내 각 역할을 담당하는 인원이 적합하게 배치되고, 예산이 적절하게 지원되어야 한다.
- 3.2.2.3: 식별된 알려진 취약점을 해결을 위해 전문 기술 자문을 이용할 수 있는 방법
- 3.2.2.4: 보안 보증에 대한 내부 책임을 할당하는 문서화된 절차

----------------

3.2.2 - Effectively Resourced

Identify and Resource Program Task(s):

- Assign accountability to ensure the successful execution of Program tasks;
- Program tasks are sufficiently resourced;
- Sufficient time to perform the tasks have been allocated;
- Adequate funding has been allocated;
- A process exists for reviewing and updating the policy and supporting tasks;
- Technical expertise pertaining to Known Vulnerabilities is accessible to those who may need such guidance.

Verification Material(s):

- 3.2.2.1: Document with name of persons, group or function in Program role(s) identified;
- 3.2.2.2: The identified Program roles have been properly staffed and adequate funding provided;
- 3.2.2.3: Identification of expertise available to address identified Known Vulnerabilities;
- 3.2.2.4: A documented procedure that assigns internal responsibilities for Security Assurance.

{{% /pageinfo %}}

### 2.2.1 각 역할 담당자 문서화

기업은 각 프로그램 참여자의 역할 및 그에 따른 책임을 나열하고, 각 역할을 담당하는 담당자 혹은 담당 조직을 지정해야 한다. 그리고 이를 문서화하고 오픈소스 정책 문서에 포함해서 누구나 열람할 수 있게 해야 한다. 다음의 예시를 참고하라. 

~~~
4. 역할, 책임 및 역량
정책의 효과를 보장하기 위해 다음과 같이 역할과 책임 및 각 역할의 담당자가 갖추어야 할 역량을 정의합니다.

각 역할의 담당 조직/담당자와 필요 역량 수준은 [부록 1. 담당자 현황]에서 정의합니다.

- 오픈소스 프로그램 매니저는 회사의 비즈니스 상황에 맞추어 주기적으로 명단을 업데이트합니다.
~~~

### 2.2.2 인원과 예산 지원

기업은 오픈소스 프로그램이 원활하게 기능을 수행할 수 있도록 충분한 리소스를 제공해야 한다. 프로그램 내 각 역할을 담당하는 인원을 적합하게 배치하고, 충분한 예산과 업무 시간을 보장해야 한다. 그렇지 않을 경우, 이를 보완할 수 있는 절차가 마련되어야 한다. 다음의 예시 문장을 오픈소스 정책 문서에 추가할 수 있다. 

~~~
4. 역할, 책임 및 역량

각 역할에 대한 담당 조직의 장은 조직 내 담당자를 지정하고, 담당자가 역할을 충실하게 수행할 수 있는 적절한 시간과 예산을 할당합니다.
- 각 역할의 담당자는 자신이 역할을 수행하면서 적절한 지원이 되지 않는다면 오픈소스 프로그램 매니저에게 문제를 제기해야 합니다.
- 오픈소스 프로그램 매니저는 해당 조직장과 문제 해결을 논의합니다. 적절하게 해결되지 않는다면, 오픈소스 프로그램 매니저는 OSRB에 문제 해결을 요청할 수 있습니다.
- OSRB는 상위 조직의 장에게 문제를 공유하고 해결을 요청합니다.
~~~

### 2.2.3 외부 전문 자문 이용 방법 제공

기업은 프로그램 참여자가 이슈 해결을 위해 법률적인 검토가 필요할 경우, 이에 대해 법률 자문을 요청할 수 있는 방법을 제공해야 한다. 회사 내의 법무팀을 통해 우선 제공하고, 이슈가 첨예한 경우, 오픈소스 전문 변호사를 보유한 외부 법무 법인을 이용할 수 있다. 이를 위한 오픈소스 정책의 예시는 다음과 같다. 

~~~

4. 역할, 책임 및 역량

(2) 오픈소스 프로그램 매니저

- 구성원이 오픈소스 관련 자문을 받는 방법을 제공합니다.
~~~

참고로, OpenChain 프로젝트에서는 파트너 프로그램을 통해 오픈소스 관련 자문을 제공하는 글로벌 법무법인 리스트를 제공한다.

 ![partners.png](../partners.png) 

 _<center>< https://www.openchainproject.org/partners ></center>_

OpenChain 파트너로 등록된 법무법인은 OpenChain 프로젝트에서 요구하는 요건을 충족한 곳들이며, 대한민국에서는 유일하게 법무법인 태평양이 등록되어 있다.

### 2.2.4 내부 책임 할당 절차 문서화

오픈소스 컴플라이언스와 보안 보증에 대한 내부 책임을 할당하는 절차가 있어야 한다. 오픈소스 프로그램 매니저와 보안담당자는 이슈를 파악하고 각 역할의 담당자에게 적절히 이슈를 할당해야 한다. 이를 위해 기업은 오픈소스 정책 문서에 이러한 내용을 아래와 같이 기술할 수 있다.

~~~
4. 역할, 책임 및 역량

(2) 오픈소스 프로그램 매니저

오픈소스 프로그램 매니저는 회사의 오픈소스 프로그램에 대한 총괄 책임을 담당합니다. 오픈소스를 사용한 제품과 서비스의 오픈소스 관리 활동을 보장하기 위해 다음 사항에 대한 책임이 있습니다.

- 오픈소스 컴플라이언스를 위해 필요한 역할을 정의하고, 각 역할을 책임질 담당 조직 및 담당자를 지정합니다. 필요 시 OSRB와 협의합니다. 오픈소스 보안 보증을 위한 내부 책임은 보안 담당자가 할당합니다.
~~~


### 2.2.5 미준수 사례 검토 및 수정 절차 문서화

기업은 오픈소스 정책 문서에 위의 내용을 기술하여 오픈소스 프로그램에 효과적인 리소스가 제공될 수 있도록 해야 한다. 

컴플라이언스 미준수 문제가 제기된 경우, 기업은 이를 신속히 검토하고 대응하기 위한 절차를 문서화해야 한다. 다음의 예시를 참고하여 오픈소스 정책에 포함할 수 있다. 

~~~
6. 오픈소스 사용

(5) 컴플라이언스 이슈 대응 절차
컴플라이언스 이슈가 제기될 경우, 오픈소스 프로그램 매니저는 다음의 절차를 수행하여 신속히 대응합니다.

1. 문의 접수를 확인하고 적절한 해결 시간을 명시합니다.
2. 이슈 내용이 실제 문제를 지적하고 있는지를 확인합니다. (아닐 경우, 이슈 제기자에게 문제가 아님을 알립니다.)
3. 실제 문제인 경우, 우선순위를 정하고 적절한 대응 방안을 결정합니다.
4. 대응을 수행하고, 필요할 경우, 오픈소스 프로세스를 적절하게 보완합니다.
5. 위의 내용은 Jira Tracker를 이용하여 보존합니다.
~~~

이 가이드에서는 효과적인 리소스 제공에 대한 예시를 [[부록 01] 샘플 오픈소스 정책의 4. 역할, 책임 및 역량](../../../templates/1-policy/#4-역할-책임-및-역량)에서 제공한다.
