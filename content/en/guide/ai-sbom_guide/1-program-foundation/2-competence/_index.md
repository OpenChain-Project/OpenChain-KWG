---
title: "3.2 Competence"
weight: 20
type: docs
categories: ["guide"]
tags: ["AI SBOM", "Competence", "Roles"]
description: >
  Explains how to define the roles and responsibilities of an AI SBOM compliance program, and how to
  identify and assess the competence required for each role.
---

{{% alert title="Implementation phase" color="info" %}}
This clause is implemented in **Phase 1: Program Foundation**.
[View the full implementation roadmap](../../#phased-implementation-roadmap)
{{% /alert %}}

## 1. Clause Overview

If the policy (3.1) sets out what must be done, competence ensures there are people who can do it. AI SBOM
compliance requires broader knowledge than open source compliance, which dealt only with code licenses.
Practitioners must judge the licenses of model weights and datasets, interpret model cards, and understand
emerging AI regulations and the use restrictions of non-standard licenses.

3.2 requires identifying the roles and responsibilities that affect the performance of the program,
determining the competence needed for each role, and ensuring that participants have that competence.
The specification states that, where relevant to the use case, participants must have competence in the
functions of governance, security, safety, privacy, development, and supplier management.

## 2. What to Do

- Identify and document the roles that affect the performance of the program and their responsibilities.
- Define the competence each role needs (governance, security, safety, privacy, development, supplier management).
- Add AI-specific competence (model and dataset licenses, model card interpretation, AI regulation) to the competence for each role.
- Ensure participants are competent on the basis of education, training, and experience.
- Retain evidence of competence assessments, and check periodically to keep the list up to date.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| 3.2 | The organization shall identify the roles and responsibilities that affect the performance and effectiveness of the program, determine the competence each role needs, and ensure that participants have it. Where relevant to the use case, participants shall have competence in the functions of governance, security, safety, privacy, development, and supplier management. | **3.2.1** A documented list of roles with the responsibilities of each participant stated<br>**3.2.2** A document that identifies the competencies for each role<br>**3.2.3** Documented evidence of assessed competence for each participant (including periodic checks to keep the list up to date) |

<details><summary>View the original text</summary>

> **3.2 Competence**
> The organisation shall identify the roles and the corresponding responsibilities of those roles
> that affect the performance and effectiveness of the program; determine the necessary competence
> of program participants fulfilling each role (Governance, Security, Safety, Privacy, Development,
> Supplier management if relevant to the use case); ensure that program participants are competent on
> the basis of appropriate education, training, and/or experience; and retain appropriate documented
> information as evidence of competence.
>
> **Verification material(s):**
> - A documented list of roles with corresponding responsibilities for the different participants in
>   the program.
> - A document that identifies the competencies for each role.
> - Documented evidence of assessed competence for each program participant, with periodic checks to
>   keep the list up-to-date.

</details>

## 4. How to Comply and Samples by Verification Material

### 3.2.1 List of Roles and Responsibilities

**How to Comply**

Document the roles involved in the program and the responsibilities of each role. In addition to general
open source roles, an AI SBOM program includes AI governance and model and dataset review roles. Stating
responsibilities specifically makes the later competence definition (3.2.2) and assignment of
responsibilities (3.8.4) clear.

**Sample**

```
| Role | Responsibilities |
|------|------|
| AI governance lead | Approves the framework, judges regulatory obligations, leads periodic reviews |
| AI SBOM verification owner | Creates, reviews, and approves the AI SBOM; reflects inbound materials |
| License review owner | Judges license obligations of models, datasets, and the Model Tree |
| Data owner | Manages the provenance and licenses of training and verification datasets |
```

---

### 3.2.2 Required Competence by Role

**How to Comply**

Define the competence each role must have. Among the six functions listed in the specification (governance,
security, safety, privacy, development, supplier management), determine which apply to the role and the use
case, and add AI-specific competence. For example, the license review owner needs the competence to interpret
the use restrictions of non-standard licenses (Llama Community, OpenRAIL).

**Sample**

```
| Role | Required competence |
|------|----------|
| AI governance lead | Governance, understanding of AI regulation (EU AI Act, Korea's AI Basic Act (AI 기본법)), risk management |
| AI SBOM verification owner | Development, SPDX and CycloneDX formats, model card interpretation, operating generation tools |
| License review owner | Supplier management, interpreting open source and non-standard licenses, Model Tree tracking |
| Data owner | Privacy, dataset licenses, provenance management |
```

---

### 3.2.3 Evidence of Competence Assessment

**How to Comply**

Assess whether each participant actually has the competence the role requires, and retain the evidence.
Training completion, qualifications, and practical experience serve as the basis. Because AI regulations
and licenses change quickly, check the list periodically to keep it up to date.

**Considerations**

- **Diversify the basis of assessment**: Use not only training completion but also work outputs (e.g.,
  license review records) as evidence of competence.
- **Periodic checks**: Re-examine competence requirements when new regulations take effect or new license types appear.
- **Fill gaps**: If an assessment reveals a competence gap, fill it with training or external expertise ([3.8 Resources](../../3-relevant-tasks/2-resourced/)).

**Sample (Competence Assessment Record)**

```
| Participant (job) | Role | Assessment item | Basis of assessment | Result | Assessment date |
|-------------|------|----------|----------|------|--------|
| Lee OO | AI SBOM verification owner | Writing a CycloneDX ML-BOM | Internal training + work outputs | Met | 2026-03-10 |
| Park OO | License review owner | Interpreting non-standard licenses | 5 years of OSS legal experience | Met | 2026-03-10 |
```

## 5. References

- Procedure for assigning resources to roles: [3.8 Effectively resourced](../../3-relevant-tasks/2-resourced/)
- Securing participant awareness: [3.3 Awareness](../3-awareness/)
- ISO/IEC 5230 competence example: [ISO/IEC 5230 Conformance Guide: §3.1.2 Competence](../../../iso5230_guide/1-program-foundation/2-competence/)
