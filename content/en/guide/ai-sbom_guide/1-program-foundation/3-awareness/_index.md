---
title: "3.3 Awareness"
weight: 30
type: docs
categories: ["guide"]
tags: ["AI SBOM", "Awareness", "Training"]
description: >
  Explains how to ensure that program participants are aware of the AI SBOM policy and objectives, their
  own contribution, and the implications of non-conformance.
---

{{% alert title="Implementation phase" color="info" %}}
This clause is implemented in **Phase 1: Program Foundation**.
[View the full implementation roadmap](../../#phased-implementation-roadmap)
{{% /alert %}}

## 1. Clause Overview

If competence (3.2) deals with "can they do it," awareness deals with "do they know why they must do it."
It is not enough for participants to know only that the policy exists. Compliance actually works only when
they also know how their work contributes to the program and what happens if they do not follow it.

3.3 requires ensuring that program participants are aware of four things: the AI SBOM policy, relevant
business objectives, their own contribution to the effectiveness of the program, and the implications of
not following the program's requirements. In AI, the implications of non-compliance extend beyond copyright
disputes to regulatory violations and violations of use restrictions, so make sure participants are clearly
aware of this.

## 2. What to Do

- Make sure participants know about the AI SBOM policy and where to find it.
- Communicate the relevant business objectives (building trust, regulatory compliance, meeting supply chain requirements).
- Inform each participant how their work contributes to the program.
- Inform participants of the implications of non-compliance (regulatory violations, contract termination, violations of use restrictions).
- Assess participants' awareness and retain the evidence.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| 3.3 | The organization shall ensure that program participants are aware of the AI SBOM policy, relevant business objectives, their own contribution to the effectiveness of the program, and the implications of not following the requirements. | **3.3.1** Documented evidence of assessed awareness for the participants, which should include the program's objectives, one's own contribution, and the implications of non-conformance |

<details><summary>View the original text</summary>

> **3.3 Awareness**
> The organisation shall ensure that the program participants are aware of: the AI SBOM policy;
> relevant business objectives; their contribution to the effectiveness of the program; and the
> implications of not following the Program's requirements.
>
> **Verification material(s):**
> - Documented evidence of assessed awareness for the program participants, which should include: the
>   program's objectives; one's contribution within the program; and the implications of program
>   non-conformance.

</details>

## 4. How to Comply and Samples by Verification Material

### 3.3.1 Evidence of Assessed Participant Awareness

**How to Comply**

Assess whether participants actually understand the four elements of awareness, and keep the evidence. If
policy communication (3.1.2) proves "we informed them," the awareness assessment proves "they understood."
Assess through post-training quiz, signed acknowledgment, interviews, and similar methods. Make sure the
three elements the specification states in the verification material (the program's objectives, one's own
contribution, and the implications of non-conformance) are not left out of the assessment.

**Considerations**

- **Include all four elements**: In addition to policy awareness, include objectives, contribution, and the
  implications of non-conformance in the assessment items. If any one is missing, it may be pointed out in a certification audit.
- **Emphasize AI-specific implications**: Include regulatory violations (EU AI Act, Korea's AI Basic Act (AI 기본법))
  and violations of non-standard license use restrictions in the implications of non-compliance.
- **Differentiate by role**: Data owners and developers contribute differently, so tailor the assessment content to each role.
- **Retain evidence**: Retain assessment results and signed acknowledgments for use as verification materials.

**Sample (Awareness Assessment Record)**

```
| Participant (job) | Policy awareness | Objectives awareness | Contribution awareness | Non-conformance implications awareness | Assessment method | Assessment date |
|-------------|:--------:|:--------:|:--------:|:---------------:|----------|--------|
| Lee OO (development) | Met | Met | Met | Met | Post-training check | 2026-03-10 |
| Park OO (data) | Met | Met | Met | Met | Interview + signature | 2026-03-11 |
```

Example of a signed acknowledgment form:

```
I acknowledge that I have been informed of and understand the company's AI SBOM compliance
policy, the program's objectives, my own contribution, and the implications of non-compliance
(regulatory violations, violations of license use restrictions, contract termination).

Name: ____  Job: ____  Signature: ____  Date: ____
```

## 5. References

- Policy and communication procedure: [3.1 Policy](../1-policy/)
- Competence by role: [3.2 Competence](../2-competence/)
- ISO/IEC 5230 awareness example: [ISO/IEC 5230 Conformance Guide: §3.1.3 Awareness](../../../iso5230_guide/1-program-foundation/3-awareness/)
