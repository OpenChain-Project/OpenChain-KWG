---
title: "1. Open Source Policy (Sample)"
weight: 1
type: docs
---
{{< alert title="Note:" >}}
This sample open source policy was written with reference to the following two materials.

1. [OpenChain Open Source Policy Template](https://github.com/OpenChain-Project/Reference-Material/blob/master/Open-Source-Policy/Official/2.1/en/Open-Source-Policy-Template-en-OpenChain2.1-ISO5230.xlsx)
2. [Linux Foundation Generic FOSS Policy](https://github.com/todogroup/policies/blob/master/linuxfoundation/lf_compliance_generic_policy.pdf)
{{< /alert >}}


## Open Source Policy

### 1. Purpose

This policy is established to ensure that all organizations using open source comply with open source compliance activities. This policy provides a way for all members to understand the value of open source, use open source properly, and contribute to the open source community.

This policy can also be viewed on the internal system [LINK] so that all members can easily access the open source policy.

### 2. Scope

This open source policy covers the following three parts:

1. Covers all products that the company provides or distributes externally. However, the use of open source only for internal use is not included in the scope of this policy.
2. Covers when members contribute to external open source projects.
3. Covers the release of internal code as open source.


### 3. Terms

"compliance artifacts" - a collection of artifacts that represent the output of a compliance program and accompany the supplied software. The collection may include (but is not limited to) one or more of the following: attribution notices, source code, build and install scripts, copy of licenses, copyright notices, modification notifications, written offers, open source component bill of materials, and SPDX documents.

"open source" - software subject to one or more licenses that meet the Open Source Definition published by the Open Source Initiative (see opensource.org/osd) or the Free Software Definition published by the Free Software Foundation (see gnu.org/philosophy/free-sw.html) or similar license.

"open source program" - the set of policies, processes and personnel that comprise an organization’s open source license compliance activities.

"supplied software" - software that an organization distributes to third parties (e.g., other organizations or individuals). 

"program participants" - any organization employee or contractor that defines, contributes to or has responsibility for preparing supplied software. Depending on the organization, that may include (but is not limited to) software developers, release engineers, quality engineers, product marketing and product management.

"OpenChain Project" - a project of the Linux Foundation. They create international standards for open source compliance, making it simpler and more consistent for businesses to achieve and building trust throughout the software supply chain.

“OpenChain conformant” - a program that satisfies all the requirements of this document.


### 4. Roles, Responsibilities and Competencies

This chapter defines the roles and responsibilities required to ensure the effective implementation of this policy, as well as the competencies that the person in charge of each role should have.

* Executives responsible for software development and distribution should designate a person responsible for each role in the open source program and ensure that appropriate time and budget are allocated to fulfill the role.
* The person in charge of each role must raise a problem to the person in charge of open source if he/she does not receive adequate support while performing his/her role. If not properly resolved, he/she should ask the OSRB to resolve the issue.

#### A) Open Source Manager
The Open Source Manager is in charge of general responsibility for the company's open source, establishes and operates the open source center, and presides over the OSRB. The Open Source Manager is responsible for the following to ensure open source compliance of products and services using open source.

* Review, improve and disseminate open source policies.
* Assign roles and assign responsibilities within the company to effectively implement open source policies.
* Leads and evaluates open source compliance training.
* Serves as chairman of the OSRB and directs its activities.
* Guide software development teams in understanding and complying with open source policies and processes. If necessary, the issue is addressed by raising the issue to an officer.
* Quickly respond to inquiries from outside about open source usage and compliance.

The understanding and competencies required for an open source leader are:
* software development process
* Intellectual property related to open source licenses such as copyrights and patents
Expertise in Open Source Compliance
Open source development experience
communication skills

As of November 2021, OOO of the OOO team is in charge of Open Source Manager role.

#### B) Open Source Center

The Open Source Center is a specialized center for open source compliance and defines the process for achieving compliance effectively. The opem source manager plays the role of a leader, and the members of the center are responsible for helping the open source manager smoothly carry out their responsibilities. The Open Source Center performs the following roles:

* Develop and provide compliance practice training.
* Select / develop and provide automation tools for compliance.
* Perform code scans and inspections to identify open sources in products and services.
* Review and approve requests for use of open source.
* Maintain records of open source usage lists (BOMs).
* Develop and maintain a website for open source notices and source code disclosure.

The understanding and competencies required for members of the Open Source Center are as follows.
* Software development process
* Intellectual property related to open source licenses such as copyrights and patents
* Basic knowledge of open source compliance
* Ability to utilize open source compliance tools

#### C) OSRB
The Open Source Review Board (OSRB), also called the Open Source Steering Committee, is a consultative body composed of an open source manager, a legal team, a patent team, a development team, and the person in charge of related organizations such as an infrastructure team for open source management.

* OSRB creates policies and processes for open source management, and defines R&R within the company to implement them.
* When an open source issue occurs, discuss solutions and prepare countermeasures.
* If necessary, report issues to executives to receive feedback on risk mitigation measures.

  The understanding and competencies required by OSRB members are as follows.
* Software development process
* Basic knowledge of open source compliance

#### D) Software development team

The software development team fully understands the company's open source policies and processes, and complies with the following:
* Identify the open source to be used for software development and submit a request for open source use approval to the Open Source Center.
* Fulfill the obligations of open source licenses applicable to open sources used for software development.
* Design the software architecture so that the development code is not affected by the open source license by checking the binding relationship of open source.

The understanding and competencies required by members of the software development team are as follows.
* Software development process
* Basic knowledge of open source compliance

#### E) Legal Team

The legal team analyzes open source licenses and obligations. The legal team provides guidance to the software development team for the practical implementation of these obligations, and, as necessary, does the following:
* Advise on licensing and intellectual property issues, including conflicts due to incompatible open source licenses.
* Participate in open source use reviews and approval decisions.
* Provide comments on requests for review for contributions to external open source projects.

The understanding and competencies required for members of the legal team are as follows.
* Basic knowledge of the open source ecosystem
* Expertise in software copyright
* Expertise in Open Source Licensing


### 5. 교육 및 평가

#### 교육

오픈소스 책임자는 프로그램 참여자를 대상으로 매년 혹은 2년에 한 번씩 주기적인 교육을 제공함으로 모든 프로그램 참여자가 오픈소스 정책의 존재와 다음 사항을 인식하게 한다. 

(1) 오픈소스 정책의 존재 및 목표

(2) 구성원 기여 방법
* 모든 구성원은 이 정책의 근거와 내용을 이해하고 필요한 활동을 충실히 수행함으로써 정책의 효과 및 회사의 컴플라이언스 수준 향상에 기여할 수 있다. 

(3) 미준수 시 위험 사항
* 사용 중인 코드에 대한 저작권 또는 기타 지식재산권 보유자의 법적 클레임
* 고객으로부터의 클레임
* 회사 독점 코드의 의도치 않은 공개
* 라이선스 의무 위반으로 인한 벌금 부과
* 평판 손실
* 수익 손실
* 공급업체 및 고객과의 계약 위반
이러한 이유로 회사는 코드 침해를 심각하게 간주하며, 코드를 침해하는 개인은 회사의 징계 절차에 처할 수 있다.

신규 입사자 대상 교육 시 오픈소스 정책에 대한 교육을 의무화한다. 또한, 누구나 수시로 오픈소스 정책을 참고할 수 있도록 사내 Wiki를 통해 전파한다.


#### 평가

이 정책을 수행하는 모든 참여자는 자신의 역할에 필요한 역량을 다루는 최소한의 기본 교육을 수강하고 평가를 받는다. 기업은 교육 제공과 평가를 통해 모든 참여자가 각자 자신의 역할을 수행할 역량을 갖추었음을 보장한다. 

평가 기록은 최소 3년 동안 유지한다.


### 6. 오픈소스 사용 정책

소프트웨어 개발에 오픈소스를 사용하기 위해 소프트웨어 개발팀은 다음 사항을 준수한다. 
* 먼저 오픈소스 라이선스가 무엇인지 식별하고, 라이선스가 요구하는 의무 사항을 검토하고 확인한다. 
* 그렇게 배포 대상 소프트웨어에 포함된 오픈소스와 라이선스 의무사항을 식별하고, 소프트웨어를 배포 시 라이선스 의무사항을 준수하기 위한 활동을 수행하여 컴플라이언스 산출물을 생성한다.
* 배포 대상 소프트웨어에 포함된 오픈소스 현황(BOM : Bill of Materials)을 문서화하여 관리한다. 
* 이를 효과적으로 수행하기 위해 기업의 오픈소스 컴플라이언스 프로세스를 준수한다.

오픈소스 라이선스를 준수하는 과정에서 의문사항이 있을 경우 소프트웨어 개발팀은 오픈소스 센터에 문의한다. 
* 일반적이지 않은 사용 사례여서 법적 해석이 명확하지 않을 경우, 오픈소스 센터는  법무팀에 문의 할 수 있다.
* 오픈소스 사용에 대한 검토 결과 및 관련 근거는 오픈소스 이슈 추적 시스템에 기록한다.


### 7. 외부 문의 대응 정책

#### 연락처 공개

기업은 외부에서 오픈소스 관련한 문의 및 요청을 할 수 있도록 담당자의 연락처를 공개적으로 제공한다. 
* 이를 위해 소프트웨어 배포 시 오픈소스 센터의 이메일 주소를 제공한다. 
* 또한, Linux Foundation의 Open Compliance Directory ([https://compliance. linuxfoundation.org/ references/open-compliance-directory/](https://compliance.linuxfoundation.org/references/open-compliance-directory/))에 오픈소스 센터의 연락처를 등록한다.

#### 외부 문의 대응 절차

 공개한 연락처로 외부 문의가 접수된 경우, 오픈소스 센터는 즉시 문의를 검토하여 기업 내 적절한 개인 또는 조직에 할당한다. 이를 위한 세부 절차는 다음과 같다. 

1. 질의 접수 승인 및 적절한 해결 시간을 명시한다.
2. 질의가 진짜 문제인지를 확인한다. (아니라면 영업일 기준 3일 이내에 질의자에게 응답한다.)
3. 이슈가 진짜 문제라면, 3일 이내에 적절한 대응 방법을 결정하고, 질의자에게 대응 계획에 대해 응답한다.
4. 결정한 방법에 따라 30일 이내에 대응하고, 질의자에게 문제가 해결되었음을 알린다.
5. 이상의 사항을 오픈소스 이슈 추적시스템에 기록한다.

이러한 외부 문의를 할당하고 처리하는 것에 대한 전반적인 책임은 오픈소스 책임자에게 있다. 

기업 내 누구든지 외부로부터 오픈소스 관련 문의를 받은 경우, 즉시 오픈소스 센터에 전달하여 외부 문의가 신속히 처리될 수 있도록 한다. 

### 8. 오픈소스 기여 정책

기업은 오픈소스에서의 비즈니스 가치 창출을 위해 외부 오픈소스 프로젝트로의 참여와 기여를 권장한다. 그러나 이 과정에서 의도하지 않은 기업의 지식 재산 노출 혹은 제3자의 권리 침해에 주의해야 한다. 이를 위해 기업의 구성원이 외부 오픈소스 프로젝트로의 기여를 위해서는 다음 사항을 준수해야 한다.
* 회사의 업무와 관련이 있는 오픈소스 프로젝트에 기여하기 위해서는 먼저 SW개발팀 리더에게 승인을 받아야 한다.
* 외부 오픈소스 프로젝트에 최초 기여 시에는 오픈소스 센터에 이를 알린다. 
* 오픈소스 센터는 오픈소스 프로젝트의 오픈소스 라이선스와 특허 조건을 검토한다. 그리고, 오픈소스 프로젝트가 DCO (Developer Certificate of Origin), CLA (Contributor License Agreement) 등에 서명을 요구할 경우 에 대해 검토해야 한다. 필요할 경우 법무팀에 검토를 요청할 수 있다.

### 9. OpenChain 적합성

기업은 소프트웨어 공급망에서의 오픈소스 컴플라이언스 수준 향상을 위해 Linux Foundation의 OpenChain 프로젝트의 정신을 지지하며 적극적으로 참여한다. 또한 기업은 다음 사항을 확약한다.

* 이 오픈소스 정책은 OpenChain 규격 버전 2.1에 적합하도록 설계되었다.
* 기업은 OpenChain 규격 버전 2.1의 모든 요구사항을 준수한다. 
* 기업은 OpenChain 적합성을 선언한 이후 최소 18개월 이상 OpenChain 규격 버전 2.1의 모든 요구사항을 준수하기 위해 정책 및 프로세스를 계속 개선하며 유지한다.
