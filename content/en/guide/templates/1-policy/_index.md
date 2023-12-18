---
title: "Open Source Policy"
weight: 10
type: docs
---

{{< alert title="Note:" >}}
This sample open source policy was written with reference to the following two materials.

1. [OpenChain Open Source Policy Template](https://github.com/OpenChain-Project/Reference-Material/tree/master/Policy-Templates/Official/2.1/en)
2. [Linux Foundation Generic FOSS Policy](https://github.com/todogroup/policies/blob/master/linuxfoundation/lf_compliance_generic_policy.pdf)
{{< /alert >}}

## 1. Purpose

### (1) Purpose of the Policy

This policy provides the following principles for the entire organization involved in software development, service, and distribution at the OOO company (hereinafter referred to as "the company") to properly utilize open source software (hereinafter referred to as "open source").

1. Principles of open source compliance / security assurance
2. Principles of contribution to external open source projects
3. Principles for releasing internal projects as open source

These principles provide a way for all members of the company to understand the value of open source, use open source correctly, and contribute to the open source community.

All members of the company can check the open source policy at the following link on the internal wiki: [internal_link]


### (2) Impact of Non-compliance
If this policy is not complied with, the following situations may occur:

- You may receive a request for open source license compliance from outside.
- You may have to disclose the source code developed by the company against your will.
- You may be sued by the open source copyright holder.
- You may be fined for copyright infringement and breach of contract, or receive an order to stop selling products.
- The company's reputation may be damaged.
- You may be claimed for damages due to breach of contract with the supplier.
- You may be exposed to serious security incidents, causing significant damage to the company.

For these reasons, the company takes violations of the open source policy seriously, and members or organizations that violate it may be subject to disciplinary procedures.

### (3) How Members Can Contribute

All members of the company can contribute to the effectiveness of the policy and the improvement of the company's compliance level by understanding the basis and content of this policy and faithfully performing the necessary activities.

## 2. Scope of Application

This policy applies to the following three parts:

1. It applies to all products provided or distributed by the company. However, the use of open source for internal use only is not included in the scope of this policy.
2. It applies when members contribute to external open source projects.
3. It applies when internal code is released as open source.

The scope of application can be changed to suit the company's business environment. In particular, the Open Source Program Manager investigates at least once a month whether there are products that are not applied and are distributed or serviced externally to ensure continuous effectiveness. This is used as a criterion for changing the scope of application when even one case is found.

The procedure for changing the scope of application is as follows:

1. If the Open Source Program Manager determines that changes to the scope of application of the policy are necessary due to changes in the company's business environment such as new business and organizational restructuring, he/she submits a proposal to the OSRB.
2. The OSRB approves an appropriate level of change in the scope of application.
3. The OSRB modifies the open source policy to change the scope of application.

The Open Source Program Manager continuously reviews, updates, and inspects the scope of application at least once a month to improve it, and documents the history using the Jira Issue Tracker.


## 3. Terminology
* SBOM (Software Bill of Materials): List of software components
* Software Distribution Participants: Refers to all employees involved in software development, distribution, and contribution in the company, including software developers, distribution engineers, quality engineers, etc.
* ...

## 4. Roles, Responsibilities, and Competencies
The following roles, responsibilities, and competencies required for each role are defined to ensure the effectiveness of the policy.

The responsible organization/person and the level of required competencies for each role are defined in [Appendix 1. Status of Responsible Persons].

* The Open Source Program Manager regularly updates the list according to the company's business situation.
* The head of the organization responsible for each role appoints a person in charge within the organization and allocates appropriate time and budget to ensure that the person in charge can faithfully perform the role.
  * If the person in charge of each role finds that they are not being properly supported in performing their role, they should raise the issue with the Open Source Program Manager.
  * The Open Source Program Manager discusses problem-solving with the head of the organization. If it is not resolved appropriately, the Open Source Program Manager can request problem-solving from the OSRB.
  * The OSRB shares the issue with the head of the upper organization and requests a solution.

### (1) OSRB

The OSRB (Open Source Review Board) is a consultative body composed of the Open Source Program Manager and responsible persons from related organizations such as the legal team, patent team, development team, infrastructure team, etc., for managing open source in the company.

* The OSRB establishes policies and processes for managing open source in the company and defines the roles and responsibilities within the company to implement them.
* The OSRB reviews and improves policies and processes annually. All improvement processes are documented and recorded.
  * The OSRB always updates the policies and processes for open source compliance and security assurance to reflect the business environment by analyzing the company's process performance, shortcomings, and best practices.
  * The Open Source Program Manager is responsible for managing the policies and processes for open source compliance.
  * The security officer is responsible for managing the policies and processes for open source security assurance.
* The OSRB discusses solutions and prepares countermeasures when open source issues occur within the company.
* The OSRB reports issues to the executive management when necessary and receives feedback on risk mitigation measures.


### (2) Open Source Program Manager

The Open Source Program Manager is responsible for the overall responsibility of the company's open source program. It has the following responsibilities to ensure the management activities of open source used in products and services:

* Defines the roles necessary for open source compliance and assigns the responsible organization and person for each role. Consults with the OSRB if necessary. The internal responsibility for open source security assurance is assigned by the security officer.
* Organizes and evaluates open source education.
* Serves as the chairman of the OSRB and directs activities.
* Responds to inquiries and requests related to open source use and compliance from outside.
* Reviews and approves open source use requests.
* Maintains SBOM records.
* Provides a way for members to receive open source related advice.
* Maintains a repository for open source notices and source code disclosure.

### (3) OSPO

The Open Source Program Office (OSPO) supports and nurtures open source activities both inside and outside the company.

* It provides guidelines for contributing code to external open source projects.
* It provides guidelines for releasing internal projects as open source.
* It develops and operates an open source portal.
* It develops and selects open source tools.
* It sponsors open source project events.
* It manages relationships with open source communities.

### (4) Legal Officer

The Legal Officer provides advice on legal risks and mitigation measures that may arise in the process of using open source, such as interpreting open source licenses and obligations.

- It provides a reasonable method for members to inquire about open source compliance issues.
- It provides advice on license and intellectual property issues, including conflicts due to incompatible open source licenses.
- It reviews necessary legal matters such as open source licenses, CLA (Contributor License Agreement), etc. when contributing to external open source projects.
- In acute cases, it requests advice from external law firms with open source specialist lawyers.

### (5) IT Officer

The IT Officer operates open source analysis tools and automates them to build a system that allows open source analysis to be smoothly performed for all distributed software.

- It operates open source analysis tools.
- It integrates with the DevOps environment to automate open source analysis.
- It builds systems and processes to perform open source analysis for all distributed software.
- It secures and maintains SBOM for all distributed software.

### (6) Security Officer

The Security Officer operates open source security vulnerability analysis tools to build a system that allows security vulnerability analysis to be smoothly performed for all distributed software.

- It assigns responsibilities for each task to ensure successful open source security assurance.
- It operates open source security vulnerability analysis tools.
- It integrates with the DevSecOps environment to automate open source security vulnerability analysis.
- It builds systems and processes to perform open source security vulnerability analysis for all distributed software.
- It provides a reasonable method for members to inquire about security vulnerabilities, and uses external expert technical advice if necessary to resolve vulnerabilities.

### (7) Development Culture Officer

The Development Culture Officer supports in-house developers to actively use open source and participate in in-house and external communities to acquire advanced development culture.

- It encourages participation in open source communities.
- It creates a culture that recognizes active external open source project activities as in-house performance.
- It creates a development culture that can be recognized as an attractive company by open source developers.

### (8) Quality Assurance Officer

The Quality Assurance Officer, such as QA, checks whether the open source license obligations have been properly performed when distributing software.

- It checks whether open source management activities are performed according to the development process stage.
- It checks whether the deliverables are created as required by the open source license.
- It checks whether the open source notice and the source code to be disclosed are provided together when distributing software.
- If there is an issue, it notifies the software development/distribution organization and guides them to correct the issue immediately.

## 5. Education and Evaluation

All members who are responsible for the roles defined in Chapter 4 must take the advanced open source education course provided by the [Learning Portal]. Through this, they will familiarize themselves with the open source policy, related education policy, and how to look it up.

The education history and evaluation results are kept in the [Learning Portal] for at least 3 years.

## 6. Open Source Use

When developing and distributing products and services using open source, you must comply with the obligations required by each open source license. This activity is called open source compliance.

For proper open source compliance activities, the software development/distribution organization complies with the following matters and all processes are recorded and preserved in the Jira Tracker.

### (1) Open Source Identification and License Obligation Review

When introducing open source to product/service development, first identify what the open source license is, and review and confirm the obligations required by the license.

The company's [Open Source License Guide] includes a list of major open source licenses, and explains the obligations required by each license according to the following types of distribution:

- Binary form
- Source form
- Strong/Weak Copyleft
- SasS-based provision
- Whether modified
- Including open source that requires author indication, etc.

The software development/distribution organization can refer to this guide when reviewing open source license obligations. If you need to review an open source license not mentioned in this guide, contact the open source program manager.

### (2) Open Source License Consideration Design

Understand the combination relationship of open source and design the software architecture so that our code is not affected by the open source license.

The company's [Open Source License Guide] explains the range of source code disclosure for each open source license and how to design to prevent the disclosure of our code.

### (3) Creation of Open Source Compliance Deliverables

The most basic of open source compliance activities is to understand the status of open source included in distributed software. This is to properly meet the core of open source compliance, which is the requirements of the open source license. In other words, you need to create a set of compliance deliverables for the open source included in the distributed software.

Open source compliance deliverables are divided into two main categories.

1. Open Source Notice: A document for providing the full text of the open source license and copyright information
2. Source Code Package to be Disclosed: A package that collects the source code to be disclosed to fulfill the obligations of open source licenses that require source code disclosure, such as GPL, LGPL

To collect, distribute, and store these compliance deliverables, comply with the following matters.

- The open source notice or source code package to be disclosed is collected according to the conditions required by each license. For example, if the license requires the entire text of the license to be enclosed, you cannot just provide a link.
- The collected deliverables are stored in a separate repository.
- If the source code to be disclosed is provided by a written agreement, the download link is made public so that the repository of the collected deliverables can be accessed from the outside.

You can issue an open source notice and collect a source code package to be disclosed through the company's open source process.

### (4) Creation of SBOM (Bill of Materials)

You must create and manage the status of open source included in distributed software (BOM: Bill of Materials).

You can create and preserve SBOM using open source tools through the company's open source process.

### (5) Compliance Issue Response Procedure

If a compliance issue is raised, the open source program manager performs the following procedures to respond quickly.

1. Confirm the inquiry receipt and specify a reasonable resolution time.
2. Check whether the issue content is pointing out a real problem. (If not, inform the issue raiser that it is not a problem.)
3. If it is a real problem, prioritize and decide on an appropriate response.
4. Perform the response and, if necessary, appropriately supplement the open source process.
5. The above contents are preserved using the Jira Tracker.


### (6) Open Source Vulnerability Response

- We identify open source vulnerabilities and evaluate their severity.
- Based on the analysis of open source vulnerabilities, we either fix the vulnerability or apply a security patch. The decision to address vulnerabilities takes into account the severity of the vulnerability, the importance of the system, and the availability of vulnerability fixes or security patches.
- We monitor the announcement of new open source security vulnerabilities and respond quickly when vulnerabilities occur. Open source vulnerability monitoring can be performed through vulnerability databases such as CVE and websites of security specialist organizations.

## 7. Open Source Contribution

The company encourages participation and contribution to external open source projects to create business value from open source. However, care must be taken to avoid unintentional exposure of the company's intellectual property or infringement of third-party rights during this process. To this end, members of the company must comply with the following when contributing to external open source projects:

### (1) Request for Review and Approval

Contributing to open source is granting the open source project the right to modify, use, and distribute the work from a copyright perspective. Sometimes, you may need to transfer your copyright to the open source project. However, the copyright of works created during the employment period is generally owned by the employer. In other words, the works created by company members are owned by the company. The act of arbitrarily contributing works to open source can trigger unnecessary copyright infringement issues.

Therefore, if there is an open source project you want to contribute to, you must comply with the review request and approval process before making the initial contribution according to the open source contribution process.

However, in the case of simple content such as the following, you can contribute according to the judgment of the member without the review process because the risk of copyright infringement is not high:

- Small code snippets of 10 lines or less
- Questions / Answers on Stack Overflow
- Management activities on GitHub: Creating Issues, Reviewing / Approving Pull Requests, etc.

### (2) Only Contribute Code You Have the Right to Contribute

You should only contribute code that you have the right to contribute. In other words, you contribute code that you have written yourself. You should not arbitrarily contribute third-party code.

### (3) Be Careful About Intellectual Property Exposure

Do not contribute code or documents that may expose sensitive information or company intellectual property, such as patents.

If the code you want to contribute contains a company patent, you need to check whether this patent can be contributed to the project under an open source license. If there is any ambiguity, contact the OSPO.

### (4) Be Careful About Signing the CLA

Some open source projects require all contributors to sign the CLA (Contributor License Agreement). This is an agreement that seeks consent from contributors to reduce copyright disputes that can arise while the project manages the works of multiple contributors. Typically, projects led by large corporations require you to sign the CLA.

The CLA varies from project to project, but it usually contains the following:

- I (or my affiliated company) have the right to contribute the contribution I want to contribute to the project. (In other words, I am the author of this contribution.)
- I (or my affiliated company) grant the project the right to modify, distribute, and manage my contribution.
- I (or my affiliated company) will not revoke the granted rights.
- I (or my affiliated company) grant the project the right to change the license as needed in the future.

Also, although rare, some CLAs require agreement on the following conditions:

- I (or my affiliated company) transfer my copyright to the project or project management organization at the same time as I contribute my contribution.

The company does not allow contributions to open source projects that require copyright transfer to protect its intellectual property. To make this judgment, company members must request a review from the OSPO before signing if the open source project they want to contribute to requires signing the CLA.

### (5) Copyright Notice

The intellectual property of the works created by members during their employment is basically owned by the company. Therefore, when members contribute code to an external open source project, they must indicate the company's copyright.

When contributing one or more files, indicate the copyright and license at the top of the file as follows:

~~~
Copyright (c) {$year} {$Company}
SPDX-License-Identifier: {$SPDX_license_name}
~~~

Here, $SPDX_license_name is written according to the license policy of the open source project in question.

However, if you are modifying existing code for purposes such as bug fixes, you do not need to indicate copyright for the code modification.

### (6) Use of Company Email

When contributing to an open source project, do not use personal email, use company email. Through this, (1) members have a sense of responsibility to communicate with the community on behalf of the company, and (2) the company can improve its recognition as a company that actively contributes to the open source community.

## 8. Open Source Release

The company respects the value of collaboration with the open source community and encourages the release of internal software to open source projects. However, there are a few rules to follow to protect the company's intellectual property and prevent unintended copyright infringement.

### (1) Approval

Open source release is granting anyone the right to modify, use, and distribute the work through an open source license from a copyright perspective. Generally, the copyright of works created during the employment period is owned by the employer. In other words, the works created by company members are owned by the company. The act of arbitrarily disclosing works to open source can trigger unnecessary copyright infringement issues.

Therefore, if you want to disclose software as open source, you must follow the review request and approval process according to the company's open source release policy.

If there is anything that seems undesirable in the process of release, do not hesitate to contact the OSPO.

### (2) Only Disclose Code You Have the Right to Disclose

One of the worst situations that can occur in an open source project is the inclusion of legally problematic code in the project. Code that the company does not have the right to distribute, or code that infringes on the IP of another company, such as a patent, can cause legal problems. Therefore, while preparing to disclose the code, check the source of all code and remove any code that may be problematic.

### (3) Be Careful About Intellectual Property Exposure

Do not disclose code or documents that may expose sensitive information or company intellectual property, such as patents.

If the code you want to disclose contains a company patent, you need to check whether this patent can be disclosed under an open source license. If there is any ambiguity, contact the OSPO.

### (4) Disclose Useful Code

In order to be a successful project, it must also be useful to others. If a similar project already exists, participate in the existing project rather than creating a new one.

The open source you want to disclose should (1) provide differentiated value to the open source community, (2) solve problems that the community has not been able to solve, and (3) be expected to attract positive attention by disclosing our technology.

* Do not disclose code that could not be used in actual products or services as open source.
* Do not disclose code that deals with problems already solved in the open source community. In this case, contribute to the existing open source project.

### (5) Resource Allocation

- Secure the resources that need to be invested in the project.
- Initially, you need developers at a level similar to general internal projects.
- You need developers who can quickly review contributions from outside.
- The roles of the legal and marketing teams are also needed.

Secure a budget for the infrastructure needed to maintain and manage the project. This includes project hosting tools like GitHub. If you cannot create an environment that supports sufficient resources, do not disclose it as open source.

### (6) Use of Company Email

When conducting open source release activities, use company email instead of personal email. This has the following benefits:

- Members have a sense of responsibility to communicate with the community on behalf of the company.
- The company can improve its recognition as a company that actively discloses to the open source community.

## 9. Response to External Inquiries

### (1) Responsibility for Responding to External Inquiries

The Open Source Program Manager is responsible for responding to inquiries and requests about open source from outside.

- The Open Source Program Manager can assign all or part of the processing of inquiries to appropriate personnel within the company. If necessary, consult with a legal officer to handle it.
- Anyone who receives an open source inquiry from outside informs the Open Source Program Manager so that a quick response can be made.

### (2) Public Contact Information

The Open Source Program Manager provides contact information publicly so that outsiders can make inquiries and requests related to open source.

- Provide an email address where you can be contacted in the open source notice.
- Provide email address information on the open source website.
- Register your contact information in the Open Compliance Directory of the Linux Foundation.

### (3) External Inquiry Response Procedure

If you respond quickly and accurately to open source inquiries from outside, you can greatly reduce the risk of claims or legal litigation. To this end, the company complies with the external inquiry response procedure defined in the company's open source process to respond to external open source inquiries.

## 10. Declaration and Maintenance of Compliance with ISO Standards

The company supports the spirit of the OpenChain project of the Linux Foundation for improving the level of open source compliance in the software supply chain and actively participates.

- The company guarantees compliance with ISO/IEC 5230:2020 as of October 1, 2021, by applying this open source policy.
- The company guarantees that it meets all the requirements of OpenChain Specification Version 2.1, ISO/IEC 5230:2020 for more than 18 months after obtaining conformity certification.
- The company reviews conformity at least every 18 months and changes and updates policies as needed.

## Appendix 1. Status of Responsible Persons

| No | Role | Responsibility | Required Skills | Responsible Organization | Person in Charge |
|---|:---|:---|:---|:---|:---|
| 1 | Open Source Program Manager | Responsible for overseeing the company's open source program. | 1. Understanding of software development process<br>2. Understanding of intellectual property related to open source licenses such as copyright and patents<br>3. Expert knowledge of open source compliance<br>4. Open source development experience<br>5. Communication skills | CTO | OOO |
| 2 | Legal Officer | Interprets the obligations of open source licenses and provides advice to mitigate legal risks that may arise in utilizing open source to fulfill these obligations. | 1. Basic knowledge of the open source ecosystem<br>2. Expert knowledge of software copyright<br>3. Expert knowledge of open source licenses | Legal Team | OOO |
| 3 | IT Officer | Operates and automates open source analysis tools to build a system that allows open source analysis to be performed smoothly for all software for distribution. | 1. Basic knowledge of open source compliance process<br>2. Understanding of open source analysis tools<br>3. Expert knowledge of IT infrastructure | IT Infrastructure Team | OOO |
| 4 | Security Officer | Operates open source vulnerability analysis tools to build a system that allows vulnerability analysis to be performed for all software for distribution and ensures that discovered vulnerabilities are remedied according to standards. | 1. Broad understanding of DevSecOps<br>2. Understanding of open source vulnerability analysis tools<br>3. Expert knowledge of open source vulnerabilities<br>4. Communication skills | Security Team | OOO |
| 5 | Development Culture Officer | Supports internal developers to actively utilize open source and participate in internal and external communities to acquire advanced development culture. | 1. Understanding of software development process<br>2. Basic knowledge of open source compliance<br>3. Understanding of open source policy | DR | OOO |
| 6 | Business Department | Software development/distribution organizations comply with open source policy and process for proper open source utilization. | 1. Understanding of software development process<br>2. Basic knowledge of open source compliance<br>3. Understanding of open source policy<br>4. Basic knowledge of open source licenses | Development Team | All members |