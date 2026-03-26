---
title: "§3.2.2 Effective Resources"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "Resources"]
description: >
---

## 1. Clause Overview

For an open source program to actually function, it is not enough to just define roles. Actual personnel
must be assigned to each role, and sufficient time and budget must be provided to carry out the work.
§3.2.2 requires organizations to document the persons responsible for each program role, confirm that
staffing and budget are appropriately allocated, and to have a method for accessing legal expertise, a
procedure for assigning internal responsibilities, and a procedure for handling non-compliance cases.
This clause consists of five verification material items and is the stage that implements the role
structure defined in §3.1 Program Foundation into an actual operational framework.

## 2. What to Do

- Record the names or job titles of the persons responsible for each role in the program (Open Source
  Program Manager, legal counsel, IT staff, etc.) in a document.
- Confirm and record that sufficient time and budget have been allocated for each role assignee to
  perform their duties.
- Identify and document internal or external legal expertise available when legal issues related to
  open source license compliance arise.
- Document a procedure for assigning internal open source compliance responsibilities to each role.
- Document a procedure for reviewing and remedying non-compliance cases when discovered.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.2.2 | Identify and Resource Program Task(s): assign accountability to ensure the successful execution of program tasks / provide sufficient resources (time, budget) for program tasks / ensure access to legal expertise / establish a process for reviewing and resolving non-compliance cases. | **3.2.2.1** A document with the names of the persons, group or function in program role(s) identified.<br>**3.2.2.2** The identified program roles have been properly staffed and adequate funding provided.<br>**3.2.2.3** Identification of legal expertise available to address open source license compliance matters which could be internal or external.<br>**3.2.2.4** A documented procedure that assigns internal responsibilities for open source compliance.<br>**3.2.2.5** A documented procedure for handling the review and remediation of non-compliant cases. |

## 4. How to Comply and Samples by Verification Material

### 3.2.2.1 Document with Names of Persons in Program Roles

**How to Comply**

A document must be created listing the names, group names, or job titles of the actual persons
responsible for each role in the program. This document can be managed by adding assignee information
to the roles and responsibilities list document from §3.1.2.1, or can be included as an assignee status
table in the Open Source Policy Appendix. It is acceptable to use job titles (Open Source Program
Manager, Head of Legal, etc.) instead of specific individual names, and the document must be updated
immediately when organizational changes occur.

**Considerations**

- **Individual name or job title**: Using job titles instead of names reduces the frequency of document
  updates when personnel changes occur.
- **Concurrent roles**: When one person handles multiple roles, note this fact for all relevant roles.
- **Update management**: Immediately update the document and record the version when organizational
  changes or personnel transfers occur.

**Sample**

The following is a sample assignee status table for program roles.
The full form can be found in [Open Source Policy Template Appendix 1](../../../templates/1-policy/appendix/).

```
| Role | Assignee | Contact |
|------|----------|---------|
| Open Source Program Manager | Gil-dong Hong (Dev Team Lead) | oss@company.com |
| Legal Counsel | Legal Kim (Head of Legal) | legal@company.com |
| IT Staff | Infra Lee (Infrastructure Team) | it-oss@company.com |
| Security Staff | Security Park (Security Team) | security@company.com |
| Developer Culture Staff | Culture Choi (HR Team) | culture@company.com |
```

---

### 3.2.2.2 Staffing and Funding Confirmation

**How to Comply**

It must be confirmed and the basis recorded that sufficient time and budget have been allocated for each
role assignee to perform open source program duties. Even if there is no dedicated organization, there
must be internal records confirming that the time available for concurrent assignees to invest in the
work is secured, and that necessary budgets such as tool purchases or training costs have been allocated.
Budget plans or work assignment documents that include management approval may constitute this
Verification Material.

**Considerations**

- **Specify dedicated vs. concurrent**: Record whether it is a dedicated position or concurrent, and
  if concurrent, specify the input ratio (e.g., 20% of working hours).
- **Retain budget evidence**: Retain records proving budget support such as tool purchase contracts,
  training cost expenditure records, and external consulting contracts.
- **Management confirmation**: Maintain records of management approval or confirmation of staffing and
  budget support.

**Sample**

```
[Open Source Program Resource Allocation Confirmation]

Program year: 2026
Approver: [Executive name] / Approval date: 2026-01-10

| Role | Assignee | Input Ratio | Annual Budget |
|------|----------|-------------|---------------|
| Open Source Program Manager | Gil-dong Hong | 50% | - |
| Legal Counsel | Legal Kim | 20% | - |
| IT Staff (tool operation) | Infra Lee | 10% | Including tool license costs |
| Training budget | - | - | Annual OOO amount |
| External legal advisory budget | - | - | Executed as needed |
```

---

### 3.2.2.3 Legal Expertise Access Method

**How to Comply**

The method for accessing professional legal advice when legal issues related to open source license
compliance arise must be identified and documented. If there is an internal legal team, record the
team's contact information and escalation procedure. If there is no internal legal team or if expertise
is insufficient, specify in the document the method for utilizing external law firms or open source
consulting specialists.

**Considerations**

- **Internal vs. external**: Specify both the method for utilizing the internal legal team and the
  criteria for requesting external consultation.
- **Escalation criteria**: Include in the procedure the criteria for when legal advice is needed
  (copyright infringement claims, non-standard licenses, patent clauses, etc.).
- **Maintain external advisory list**: Keep information on open source specialist external law firms
  or consultants up to date.

**Sample**

```
[Legal Expertise Access Method]

Internal Legal Team:
- Contact: Legal Team (legal@company.com)
- Escalation criteria: When copyright infringement claims are received, when
  interpretation of GPL-family license obligations is uncertain, when review
  of non-standard licenses is required

External Legal Advisory:
- Utilization criteria: When complex legal disputes arise that are difficult for
  the internal legal team to adjudicate
- Contract status: [External law firm name] (annual advisory contract in place)
- Open source specialist consulting: Refer to the OpenChain partner list
```

---

### 3.2.2.4 Internal Responsibility Assignment Procedure

**How to Comply**

A procedure for clearly assigning internal responsibilities related to open source compliance to each
role must be documented. This procedure defines who is responsible for what, and specifies the responsible
person for each work stage such as open source use approval, SBOM generation, license review, and
Compliance Artifacts distribution. This procedure document can be included in the open source policy
or process document.

**Considerations**

- **Responsibility by work stage**: Designate a responsible person for each stage of open source
  introduction, review, approval, and distribution.
- **RACI utilization**: Defining responsibilities by role (Responsible, Accountable, Consulted, Informed)
  as a RACI matrix increases clarity.
- **Update cycle**: Immediately update the procedure when organizational or process changes occur.

**Sample**

```
| Task | Open Source PM | Legal | IT | Security | Developer |
|------|----------------|-------|----|----------|-----------|
| Open source use approval | A | C | - | C | R |
| License obligation review | R | A | - | - | I |
| SBOM generation | A | - | R | - | C |
| Vulnerability monitoring | I | - | C | A/R | I |
| Compliance Artifacts distribution | A | C | R | - | I |
| External inquiry response | A/R | C | - | - | - |

R: Responsible / A: Accountable / C: Consulted / I: Informed
```

---

### 3.2.2.5 Non-Compliance Case Review and Remediation Procedure

**How to Comply**

A procedure for reviewing and remediating non-compliance cases (license obligation failures, SBOM
omissions, unauthorized open source use, etc.) when discovered must be documented. The procedure must
include: (1) identification and reporting of non-compliance cases, (2) severity assessment, (3) root
cause analysis, (4) corrective action, (5) preventive measures, and (6) record retention.

Non-compliance cases can be discovered through various channels such as internal audits, external
inquiries, and automated tool alerts. It is effective to distinguish between urgent measures (distribution
suspension, immediate source code disclosure, etc.) and general measures depending on severity, and to
set different deadlines for processing.

**Considerations**

- **Severity classification**: Classify the severity (high/medium/low) of non-compliance cases based
  on legal risk and set different processing deadlines.
- **Escalation**: Make management reporting and legal review mandatory for high-severity cases.
- **Recurrence prevention**: After completing corrective action, derive and record process improvement
  measures to prevent recurrence of the same type of non-compliance.
- **Record retention**: Retain non-compliance case history and corrective completion records for at
  least 3 years.

**Sample**

```
[Non-Compliance Case Handling Procedure]

1. Identification and Reporting
   - Identify non-compliance cases through internal audits, external inquiries,
     CI/CD tool alerts, etc.
   - Report immediately to the Open Source Program Manager.

2. Severity Assessment
   - High: GPL source code not disclosed for distributed software, copyright infringement claim received
     → Emergency review initiated within 48 hours
   - Medium: SBOM omission, incomplete license notice
     → Corrective action completed within 7 business days
   - Low: Internal process non-compliance (approval procedure skipped, etc.)
     → Corrective action completed within 30 days

3. Root Cause Analysis and Corrective Action
   - Identify the cause of non-compliance and establish a corrective plan.
   - For high and medium cases, take action after consulting with the legal team.

4. Recurrence Prevention
   - Derive and implement process or training improvement measures.

5. Record Retention
   - Record the case content, action progress, and completion date, and retain for at
     least 3 years.
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 1. Organization](../../../opensource_for_enterprise/1-teams/)
- Related template: [Open Source Policy Template — Appendix 1. Personnel Status](../../../templates/1-policy/appendix/)
