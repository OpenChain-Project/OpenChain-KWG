---
title: "§4.2.1 Access"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "external inquiry"]
description: >
---

## 1. Clause Overview

§4.2.1 has the same structure as ISO/IEC 5230 §3.2.1 (External Inquiry Response), but the focus shifts from **license compliance inquiries** to **vulnerability inquiries**. A publicly visible channel must be established for third parties to make inquiries about known or newly discovered vulnerabilities in the supplied software, and an internal procedure for systematically handling these inquiries must be documented. Since the security vulnerability reporting channel is connected to the Coordinated Vulnerability Disclosure (CVD) procedure, a system for safely receiving and processing vulnerabilities discovered by security researchers or customers is required.

## 2. What to Do

- Specify a public contact (email address, web form, etc.) on the product or website where third parties can send vulnerability-related inquiries.
- Document the internal procedure for handling vulnerability reports received through the public channel.
- Include the processing stages — receipt, triage, assignment, response, and closure — in the procedure.
- Specify in the procedure a handling policy following CVD principles (confidential collaboration followed by public disclosure).
- Record and retain inquiry receipt and response history for a designated period.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.2.1 | Maintain a process to effectively respond to external vulnerability inquiries. Publicly identify a means by which a third party can make an inquiry about known vulnerabilities or newly discovered vulnerabilities. | **4.2.1.1** Publicly visible method that allows any third party to make a known vulnerability or newly discovered vulnerability inquiry (e.g., via a published contact email address, or web portal monitored by Program Participants)<br>**4.2.1.2** An internal documented procedure for responding to third party known vulnerability or newly discovered vulnerability inquiries |

> **§4.2.1 Access**
> Maintain a process to effectively respond to external vulnerability
> inquiries. Publicly identify a means by which a third party can make an
> inquiry about known vulnerabilities or newly discovered vulnerabilities.
>
> **Verification Material(s):**
> 4.2.1.1 Publicly visible method that allows any third party to make a known
> vulnerability or newly discovered vulnerability inquiry (e.g., via a
> published contact email address, or web portal that is monitored by
> program participants).
> 4.2.1.2 An internal documented procedure for responding to third party known
> vulnerability or newly discovered vulnerability inquiries.

## 4. How to Comply and Samples per Verification Material

### 4.2.1.1 Publicly Available Vulnerability Inquiry Channel

**How to Comply**

A public contact for third parties to report or inquire about vulnerabilities must be established and published externally. Publishing a security-dedicated email address (e.g., security@company.com) on product documentation, the website's security policy page, or in a `SECURITY.md` file (for GitHub or other open source repositories) is common practice. This public channel itself is Verification Material 4.2.1.1.

This can be operated separately from the ISO/IEC 5230 §3.2.1.1 license inquiry channel, or configured by adding a channel dedicated to security vulnerability reporting.

**Considerations**

- **Separate security-dedicated channel**: Operating a license inquiry channel (oss@company.com) and a security vulnerability reporting channel (security@company.com) separately makes it easier to manage processing priorities.
- **Guarantee of response**: State explicitly that the reporting channel is actively monitored (e.g., "acknowledgment response within 3 business days").
- **Use the `security.txt` standard**: Applying the RFC 9116 `security.txt` standard makes it easy for security researchers to find contact information.

**Sample**

```
[Website Security Policy Page / SECURITY.md Sample]

## Security Vulnerability Reporting

To report a security vulnerability in our software, please use the channel below.
We follow Coordinated Vulnerability Disclosure (CVD) practices.

- Reporting email: security@company.com
- Acknowledgment: Within 3 business days
- Handling policy: Vulnerabilities are reviewed confidentially and disclosed after patching
```

---

### 4.2.1.2 Internal Vulnerability Inquiry Response Procedure

**How to Comply**

A procedure for internally handling vulnerability reports received from external parties must be documented. Following CVD principles, the basic framework involves collaborating confidentially with the reporter to resolve the vulnerability and then disclosing it after the patch is ready. This procedure document is Verification Material 4.2.1.2.

**Considerations**

- **Follow CVD principles**: Maintain confidentiality with the reporter until the vulnerability is resolved and agree on a disclosure schedule.
- **Processing timelines**: Specify timelines for each stage — acknowledgment, vulnerability verification, patch delivery, and disclosure — in the procedure.
- **Record retention**: Retain the report content, review process, response actions, and disclosure history for a minimum of 3 years.

**Sample**

```
[External Vulnerability Report Response Procedure]

1. Receipt and Acknowledgment (within 3 business days)
   - Check the security@company.com inbox daily.
   - Reply to the reporter with an acknowledgment and a promise of confidential handling.

2. Vulnerability Verification (within 7 business days)
   - The security team verifies the reproducibility and impact scope of the reported vulnerability.
   - Calculate the CVSS score and classify the severity.

3. Patch Development and Remediation (7–90 days depending on severity)
   - Perform patching or mitigation according to the §4.1.5 Method 3 (follow-up) procedure.
   - Share the patch schedule with the reporter and coordinate as needed.

4. Disclosure (after patch is complete)
   - Draft a Security Advisory, confirm with the reporter, and publish.
   - Request CVE ID issuance if necessary.
   - Notify affected customers according to the §4.1.5 Method 4 (customer notification) procedure.

5. Record Retention
   - Retain the report content, review process, remediation outcome, and disclosure history
     for a minimum of 3 years.
```

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.2.1 External Inquiry Response](../../iso5230_guide/2-relevant-tasks/1-access/)
- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
