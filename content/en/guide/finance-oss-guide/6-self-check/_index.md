---
title: "Self-Check: Finding the Gaps in Your Program"
linkTitle: "6. Self-Check"
weight: 70
type: docs
categories: ["guide"]
tags: ["Finance", "Open Source", "Self-Check", "Checklist", "Verification Materials"]
description: >
  Links check items, newly written in this guide's own words with reference to the intent of the
  FSEC guide's five categories, to ISO verification materials, recommended tools, and guide sections,
  so that you can find what is missing from your organization's open source management program.
---

{{% alert title="Where this page fits" color="info" %}}
This page gathers the preceding six steps into a checklist. Go through the items one by one to find
the gaps in your program, and move to the section that covers what is missing. The categories are
based on the self-check checklist (Appendix 1) of the FSEC guide.

Documents produced here: the self-check workbook (check results and improvement plan).
{{% /alert %}}

## How to use the self-check

This checklist is not a pass-or-fail test. It is a tool for gauging how far your organization has
come and finding what to do next. Just as the FSEC guide is a non-regulatory voluntary check, this
checklist is a best-practice baseline. **[FSEC guide]**

Each item is linked to the related ISO verification materials, recommended tools, and the guide
section that covers it in detail. If there is an item you do not meet, go to the linked section and
check how to address it. The recommended tools are examples, and each tool name links to its usage
page at its first appearance. The items follow the order of the five categories used by the FSEC
guide: identification, identifying and resolving issues, approval, management, and other.

{{% alert title="What a new organization should do first, and how an operating organization can advance" color="success" %}}
Organizations setting up a program for the first time should not try to check every item at once.
Start with the other category, which forms the foundation, and the identification category, which is
the starting point, and decide what to put in place first.

Organizations that already run a program check every item and then move the unmet items into the
improvement plan (owner, target date) of the [self-check workbook](../artifacts/1-workbook/) to
manage them.
{{% /alert %}}

{{% alert title="Copyright notice" color="warning" %}}
The check items below are not copied from the checklist questions of the FSEC guide. They were newly
written in this guide's own words with reference to the intent of the five categories. To check the
original guide as well, see [the material published by the Financial Security Institute
(금융보안원)](https://www.fsec.or.kr/bbs/detail?menuNo=222&bbsNo=11166).
{{% /alert %}}

## Identification

| Check item | Related ISO verification material | Recommended tools | Guide section |
|------|------|------|------|
| The scope of open source management is defined in a document | 5230 3.1.4.1 | - | [Identification](../2-identify/) |
| Newly adopted open source and its dependencies are fully identified | 5230 3.3.1.1 | [Syft](../../tools/6-syft/), [cdxgen](../../tools/5-cdxgen/) | [Identification](../2-identify/) |
| Transitive dependencies are expanded and identified | 5230 3.3.1.1 | Syft, [OSV-SCALIBR](../../tools/4-osvscalibr/) | [Identification](../2-identify/) |
| Legacy open source in systems already in operation is identified | 5230 3.3.1.1 | [Trivy](https://trivy.dev/), [Dependency-Track](../../tools/7-dependency-track/) | [Identification](../2-identify/#identifying-systems-already-in-operation) |
| Identification results are recorded as SBOMs in a standard format | 5230 3.3.1.2 | cdxgen, Syft | [Identification](../2-identify/#creating-and-recording-sboms) |
| Open source in deliverables from outsourcing vendors and electronic financial auxiliary service providers is identified | Applying 5230 3.3.1.1 | (Require SBOM submission) | [Identification](../2-identify/#identifying-third-party-and-outsourced-deliverables) |

## Identifying and resolving issues

| Check item | Related ISO verification material | Recommended tools | Guide section |
|------|------|------|------|
| Each component in the SBOM is checked for known vulnerabilities | 18974 4.3.2.1 | Dependency-Track, [Grype](https://github.com/anchore/grype), Trivy | [Identify and Resolve Issues](../3-issue-resolve/) |
| Vulnerabilities are given risk scores and response deadlines are set by severity | 18974 4.3.2.1 | Dependency-Track, Grype | [Identify and Resolve Issues](../3-issue-resolve/#response-deadlines) |
| Vulnerability remediation results are recorded (including decisions that no action is needed) | 18974 4.3.2.2 | Dependency-Track (VEX), commercial SCA | [Identify and Resolve Issues](../3-issue-resolve/) |
| License obligations are checked and conflicts are resolved | 5230 3.3.2.1 | [FOSSology](../../tools/1-fossology/), [SCANOSS](../../tools/9-scanoss/) | [Identify and Resolve Issues](../3-issue-resolve/#resolving-license-issues) |
| A source code disclosure policy for GPL-family software in external distribution is in place | 5230 3.3.2.1 | - | [Identify and Resolve Issues](../3-issue-resolve/#resolving-license-issues) |

## Approval

| Check item | Related ISO verification material | Recommended tools | Guide section |
|------|------|------|------|
| An open source usage approval procedure and reviewer are defined | 5230 3.1.5.1 | [SW360](../../tools/2-sw360/), Dependency-Track (policies) | [Usage Approval](../4-approve/) |
| Approval decisions and their basis are recorded | 5230 3.1.5.1 | SW360, Dependency-Track | [Usage Approval](../4-approve/#usage-approval-workflow) |
| For network separation exceptions, the basis for approval is kept in a self risk assessment report | (Regulation on Supervision of Electronic Financial Transactions (전자금융감독규정)) | - | [Usage Approval](../4-approve/#self-risk-assessment-for-network-separation-exceptions) |
| Outsourcing contracts include SBOM, license, vulnerability, and attribution-of-rights requirements | (Attribution of rights: Article 21 of the Regulation on Supervision of Electronic Financial Transactions; others: Guide recommendation) | - | [Usage Approval](../4-approve/#outsourcing-contracts-and-requests-for-proposal) |

## Management

| Check item | Related ISO verification material | Recommended tools | Guide section |
|------|------|------|------|
| SBOMs of operational systems are registered and continuously monitored for vulnerabilities | 18974 4.3.2 | Dependency-Track, CI dependency scanning, commercial SCA | [Management](../5-manage/#continuous-vulnerability-monitoring) |
| When a new vulnerability is disclosed, the affected systems are traced back | 18974 4.3.2 | Dependency-Track, commercial SCA | [Management](../5-manage/#continuous-vulnerability-monitoring) |
| A periodic reassessment cycle is defined | 18974 4.1.2.5 | - | [Management](../5-manage/#periodic-reassessment) |
| Check records are kept as audit evidence | 5230 3.4.1.2 | - | [Management](../5-manage/#audit-evidence-management) |

## Other

The other category is the foundation that supports the preceding four steps. The FSEC guide also
places selection criteria, exception approval, role documents, staffing, budget, policy awareness,
and legal advice in a separate category.

| Check item | Related ISO verification material | Recommended tools | Guide section |
|------|------|------|------|
| Open source selection criteria and an exception approval procedure exist | 5230 3.1.1.1 | - | [Governance](../1-governance/) |
| Roles and responsibilities are documented | 5230 3.1.2.1, 18974 4.1.2.3 | - | [Governance](../1-governance/#open-source-program-office-ospo) |
| Staff and budget are secured | 5230 3.2.2.2 | - | [Governance](../1-governance/#legal-advice-and-budget) |
| The policy is communicated to members of the organization | 5230 3.1.1.2 | - | [Governance](../1-governance/) |
| There is a channel for accessing legal advice | 5230 3.2.2.3 | - | [Governance](../1-governance/#legal-advice-and-budget) |

## Self-check workbook

The [self-check workbook](../artifacts/1-workbook/), which combines the check items above with check
result records, ISO verification materials, owners, and target dates in a single sheet, is provided
as an artifact. Check the recommended tools for each item in the tables on this page.

## Cross-reference to ISO verification materials

The items in this checklist link to the verification materials of ISO/IEC 5230 and 18974. If you
meet a check item and keep the supporting document, that document serves directly as verification
material for ISO self-certification. If, after checking every item, you write a document confirming
that all requirements are met, that document becomes the verification material for confirming that
the requirements of ISO/IEC 5230 are met (3.6.1.1). Clause-by-clause details of the verification
materials are in the [ISO/IEC 5230 Conformance Guide](../../iso5230_guide/) and the [ISO/IEC 18974
Conformance Guide](../../iso18974_guide/), and the full mapping is in the [mapping table in the
guide overview](../#mapping-of-the-fsec-guide-iso-standards-and-kwg-guides).

---

*Last reviewed: 2026-06-10. This page is reviewed when regulations change and once a year on a regular basis.*
