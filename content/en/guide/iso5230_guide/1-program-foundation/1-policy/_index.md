---
title: "§3.1.1 Policy"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "policy"]
description: >
---

## 1. Clause Overview

A company without an Open Source Policy risks distributing software while developers are unaware of their
open source license obligations. This can lead to serious legal and business risks, such as copyright
infringement lawsuits, mandatory source code disclosure, and termination of business contracts. §3.1.1
requires organizations to establish a documented policy governing open source license compliance for
supplied software and to communicate it so that all Program Participants within the organization are
aware of the policy's existence. This clause forms the foundation of the entire ISO/IEC 5230 program;
all subsequent clauses (competence, processes, artifacts, etc.) operate on top of this policy.

## 2. What to Do

- Write and formalize a policy document governing open source license compliance.
- Clearly define the scope of the policy (supplied software, contribution activities, internal releases, etc.).
- Include principles for open source use, contribution, distribution, SBOM management, and security vulnerability response in the policy.
- Establish and document a procedure for communicating the policy to Program Participants (developers, legal, IT, security, etc.).
- Retain records (training completion records, notification history, etc.) that demonstrate the communication took place.
- Include a procedure in the policy for periodically reviewing it and re-communicating it upon changes.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.1.1 | A written open source policy shall exist that governs open source license compliance of the supplied software. The policy shall be internally communicated. | **3.1.1.1** A documented open source policy.<br>**3.1.1.2** A documented procedure that makes Program Participants aware of the existence of the open source policy (e.g., via training, internal wiki, or other practical communication method). |

## 4. How to Comply and Samples by Verification Material

### 3.1.1.1 Documented Open Source Policy

**How to Comply**

An Open Source Policy is an official document containing the principles and procedures for a company to
use open source software safely and effectively. The policy document must include key items such as purpose,
scope, roles and responsibilities, principles for open source use, contribution, and distribution, SBOM
management, security vulnerability response, and training and review cycles. Since this document itself
constitutes Verification Material 3.1.1.1, it must be managed as an official document with version and
approval history recorded.

When establishing the policy, the company's business environment and software supply chain characteristics
must be reflected. For example, product companies and service companies that distribute software externally
may differ in the scope of their obligation to generate Compliance Artifacts, so the scope must be clearly
defined. The policy should go through a review by the legal team or OSRB (Open Source Review Board) and
be approved by senior management or an authorized department head.

A policy is not a document that is established once and left alone. It should be reviewed at least once a
year to reflect changes in ISO/IEC 5230 requirements, the emergence of new license types, and legal
environment changes, with the change history recorded in the document.

**Considerations**

- **Items to include**: Include all of the following in the policy: open source use, external contributions,
  internal project releases, SBOM management, and security vulnerability response principles.
- **Scope definition**: Clearly distinguish the scope to which the policy applies, such as externally
  distributed software, internally used software, and contribution activities.
- **Approval process**: Final approval by OSRB or the head of the legal team or above, with the approval
  date and approver recorded in the document.
- **Version control**: Maintain document version numbers and change history so that previous versions can
  be compared during audits.
- **Periodic review**: Review the policy at least once a year, recording the completion date and reviewer.

**Sample**

The following is a sample of the Purpose and Scope section of an Open Source Policy document. This text
itself becomes a key component of Verification Material 3.1.1.1 (documented open source policy).

```
## 1. Purpose and Scope

### 1.1 Purpose

This policy provides the principles and procedures for the company to use open source software
safely and effectively. The main purposes of the policy are as follows:

1. Open Source License Compliance:
   Comply with the license obligations of open source components included in supplied software
   and meet related legal requirements.
2. Open Source Security Assurance:
   Identify security vulnerabilities in open source components included in supplied software and
   minimize security risks through appropriate response measures.

These principles are designed to meet the requirements of ISO/IEC 5230 (Open Source License Compliance)
and ISO/IEC 18974 (Open Source Security Assurance).

### 1.4 Scope

This policy applies to all software projects developed, distributed, or used by the company.

- All supplied software provided or distributed externally.
- Activities contributing to external open source projects.
- Activities releasing internal projects as open source.

However, open source used solely for internal purposes may have the applicability of this policy
determined through a separate review procedure.

The scope of the policy is periodically reviewed and updated in accordance with changes in the
company's business environment.
```

---

### 3.1.1.2 Documented Procedure for Policy Awareness

**How to Comply**

Writing a policy document alone is not sufficient. A procedure for communicating the policy must be
established and documented so that Program Participants (all employees involved in developing, distributing,
or contributing to software) can actually become aware of the policy's existence. The communication
procedure document must specifically state through which channels, when, and to whom the policy is
communicated. This communication procedure document itself is Verification Material 3.1.1.2.

It is effective to combine multiple channels for communication. For new employees, include an open source
policy briefing in the onboarding process. For existing employees, use internal wiki posts and email
announcements. The procedure should also include a step for immediately notifying changes when the policy
is updated. To prove that communication took place, retain evidence such as notification sending history,
training completion records, and policy acknowledgment signatures for at least 3 years.

**Considerations**

- **Use multiple channels**: Use two or more channels such as internal wiki, email announcements, and
  onboarding training to increase the effectiveness of communication.
- **New hires**: Include an open source policy briefing as a mandatory item in the onboarding process.
- **Policy updates**: Establish a separate procedure for immediately notifying Program Participants of
  changes when the policy is updated.
- **Evidence retention**: Retain notification history, training completion certificates, and policy
  acknowledgment signatures for at least 3 years.
- **Accessibility**: Post the policy document on the internal portal or wiki at all times so that
  participants can check it at any time.

**Sample**

The following is a sample policy communication notification email. Retaining the sending history can
serve as evidence for Verification Material 3.1.1.2.

```
Subject: [Open Source] Open Source Policy Notice and Acknowledgment Request

To: All development/distribution-related employees
From: Open Source Program Manager

Hello,

The company's open source policy has been established (or revised).
All employees involved in using, contributing to, or distributing open source software are
requested to review and familiarize themselves with the policy document at the link below.

- Policy document: [Internal portal link]
- Key contents: Open source use principles, license compliance procedures,
               SBOM management, security vulnerability response principles
- Policy version: v1.0 (Effective date: YYYY-MM-DD)

For inquiries about the policy content, please contact the Open Source Program Manager
(oss@company.com).

Thank you.
Open Source Program Manager
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 2. Policy](../../../opensource_for_enterprise/2-policy/)
- Related template: [Open Source Policy Template](../../../templates/1-policy/)
