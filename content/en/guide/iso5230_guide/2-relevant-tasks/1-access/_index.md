---
title: "§3.2.1 External Inquiry Response"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "External Inquiry"]
description: >
---

## 1. Clause Overview

Companies distributing software may receive inquiries from third parties (customers, open source copyright
holders, researchers, etc.) regarding open source license compliance. Failure to respond to these
inquiries in a timely manner risks escalation into copyright infringement disputes. §3.2.1 requires
organizations to establish a publicly available means of contact for receiving external inquiries and to
document a procedure internally for systematically responding to those inquiries. This clause requires
both a public channel (Verification Material 3.2.1.1) and an internal response procedure (Verification
Material 3.2.1.2).

## 2. What to Do

- Specify a publicly available contact (email address, web form, etc.) on the product or website where
  third parties can send open source license compliance inquiries.
- Document the internal response procedure from receiving an external inquiry through review, response,
  and closure.
- Include the person responsible for each type of inquiry (Open Source Program Manager, legal team, etc.)
  and the escalation path in the procedure.
- Record and retain the history of inquiries received and responses given.
- Periodically verify the validity of the public contact and the currency of the internal procedure.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.2.1 | Maintain a process to effectively respond to external open source inquiries. Publicly identify a means by which a third party can make an open source compliance inquiry. | **3.2.1.1** Publicly visible method that allows any third party to make an open source license compliance inquiry (e.g., via a published contact email address, or the OpenChain Conformance website).<br>**3.2.1.2** An internal documented procedure for responding to third party open source license compliance inquiries. |

## 4. How to Comply and Samples by Verification Material

### 3.2.1.1 Publicly Available External Inquiry Channel

**How to Comply**

A means by which third parties can send open source license compliance inquiries must be publicly
specified. The most common method is to publish a dedicated email address (e.g., oss@company.com)
in product documentation, software open source notices, or the company website. This public contact
itself is Verification Material 3.2.1.1.

It is better to use a role-based address rather than an individual's personal email. This way the
address is maintained even when the person in charge changes, and it is advisable to manage it as a
team mailbox to prevent inquiries from being missed. Registering the contact on the OpenChain Conformance
website is also an option.

**Considerations**

- **Use role-based address**: Use a role-based address such as oss@company.com instead of a personal
  email to prepare for changes in the person in charge.
- **Publication location**: Publish in locations that third parties can easily find, such as product
  manuals, open source notices (NOTICES file), and the company website.
- **Verify responsiveness**: Periodically check that the published contact is actually being received
  and monitored.
- **Multilingual consideration**: For global products, also provide English contact information.

**Sample**

The following is a sample public contact notice to be posted on the product open source notice or website.

```
Open Source License Compliance Inquiry

For inquiries regarding open source license compliance of the software components
included in this software, please contact us at the email below.

- Email: oss@company.com
- Response time: Within 14 business days

Open Source License Compliance Inquiry

For inquiries regarding open source license compliance of this software,
please contact: oss@company.com
```

---

### 3.2.1.2 Internal External Inquiry Response Procedure

**How to Comply**

An internal procedure defining how to handle an external inquiry when it is received must be documented.
The procedure must include the following steps: (1) receiving and classifying the inquiry, (2) assigning
a person responsible, (3) reviewing and drafting a response, (4) legal review (if necessary), (5) sending
the response, and (6) record retention. This procedure document is Verification Material 3.2.1.2.

Response deadlines should be set within a reasonable range and specified in the procedure. In general,
an initial response within 14 days and a final response within 60 days are common standards. The history
of inquiry receipt, handling, and closure should be recorded in the internal system and retained for
submission during audits.

**Considerations**

- **Person responsible and escalation**: Specify the primary person responsible (Open Source Program
  Manager) and the escalation path for legal review in the procedure.
- **Response deadline**: Specify the deadlines for initial and final responses in the procedure and
  adhere to them.
- **Record retention**: Record the inquiry content, review process, and final response, and retain for
  at least 3 years.
- **Response by type**: Include in the procedure methods for responding to different types of inquiries
  such as license notice requests, source code provision requests, and copyright infringement claims.

**Sample**

The following is a sample outline of an external inquiry response procedure.

```
[External Open Source Inquiry Response Procedure]

1. Receipt and Classification (within 1 business day)
   - Check the oss@company.com inbox daily.
   - Classify inquiries by type:
     A. Request for open source notice or source code provision
     B. Request for confirmation of license obligation compliance
     C. Copyright infringement claim or legal warning

2. Person Assignment and Initial Response (within 3 business days)
   - The Open Source Program Manager reviews the inquiry and sends a receipt confirmation.
   - Type C (legal warning) is immediately escalated to the legal team.

3. Review and Response Drafting (within 14 business days)
   - Review the relevant SBOM, license records, and Compliance Artifacts.
   - Type A: Confirm and provide the notice or source code.
   - Type B: Review compliance evidence and respond.
   - If necessary, request legal review of the draft response.

4. Response Sending and Closure
   - Send the final response and close the inquiry.

5. Record Retention
   - Document the inquiry content, review process, and final response and retain
     for at least 3 years.
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related template: [Open Source Policy Template — §9 External Inquiry Response](../../../templates/1-policy/)
