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


## 1. Purpose

### (1) Purpose of the policy<sub>(3.1.3.1)</sub>

This policy provides the following principles for all organizations involved in software development, service, and distribution in [COMPANY] (hereinafter referred to as the "Company") to properly utilize open source software (hereinafter referred to as "Open Source"). 

1. Principles for open source license compliance
2. Principles for contribution to external open source projects
3. Principles for releasing open source

These principles provide a way for all members of the company to understand the value of open source, use it correctly, and contribute to the open source community.

All members of the company can view the open source policy at the following link on the in-house wiki: [internal_link]<sub>(3.1.1.1)</sub>

### (2) Impact of non-compliance
It is important that [COMPANY] adheres to this policy. Failure to do so may lead to:
- legal claims from the holders of copyright or other intellectual property rights in code we use
- claims from our customers;
- the inadvertent release of [COMPANY] proprietary code;
- breach of regulatory obligations by [COMPANY] potentially leading to fines;
- loss of reputation;
- loss of revenue;
- breach of contract with suppliers and customers.
For this reason, we take breaches of this policy seriously, and any individual breaching the policy may find themselves subject to [COMPANY]'s disciplinary procedure.

### (3) How to contribute to the effectiveness of the Program

All members of the company can contribute to the effectiveness of the program and improvement of the company's compliance level by understanding the rationale and content of this policy and faithfully performing the necessary activities.

## 2. Scope<sub>(3.1.4.1)</sub>
This policy applies to the following three parts:

1. Applies to [all products provided or distributed by the company externally]. However, the open source only for internal use is not included in the scope of this policy.
2. Applied when contributing to external open source projects.
3. Applied when releasing internal code as open source.

The scope can be changed according to the business environment of the company, and the procedure for this is as follows.

1. If the open source program manager determines that it is necessary to change the scope of policy according to changes in the company's business environment, such as a new business or reorganization, submit a proposal for this to the OSRB.
2. OSRB approves proposals for scope changes at the appropriate level.
3. OSRB modifies the open source policy to change the scope of the policy.


## 3. Terms
* "compliance artifacts" - a collection of artifacts that represent the output of a compliance program and accompany the supplied software. The collection may include (but is not limited to) one or more of the following: attribution notices, source code, build and install scripts, copy of licenses, copyright notices, modification notifications, written offers, open source component bill of materials, and SPDX documents.
* "open source" - software subject to one or more licenses that meet the Open Source Definition published by the Open Source Initiative (see opensource.org/osd) or the Free Software Definition published by the Free Software Foundation (see gnu.org/philosophy/free-sw.html) or similar license.
* "program" - the set of policies, processes and personnel that comprise an organization’s open source license compliance activities.
* "program participants" - any organization employee or contractor that defines, contributes to or has responsibility for preparing supplied software. Depending on the organization, that may include (but is not limited to) software developers, release engineers, quality engineers, product marketing and product management.
* “SPDX” - the format standard created by the Linux Foundation’s SPDX (Software Package Data Exchange) Working Group for exchanging bill of materials for a given software package, including associated license and copyright information (see spdx.org).
* "supplied software" - software that an organization distributes to third parties (e.g., other organizations or individuals).

## 4. Roles, Responsibilities and Competencies<sub>(3.1.2.1)</sub>
In order to ensure the effectiveness of the policy, the roles and responsibilities and the competencies that the person in charge of each role should have are defined as follows.

The person/group in charge of each role and the required competency level are defined in [Appendix 1. Status of Person in Charge].<sub>(3.1.2.2)</sub>
 
* The open source program manager periodically updates the list according to the company's business situation.<sub>(3.2.2.1)</sub>
* The head of the organization responsible for each role designates a person in charge within the organization, and allocates appropriate time and budget for the person in charge to fulfill the role.<sub>(3.2.2.2)</sub>
  * The person in charge of each role should raise an issue with the open source program manager if appropriate support is not provided while performing his/her role.
  * The open source program manager discusses problem solving with the head of the organization. If not properly resolved, the open source program manager may request the OSRB to resolve the issue.
  * OSRB shares the problem with the head of the higher level organization and asks for a solution.


### (1) OSRB
OSRB<sub>Open Source Review Board</sub> is a consultative body composed of an open source program manager, legal team, patent team, development team, and infrastructure team for the company's open source compliance.

* Create policies and processes for open source compliance, and define roles and responsibilities within the company to implement them.
* When an open source compliance issue occurs within the company, discuss solutions and prepare countermeasures.
* If necessary, report issues to the executive team to receive feedback on risk mitigation measures.

### (2) Open Source Program Manager
The open source program manager is responsible for the overall responsibility for the company's open source programs. To ensure open source compliance of products and services using open source, open source program manager is responsible for:<sub>(3.2.2.4)</sub>

- Define the roles required for open source compliance, and designate a responsible person and group in charge of each role. Consult with OSRB if necessary.
- Supervise and evaluate open source compliance training.
- Serves as the chair of the OSRB and directs its activities.
- Respond to inquiries and requests related to open source use and compliance from outside.
- Review and approve requests for use of open source.
- Maintain open source BOM records.
- Provides a way to request legal advice on open source.<sub>(3.2.2.3)</sub>
- Maintain a repository for open source notices and source code disclosure.

### (3) OSPO
OSPO<sub>Open Source Program Office</sub> is responsible for supporting and nurturing the growth of open source activities inside and outside the company.

- Establish, improve and disseminate open source policies.
- Provides a guide for contributing code to external open source projects.
- Provides a guide for releasing an in-house project as an open source.
- Develop and operate an open source portal.
- Develop and select open source tools.
- Sponsor open source project events.
- Manage relationships with the open source community.

### (4) Legal team
The legal team provides advice on legal risks and mitigation measures that may arise in the process of using open source, such as interpreting open source licenses and obligations.

- Advise on licensing and intellectual property issues, including conflicts due to incompatible open source licenses.
- When contributing to external open source projects, review necessary legal matters such as open source licenses and CLA<sub>Contributor License Agreement</sub>.

### (5) IT infrastructure team
The IT infrastructure team operates and automates open source analysis tools to build a system so that license analysis is performed automatically for supplied software.

- Operate an open source license analysis tool.
- Automate license analysis by integrating with DevOps.
- Establish systems and processes so that license analysis is performed for supplied software.
- Obtain and maintain an open source BOM for supplied software.

### (6) Security Officer
The security officer operates an open source security vulnerability analysis tool to build a system so that security vulnerability analysis is performed smoothly for supplied software.

- Operate an open source security vulnerability analysis tool.
- Automate open source security vulnerability analysis by integrating with DevSecOps.
- Establish systems and processes so that open source security vulnerability analysis is performed for supplied software.

### (7) Development Culture
The development culture manager supports developers to actively utilize open source and participate in the open source community to learn a good development culture.

- Encourage developers to participate in the open source community.
- Create a culture where activities in open source projects can be recognized as achievements.
- Create a development culture that can be perceived as an attractive company to open source developers.

### (8) Quality Responsible
The organization responsible for quality, such as QA, checks whether the open source license obligations have been properly performed when distributing software.

- Check whether open source compliance activities are performed in accordance with the development process.
- Check that the artifacts are generated as required by the open source license.
- When distributing software, make sure that the open source notice and the source code to be released are provided together.
- If an issue is found, notify the software development/deployment team and guide them to fix the issue immediately.

## 5. Training and Assessment
All program participants should take the open source mandatory training provided by [Learning Portal] every year. Through training, all participants should be familiar with open source policies and processes. Training history is stored in [Learning Portal].<sub>(3.1.1.2)<sub>

All members in charge of each role defined in Chapter 4 should take the advanced open source training course provided by [Learning Portal]. Training history and evaluation results are stored in [Learning Portal] for at least 3 years.<sub>(3.1.2.3)</sub>

## 6. Use open source

If you use open source to develop and distribute products and services, you should comply with the obligations required by each open source license. The activities that companies perform for this purpose are called open source compliance.

For proper open source compliance activities, software development/distribution organizations should comply with the following:<sub>(3.3.1.1)</sub>

* All processes of the open source compliance process are recorded and preserved in Jira Issue Tracker.

### (1) Identify open source and review license obligations.

When using open source to develop products / services, first identify what an open source license is, and review and investigate the obligations that the license requires.

The company's [Open Source License Guide] provides a guide for frequently used open source licenses, and explains the obligations for each type of distribution as follows for each license.<sub>(3.3.2.1)</sub>

- Distributed in binary form;
- Distributed in source form;
- Integrated with other open source such that it triggers additional licensing obligations;
- Contains modified open source;
- Contains open source or other software under an incompatible license interacting with other components within the supplied software; and/or
- Contains open source with attribution requirements.

Software development/distribution teams can refer to this guide when reviewing their open source license obligations. If you need to review an open source license not mentioned in this guide, contact your open source program manager.

### (2) Design software considering open source licenses.

Identify open source dependencies and design your software architecture so that your code is not subject to open source licenses. .

The company's [Open Source Licensing Guide] describes the source code disclosure scope for each open source license and design methods to prevent disclosure of own code.

### (3) Create an open source compliance artifact.

The most basic of open source compliance activities is to identify open sources included in supplied software. This is to properly meet the open source license requirements, which are the core of open source compliance. That is, a set of compliance artifacts for open source included in the supplied software should be generated.<sub>(3.4.1.1)</sub>

Open source compliance artifacts are divided into two main categories.

1. Open source notice: A document to provide full open source license and copyright notice
2. Source code package to be disclosed: A package that collects source code to be disclosed to fulfill open source license obligations that require source code disclosure such as GPL, LGPL, etc.

To collect, distribute and store these compliance artifacts, the following should be complied with.<sub>(3.4.1.2)</sub>

- Open source notices or source code packages to be disclosed are collected according to the conditions required by each license. For example, a license requires the accompanying full text of the license, but not just a link.
- Collected artifacts are stored in a separate storage.
- When providing source code to be made public by a written agreement, provide a download link so that the external general public can access the repository of the collected artifacts.
  
Follow the company's open source compliance process to create and provide open source compliance artifacts as above.

### (4) Create open source Bill of Materials (BOM)
Create and manage the Bill of Materials (BOM) included in the supplied software.<sub>(3.3.1.2)</sub>

Follow the company's open source compliance process to create and preserve open source BOMs using open source tools.

### (5) Compliance Issue Remediation Procedure

Should a non-compliance issue be raised, the Open Source Program Manager responds promptly by performing the following procedures.<sub>(3.2.2.5)</sub>

1. Acknowledge receipt of the query and state a reasonable time for resolution;
2. Determine whether the query discloses a genuine issue or not (and if not, respond to the querier accordingly);
3. If the issue is genuine, apply to prioritise, and determine the appropriate response.
4. Carry out response and, where necessary, improve open source compliance processes.
5. Document the above using Jira Tracker.

## 7. Open Source Contributions
The company encourages participation and contribution to external open source projects to create business value in open source. However, in this process, you should be careful about unintentional exposure of the company's intellectual property or infringement of the rights of third parties. Therefore, members of the company should comply with the following when contributing to external open source projects.<sub>(3.5.1.1)</sub>

### (1) Request a review and get approval.

An open source contribution is to grant an open source project the right of an author to modify/use/distribute a work from a copyright point of view. In some cases, you may need to transfer your copyright to an open source project. In general, however, the copyright of a work created during employment is owned by the employer. In other words, works created by company members are owned by the company. Contributing to open source works created while you were employed may raise unnecessary copyright infringement issues.

Therefore, if there is an open source project that you would like to contribute to, follow the review request and approval procedures before making the initial contribution according to the open source contribution process.

However, in the case of a small contribution as follows, since the risk of copyright infringement is not large, you can contribute at your own discretion without the review process.

- Small code snippets of 10 lines or less
- Inquiries and answers on Stack Overflow
- Activities on GitHub: Issue creation, Pull Request Review / Approve, etc.

### (2) Contribute only code that you have the right to contribute
Only contribute code for which you have the right to contribute. In other words, contribute your own code, not third-party code.

### (3) Be careful not to expose the company's intellectual property
Do not contribute code or documents that may expose the company's intellectual property such as sensitive information or patents.

* If the code you want to contribute includes a company's patent, you should check whether you can contribute to the project under the open source license. If there is any ambiguity, contact OSPO.

### (4) Be careful about signing the CLA.

Some open source projects require all contributors to sign a CLA<sub>Contributor License Agreement</sub>. This is an agreement to seek consent from contributors to reduce copyright disputes that may arise when a project manages the works of multiple contributors. Typically, a company-led project requires a CLA to be signed.

The CLA varies from project to project, but primarily includes agreement to the following:

- I (or my company) have the right to contribute to the project the contribution I intend to contribute. (i.e. I am the author of this contribution.)
- I (or my company) grant the project the right to modify, distribute, and manage my contributions to the project.
- I (or my company) will not revoke the authority granted to me.
- I (or my company) grant the project the right to change the license according to future needs of the project.

In addition, in rare cases, some CLAs also require consent to the following terms and conditions:

- I (or my company) transfer my copyright to the project or project management organization at the same time as I contribute my contribution.

[Company] does not allow contributions to open source projects that require transfer of copyright to protect the company's intellectual property. Therefore, if the open source project you want to contribute to requires the CLA to be signed, be sure to ask OSPO for a review before signing.

### (5) Add company copyright notice

The intellectual property of the work you create during your employment is basically owned by the company. Therefore, you should add your company's copyright notice when contributing code to external open source projects.

When contributing more than one file, add the copyright and license notices at the top of the files, like this:

~~~
Copyright (c) {$year} {$Company}
SPDX-License-Identifier: {$SPDX_license_name}
~~~
Here, $SPDX_license_name is written according to the license of the corresponding open source project.

However, if your contribution is only to modify existing code for the purpose of fixing a bug, you do not need to add a copyright notice for that code modification.

### (6) Use your company email

When contributing to an open source project, use your company email, not your personal email. This will (1) give you a sense of responsibility to communicate with the community on behalf of the company, and (2) improve the awareness of the company that actively contributes to the open source community.

## 8. Open Source Release

[Company] respects the value of collaboration with the open source community and encourages the release of internal software as an open source project. However, there are several rules that should be followed to protect the company's intellectual property and prevent unintentional copyright infringement.

### (1) Get approval
From a copyright point of view, releasing as open source means that the author grants the right to modify/use/distribute the work by anyone through an open source license. In general, the copyright of a work created during employment is owned by the employer. In other words, the work you create is owned by the company. The act of arbitrarily releasing a work as open source may cause unnecessary copyright infringement issues.

Therefore, if you want to release the software as open source, follow the review request and approval procedure according to the company's open source release policy.

Do not hesitate to contact OSPO if anything in your open source process appears to be undesirable.

### (2) Release only the code you have the right to publish.

One of the worst things that can happen to an open source project is that the project contains legally problematic code. Code that the company does not have the right to release, or code that infringes IP, such as another company's patent, can cause legal problems. Therefore, while preparing the code to be released, check the source of all code and delete problematic code.‌

### (3) Be careful about the exposure of the company's intellectual property.
Do not release code or documents that may expose sensitive information or patents to the company's intellectual property.

If the code you want to release contains a company patent, see if you can release it under the open source license. If there are any ambiguities, please contact OSPO.

### (4) Publish useful code

To be a successful project, it should also be useful to others. If a similar project already exists, join the existing project rather than create a new one.

An open source that intends to release should be able to expect: (1) provide differentiated value to the open source community; (2) to solve problems that the community has not been able to solve; (3) We receive positive attention by releasing our technology.

* If the code we haven't used in our products or services, don't even release it as open source.
* Do not publish code that addresses a problem that has already been addressed by the open source community. If this is the case, contribute to an existing open source project.

### (5) Prepare the resource

Prepare in advance the resources that will be put into the open source project, including developers.

* In the beginning, the number of developers similar to that of a general in-house project is required.
* Get developers who can quickly review external contributions.
* The role of the legal team and marketing team is also required.
* Secure a budget for the infrastructure required to maintain and manage the project. This includes tools for hosting projects like Github.

If you can't create an environment with enough resources to support it, don't release it as open source.

### (6) Use your company email

For open source release activities, do not use personal emails, but use company emails. This will (1) give you a sense of responsibility to communicate with the community on behalf of the company, and (2) improve the awareness of the company that actively contributes to the open source community.

## 9. Respond to external inquiries

### (1) Responsibility for responding to external inquiries
The open source program manager is responsible for responding to inquiries and requests for open source compliance from outside.<sub>(3.2.1.2)</sub>

* The open source program manager may assign all or part of the handling of inquiries to appropriate personnel within the company. If necessary, contact the legal team to deal with it.
* Anyone who receives an inquiry about open source compliance from outside will notify the open source program manager so that a prompt response can be made.

### (2) Disclosure of contact information
The open source program manager publicly provides the contact information of the person in charge so that external inquiries and requests related to open source can be submitted to the company.<sub>(3.2.1.1)</sub>

* Include the email address of the person in charge in the open source notice.
* Register your contact in the Linux Foundation's Open Compliance Directory.

### (3) External Inquiry Response Procedure
If you respond quickly and accurately to open source compliance inquiries from outside, you can significantly reduce the risk of going to a lawsuit. To this end, in order to respond to external open source compliance inquiries, you should follow the external inquiry response process defined in the company's open source compliance process.<sub>(3.2.1.2)</sub>

## 10. OpenChain
회사는 소프트웨어 공급망에서의 오픈소스 컴플라이언스 수준 향상을 위해 Linux Foundation의 OpenChain 프로젝트의 정신을 지지하며 적극적으로 참여한다. 

- 회사는 이 오픈소스 정책을 적용하여 2021년 10월 1일부로 ISO/IEC 5230:2020을 준수함을 보장한다.<sub>(3.6.1.1)</sub>
- 회사는 적합성 인증을 획득한 후 18개월 이상 OpenChain 규격 버전 2.1, ISO/IED 5230:2020의 모든 요구사항을 충족함을 보장한다.<sub>(3.6.2.1)</sub>
- 회사는 최소 18개월 간격으로 적합성을 검토하고 필요에 따라 정책을 변경 및 갱신한다. 

## Appendix 1. List of persons in charge

| No | role | responsibility | Required Competencies | Responsible Organization | Contact Person |
|---|:---|:---|:---|:---|:---|
| 1 | Open Source Program Manager | This role is responsible for general responsibility for the company's open source programs. | 1. Understanding the software development process<br>2. Understanding intellectual property related to open source licenses such as copyrights and patents<br>3. Expertise in Open Source Compliance<br>4. Open source development experience<br>5. Communication Skills | CTO | OOO |
| 2 | Legal | Interpret open source licenses and obligations. This role provides advice on the mitigation of legal risks that may arise for the use of open source, such as the actual implementation of these obligations. | 1. Basic knowledge of open source ecosystem<br>2. Expertise in software copyright<br>3. Expertise in Open Source Licensing | Legal Team | OOO |
| 3 | Infrastructure | This role operates and automates open source analysis tools to build systems so that license analysis is performed automatically for all supplied software. | 1. Basic knowledge of open source compliance process<br>2. Understanding of open source license analysis tools<br>3. IT infrastructure expertise | IT Infrastructure Team | OOO |
| 4 | Security | This role operates an open source security vulnerability analysis tool to build a system so that security vulnerability analysis is automatically performed for all supplied software. | 1. Basic knowledge of open source compliance process<br>2. Understanding of open source license analysis tools<br>3. Security Expertise | Security Team | OOO |
| 5 | Development culture | This role supports developers to actively utilize open source and learn a good development culture by participating in the open source community. | 1. Understanding the software development process<br>2. Basic knowledge of open source compliance<br>3. Understanding Open Source Policies | DR | OOO |
| 6 | development team | In this role, software development/distribution organizations adhere to open source policies and processes for proper use of open source. | 1. Understanding the software development process<br>2. Basic knowledge of open source compliance<br>3. Understanding of Open Source Policy<br>4. Basic knowledge of open source licenses | Development team | All developers |