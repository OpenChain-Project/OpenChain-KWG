---
title: "§4.1.2 Competence"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "competence"]
description: >
---

## 1. Clause Overview

§4.1.2 has the same basic structure as ISO/IEC 5230 §3.1.2 (Competence), but requires 3 additional Verification Material items. While 5230 requires three items — a list of roles, a definition of competencies per role, and evidence of competency assessment — 18974 additionally requires a **list of participants and their role mappings (4.1.2.3)**, **evidence of periodic review and process changes (4.1.2.5)**, and **verification of alignment with internal best practices (4.1.2.6)**. These three additional items require demonstrating that the competence framework is not merely formal, but is actively kept up to date and aligned with industry standards.

## 2. What to Do

- Create a list of responsibilities per program role (same as 5230).
- Define and document the competencies required for each role (same as 5230).
- **Create a separate list mapping participant names to their respective roles** (added in 18974).
- Assess and record the competencies of each participant (same as 5230).
- **Periodically review the competence framework and record process changes** (added in 18974).
- **Confirm that the competence framework aligns with the company's internal best practices and assign a person responsible** (added in 18974).

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.1.2 | The organization shall: identify the roles and responsibilities that impact the performance and effectiveness of the program; determine the necessary competence for each role; ensure that participants are competent; take actions where applicable to acquire the necessary competence; and retain documented evidence of competence. | **4.1.2.1** A documented list of roles with corresponding responsibilities for the different participants in the program<br>**4.1.2.2** A document that identifies the competencies for each role<br>**4.1.2.3** List of participants and their roles ★<br>**4.1.2.4** Documented evidence of assessed competence for each program participant<br>**4.1.2.5** Documented evidence of periodic reviews and changes to the process ★<br>**4.1.2.6** Documented evidence that these processes align with and are up-to-date with company internal best practices, and that a person has been assigned to make sure they remain so ★ |

★ = Additional items compared to ISO/IEC 5230 §3.1.2

> **§4.1.2 Competence**
> The organization shall:
> - Identify the roles and responsibilities that impact the performance and
>   effectiveness of the program;
> - Determine the necessary competence of program participants fulfilling
>   each role;
> - Ensure that program participants are competent on the basis of appropriate
>   education, training, and/or experience;
> - Where applicable, take actions to acquire the necessary competence;
> - Retain appropriate documented information as evidence of competence.
>
> **Verification Material(s):**
> 4.1.2.1 A documented list of roles with corresponding responsibilities for
> the different participants in the program.
> 4.1.2.2 A document that identifies the competencies for each role.
> 4.1.2.3 List of participants and their roles.
> 4.1.2.4 Documented evidence of assessed competence for each program
> participant.
> 4.1.2.5 Documented evidence of periodic reviews and changes to the process.
> 4.1.2.6 Documented evidence that these processes align with and are
> up-to-date with company internal best practices, and that a person has been
> assigned to make sure they remain so.

## 4. How to Comply and Samples per Verification Material

### 4.1.2.1 Documented List of Roles and Responsibilities

This is the same as ISO/IEC 5230 §3.1.2.1. From a security assurance perspective, the roles of security personnel (DevSecOps, vulnerability analysis) must be clearly included. Refer to [§3.1.2.1 Documented List of Roles and Responsibilities](../../iso5230_guide/1-program-foundation/2-competence/) for how to prepare this.

---

### 4.1.2.2 Document Identifying Competencies per Role

This is the same as ISO/IEC 5230 §3.1.2.2. The security personnel role should include competencies in **CVSS score interpretation, operation of vulnerability analysis tools (OSV-SCALIBR, Dependency-Track, etc.), and DevSecOps understanding**. Refer to [§3.1.2.2 Document Identifying Competencies per Role](../../iso5230_guide/1-program-foundation/2-competence/) for how to prepare this.

---

### 4.1.2.3 List of Participants and Their Roles ★

**How to Comply**

Unlike the list of roles in 4.1.2.1, this item requires a list mapping **actual individuals by name** to the roles they are assigned. The purpose is to clearly identify who the actual personnel participating in the program are, not just the organizational roles. This list must be updated immediately when personnel changes occur.

**Considerations**

- **Name or job title**: Using a job title instead of a personal name is acceptable, but it must be specific enough to identify a particular individual.
- **Multiple roles**: If someone holds multiple roles, list all of them.
- **Timely updates**: Update the document and increment the version immediately when an assignee changes.

**Sample**

```
| Name | Role | Contact | Assigned Date |
|------|------|---------|---------------|
| Gil-dong Hong | Open Source Program Manager | oss@company.com | 2025-01-01 |
| Chul-su Kim | Security (DevSecOps) | security@company.com | 2025-01-01 |
| Young-hee Lee | Legal | legal@company.com | 2025-01-01 |
| Infra Park | IT | it@company.com | 2025-03-15 |
```

---

### 4.1.2.4 Evidence of Assessed Competence

This is the same as ISO/IEC 5230 §3.1.2.3. Refer to [§3.1.2.3 Evidence of Assessed Competence](../../iso5230_guide/1-program-foundation/2-competence/) for how to prepare this.

---

### 4.1.2.5 Evidence of Periodic Reviews and Process Changes ★

**How to Comply**

The competence framework (role definitions, competency criteria, assessment methods) must be periodically reviewed, and any changes resulting from the review process must be recorded. The key is to verify that new security tool adoption, organizational restructuring, and improvements to vulnerability response processes have been reflected in the competence framework. The review record itself serves as Verification Material 4.1.2.5.

**Considerations**

- **Review cycle**: Conduct a minimum annual periodic review and an immediate review when the organization or processes change.
- **Record changes**: Record the content of changes, reasons for changes, change dates, and who made the changes.
- **Evidence format**: Review meeting minutes, review completion confirmations, and change history logs can all serve as evidence.

**Sample**

```
[Competence Framework Periodic Review Record]

| Review Date | Review Content | Changes | Reviewer |
|-------------|---------------|---------|----------|
| 2025-01-10 | Full review of all roles and competencies | Added CVSS v4.0 interpretation item to security competency | Gil-dong Hong |
| 2026-01-08 | Full review of all roles and competencies | Added Dependency-Track operation competency to IT role | Gil-dong Hong |
```

---

### 4.1.2.6 Verification of Alignment with Internal Best Practices ★

**How to Comply**

It must be confirmed that the competency definitions and assessment processes are aligned with the company's internal best practices (HR policy, technical training standards, etc.), and a person responsible for continuously managing this must be assigned. The purpose is to ensure that the competence framework does not deviate from industry standards or internal guidelines.

**Considerations**

- **Assign a responsible person**: Explicitly assign and record a person responsible for managing the currency of the competence framework and its alignment with internal best practices.
- **Best practice criteria**: Industry standards (NIST SSDF, ISO 27001, etc.), internal security policies, and DevSecOps guidelines can be used as best practice criteria.

**Sample**

```
[Internal Best Practice Alignment Confirmation]

Competence Framework Manager: Gil-dong Hong (Open Source Program Manager)
Last alignment review date: 2026-01-08
Reference best practice criteria: Internal Security Training Standard v3.0, NIST SSDF 1.1

Review results:
- Security competency criteria align with the internal security training curriculum ✓
- Vulnerability analysis tool competency reflects the latest tools (Dependency-Track v4.x) ✓
- Next alignment review scheduled: 2027-01-08
```

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.1.2 Competence](../../iso5230_guide/1-program-foundation/2-competence/)
- Related guide: [Enterprise Open Source Management Guide — 1. Organization](../../../opensource_for_enterprise/1-teams/)
- Related template: [Open Source Policy Template — Appendix 1. Personnel Status](../../../templates/1-policy/appendix/)
