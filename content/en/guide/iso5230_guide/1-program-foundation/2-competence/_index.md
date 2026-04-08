---
title: "§3.1.2 Competence"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "competence"]
description: >
---

## 1. Clause Overview

For an open source program to actually function, the people assigned to relevant roles must have the
competence to perform those roles. If roles and responsibilities are only written in documents and the
people responsible have no basic knowledge of open source license or security vulnerability management,
the policies and processes will be nominal. §3.1.2 requires the organization to identify the roles
involved in the program, define the competence required for each role, evaluate and record whether
participants actually possess that competence. This clause advances the role structure defined in §3.1.1
Policy into a concrete competence framework.

## 2. What to Do

- Create a list of roles that affect the performance of the open source program and the responsibilities of each role.
- Specifically define and document the competence (knowledge, skills, experience) required to perform each role.
- Evaluate whether each Program Participant has the competence required for their role.
- Where competence is insufficient, take measures such as training, mentoring, etc. to acquire the necessary competence.
- Document and retain competence assessment results and subsequent action history.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.1.2 | The organization shall: <br>- Identify the roles and responsibilities that impact the performance and effectiveness of the program; <br>- Determine the necessary competence of Program Participants fulfilling each role; <br>- Ensure that Program Participants are competent on the basis of appropriate education, training, and/or experience; <br>- Where applicable, take actions to acquire the necessary competence; <br>- Retain appropriate documented information as evidence of competence. | **3.1.2.1** A documented list of roles with corresponding responsibilities for the different participants in the program.<br>**3.1.2.2** A document that identifies the competencies for each role.<br>**3.1.2.3** Documented evidence of assessed competence for each Program Participant. |

## 4. How to Comply and Samples by Verification Material

### 3.1.2.1 Documented List of Roles and Responsibilities

**How to Comply**

A document listing all roles involved in the program and clearly defining the responsibilities of each
role must be created. Generally, the Open Source Program Manager, legal counsel, IT staff, security
staff, developer culture staff, and business units are the key roles. Depending on the company size or
organizational structure, it is also possible to have people hold multiple roles concurrently or operate
as a virtual organization in the form of an OSRB (Open Source Review Board).

When defining roles, listing specific responsibility items rather than abstract descriptions is more
advantageous for proving during audits. For example, instead of "open source management," describe it
clearly as "oversight of license review and SBOM generation for open source components used in supplied
software." This document can be included in the Open Source Policy document (§3.1.1.1) under the roles
and responsibilities section, or managed as a separate appendix.

**Considerations**

- **Role identification scope**: Include roles from all organizations involved in the software supply chain,
  such as development, legal, IT, security, and procurement, and also review outsourced development and
  vendor management roles.
- **Responsibility specificity**: Describe responsibilities for each role in terms of specific activities,
  not abstract descriptions.
- **Concurrent roles**: When one person holds multiple roles concurrently, clearly note this in the document.
- **Update cycle**: Immediately update the document and version when organizational changes or personnel
  transfers occur.

**Sample**

The following is a sample roles and responsibilities list from an Open Source Policy Appendix.
The full form can be found in [Open Source Policy Template Appendix 1](../../../templates/1-policy/appendix/).

```
| Role | Responsibilities |
|------|-----------------|
| Open Source Program Manager | Overall management of the company's open source program / SBOM generation oversight /
                                External inquiry response / Internal best practice management |
| Legal Counsel | Interpretation and review of open source license obligations /
                 License compatibility review / Legal risk assessment and advisory |
| IT Staff | Operation of open source analysis tools and CI/CD pipeline integration /
             Support for SBOM generation automation |
| Security Staff | Response to known and newly discovered vulnerabilities /
                  DevSecOps environment integration and security measures |
| Developer Culture Staff | Encouraging open source community participation / Training program operation |
| Business Unit | Compliance with open source policy and processes / Open source identification and reporting |
```

---

### 3.1.2.2 Document Identifying Competencies for Each Role

**How to Comply**

The knowledge, skills, and experience required to perform each role must be specifically defined and
documented. The competence definition should be written to a level where a person newly assigned to that
role can clearly understand "what I need to know." Instead of writing vaguely like "open source knowledge
required," describe it specifically, such as "understanding of the obligations and compatibility of major
open source licenses (MIT, Apache-2.0, GPL-2.0, etc.)."

Breaking down competence levels into categories like "basic understanding," "practical application," and
"expert" makes the evaluation criteria clearer and makes it easier to establish training plans. This
document can be included in the Open Source Policy document or managed as a separate competence definition
document, and should be reviewed periodically to reflect changes in the technical environment.

**Considerations**

- **Specificity**: Describe competence items at a measurable level so they can be used as evaluation criteria.
- **Competence level distinction**: Defining levels such as "Basic Understanding / Practical Application /
  Expert" facilitates evaluation and training design.
- **Update cycle**: Update competence items when new tools, licenses, or security technologies emerge.
- **Training linkage**: Design role-specific training curricula based on the defined competencies.

**Sample**

The following is a sample competence definition table by role.

```
| Role | Required Competence |
|------|---------------------|
| Open Source Program Manager | Understanding of major open source license obligations and compatibility /
                                Understanding of software development processes /
                                SBOM generation and management knowledge / Communication skills |
| Legal Counsel | Specialized knowledge of software copyright law /
                 Ability to interpret open source licenses / Legal risk assessment ability |
| IT Staff | Operation of open source analysis tools (FOSSology, ORT, Syft, etc.) /
             Understanding of CI/CD pipelines / IT infrastructure expertise |
| Security Staff | Understanding of DevSecOps / Operation of vulnerability analysis tools /
                  CVSS score interpretation and risk assessment ability |
| Developer Culture Staff | Understanding of open source policy / Training design ability /
                           Open source community participation experience |
| Business Unit | Basic knowledge of open source compliance /
                 Basic understanding of open source licenses / Understanding of open source policy |
```

---

### 3.1.2.3 Documented Evidence of Assessed Competence

**How to Comply**

Each Program Participant must be evaluated to confirm they actually possess the defined competencies,
and the results must be documented and retained. Evaluation methods can combine a variety of approaches
such as online training completion confirmation, verification of certification possession, written or
practical exams, review of job performance records, and interviews. The important thing is that the
evaluation results must remain as records. These records themselves are Verification Material 3.1.2.3.

If insufficient competence is found from evaluation results, take remedial measures such as training,
external consulting, or mentoring, and retain completion records as well. Evaluations should be conducted
regularly at least once a year, and new assignees should be immediately evaluated upon role assignment.
Evaluation records should be stored in the internal Learning Management System (LMS) or document system
and maintained in a state where they can be submitted immediately during audits.

**Considerations**

- **Diverse evaluation methods**: Comprehensively evaluate competence by combining multiple methods such
  as online training completion, exams, and on-the-job performance.
- **Regular evaluation cycle**: Conduct at least once a year, and immediately perform a new evaluation
  when an assignee changes.
- **Remediation of insufficient competence**: Establish a training plan for items found insufficient in
  evaluation results, and conduct re-evaluation after completion.
- **Record retention period**: Retain evaluation records at least for the duration of the assignee's
  tenure, and maintain them for a certain period after departure for audit purposes.

**Sample**

The following is a sample competence evaluation record form. It is written by role and stored in the
LMS or document system.

```
| Name | Role | Evaluation Item | Evaluation Method | Result | Evaluation Date | Notes |
|------|------|-----------------|-------------------|--------|-----------------|-------|
| Gil-dong Hong | Open Source Program Manager | Understanding of license obligations | Online training completion | Completed (95 points) | 2026-01-15 | - |
| Gil-dong Hong | Open Source Program Manager | SBOM management knowledge | Practical evaluation | Completed | 2026-01-15 | - |
| Chul-su Kim | Security Staff | Understanding of DevSecOps | External training completion | Completed | 2026-02-03 | Certificate retained |
| Young-hee Lee | Legal Counsel | Open source license interpretation | Interview evaluation | Completed | 2026-01-20 | - |
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 1. Organization](../../../opensource_for_enterprise/1-teams/)
- Related template: [Open Source Policy Template — Appendix 1. Personnel Status](../../../templates/1-policy/appendix/)
