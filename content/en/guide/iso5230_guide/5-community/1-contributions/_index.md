---
title: "§3.5.1 Contributions"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "Contributions"]
description: >
---

## 1. Clause Overview

Many companies contribute code, documentation, bug reports, and more to external open source projects.
Contribution activities build community trust and expand technical influence, but they also carry the
risk of unintentionally disclosing company code or patents. §3.5.1 requires organizations that allow
external open source contributions to establish a documented policy and procedure governing contributions,
and to ensure that Program Participants are aware of their existence. This clause does not apply to
organizations that do not allow contributions, but if they do, all three verification materials must
be in place.

## 2. What to Do

- Decide whether the organization allows external open source contributions and specify this in the policy.
- If contributions are allowed, document a contribution policy including the types of contributions
  (code, documentation, bug reports, etc.), approval process, and copyright and patent handling policy.
- Establish and document a procedure for managing actual contributions from proposal through approval,
  submission, and recording.
- Establish a procedure for communicating the existence of the contribution policy to Program Participants.
- Record and retain the contribution history.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.5.1 | If an organization considers contributions to open source projects, then: a written policy shall exist that governs contributions to open source projects / the policy shall be internally communicated / a documented procedure shall exist that governs open source contributions. | **3.5.1.1** A documented open source contribution policy.<br>**3.5.1.2** A documented procedure that governs open source contributions.<br>**3.5.1.3** A documented procedure that makes all Program Participants aware of the existence of the open source contribution policy (e.g., via training, internal wiki, or other practical communication method). |

## 4. How to Comply and Samples by Verification Material

### 3.5.1.1 Open Source Contribution Policy

**How to Comply**

A policy governing the act of contributing to external open source projects must be documented. This
policy document is Verification Material 3.5.1.1. The contribution policy must include: (1) scope of
allowed contributions (code, documentation, bug reports, etc.), (2) contribution approval process,
(3) copyright handling (company-owned vs. individually-owned), (4) patent handling policy, (5) criteria
for signing a CLA (Contributor License Agreement), and (6) prohibited contribution items (trade secrets,
unpublished patents, etc.).

The policy can be included as a separate section in the Open Source Policy document or managed as an
independent contribution policy document. Even organizations that completely prohibit contributions
should explicitly document that "contributions are not permitted."

**Considerations**

- **Define contribution scope**: Specifically list the types of contributions allowed (bug fixes,
  feature additions, documentation writing, etc.).
- **Copyright attribution**: Specify in the policy whether copyright of contributions belongs to the
  company or to the individual.
- **Patent risk management**: When contributions may include company patents, make legal review mandatory.
- **CLA handling**: When an external project requires CLA signing, specify the signing authority and
  procedure in the policy.
- **Prohibited items**: Prohibit contributions containing trade secrets, unregistered patents, or
  third-party intellectual property.

**Sample**

The following is a sample of key items in an open source contribution policy.

```
## Open Source Contribution Policy

### Scope of Allowed Contributions
The company allows employees to contribute to external open source projects for business purposes.
The types of contributions allowed are as follows:
- Bug fixes and patch submissions
- Documentation improvements
- Feature additions (prior approval required)
- Bug reports and issue submissions

### Copyright and Patents
- Copyright of contributions created during working hours using company resources belongs to the company.
- If there is a possibility that company patents are included in the contribution, prior review by
  the legal team is required.

### Prohibited Items
Code containing the following items cannot be contributed:
- Trade secrets or confidential information
- Third-party intellectual property
- The company's unpublished patent technology

### CLA (Contributor License Agreement)
If an external project requires CLA signing, prior reporting to and approval from the Open Source
Program Manager is required.
```

---

### 3.5.1.2 Open Source Contribution Management Procedure

**How to Comply**

A procedure defining step-by-step how to handle actual contribution activities must be documented. This
procedure document is Verification Material 3.5.1.2. The procedure must include the following steps:
(1) contribution proposal and approval request, (2) legal and patent review (if necessary), (3) approval,
(4) contribution submission, and (5) contribution history recording. Depending on the scale or type of
contribution, it is possible to operate a simplified procedure (small bug fixes) and a formal procedure
(large-scale feature additions) separately.

**Considerations**

- **Procedure distinction by contribution scale**: Set scale-based criteria so that small bug fixes
  use simplified approval and large-scale feature additions go through formal legal review.
- **Retain contribution records**: Record and retain the contribution proposal, approval record, and
  submission link (PR/commit URL).
- **Escalation**: Include in the procedure an escalation path to the legal team when patent or copyright
  issues arise.

**Sample**

The following is a sample outline of an open source contribution management procedure.

```
[Open Source Contribution Management Procedure]

1. Contribution Proposal
   - The employee reports the contribution details (project name, contribution type, content
     summary) to the Open Source Program Manager.

2. Review and Approval
   - Small contributions (bug fixes, documentation improvements):
     The Open Source Program Manager confirms policy compliance and approves.
   - Large contributions (feature additions, core module contributions):
     The Open Source Program Manager gives final approval after the legal team's
     patent and copyright review.

3. CLA Handling (if applicable)
   - If the external project requires a CLA, process according to the approved CLA
     signing form.

4. Contribution Submission
   - Submit only the approved content.
   - Contribute using a company email or company-approved account.

5. Contribution Recording
   - Record and retain the contribution content, approver, submission date, and
     contribution URL (PR/commit link).
```

---

### 3.5.1.3 Contribution Policy Awareness Procedure

**How to Comply**

A procedure for communicating the open source contribution policy to all Program Participants so they
are aware of its existence must be documented. This procedure document is Verification Material 3.5.1.3.
It can be integrated with the §3.1.1.2 open source policy communication procedure by including the
contribution policy in it.

It is effective to combine new hire onboarding briefings on the contribution policy, internal wiki
posts, and email announcements for communication. Retain notification history and training completion
records to prove that communication took place.

**Considerations**

- **Include in onboarding**: Include the contribution policy briefing as a mandatory item in the new
  hire onboarding process.
- **Re-communication when policy is updated**: Immediately notify Program Participants when the
  contribution policy is changed.
- **Evidence retention**: Retain notification sending history and training completion certificates for
  at least 3 years.
- **Policy accessibility**: Post the contribution policy on the internal portal or wiki at all times
  so it can be checked at any time.

**Sample**

The following is a sample contribution policy communication email.

```
Subject: [Open Source] Open Source Contribution Policy Notice

To: All development-related employees
From: Open Source Program Manager

Hello,

We would like to inform you about the company's open source contribution policy.
All employees involved in contributing to external open source projects are requested
to review and familiarize themselves with the policy document at the link below.

- Policy document: [Internal portal link]
- Key contents: Scope of allowed contributions, approval procedure, copyright and
               patent handling policy
- Policy version: v1.0 (Effective date: YYYY-MM-DD)

If you wish to make a contribution, you must go through the prior approval procedure.
Inquiries: Open Source Program Manager (oss@company.com)

Thank you.
Open Source Program Manager
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 6. Contributions](../../../opensource_for_enterprise/6-contribution/)
- Related template: [Open Source Policy Template — §3 Open Source Contributions](../../../templates/1-policy/)
