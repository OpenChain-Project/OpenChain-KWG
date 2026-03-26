---
title: "§4.1.1 Policy"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "policy"]
description: >
---

## 1. Clause Overview

§4.1.1 corresponds to ISO/IEC 5230 §3.1.1 (License Compliance Policy), but the focus shifts to **Security Assurance**. A policy that systematically manages known and newly discovered vulnerabilities in open source components of the supplied software must be documented and communicated internally. The key difference from ISO/IEC 5230 §3.1.1 is the requirement for a **periodic review process for the policy itself and its communication method**. It is not enough to establish a policy; a review system must be in place to ensure the policy always remains valid and up to date.

## 2. What to Do

- Document and formalize a policy for managing security vulnerabilities in open source components included in the supplied software.
- Include vulnerability detection, assessment, response, and notification principles, as well as a Coordinated Vulnerability Disclosure (CVD) policy.
- Establish and document a procedure for communicating the policy to Program Participants (developers, security personnel, legal, IT, etc.).
- **Specify in the policy a review process that periodically reviews the policy and its communication method to keep them current and valid.**
- Record the review completion date, reviewer, and change history in the document.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.1.1 | A written open source software security assurance policy shall exist that governs open source software security assurance of the supplied software. The policy shall be internally communicated. **The policy and its method of communication shall have a review process to ensure they remain current and valid.** | **4.1.1.1** A documented open source software security assurance policy<br>**4.1.1.2** A documented procedure that makes Program Participants aware of the security assurance policy |

> **§4.1.1 Policy**
> A written open source software security assurance policy shall exist that
> governs open source software security assurance of the supplied software.
> The policy shall be internally communicated. The policy and its method of
> communication shall have a review process to ensure they remain current and
> valid.
>
> **Verification Material(s):**
> 4.1.1.1 A documented open source software security assurance policy.
> 4.1.1.2 A documented procedure that makes program participants aware of the
> security assurance policy.

## 4. How to Comply and Samples per Verification Material

### 4.1.1.1 Documented Security Assurance Policy

**How to Comply**

If an Open Source Policy for ISO/IEC 5230 is already in place, you can either add a security assurance section to that policy or create a separate security assurance policy document. Both approaches satisfy Verification Material 4.1.1.1.

The policy should include: ① principles for identifying, tracking, and responding to security vulnerabilities; ② risk assessment criteria based on CVSS and remediation timelines; ③ Coordinated Vulnerability Disclosure (CVD) policy; ④ post-deployment monitoring principles; and ⑤ periodic review cycle and reviewer. The key difference from ISO/IEC 5230 §3.1.1.1 is that the **periodic review process must be explicitly stated within the policy document**.

**Considerations**

- **Integration with 5230 Policy**: It can be managed in an integrated manner by expanding the §5 Security Vulnerability Response section of the existing ISO/IEC 5230 policy.
- **Specify Review Cycle**: Include a clause stating that a minimum of one annual periodic review is conducted, with an immediate review triggered by changes in the threat environment or legal requirements.
- **Adopt CVSS Criteria**: Use CVSS (Common Vulnerability Scoring System) for vulnerability severity assessment and specify remediation timelines in the policy (e.g., Critical: 7 days, High: 30 days).
- **Include CVD Policy**: Include a CVD procedure in the policy for collaborating confidentially to resolve externally reported vulnerabilities before public disclosure.
- **Version Control**: Record the policy version number, change history, and review completion date.

**Sample**

The following is a sample of the security assurance section of an open source policy.

```
## §5 Open Source Security Assurance

### 5.1 Purpose
The company systematically identifies and responds to security vulnerabilities
in open source components included in the supplied software to minimize security risks.

### 5.2 Vulnerability Response Principles
Remediation timeline criteria for known vulnerabilities (CVEs) are as follows:
- Critical (CVSS 9.0–10.0): Patch or mitigation within 7 days
- High (CVSS 7.0–8.9): Patch or mitigation within 30 days
- Medium (CVSS 4.0–6.9): Establish patch plan within 90 days
- Low (CVSS 0.1–3.9): Address in next scheduled update

### 5.3 Coordinated Vulnerability Disclosure (CVD) Policy
When a vulnerability is reported externally, it will be resolved in cooperation
with the reporter before public disclosure.
Vulnerability reporting channel: security@company.com

### 5.4 Policy Review
This policy and its communication method shall be reviewed at least annually
to remain current and valid.
The review completion date and reviewer shall be recorded in the document.
```

---

### 4.1.1.2 Documented Procedure for Security Assurance Policy Awareness

**How to Comply**

A procedure for communicating the security assurance policy to Program Participants must be documented, in the same manner as the policy communication procedure for ISO/IEC 5230 (§3.1.1.2). The additional requirement of §4.1.1 is that the communication procedure itself must also be periodically reviewed to maintain its validity. You can either add security assurance policy content to the existing 5230 policy communication procedure, or establish a separate security policy communication procedure.

**Considerations**

- **Reuse 5230 Procedure**: Respond efficiently by adding the security assurance policy to existing open source policy communication channels (onboarding, internal wiki, email).
- **Review the Communication Procedure**: Specify the review cycle (annually) and the reviewer in the communication procedure document to manage the validity of the procedure itself.
- **Retain Evidence**: Keep notification history and training completion records for a minimum of 3 years.

**Sample**

```
Subject: [Security] Open Source Security Assurance Policy Notice and Acknowledgment Request

To: All employees in development/deployment/security-related roles
From: Open Source Program Manager

Dear all,

The company's open source security assurance policy has been established (or revised).
Please review and familiarize yourself with the policy document at the link below.

- Policy document: [Internal portal link]
- Key content: Vulnerability response principles, CVSS-based remediation timelines, CVD policy
- Policy version: v1.0 (Effective date: YYYY-MM-DD) / Next review scheduled: YYYY-MM-DD

Inquiries: Open Source Program Manager (oss@company.com)
```

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.1.1 Policy](../../iso5230_guide/1-program-foundation/1-policy/)
- Related guide: [Enterprise Open Source Management Guide — 2. Policy](../../../opensource_for_enterprise/2-policy/)
- Related template: [Open Source Policy Template](../../../templates/1-policy/)
