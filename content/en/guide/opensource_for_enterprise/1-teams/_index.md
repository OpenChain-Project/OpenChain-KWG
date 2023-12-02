---
title: "1. Organization"
linkTitle: "1. Organization"
weight: 10
type: docs
description: >
---

First, companies need to establish an organization responsible for managing open source.

The following should be considered when organizing:

- Roles and responsibilities of the organization
- Required competencies for each role
- The organization/person in charge of each role

## 1. Defining the roles and responsibilities of the organization

ISO standards commonly require a document describing the roles and responsibilities of various participants in the program.

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}
* 3.1.2.1 - A documented list of roles with corresponding responsibilities for the different participants in the program.

{{% /alert %}}

{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.1.2.1: A documented list of roles with corresponding responsibilities for the different Program Participants

{{% /alert %}}


### Open Source Program Manager

To build an open source management system, you first need a person responsible for it. This person is called the `Open Source Program Manager` or `Open Source Compliance Officer`, and here we use the term `Open Source Program Manager`.

The Open Source Program Manager is in charge of the company's Open Source Program Office. The `Open Source Program Office` refers to the organization responsible for managing the company's open source, and is also referred to as the `Open Source Office`.

A person with the following competencies may be suitable for the role of open source program manager.

- Understanding of the open source ecosystem and development experience
- Broad understanding of the company's business
- Passion and communication skills to propagate effective open source utilization to company members

It is best to ensure that the Open Source Program Manager can perform the role full-time if possible.

Global ICT companies are striving to hire excellent Open Source Program Managers. You can check various job postings on the following site: [https://github.com/todogroup/job-descriptions](https://github.com/todogroup/job-descriptions)


### Documenting roles and responsibilities

Companies need to define the roles needed for the Open Source Program Office and determine what responsibilities to assign.

In the case of small companies, it is possible for the Open Source Program Manager to perform all roles alone. Depending on the size of the company, there may also be a need for an IT officer to operate open source tools, and the role of a legal officer may be required to provide professional legal advice.

Generally, the following roles are needed to build a company's open source management system.

- Legal officer
- IT officer
- Security officer
- Development culture officer

{{< imgproc complianceofficer Fit "900x600" >}}
<center><i>Individuals and teams involved in ensuring open source compliance : https://www.linuxfoundation.org/wp-content/uploads/OpenSourceComplianceHandbook_2018_2ndEdition_DigitalEdition.pdf</i></center>
{{< /imgproc >}}


For this, companies should document the roles and responsibilities of the Open Source Program Office as follows.

| No | Role | Responsibility |
|---|:---|:---|
| 1 | Open Source Program Manager | Responsible for the company's open source program. |
| 2 | Legal Officer | Interprets open source licenses and obligations. Provides advice to mitigate legal risks that may arise from using open source. | 
| 3 | IT Officer | Operates and automates open source analysis tools to ensure that open source analysis is smoothly performed for all software to be distributed. |
| 4 | Security Officer | Operates open source vulnerability analysis tools to ensure that vulnerability analysis is performed for all software to be distributed, and takes measures to ensure that discovered vulnerabilities are remedied according to standards. |
| 5 | Development Culture Officer | Supports company developers to actively use open source and participate in internal and external communities to acquire advanced development culture.  | 
| 6 | Business Department | The software development/distribution organization complies with open source policies and processes for proper open source use.  | 

## 2. Definition of Required Competencies

Once you have defined each role and its responsibilities, you need to identify what essential competencies are required for the personnel to perform that role.

The ISO standard commonly requires a document that describes the competencies needed for each role.

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.1.2.2 - A document that identifies the competencies for each role.

{{% /alert %}}


{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.1.2.2: A document that identifies the competencies for each role.

{{% /alert %}}

This is to evaluate whether the person in charge of each role has the ability to perform that role, and to provide education if necessary.

For this, companies should document the competencies needed for each role as follows:


| No | Role | Required Competencies |
|---|:---|:---|:---|:---|
| 1 | Open Source Program Manager  | 1. Understanding of software development process<br>2. Understanding of intellectual property related to open source licenses such as copyright, patent, etc.<br>3. Expert knowledge on open source compliance<br>4. Open source development experience<br>5. Communication skills  |
| 2 | Legal Officer | 1. Basic knowledge of the open source ecosystem<br>2. Expert knowledge on software copyright<br>3. Expert knowledge on open source licenses |
| 3 | IT Officer | 1. Basic knowledge of open source compliance process<br>2. Understanding of open source analysis tools<br>3. Expert knowledge on IT infrastructure |
| 4 | Security Officer | 1. Broad understanding of DevSecOps<br>2. Understanding of open source vulnerability analysis tools<br>3. Expert knowledge on open source security vulnerabilities<br>43. Communication skills |
| 5 | Development Culture Officer | 1. Understanding of software development process<br>2. Basic knowledge on open source compliance<br>3. Understanding of open source policy |
| 6 | Business Department | 1. Understanding of software development process<br>2. Basic knowledge on open source compliance<br>3. Understanding of open source policy<br>4. Basic knowledge on open source licenses |


## 3. Appointment of Responsible Person

The Open Source Program Manager consults with the relevant departments to appoint a person in charge for each role and documents it. Of course, to do this, you need to report the goals and directions for establishing an open source compliance system to the CEO or other top decision-makers and receive the necessary support.

The organization and person in charge of open source do not necessarily have to participate in open source work full-time. It is also possible to form a virtual organization in the form of an OSRB (Open Source Review Board) to perform the necessary roles.

For this, the ISO standard commonly requires a document that lists the names of the persons, groups, or functions in the program roles.

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.2.2.1 - Document with name of persons, group or function in program role(s) identified.

{{% /alert %}}


{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.1.2.3: List of participants and their roles
* 3.2.2.1: Document with name of persons, group or function in Program role(s) identified

{{% /alert %}}

For this, companies should document the names of the persons, groups, or functions in the program roles as follows:


| No | Role | Responsible Organization | Responsible Person | 
|---|:---|:---|:---|:---|:---|
| 1 | Open Source Program Manager | CTO | OOO |
| 2 | Legal Officer |  Legal Team | OOO | 
| 3 | IT Officer |  IT Infrastructure Team | OOO | 
| 4 | Security Officer | Security Team | OOO | 
| 5 | Development Culture Officer | DR | OOO | 
| 6 | Business Department | Development Team | All | 


You can refer to the sample that documented the roles, responsibilities, required competencies, and appointment of responsible persons in the next page. [[Appendix 1] Open Source Policy template - Appendix 1. Status of Responsible Persons](../../templates/1-policy/#appendix-1-status-of-responsible-persons)


SK Telecom has formed an [OSRB](https://sktelecom.github.io/about/osrb/) to create open source policies and processes within the company, and collaborates to develop countermeasures when issues arise.

{{< imgproc sktosrb Fit "600x300" >}}
<center><i>https://sktelecom.github.io/about/osrb/</i></center>
{{< /imgproc >}}


## Summary

You can check the sample that documented the roles, responsibilities, required competencies, and appointment of responsible persons in the Open Source Policy template: [Appendix 1. Status of Responsible Persons](../../templates/1-policy/#appendix-1-status-of-responsible-persons)

Companies can refer to this to form an open source management organization suitable for their situation.

By designating and documenting the open source program office organization in this way, you will meet the requirements marked in red in the ISO standard specification.

![](./spec_number_01.png)

In fact, it is more important to appoint a person who will faithfully perform the actual work and support the person in charge to secure the competency than to document it.