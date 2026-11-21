---
title: "Audit Evidence List"
linkTitle: "Audit Evidence List"
weight: 30
type: docs
categories: ["guide"]
tags: ["Finance", "Open Source", "Audit", "Evidence"]
description: >
  Organizes, as a checklist, the open source management evidence required in internal and external
  audits and in information technology inspections by the Financial Supervisory Service, and
  specifies which activity produces each item and where it is kept.
---

The financial sector must keep evidence of its open source management activities to prepare for
internal and external audits and for information technology (IT) inspections by the Financial
Supervisory Service (금융감독원). Because check records from the management step serve directly as
evidence, do not create it separately; collect the records that come out of everyday activities in
a systematic way. For more context, see [Management](../../5-manage/#audit-evidence-management).

## Evidence checklist

The evidence below overlaps with the verification materials of ISO/IEC 5230 and 18974. Documents
created while preparing for ISO self-certification serve directly as audit evidence. Set the
storage location and retention period according to your organization's rules.

| Evidence | Producing activity | Related ISO verification material | Storage location (example) | Notes |
|------|------|------|------|------|
| Open source policy document and revision history | Governance | 5230 3.1.1.1 | Document management system | Including version history |
| Role and responsibility documents, records of assigned owners | Governance | 5230 3.1.2.1, 3.2.2.1 | Document management system |  |
| SBOMs and update history | Identification | 5230 3.3.1.1, 3.3.1.2 | SBOM management tool | Per system |
| Vulnerability check results | Identifying and resolving issues | 18974 4.3.2.1, 4.3.2.2 | Vulnerability management tool | By date |
| Vulnerability remediation records (including decisions that no action is needed) | Identifying and resolving issues | 18974 4.3.2.2 | Vulnerability management tool | Including VEX |
| License review records | Identifying and resolving issues | 5230 3.3.2.1 | Document management system |  |
| Usage approval request, review, and decision records | Usage approval | 5230 3.1.5.1 | Approval management tool | Basis for board decisions |
| Self risk assessment report for network separation exceptions | Usage approval | (Regulation on Supervision of Electronic Financial Transactions (전자금융감독규정)) | Document management system | Information Security Committee (CISO) approval history, reassessment history |
| Import approval records | Closed network operations | - | Document management system | Including verification results |
| Periodic reassessment results | Management | 18974 4.1.2.5 | Document management system | Per cycle |
| Compliance artifacts (notices, etc.) | Management | 5230 3.4.1.1, 3.4.1.2 | Distribution artifact repository | Distributed software |
| Open source requirement clauses in outsourcing contracts and submitted SBOMs | Usage approval | (Internal control under Article 21 of the Regulation on Supervision of Electronic Financial Transactions) | Contract management system | Electronic financial auxiliary service providers (전자금융보조업자) |

## Retention and management principles

Protecting evidence is as important as creating it.

- Set the retention period. Decide it with the audit cycle and regulatory requirements in mind,
  confirm that it does not conflict with retention periods set by regulations, such as the retention
  period for electronic financial transaction records, and then state it in the artifact retention
  procedure (ISO/IEC 5230 3.4.1.2).
- Prevent tampering. Keep records in a way that cannot be altered later (append-only logs, access
  control).
- Make records traceable. Record the actor and the time so that you can tell who did what and when.
- Check inspection readiness in advance. At periodic reassessments, also confirm that all evidence is
  being kept.

{{% alert title="Field case: KakaoBank's audit response" color="success" %}}
At the 30th KWG regular meeting (2026-06), KakaoBank shared its experience responding to the
Financial Supervisory Service's IT risk quantitative assessment and management condition assessment,
the Bank of Korea (한국은행)'s annual survey on the status of financial informatization, and data
requests from the Korea Deposit Insurance Corporation (예금보험공사). What the institutions commonly
ask about comes down to five things: whether the open source inventory is managed, the full
inventory list, the composition of management staff, policies and internal rules, and the security
vulnerability check procedure. These mostly overlap with the evidence checklist above.

![Presentation slide summarizing the five things institutions commonly check in inspections and data requests](./30th-s3-key-questions.png)

*Figure: The five things institutions commonly check. Minae Lee (KakaoBank), slides, page 5. The
slide image is the presenter's work and is not covered by the CC BY 4.0 license that applies to this
text.*

For an inquiry about the purpose of and reason for using components that are no longer supported
(deprecated), KakaoBank could answer with the management records it had kept as a matter of course
(purpose of use, confirmation that there were no security vulnerabilities). The case shows that a
record showing the organization knows about and manages old components matters more than whether
such components exist at all. However, because each institution requires a different scope and
format for the list, converting the SBOM into the requested format remains necessary even when SBOMs
are in place.

Source: Minae Lee (KakaoBank), "Experience Report on Open Source Operations as a Financial Company" (금융회사로서의 오픈소스 관련 업무 대응 후기), [KWG 30th meeting (2026-06) slides](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-2026/30th-session3-finance-oss-report.pdf).
{{% /alert %}}

---

*Last reviewed: 2026-06-10. This page is reviewed when regulations change and once a year on a regular basis.*
