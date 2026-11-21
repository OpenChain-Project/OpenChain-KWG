---
title: "3.4 Program Scope"
weight: 40
type: docs
categories: ["guide"]
tags: ["AI SBOM", "Scope"]
description: >
  Explains how to clearly declare the scope and limits to which an AI SBOM compliance program applies.
---

{{% alert title="Implementation phase" color="info" %}}
This clause is implemented in **Phase 1: Program Foundation**.
[View the full implementation roadmap](../../#phased-implementation-roadmap)
{{% /alert %}}

## 1. Clause Overview

The program scope determines how far compliance applies. If the scope is vague, it becomes unclear for which
AI systems an SBOM must be created and which models' licenses must be reviewed. Only when the scope is declared
first do all subsequent clauses know what they apply to.

3.4 requires declaring the scope that applies to each program. Scope can differ from one organization to
another. Some organizations cover a single product line, while others cover an entire department or the
entire organization. In AI, the scope decision covers not only internally developed models but also models
and datasets brought in from outside and the external release of internal models.

## 2. What to Do

- Determine what the program applies to (externally distributed AI systems, intake of external models and datasets, release of internal models, etc.).
- Record what is excluded and the reasons for the exclusion.
- Keep the scope statement consistent with the scope in the policy document.
- Review and update the scope periodically as the business environment changes.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| 3.4 | The scope that applies shall be declared for each program. | **3.4.1** A written statement that clearly defines the scope and limits of the program |

<details><summary>View the original text</summary>

> **3.4 Program scope**
> Different programs may be governed by different levels of scope. For example, a program could govern
> a single product line, an entire department, or an entire organisation. The scope designation needs
> to be declared for each program.
>
> **Verification material(s):**
> - A written statement that clearly defines the scope and limits of the program.

</details>

## 4. How to Comply and Samples by Verification Material

### 3.4.1 Program Scope Statement

**How to Comply**

Write a statement of the scope and limits of the program. State clearly what is covered and what is excluded,
and, for exclusions, the reasons. For an AI SBOM program, declaring what is covered by material type and by
activity makes the scope clear. The table below is an example of organizing the scope.

**Table 1.** Example of an AI SBOM program scope declaration

| Category | Applies | Notes |
|---|---|---|
| AI systems, models, and services distributed externally | Applies | Obligation to create an AI SBOM and review licenses |
| Pre-trained models brought in from outside | Applies | Reflected in the AI SBOM as inbound materials |
| Datasets brought in from outside | Applies | License and provenance review |
| External release of internal models | Applies | Review of the release license and transparency obligations |
| Models for internal experiments (not distributed externally) | Conditionally excluded | Applicability decided by separate review |

**Considerations**

- **Consistency with the policy**: The scope statement must not conflict with the scope in [3.1 Policy](../1-policy/).
- **Reasons for exclusion**: Record the reasons for excluded items. Even a model for internal experiments
  comes into scope when it moves to external distribution, so have a review procedure for the point of that change. *([Guide recommendation])*
- **Periodic review**: Update the scope when a new product line or a new AI service is created.

**Sample (Scope Statement)**

```
## AI SBOM Compliance Program Scope

### In scope
This program applies to all AI systems, models, and services that the company distributes
externally, and to pre-trained models and datasets brought in from outside. It also covers
activities that release internal models externally.

### Out of scope
Models used only for internal experiments and research and not distributed externally are
excluded. However, if such a model moves to external distribution, it goes through the intake
review procedure and is brought into scope.

### Review cycle
The scope is reviewed and updated at least once a year as the business environment changes.
```

## 5. References

- Scope of the policy: [3.1 Policy](../1-policy/)
- AI SBOM for in-scope materials: [3.9 AI SBOM](../../2-ai-extension/3-ai-sbom/)
- ISO/IEC 5230 scope example: [ISO/IEC 5230 Conformance Guide: §3.1.4 Program Scope](../../../iso5230_guide/1-program-foundation/4-scope/)
