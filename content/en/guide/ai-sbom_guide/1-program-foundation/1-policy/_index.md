---
title: "3.1 Policy"
weight: 10
type: docs
categories: ["guide"]
tags: ["AI SBOM", "Policy"]
description: >
  Explains how to establish and communicate a written policy that governs AI SBOM compliance.
---

{{% alert title="Implementation phase" color="info" %}}
This clause is implemented in **Phase 1: Program Foundation**.
[View the full implementation roadmap](../../#phased-implementation-roadmap)
{{% /alert %}}

## 1. Clause Overview

In an organization without an AI SBOM policy, developers deploy AI systems without being aware of the
license obligations of models and datasets. In AI, what must be tracked goes beyond code. Model weights,
training datasets, and the Model Tree of models derived from other models each have their own licenses,
and non-standard licenses that restrict the purpose of use, such as the Llama Community License or the
RAIL family, are common. Missing these obligations leads to copyright disputes, violations of use
restrictions, and termination of business contracts.

To prevent this risk, 3.1 requires establishing a documented policy that governs AI SBOM compliance and
communicating it so that program participants are aware of its existence. The policy must reflect business
strategy, legal requirements in the relevant jurisdictions, and the level of risk appropriate for the use
case. All subsequent clauses (competence, license obligations, AI SBOM, governance, etc.) operate on top of
this policy.

## 2. What to Do

- Write and formalize a policy document that governs AI SBOM compliance.
- Define the scope of the policy (externally distributed AI systems, intake of external models and datasets, release of internal models, etc.).
- Reflect business strategy, legal requirements in the relevant jurisdictions, and the level of risk for each use case in the policy.
- Include in the policy a list of licenses allowed or prohibited for models and datasets. *([Guide recommendation]
  Because compliance with non-standard licenses is difficult to track automatically after the fact, decide it by policy at the time of intake.)*
- Establish and document a procedure for communicating the policy to program participants (development, legal, security, data, etc.).
- Retain records that demonstrate the communication took place (training completion, notification history, etc.).
- Include in the policy a procedure for reviewing the policy periodically and re-communicating it when it changes.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| 3.1 | A written policy shall exist that governs AI SBOM compliance, and it shall be internally communicated. The policy shall reflect business strategy, legal requirements in the relevant jurisdictions, and the level of risk appropriate for the use case. | **3.1.1** A documented policy meeting the above requirements<br>**3.1.2** A documented procedure that makes program participants aware of the existence of the policy (e.g., via training, internal wiki, or other practical communication method) |

<details><summary>View the original text</summary>

> **3.1 Policy**
> A written policy shall exist that governs AI System Bill of Materials (AI SBOM) compliance.
> The policy shall be internally communicated, and informed by business strategy, legal
> requirements in the relevant jurisdictions, and the level of risk appropriate for the use case.
>
> **Verification material(s):**
> - A documented policy meeting the above requirements
> - A documented procedure that makes program participants aware of the existence of the policy
>   (e.g. via training, internal wiki or other practical communication method)

</details>

## 4. How to Comply and Samples by Verification Material

### 3.1.1 Documented AI SBOM Policy

**How to Comply**

An AI SBOM policy is an official document containing the principles and procedures an organization uses to
manage the license and transparency obligations of its AI systems. The policy should include its purpose,
scope, roles and responsibilities, principles for reviewing model and dataset licenses, AI SBOM management,
response to transparency obligations, and review cycle. Since this document itself constitutes
verification material 3.1.1, manage it as an official document with its version and approval history recorded.

An organization that already has an ISO/IEC 5230 open source policy will find it more efficient to add an
AI section to the existing policy than to create a separate new one. Add that models and datasets are
subject to license review, how non-standard licenses are handled, and in what format the AI SBOM is managed.

A policy is not a document that is established once and left alone. Because the AI regulatory environment
changes quickly, review it at least once a year and record the change history.

**Considerations**

- **State the AI-specific scope**: State clearly in the policy that not only code but also model weights,
  training, testing, and verification datasets, and the derivation relationships in the Model Tree are subject to license review.
- **Allowed and prohibited license lists**: Divide model and dataset licenses into an allowed list and a
  prohibited list based on whether commercial use is permitted and on behavioral use restrictions, and
  include them in the policy in advance. *([Guide recommendation])*
- **Approval procedure**: The legal team or the AI governance lead gives final approval, and the approval date and approver are recorded.
- **Version control**: Maintain document versions and change history so that previous versions can be compared during an audit.
- **Periodic review**: Review at least once a year, and record the review completion date and reviewer.

**Sample**

Below is a sample of the scope and the allowed and prohibited license lists of an AI SBOM policy. This text
becomes a core component of verification material 3.1.1. Check the actual conditions of each license against
the license text, and then classify them according to the organization's use cases.

```
## 1. Purpose and Scope

This policy defines the compliance principles and procedures for the company to develop and
deploy AI systems safely and responsibly. It is designed to meet the requirements of
ISO/IEC 5230 (open source license compliance) and the OpenChain AI SBOM Compliance Guide.

Scope:
- All AI systems, models, and services distributed externally.
- Pre-trained models and datasets brought in from outside.
- Activities that release internal models externally.

## 2. Model and Dataset License Classification

Licenses of models and datasets being brought in are reviewed according to the classification
below. Licenses not in the classification are reviewed by the AI governance lead before intake.

- Allowed (commercial use permitted, no behavioral restrictions): Apache-2.0, MIT, BSD, CC-BY-4.0, etc.
- Conditionally allowed (use after review): Llama Community License, Gemma Terms of Use,
  OpenRAIL family, and other licenses that restrict the purpose or scale of use
- Prohibited (non-commercial only, etc.): e.g., using a CC-BY-NC dataset in a commercial product
```

---

### 3.1.2 Policy Awareness Procedure

**How to Comply**

Writing a policy document is not enough. You must establish and document a communication procedure so that
program participants actually become aware of the policy's existence. This communication procedure document
itself constitutes verification material 3.1.2. Because AI systems involve not only developers but also data,
legal, and security staff, design channels so that the policy reaches all of them.

For new hires, include an introduction to the AI SBOM policy in onboarding, and for existing employees, use
internal wiki posts and email notices. To demonstrate that the communication took place, retain evidence such
as notification history and training completion records for at least three years.

**Considerations**

- **Use multiple channels**: Use two or more channels, such as the internal wiki, email notices, and onboarding training.
- **Include AI-related roles**: Include dataset owners and model operators in the communication audience.
- **When the policy changes**: Have a separate procedure for notifying participants of changes immediately.
- **Retain evidence**: Retain notification history and training completion confirmations for at least three years.

**Sample**

Below is a sample policy communication email. Keeping a record of sending it provides evidence for verification material 3.1.2.

```
Subject: [AI Compliance] Notice of the AI SBOM Policy and Request to Review

To: Employees involved in AI system development, operation, and data
From: AI Compliance Officer

Hello,

Our AI SBOM compliance policy has been established (or revised).
All employees involved in using, bringing in, or deploying AI models and datasets
are asked to review and familiarize themselves with the policy document below.

- Policy document: [internal portal link]
- Key topics: model and dataset license classification, license obligation review procedure,
              AI SBOM management, response to transparency obligations
- Policy version: v1.0 (effective date: YYYY-MM-DD)

Contact: AI Compliance Officer (ai-compliance@company.com)
```

## 5. References

- License obligation review procedure: [3.5 License obligations](../../2-ai-extension/1-license-obligations/)
- Basic structure of an open source policy: [ISO/IEC 5230 Conformance Guide: §3.1.1 Policy](../../../iso5230_guide/1-program-foundation/1-policy/)
- AI license management strategy: [Enterprise Open Source Management Guide: AI Compliance](../../../opensource_for_enterprise/7-ai-compliance/)
