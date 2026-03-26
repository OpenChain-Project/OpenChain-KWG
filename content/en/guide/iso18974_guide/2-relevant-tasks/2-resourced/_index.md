---
title: "§4.2.2 Effectively Resourced"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "resources"]
description: >
---

## 1. Clause Overview

§4.2.2 corresponds to ISO/IEC 5230 §3.2.2 (Effectively Resourced) but has two key differences. First, while 5230 requires 5 Verification Materials, 18974 requires 4. The §3.2.2.5 item from 5230 (procedure for reviewing and correcting non-compliance cases) is absorbed into §4.1.5 Standard Practice Implementation in 18974. Second, §3.2.2.3 (method for accessing legal expertise) is replaced in §4.2.2.3 by **vulnerability resolution expertise**. Rather than legal expertise for license matters, the organization must secure technical and security expertise capable of actually resolving known vulnerabilities and document how that expertise is accessed.

## 2. What to Do

- Document the names or job titles of personnel assigned to each role in the program.
- Confirm and record that sufficient time and budget are allocated to each role assignee.
- **Identify and document the internal or external security expertise available to resolve known vulnerabilities** (different focus from 5230).
- Document the procedure for assigning internal responsibility for security assurance compliance to each role.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.2.2 | Identify and resource program tasks: assign responsibilities per role and provide sufficient resources, secure access to vulnerability resolution expertise, and establish an internal responsibility assignment procedure. | **4.2.2.1** A document with the names of the persons, group or function in program role(s) identified<br>**4.2.2.2** The identified program roles have been properly staffed and adequate funding provided<br>**4.2.2.3** A document identifying the expertise available to address identified known vulnerabilities ★<br>**4.2.2.4** A documented procedure that assigns internal responsibilities for security assurance |

★ = Different from ISO/IEC 5230 §3.2.2.3 (legal expertise) — focus shifted to security expertise

> **§4.2.2 Effectively Resourced**
> Identify and Resource Program Task(s):
> - Assign accountability to ensure the successful execution of program tasks.
> - Program tasks are sufficiently resourced.
>
> **Verification Material(s):**
> 4.2.2.1 A document with the names of the persons, group or function in
> program role(s) identified.
> 4.2.2.2 The identified program roles have been properly staffed and adequate
> funding provided.
> 4.2.2.3 A document identifying the expertise available to address identified
> known vulnerabilities.
> 4.2.2.4 A documented procedure that assigns internal responsibilities for
> security assurance.

## 4. How to Comply and Samples per Verification Material

### 4.2.2.1 Document Identifying Role Assignees

This is the same as ISO/IEC 5230 §3.2.2.1. Security assurance roles (DevSecOps engineer, vulnerability analysis personnel, etc.) must be specified. Refer to [§3.2.2.1 Document Identifying Role Assignees](../../iso5230_guide/2-relevant-tasks/2-resourced/) for how to prepare this.

---

### 4.2.2.2 Confirmation of Staffing and Budget Support

This is the same as ISO/IEC 5230 §3.2.2.2. Security-related budget items such as vulnerability scanning tools, security training, and external security consulting should be included. Refer to [§3.2.2.2 Confirmation of Staffing and Budget Support](../../iso5230_guide/2-relevant-tasks/2-resourced/) for how to prepare this.

---

### 4.2.2.3 Document Identifying Vulnerability Resolution Expertise ★

**How to Comply**

The expertise available to actually analyze and resolve identified known vulnerabilities must be identified and documented. This differs in nature from the legal expertise access method in ISO/IEC 5230 §3.2.2.3. If an internal security team exists, record that team's competencies and contact information; if internal expertise is insufficient, document how external security experts or PSIRT (Product Security Incident Response Team) services are utilized.

**Considerations**

- **Internal expertise list**: Identify internal experts or responsible teams by vulnerability type (web security, firmware security, cryptography, etc.).
- **Securing external expertise**: For vulnerability types that are difficult to handle internally, record contract details or contact methods with external security organizations (CERT, security consulting firms).
- **Escalation criteria**: Specify the criteria under which external expertise is utilized.

**Sample**

```
[Vulnerability Resolution Expertise Status]

Internal expertise:
- Security (Chul-su Kim): Web vulnerabilities, open source component CVE analysis, CVSS assessment
- DevSecOps team: CI/CD security pipeline operation, container vulnerability analysis

Criteria for utilizing external expertise:
- When zero-day vulnerabilities, firmware vulnerabilities, or cryptography-related vulnerabilities occur
- When the internal team determines that resolution within 30 days is not feasible

External organizations:
- [External Security Consulting Firm Name] (annual contract, vulnerability analysis service)
- KrCERT/CC (vulnerability coordination and reporting channel)
```

---

### 4.2.2.4 Internal Responsibility Assignment Procedure

This has the same structure as ISO/IEC 5230 §3.2.2.4, but must include the assignment of security assurance-specific responsibilities (vulnerability detection, CVSS assessment, customer notification, CVD management, etc.) to each role. Refer to [§3.2.2.4 Internal Responsibility Assignment Procedure](../../iso5230_guide/2-relevant-tasks/2-resourced/) for preparation, and reflect security tasks as shown in the sample below.

**Sample**

```
| Task | Open Source PM | Security | IT | Developer |
|------|----------------|----------|----|-----------|
| Vulnerability scan tool operation | I | C | A/R | I |
| CVE detection and classification | I | A/R | C | I |
| CVSS score assessment | I | A/R | - | C |
| Patch application and verification | C | A | C | R |
| Customer notification decision | A | R | - | I |
| CVD external report response | C | A/R | - | I |
| Vulnerability record management | I | A/R | C | I |

R: Responsible / A: Accountable / C: Consulted / I: Informed
```

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.2.2 Effectively Resourced](../../iso5230_guide/2-relevant-tasks/2-resourced/)
- Related guide: [Enterprise Open Source Management Guide — 1. Organization](../../../opensource_for_enterprise/1-teams/)
