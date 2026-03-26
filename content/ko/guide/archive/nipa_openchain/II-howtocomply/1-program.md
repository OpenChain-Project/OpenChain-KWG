---
title: "1. 프로그램 설립"
weight: 1
type: docs
---


오픈소스를 이용하여 소프트웨어를 개발하고 배포하는 기업이라면 오픈소스를 관리하기 위한 정책과 프로세스를 만들고, 이를 위한 인력과 자원을 적절하게 할당해야 한다. 

오픈소스 프로그램이란 정책, 프로세스, 인원 등 기업이 오픈소스 컴플라이언스 활동을 수행하기 위한 일련의 관리 체계를 의미하며, OpenChain 규격의 첫 번째 요구사항은 바로 이 오픈소스 프로그램을 설립하라는 것이다.


## 1.1 정책

그 첫 번째 요구사항으로 문서화된 오픈소스 정책이 있어야 한다. ISO/IEC 5230과 ISO/IEC 18984 표준에의 3.1.1항에서는 다음과 같이 정책에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

ISO/IEC 5230

---

3.1.1 Policy

배포용 소프트웨어의 오픈소스 라이선스 컴플라이언스를 관리하는 문서화된 오픈소스 정책이 있어야 한다. 이 정책은 조직 내부에 전파되어야 한다.

입증 자료:

3.1.1.1 문서화된 오픈소스 정책  
3.1.1.2 프로그램 참여자가 오픈소스 정책의 존재를 알 수 있게 하는 문서화된 절차 (교육, 내부 위키, 혹은 기타 실질적인 전달 방법 등)

---

3.1.1 Policy

A written open source policy shall exist that governs open source license compliance of the supplied software. The policy shall be internally communicated.

Verification Material(s):

 3.1.1.1 A documented open source policy.  
 3.1.1.2 A documented procedure that makes program participants aware of the existence of the open source policy (e.g., via training, internal wiki, or other practical communication method).

{{% /pageinfo %}}

{{% pageinfo color="warning" %}}

ISO/IEC 18974

---

3.1.1 정책

배포용 소프트웨어의 오픈소스 소프트웨어 보안 보증을 관리하는 문서화된 오픈소스 정책이 있어야 한다. 이 정책은 조직 내부에 전파되어야 한다. 정책과 전파 방법은 항상 유효하고 최신 상태를 유지하기 위한 검토 프로세스를 가져야 한다.

입증 자료:

3.1.1.1: 문서화된 오픈소스 소프트웨어 보안 보증 정책  
3.1.1.2: 프로그램 참가자에게 보안 보증 정책을 알리기 위한 문서화된 절차.

---

3.1.1 Policy

A written policy will be created that governs Open Source Software Security Assurance of Supplied Software. The policy will be internally communicated. The policy and its method of communication will have a review process to ensure they are current and relevant.

Verification Material(s):

3.1.1.1: A documented Open Source Software Security Assurance policy;  
3.1.1.2: A documented procedure to make Program Participants aware of the Security Assurance policy.

{{% /pageinfo %}}

### 1.1.1 문서화된 정책

먼저 오픈소스 정책을 수립하고 문서화해야 한다. 오픈소스 정책은 다음을 포함한다.

- 기업이 오픈소스를 사용하여 소프트웨어 제품과 서비스를 만들어서 배포하기 위한 정책
- 외부 오픈소스 커뮤니티에 기여하기 위한 정책
- 기업의 소프트웨어를 오픈소스로 공개하기 위한 정책

이 안내서에서는 참고를 위해 ISO/IEC 5230, ISO/IEC 18974 두 표준의 요구사항을 충족하는 샘플 오픈소스 정책 문서를 “[[부록 1] 오픈소스 정책](../../../templates/1-policy/)”에서 제공한다. 

### 1.1.2 정책을 알리는 절차

기업은 모든 프로그램 참여자가 조직 내에 오픈소스 정책이 있다는 것을 인식하고 필요한 활동을 할 수 있도록 교육, 내부 위키 등 실질적인 수단을 제공해야 한다. 여기서 프로그램 참여자란 기업이 소프트웨어를 개발하고 배포, 기여하는 데 관여하는 모든 직원을 의미하며, 소프트웨어 개발자, 배포 엔지니어, 품질 엔지니어 등을 포함한다.

많은 기업은 오픈소스 정책 문서를 사내 위키 사이트를 통해 공개하여 직원 누구나 필요한 사항을 확인할 수 있게 한다. 또한, 신규 채용 인원의 입사 연수 시 오픈소스 정책에 대한 교육을 의무화하고, 프로그램 참여자를 대상으로 매년 혹은 2년에 한 번씩 주기적인 교육을 제공함으로 모든 프로그램 참여자가 오픈소스 정책의 존재를 인식하게 한다. 즉, 기업은 이러한 방법들을 다음의 예와 같이 작성하여 오픈소스 정책 문서 포함해야 한다.

이에 대한 예시는 [[부록 1] 오픈소스 정책의 5. 교육 및 평가](../../../templates/1-policy/#5-교육-및-평가)를 참고할 수 있다. 


```
5. 교육 및 평가

4장에서 정의한 각 역할을 담당하는 모든 구성원은 [Learning Portal]에서 제공하는 오픈소스 교육 고급 과정을 수강해야 합니다. 이를 통해 오픈소스 정책, 관련 교육 정책 및 조회 방법을 숙지합니다.

교육 이력과 평가 결과는 [Learning Portal]에 최소 3년간 보존합니다.

```

## 1.2 역량

이 장은 프로그램 참여자가 갖추어야 할 역량에 대한 요구사항을 정의한다. ISO/IEC 5230과 ISO/IEC 18974 표준의 3.1.2항에서는 다음과 같이 역량에 대한 요구사항과 입증 자료를 정의하고 있다.


{{% pageinfo %}}

ISO/IEC 5230

-----------

3.1.2 역량

조직은 다음 사항을 수행해야 한다:
 - 프로그램의 성과와 효율에 영향을 미치는 역할이 무엇인지, 그 역할에 해당하는 책임은 무엇인지 확인한다.
 - 각 역할을 수행할 프로그램 참여자가 갖춰야 할 필요 역량을 결정한다.
 - 프로그램 참여자가 적절한 교육, 훈련 및/또는 경험을 바탕으로 자격을 갖춘 자임을 확인한다.
 - 해당되는 경우, 필요한 역량을 확보하기 위해 조치한다.
 - 역량 보유를 증명하기 위한 정보를 문서화하여 유지한다.

입증 자료:

 3.1.2.1 프로그램의 여러 참여자에 대한 역할과 각 역할의 책임을 나열한 문서  
 3.1.2.2 각 역할을 위해 필요한 역량을 기술한 문서  
 3.1.2.3 각 프로그램 참여자의 역량을 평가한 문서화된 증거

----------------

3.1.2 Competence

The organization shall:  
 - Identify the roles and the corresponding responsibilities of those roles that affects the performance and effectiveness of the program;
 - Determine the necessary competence of program participants fulfilling each role
 - Ensure that program participants are competent on the basis of appropriate education, training, and/or experience;
 - Where applicable, take actions to acquire the necessary competence; and
 - Retain appropriate documented information as evidence of competence.

Verification Material(s):

 3.1.2.1 A documented list of roles with corresponding responsibilities for the different participants in the program.  
 3.1.2.2 A document that identifies the competencies for each role.  
 3.1.2.3 Documented evidence of assessed competence for each program participant.  

{{% /pageinfo %}}


{{% pageinfo color="warning" %}}

ISO/IEC 18974

-----------

3.1.2 역량

조직은 다음 사항을 수행해야 한다:

- 프로그램의 성과와 효율에 영향을 미치는 역할과 책임을 식별한다.
- 각 역할을 수행하는 프로그램 참여자가 갖춰야 할 필요 역량을 결정한다.
- 프로그램 참여자가 적절한 교육, 훈련 및/또는 경험을 가지고 있는지 확인한다.
- 해당하는 경우, 프로그램 참여자가 필요한 역량을 확보하기 위한 조치를 취하도록 보장한다.
- 프로그램에서 누가 현재 참여자인지 뿐만 아니라 역량 보유를 증명하기 위한 정보를 적절하게 문서화하여 유지한다.

입증 자료:

3.1.2.1: 여러 프로그램 참여자에 대한 각각의 책임을 나열한 문서  
3.1.2.2: 각 역할을 위해 필요한 역량을 기술한 문서  
3.1.2.3: 참여자 명단과 그들의 역할  
3.1.2.4: 각 프로그램 참여자의 역량을 평가한 문서화된 증거  
3.1.2.5: 프로세스를 주기적으로 검토하고 개선했음을 나타내는 문서화된 증거  
3.1.2.6: 이러한 프로세스는 회사 내부 모범 사례를 반영하여 항상 현행화되어야 하고, 이를 누가 책임지고 수행해야 하는지를 명시한 문서화된 증거

----------------

3.1.2 Competence

The organization shall:  
 - Identify the roles and responsibilities that impact the performance and effectiveness of the Program;
 - Determine the necessary competence of Program Participants fulfilling each role;
 - Ensure that Program Participants have appropriate education, training, and/or experience;
 - Where applicable, ensure Program Participants take actions to acquire the necessary competence;
 - Retain appropriate documented information as evidence of competence as well as who is currently a participant in the program.

Verification Material(s):

3.1.2.1: A documented list of roles with corresponding responsibilities for the different Program Participants;  
3.1.2.2: A document that identifies the competencies for each role;
3.1.2.3: List of participants and their roles;  
3.1.2.4: Documented evidence of assessed competence for each Program Participant;  
3.1.2.5: Documented Evidence of periodic reviews and changes made to the process;  
3.1.2.6: Documented verification that these processes are current with company internal best practices and who is assigned to accomplish them.

{{% /pageinfo %}}

### 1.2.1 역할과 책임

오픈소스 프로그램이 효율적이고 성과를 내기 위해서 필요한 역할이 무엇인지와 그 역할이 담당해야 할 책임을 정의해야 한다. 오픈소스 프로그램에 필요한 일반적인 역할은 다음과 같다.

- 오픈소스 프로그램 매니저
- 법무 담당
- 인프라 담당
- 보안 담당
- 개발 문화 담당
- 품질 담당
- 소프트웨어 개발부서
- OSPO[^OSPO]
- OSRB[^OSRB]

[^OSPO]: OSPO - Open Source Program Office
[^OSRB]: OSRB - Open Source Review Board

위의 모든 역할을 처음부터 구성해야 하는 것은 아니다. 처음 시작하는 기업이라면 오픈소스 프로그램 매니저 역할을 하는 인원 한 명으로 시작할 수도 있다.

각 역할에 대한 일반적인 책임을 명시한 문서를 [[부록 1] 오픈소스 정책의 4. 역할, 책임 및 역량](../../../templates/1-policy/#4-역할-책임-및-역량)에서 제공한다.


### 1.2.2 역량

각 역할과 그에 대한 책임을 정의하였으면, 그 역할을 수행할 인원이 갖춰야 할 필요 역량이 무엇인지 정의해야 한다. 이 부분도 마찬가지로 [[부록 1] 오픈소스 정책의 4. 역할, 책임 및 역량](../../../templates/1-policy/#4-역할-책임-및-역량)에 포함하였으니 참고하기 바란다.

### 1.2.3 평가

기업은 각 역할에 대한 담당자를 지정하고, 지정된 담당자가 교육, 훈련 및 경험을 바탕으로 맡은 역할을 수행할 수 있는 자격을 갖추었음을 확인해야 한다. 필요할 경우, 프로그램 참여자가 충분한 역량을 갖출 수 있도록 교육도 제공해야 한다. 그리고 기업은 각 참여자가 역량을 갖추고 있는지 평가하고 결과를 보관해야 한다. 

1. 기업은 각 참여자가 필요한 역량을 보유할 수 있도록 교육을 제공한다. 
2. 교육 내용을 기반으로 평가를 수행한다. 
3. 평가 결과는 기업의 교육 시스템 혹은 HR 부서에서 보관한다. 

프로그램 참여자가 수백 명 이상이어서 교육 제공이 쉽지 않을 경우, 기업의 온라인 교육과 평가 시스템을 이용하는 것도 좋은 방법이다. 

이와 같은 내용은 기업의 오픈소스 정책에 다음과 같이 포함할 수 있다. 

~~~
4. 역할, 책임 및 역량

이 정책의 효과를 보장하기 위해 다음과 같이 역할과 책임 및 각 역할의 담당자가 갖추어야 할 역량을 정의한다. 

각 역할의 담당 조직/담당자와 필요 역량 수준은 "Appendix 1. 담당자 현황"에서 정의한다. 

5. 교육 및 평가

4장에서 정의한 각 역할을 담당하는 모든 구성원은 [Learning Portal]에서 제공하는 오픈소스 교육을 수강해야 한다. 

교육 이력과 평가 결과는 [Learning Portal]에서 최소 3년간 보존한다. 
~~~

### 1.2.4 프로세스 현행화

기업은 프로세스가 효과적인지 주기적으로 검토하여 개선하고, 이에 대한 근거를 문서화하여야 한다. 따라서, 프로세스 문서 상에 아래와 같은 내용을 포함할 수 있다. 

```
오픈소스 프로그램 매니저는 프로세스를 1년에 한 번 이상 주기적으로 검토하여 내부 모범 사례는 확산 전파하고, 미흡한 부분은 보완할 수 있도록 개선해야 합니다.
```

## 1.3 인식 

다음으로 ISO/IEC 5230과 ISO/IEC 18974 표준의 3.1.3항에서는 다음과 같이 인식에 대한 요구사항과 입증 자료를 정의하고 있다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.1.3 인식

조직은 프로그램 참여자가 다음 사항을 인식하도록 보장해야 한다:

* 오픈소스 정책
* 오픈소스 관련 목표
* 효과적인 프로그램이 되기 위한 참여자의 기여 방법
* 프로그램 요구사항을 준수하지 않을 경우 미치는 영향

입증 자료: 

3.1.3.1 다음 사항에 대한 프로그램 참여자의 인식을 평가하였음을 나타내는 문서화된 증거 : 프로그램의 목표, 프로그램 내에서의 참여자 기여 방법 및 프로그램을 준수하지 않을 경우 미치는 영향

----------------

3.1.3 Awareness

The organization shall ensure that the program participants are aware of:
* The open source policy;
* Relevant open source objectives;
* Their contribution to the effectiveness of the program; and
* The implications of not following the Program’s requirements.

Verification material(s):

* 3.1.3.1 Documented evidence of assessed awareness for the program participants - which should include the program’s objectives, one’s contribution within the program, and implications of program non-conformance.

{{% /pageinfo %}}

{{% pageinfo color="warning" %}}

ISO/IEC 18974

-----------

3.1.3 인식

조직은 프로그램 참여자가 다음 사항을 인식하도록 보장한다.:

- 오픈소스 소프트웨어 보안 보증 정책
- 오픈소스 관련 목표
- 효과적인 프로그램이 되기 위한 참여자의 기여 방법
- 프로그램 요구사항을 준수하지 않을 경우 미치는 영향

입증 자료:

3.1.3.1: 다음 사항에 대한 프로그램 참여자의 인식을 평가하였음을 나타내는 문서화된 증거 : 프로그램의 목표, 프로그램 내에서의 참여자 기여 방법 및 프로그램을 준수하지 않을 경우 미치는 영향.

----------------

3.1.3 Awareness

The organization will ensure that the Program Participants are aware of:

- The Open Source Software Security Assurance policy;
- Relevant Program objectives;
- Their contribution to the effectiveness of the Program;
- The implications of not following the Program’s requirements.

Verification Material(s):

3.1.3.1: Documented Evidence of assessed awareness for the Program Participants - which should include the Program’s objectives, one’s contribution within the Program, and implications of Program non-conformance.

{{% /pageinfo %}}


기업은 프로그램 참여자가 기업의 오픈소스 정책, 오픈소스 관련 목표, 효과적인 오픈소스 프로그램이 되기 위한 참여자의 기여 방법, 그리고 프로그램 요구사항을 준수하지 않을 경우 미치는 영향에 대해 인식하게 해야 한다. 이를 위해 기업은 교육을 제공하고, 프로그램 참여자에게 올바르게 인식하였는지 확인하기 위해 평가를 수행한다. 평가 결과는 문서화하여 보관한다.

이를 위한 아래의 예와 같은 내용을 기업의 오픈소스 정책에 포함할 수 있다.

~~~
1. 목적

(1) 정책의 목적

이 정책은 OOO 주식회사(이하 “회사"라 함)에서 소프트웨어 개발, 서비스, 배포에 관여하는 전체 조직이 올바르게 오픈소스 소프트웨어(이하 “오픈소스"라 함)를 활용하기 위해 다음과 같은 원칙을 제공합니다.

1. 오픈소스 컴플라이언스 / 보안 보증 원칙  
2. 외부 오픈소스 프로젝트로의 기여 원칙  
3. 사내 프로젝트를 오픈소스로 공개하기 위한 원칙  

이러한 원칙은 회사의 모든 구성원이 오픈소스의 가치를 이해하고, 오픈소스를 올바르게 사용하며, 오픈소스 커뮤니티에 기여하기 위한 방법을 제공합니다.

회사의 모든 구성원은 사내 위키의 다음 링크에서 오픈소스 정책을 확인할 수 있습니다 : [internal_link]

(2) 미준수 시 영향

이 정책을 준수하지 않는다면 다음과 같은 상황이 발생할 수 있습니다.

- 외부로부터 오픈소스 라이선스 준수 요구를 받을 수 있습니다.
- 회사가 개발한 소스 코드를 원치 않게 공개해야 할 수 있습니다.
- 오픈소스 저작권자로부터 법적 소송을 제기당할 수 있습니다.
- 저작권 침해 및 계약 위반으로 벌금을 부과받거나, 제품 판매 중지 명령을 받을 수 있습니다.
- 회사 평판이 손상될 수 있습니다.
- 공급업체와의 계약 위반이 되어 손해배상 청구를 받을 수 있습니다.
- 심각한 보안 사고에 노출되어 회사에 막대한 손해를 입힐 수 있습니다.

이러한 이유로 회사는 오픈소스 정책의 위반을 심각하게 간주하며, 이를 위반하는 구성원이나 조직은 징계 절차에 처할 수 있습니다.

(3) 구성원의 기여 방법

회사의 모든 구성원은 이 정책의 근거와 내용을 이해하고 필요한 활동을 충실히 수행함으로써 정책의 효과 및 회사의 컴플라이언스 수준 향상에 기여할 수 있습니다.
~~~

또, 프로그램 참여자가 오픈소스 정책을 인식하게 하기 위한 교육과 평가 방침도 수립해야 한다. 이에 대한 예시를 [[부록 1] 오픈소스 정책의 5. 교육 및 평가](../../../templates/1-policy/#5-교육-및-평가)에서 제공한다.


## 1.4 프로그램 범위

오픈소스 프로그램을 기업 내 어느 조직 혹은 어느 제품에 적용할지를 결정해야 하며 이를 위한 절차가 필요하다. ISO/IEC 5230과 ISO/IEC 18974 표준에서는 다음과 같이 프로그램의 적용 범위에 대한 요구사항과 입증 자료를 정의한다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.1.4 프로그램 적용 범위

프로그램은 다양한 범위별로 적용하여 관리할 수 있다. 예를 들어, 한 프로그램을 단일 제품군에만 적용할 수도 있고, 전체 부서 또는 전체 조직에 적용하여 관리할 수 있다. 따라서 각 프로그램에서는 적용 범위를 정확히 명시해야 한다.

입증 자료:

* 3.1.4.1 프로그램의 적용 범위와 한계를 명확하게 정의한 문서화된 진술

----------------

3.1.4 Program scope  

Different programs may be governed by different levels of scope. For example, a program could govern a single product line, an entire department or an entire organization. The scope designation needs to be declared for each program.

Verification material(s):

* 3.1.4.1 A written statement that clearly defines the scope and limits of the program.

{{% /pageinfo %}}

{{% pageinfo color="warning"%}}

ISO/IEC 18974

-----------

3.1.4 프로그램 적용 범위

프로그램은 전체 조직의 위험 관리 정책과 일치하는 기본 원칙과 범위를 정의해야 한다. 프로그램의 적용 범위가 특정 제품 라인인지, 하나의 부서인지 혹은 전체 조직인지 여부가 명확해야 한다. 또한 이 범위는 시간이 지남에 따라 변경될 수 있으며 지속적인 효과를 평가하기 위한 측정 기준이 사용될 수 있음을 이해해야 한다.

입증 자료:

3.1.4.1: 프로그램의 적용 범위와 한계를 명확하게 정의한 문서화된 진술  
3.1.4.2: 프로그램 개선을 위해 달성해야 하는 일련의 측정 기준  
3.1.4.3: 지속적인 개선을 위해 검토, 업데이트 또는 검사를 수행했음을 입증하는 문서화된 증거  

----------------

3.1.4 Program scope  

A Program should have defined guiding principles and scope that match the risk management policy of the entire organization. It should be clear whether the Program applies to a product line, a department, or the entire organization. It should also be understood that this scope may change over time and metrics may be used to assess its ongoing effectiveness.

Verification Material(s):

3.1.4.1: A written statement that clearly defines the scope and limits of the Program;  
3.1.4.2: A set of metrics the program shall achieve to improve;  
3.1.4.3: Documented Evidence from each review, update, or audit to demonstrate continuous improvement.

{{% /pageinfo %}}

### 1.4.1 적용 범위와 한계 문서화

하나의 오픈소스 프로그램을 반드시 기업 전체에 적용해야 하는 것은 아니다. 기업 내 각 조직과 제품의 특성에 따라 적용 범위를 달리 지정할 수 있다. 조직별로, 제품별로 다른 오픈소스 프로그램을 적용할 수 있다. 마찬가지로, 소프트웨어를 전혀 배포하지 않는 조직이라면 오픈소스 프로그램의 적용 범위에서 제외할 수 있다. 기업은 조직과 제품의 특성을 고려하여 오픈소스 프로그램의 적용 범위와 한계를 명확히 정의하고, 이를 오픈소스 정책에 명시할 수 있다.

이를 위하여 다음의 예와 같은 내용을 오픈소스 정책에 포함한다. 

~~~
1. 적용 범위

이 정책은 다음 세 부분에 적용됩니다.

1. 회사가 외부로 제공하거나 배포하는 모든 제품에 적용됩니다. 단, 오픈소스를 내부 사용 목적으로만 사용하는 것은 이 정책의 범위에 포함되지 않습니다.  
2. 구성원이 외부 오픈소스 프로젝트에 기여할 때 적용됩니다.
3. 내부 코드를 오픈소스로 공개할 때 적용됩니다.
~~~

### 1.4.2 적용 범위 결정 프로세스

기업의 조직과 제품 및 서비스가 비즈니스 환경에 맞추어 변화함에 따라 프로그램의 적용 범위를 결정하거나 수정해야 하는 상황이 발생할 수 있다. 가업은 이에 대응하기 위한 프로세스를 다음의 예와 같이 준비해야 한다.

1. 오픈소스 프로그램 매니저는 새로운 프로젝트를 시작할 때 해당 프로젝트가 프로그램 적용 범위 내에 포함되는지 여부를 판단한다. 
2. 포함된다고 판단되는 경우, 해당 프로젝트를 프로그램 적용 범위에 포함 시키기 위한 제안을 OSRB[^OSRB]에 제출한다.
3. OSRB에서 수락할 경우, 이에 맞게 프로그램의 적용 범위를 수정한다. 
4. 이외 오픈소스 프로그램 매니저는 프로그램 적용 범위에 대한 검토가 필요하다고 판단되는 경우, 동일한 프로세스에 따라 프로그램 적용 범위에 대한 검토를 시작할 수 있다.


이를 위하여 다음의 예와 같은 내용을 오픈소스 정책에 포함한다. 

~~~
적용 범위는 회사의 비즈니스 환경에 맞추어 변경할 수 있습니다. 특히, 오픈소스 프로그램 매니저는 지속적인 효과를 보장하기 위해 이 정책의 적용되지 않고 사외로 배포 혹은 서비스되는 제품이 있는지 월 1회 이상 조사합니다. 이를 측정하여 1건이라도 발견 시 적용 범위를 변경해야 하는 기준으로 삼습니다.

적용 범위를 변경하기 위한 절차는 다음과 같습니다.

1. 오픈소스 프로그램 매니저는 신규사업, 조직개편 등 회사의 비즈니스 환경이 변화에 따라 정책의 적용 범위 변경이 필요하다고 판단할 경우, 이를 위한 제안을 OSRB에 제출합니다.
2. OSRB에서는 적절한 수준의 적용 범위 변경을 승인합니다.
3. OSRB는 오픈소스 정책을 수정하여 정책의 적용 범위를 변경합니다.

~~~

### 1.4.3 지속적인 개선 수행

기업은 적용 범위를 지속적으로 검토하여 개선하고, 이를 문서화하여야 한다. 이를 위하여 다음의 예와 같은 내용을 오픈소스 정책에 포함한다. 

~~~

오픈소스 프로그램 매니저는 지속적으로 월 1회 이상 적용 범위를 개선하기 위해 검토, 업데이트 및 검사 이력을 Jira Issue Tracker를 활용하여 문서화합니다.

~~~

이 가이드에서는 프로그램 범위 지정에 대한 예시를 [[부록 1] 오픈소스 정책의 2. 적용 범위](../../../templates/1-policy/#2-적용-범위)에서 제공한다.


## 1.5 라이선스 의무

오픈소스를 사용하면 각 라이선스가 부과하는 의무를 준수해야 한다. ISO/IEC 5230의 3.1.5항에서는 다음과 같이 각 오픈소스 라이선스가 부과하는 의무를 알아내기 위한 검토 프로세스를 요구한다.

{{% pageinfo %}}

ISO/IEC 5230

-----------

3.1.5 라이선스 의무

각 라이선스에 의해 부과된 의무, 제한 및 권리를 알아내기 위해 식별된 라이선스를 검토하는 프로세스가 있어야 한다.

입증 자료

* 3.1.5.1 각 식별된 라이선스에 의해 부여된 의무, 제한 및 권리를 검토하고 기록하기 위한 문서화된 절차

----------------

3.1.5 License obligations

A process shall exist for reviewing the identified licenses to determine the obligations, restrictions and rights granted by each license.

Verification material(s):

* 3.1.5.1 A documented procedure to review and document the obligations, restrictions and rights granted by each identified license.

{{% /pageinfo %}}

오픈소스의 사용 가능 여부를 판단하기 위해서는 먼저 사용하려는 오픈소스의 라이선스가 무엇인지 식별하고, 라이선스가 요구하는 의무사항을 확인해야 한다. 오픈소스를 사용하였는지, 라이선스는 무엇인지, 각 라이선스가 부여하는 의무는 무엇인지 검토하고 기록해야 한다. 이를 위한 절차의 예는 다음과 같다. 

1. 오픈소스 프로그램 매니저는 오픈소스 정책에서 정의한 기준에 따라 라이선스를 예비 평가한다. 
2. 의문이 있는 경우, 오픈소스 프로그램 매니저는 외부 법률 전문가에게 자문을 요청한다. 
3. 모든 내외부의 결정 결과 및 관련 근거는 보관한다. 

NIPA 산하 오픈소스 소프트웨어 통합지원센터인 오픈업에서 제공하는 "공개SW와 라이선스"([https://www.oss.kr/oss_license](https://www.oss.kr/oss_license) )에서는 주요 오픈소스 라이선스의 의무, 제한 및 권리를  설명하고 있다. 또한 SK텔레콤에서 공개한 오픈소스 가이드도 좋은 참고가 된다. : https://sktelecom.github.io/guide/use/license/

위에서 요구하는 "각 식별된 라이선스에 의해 부가된 의무, 제한 및 권리를 검토하고 기록하기 위한 문서화된 절차“는 [[부록 2] 오픈소스 프로세스”의 오픈소스 식별 단계](../../../templates/2-process-template/#1-오픈소스-식별subidentification-of-open-sourcesub)에 해당한다.

## 1.6 표준 사례 구현

ISO/IEC 18974의 3.1.5항에서는 다음과 같이 알려진 취약점 대응 및 강력한 보안 소프트웨어 개발을 위한 절차를 요구한다. 

{{% pageinfo color="warning"%}}

ISO/IEC 18974

-----------

3.1.5 표준 사례 구현

프로그램은 다음 절차를 정의하고 구현하여 알려진 취약점 및 보안 소프트웨어 개발을 건전하고 강력하게 처리하는 절차를 갖춘다.

- 배포용 소프트웨어에 대한 구조적 및 기술적 위협을 식별하는 방법
- 배포용 소프트웨어에서 알려진 취약점 존재 여부를 탐지하는 방법
- 확인된 알려진 취약점에 대한 후속 조치 방법
- 확인된 알려진 취약점을 보증 대상인 고객에게 알리는 방법
- 배포용 소프트웨어의 릴리스 후 새롭게 알려진 취약점이 공개되었을 때 이미 배포된 소프트웨어에 존재하는지 확인하는 방법
- 지속적이고 반복적인 보안 테스트가 출시 전에 모든 배포용 소프트웨어에 적용되기 위한 방법
- 식별된 위험이 배포용 소프트웨어의 출시 전에 해결되었는지 확인하는 방법
- 식별된 위험에 대한 정보를 제3자에게 적절하게 내보내는 방법

위에 나열된 보안 보증 방법에 대한 프로세스가 존재해야 한다.

입증 자료:

- 3.1.5.1: 위에서 식별된 각 방법에 대한 문서화된 절차가 존재한다.

----------------

3.1.5 - Standard Practice Implementation

The Program demonstrates a sound and robust handling procedures of Known Vulnerabilities and Secure Software Development by defining and implementing following procedures:

- Method to identify structural and technical threats to the Supplied Software is defined;
- Method for detecting existence of Known Vulnerabilities in Supplied Software;
- Method for following up on identified Known Vulnerabilities;
- Method to communicate identified Known Vulnerabilities to customer base when warranted;
- Method for analyzing Supplied Software for newly published Known Vulnerabilities post release of the Supplied Software;
- Method for continuous and repeated Security Testing is applied for all Supplied Software before release;
- Method to verify that identified risks will have been addressed before release of Supplied Software;
- Method to export information about identified risks to third parties as appropriate.

A process shall exist for the Security Assurance methods listed above.

Verification Material(s):
- 3.1.5.1: A documented procedure exists for each of the methods identified above.

{{% /pageinfo %}}

따라서 기업은 제품/서비스를 개발하면서 오픈소스 보안 취약점을 탐지하고 해결하는 등 보안 보증을 위한 활동을 수행해야 한다. 이를 위해 기업은 배포용 소프트웨어에서 알려진 취약점 존재 여부를 탐지하고, 식별된 위험이 출시 전에 해결해야 할 뿐 아니라 출시 후 새롭게 알려진 취약점에 대응하기 위한 방법과 절차를 갖춰야 한다. 이에 대해서는 [3.3 보안 보증](../3-approval/#33-보안-보증) 장에서 자세히 설명한다. 

