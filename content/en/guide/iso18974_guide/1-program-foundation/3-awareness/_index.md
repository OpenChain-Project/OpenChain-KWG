---
title: "§4.1.3 Awareness"
weight: 30
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "awareness"]
description: >
---

## 1. Clause Overview

§4.1.3 has the same Verification Material structure as ISO/IEC 5230 §3.1.3 (Awareness). It requires that awareness of program objectives, how individuals contribute to the program, and the implications of non-compliance be assessed and recorded for Program Participants. The difference from 5230 is that the **focus of the awareness assessment shifts to Security Assurance**. Participants must be aware not only of license compliance but also of the vulnerability management process, CVD procedures, and CVSS-based response criteria.

## 2. What to Do

- Confirm that Program Participants understand the objectives of the open source security assurance program (vulnerability detection, assessment, response, and notification).
- Assess whether each participant is aware of how their role contributes to the security assurance framework.
- Assess awareness of the legal, business, and security implications of failing to comply with the vulnerability response process.
- Record and retain the results of awareness assessments as documentation.
- Provide additional training to participants with gaps and retain the results of re-assessments.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.1.3 | The organization shall ensure that program participants are aware of: the existence and location of the security assurance policy / relevant security assurance objectives / their contribution to the effectiveness of the program / the implications of not following the program's requirements | **4.1.3.1** Documented evidence of assessed awareness for the program participants — which shall include the program's objectives, contributions within the program, and implications of failing to follow the program's requirements |

> **§4.1.3 Awareness**
> The organization shall ensure that the program participants are aware of:
> - The open source software security assurance policy and where to find it;
> - Relevant open source software security assurance objectives;
> - Their contribution to the effectiveness of the program; and
> - The implications of not following the program's requirements.
>
> **Verification Material(s):**
> 4.1.3.1 Documented evidence of assessed awareness for the program
> participants - which shall include the program's objectives, contributions
> within the program, and implications of failing to follow the program's
> requirements.

## 4. How to Comply and Samples per Verification Material

### 4.1.3.1 Evidence of Assessed Awareness for Program Participants

**How to Comply**

The basic approach is the same as ISO/IEC 5230 §3.1.3.1, but the awareness assessment questions must focus on **Security Assurance**. The three core awareness items are: ① the objectives of the security assurance program (vulnerability identification, assessment, response, and CVD); ② how one's own role contributes to the security framework; and ③ the security, legal, and business risks of non-compliance with the process.

The method for recording and retaining assessment results as documentation is the same as for 5230. Conduct a minimum annual periodic assessment, and perform an initial assessment for new participants immediately upon joining.

**Considerations**

- **Design security-specific questions**: Include content specific to security assurance in the assessment questions, such as vulnerability response procedures, CVSS criteria, and CVD policy.
- **Role-specific in-depth assessment**: For security personnel, assess awareness up to technical vulnerability analysis; for developers, assess awareness of secure coding practices as well.
- **Assessment cycle and evidence retention**: Conduct assessments at a minimum annually and immediately upon a new participant joining, and retain results for a minimum of 3 years.

**Sample**

The following is a sample security assurance policy awareness acknowledgment form.

```
[Open Source Security Assurance Policy Awareness Acknowledgment]

I confirm that I have familiarized myself with the following:

1. The existence and location of the company's open source security assurance policy
2. The objectives of the open source component vulnerability detection, assessment,
   response, and CVD program
3. How my role contributes to the operation of the security assurance program
4. The security breaches, legal liabilities, and business risks that may arise
   from failing to comply with the vulnerability response process

Name: ________________  Role: ________________
Signature: ________________  Date: ________________
```

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.1.3 Awareness](../../iso5230_guide/1-program-foundation/3-awareness/)
- Related guide: [Enterprise Open Source Management Guide — 5. Training](../../../opensource_for_enterprise/5-training/)
- Related template: [Open Source Policy Template — §6 Training and Awareness](../../../templates/1-policy/)
