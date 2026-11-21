---
title: "3.8 Effectively Resourced"
weight: 20
type: docs
categories: ["guide"]
tags: ["AI SBOM", "Resources", "Accountability"]
description: >
  Explains how to assign accountability, staff, funding, and legal expertise to the AI SBOM compliance program, and how to remediate non-compliance.
---

{{% alert title="Implementation phase" color="info" %}}
This clause is implemented in **Phase 3: Operating Structure**.
[View the full implementation roadmap](../../#phased-implementation-roadmap)
{{% /alert %}}

## 1. Clause Overview

If competence (3.2) defines "who must be able to do what," effective resourcing attaches actual people, time, and budget to those roles so that the program works. If policies and procedures exist only on paper with no resources, compliance exists in name only.

3.8 requires assigning accountability for program tasks and allocating sufficient resources. There are five verification materials, covering identification of role owners, provision of staff and funding, access to legal expertise, a procedure for assigning internal responsibilities, and a procedure for remediating non-compliance. The specification cites the resource-related sections (B.4.2, B.4.6) and the human oversight section (B.9.3) of Annex B of ISO/IEC 42001 as references.

## 2. What to Do

- Assign accountability to ensure the successful execution of program tasks.
- Allocate sufficient time and funding to the tasks.
- Make legal expertise on AI SBOM compliance accessible to those who need it.
- Have a process for reviewing and updating the policy and tasks.
- Have a process for reviewing and remediating non-compliant cases.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| 3.8 | Assign accountability for program tasks, allocate sufficient time and funding, and provide access to legal expertise and a procedure for remediating non-compliance. | **3.8.1** Document identifying the persons, groups, or functions in program roles<br>**3.8.2** The identified roles are staffed and adequately funded<br>**3.8.3** Identification of expertise available to address AI SBOM compliance (internal or external)<br>**3.8.4** Documented procedure that assigns internal responsibilities for AI SBOM compliance<br>**3.8.5** Documented procedure for handling the review and remediation of non-compliant cases |

<details><summary>View original English text</summary>

> **3.8 Effectively resourced**
> Identify and Resource Program Task(s): assign accountability to ensure the successful execution of
> program tasks; program tasks are sufficiently resourced (time and adequate funding allocated); a
> process exists for reviewing and updating the policy and supporting tasks; legal expertise
> pertaining to AI SBOM Compliance is accessible to those who may need such guidance; and a process
> exists for the resolution of AI SBOM Compliance issues.
>
> **Verification material(s):**
> - Document with name of persons, group or function in program role(s) identified.
> - The identified program roles have been properly staffed and adequate funding provided.
> - Identification of expertise available to address AI SBOM Compliance matters which could be
>   internal or external.
> - A documented procedure that assigns internal responsibilities for AI SBOM Compliance.
> - A documented procedure for handling the review and remediation of non-compliant cases.
>
> See, e.g., Sections B.4.2 and B.4.6 of Annex B of ISO/IEC 42001. Section B.9.3 also provides
> guidance to determine if human resources for human oversight should be incorporated.

</details>

## 4. How to Comply and Samples by Verification Material

### 3.8.1 Document Identifying Role Owners

**How to Comply**

Identify in a document, by name, the persons, groups, or functions that hold program roles. Recording the job title as well is more stable in case people move. In addition to general open source roles, an AI SBOM program needs an AI governance lead, an AI SBOM verification owner, and a model and dataset license review owner.

**Sample**

```
| Role | Owner (job title) | Contact |
|------|-------------|--------|
| AI governance lead | Kim OO (AI Ethics and Governance Lead) | ai-gov@company.com |
| AI SBOM verification owner | Lee OO (Platform Engineer) | sbom@company.com |
| License review owner | Park OO (Open Source Legal) | oss-legal@company.com |
| Security owner | Choi OO (Product Security) | psirt@company.com |
```

---

### 3.8.2 Staffing and Funding

**How to Comply**

Show that the identified roles are actually staffed and budgeted. Record the allocation rate (e.g., 30%) and the basis for the annual budget. Because AI SBOM compliance takes time for model and dataset review and tool operation, estimate the effort for each role realistically.

**Considerations**

- **State the allocation rate**: For people with multiple duties, record the share of time allocated to AI SBOM work.
- **Tool budget**: Include the cost of AI SBOM generation and management tools and of legal advice in the budget.

**Sample**

```
| Role | Owner | Allocation | Annual budget basis | Approver/Approval date |
|------|--------|----------|---------------|--------------|
| AI governance lead | Kim OO | 30% | Personnel + regulatory advice | CTO / 2026-01-15 |
| AI SBOM verification owner | Lee OO | 50% | Personnel + tool operation | CTO / 2026-01-15 |
```

---

### 3.8.3 Access to Legal Expertise

**How to Comply**

Make legal expertise on AI SBOM compliance accessible to those who need it. Interpreting non-standard licenses and judging regulatory obligations is the job of legal counsel, so specify the access path, whether internal legal or an external law firm. Also define the escalation criteria (which matters are escalated to legal).

**Sample**

```
- Internal: Open source legal owner (Park OO), first-line license review
- External: AI and IP team of ○○ Law Firm, non-standard license disputes and regulatory interpretation
- Escalation criteria: licenses not on the policy's prohibited or conditional lists, judgments on
  downstream disclosure obligations, matters where a regulation newly applies
```

---

### 3.8.4 Procedure for Assigning Internal Responsibilities

**How to Comply**

Document the procedure for assigning internal responsibilities for AI SBOM compliance. Unclear responsibilities lead to gaps, so a RACI matrix that separates Responsible (R), Accountable (A), Consulted (C), and Informed (I) for each task is effective.

**Sample (RACI matrix)**

| Task | AI governance lead | AI SBOM verification owner | License review owner | Security owner |
|------|:---:|:---:|:---:|:---:|
| AI SBOM generation | I | R | C | I |
| License obligation review | A | C | R | I |
| Transparency obligation review | A | C | R | I |
| Vulnerability monitoring | I | C | I | R |
| Periodic framework review | R/A | C | C | C |

*R Responsible, A Accountable, C Consulted, I Informed*

---

### 3.8.5 Procedure for Reviewing and Remediating Non-Compliance

**How to Comply**

Have a procedure for reviewing and remediating non-compliant cases (e.g., adopting a model under a prohibited license, a missing AI SBOM, failure to meet transparency obligations). Vary the handling deadline by severity. With AI, license problems sometimes surface after a model has already been deployed, so prepare a remediation path that includes withdrawal or replacement.

**Sample (remediation procedure and severity criteria)**

```
Remediation procedure: identify and report → assess severity → analyze root cause → take corrective action → prevent recurrence → record

| Severity | Example | Handling deadline |
|--------|------|----------|
| High | A model under a prohibited license is included in an externally distributed product | Immediate response (isolate and review replacement within 48 hours) |
| Medium | Inbound model missing from the AI SBOM | Supplement within 7 days |
| Low | Some model card metadata not filled in | Handle at the next periodic review |
```

## 5. References

- Competence definitions by role: [3.2 Competence](../../1-program-foundation/2-competence/)
- Governance review linked to non-compliance remediation: [3.10 Governance](../../4-governance/1-governance/)
- ISO/IEC 5230 example for resourcing: [ISO/IEC 5230 Conformance Guide: 3.2.2 Effective Resources](../../../iso5230_guide/2-relevant-tasks/2-resourced/)
