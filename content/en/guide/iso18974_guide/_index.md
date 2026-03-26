---
title: "ISO/IEC 18974 Conformance Guide"
linkTitle: "ISO/IEC 18974 Conformance Guide"
weight: 30
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "Security Assurance", "OpenChain"]
description: >
  A conformance guide that explains the 25 Verification Material items of ISO/IEC 18974 clause by clause.
---

This guide explains each requirement clause of ISO/IEC 18974 (OpenChain Security Assurance) one by one. It describes what Verification Materials each clause requires, how to comply, and what sample documents can be used immediately.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

## Target Audience

- Security managers and open source program managers at organizations establishing an open source security assurance framework for the first time
- Engineers building open source vulnerability management processes in DevSecOps environments
- Organization staff preparing to add ISO/IEC 18974 certification after obtaining ISO/IEC 5230 certification

## Relationship with ISO/IEC 5230

{{% alert title="ISO/IEC 18974 adds a security layer on top of ISO/IEC 5230" color="warning" %}}

**ISO/IEC 5230 (License Compliance)** covers the foundational program for systematically managing open source license obligations.

**ISO/IEC 18974 (Security Assurance)** adds a security layer of vulnerability detection, assessment, and response on top of that foundation. The two standards share core infrastructure such as policy, competence, and SBOM, and 18974 extends and deepens this from a security perspective.

| Category | ISO/IEC 5230 | ISO/IEC 18974 |
|------|-------------|--------------|
| Purpose | License Compliance | Security Assurance |
| Verification Materials | 24 items | 25 items |
| Common Foundation Clauses | — | 16 (corresponding to 5230) |
| 18974-Exclusive Clauses | — | 9 (security-specific) |
| Key Additional Elements | — | Vulnerability detection, response, and CVD procedures |

{{% /alert %}}

{{% alert title="Recommended Certification Path" color="success" %}}
Organizations preparing for open source security assurance certification for the first time are recommended to proceed in stages: **obtain ISO/IEC 5230 first, then add ISO/IEC 18974**. The policy, process, and SBOM infrastructure built for 5230 can be reused directly for 18974, minimizing additional cost and effort.

For a detailed clause-by-clause comparison of the two standards, refer to the **[ISO/IEC 5230 vs 18974 Comparison](./compare/)** page.
{{% /alert %}}

## How to Use This Guide

{{% alert title="Relationship with the Enterprise Open Source Management Guide" color="success" %}}

The **[Enterprise Open Source Management Guide](../opensource_for_enterprise/)** explains practical implementation methods (policy, process, tools, and organization) for managing open source.

**This guide (ISO/IEC 18974 Conformance Guide)** organizes what must be demonstrated for security assurance certification, clause by clause.

| Guide | Focus | When to Use |
|--------|------|-----------|
| Enterprise Open Source Management Guide | Practical implementation (How to implement) | When building an open source management framework for the first time |
| ISO/IEC 18974 Conformance Guide | Clause-level Verification Material criteria (What to prove) | When preparing for security assurance certification or conducting a self-assessment |

{{% /alert %}}

## Full Clause Checklist

ISO/IEC 18974 consists of a total of **11 clauses and 25 Verification Material items**.
Items marked with ★ are added or changed from a security perspective compared to ISO/IEC 5230.

### §4.1 Program Foundation

| Clause | Title | Verification Materials | Details |
|------|------|:---:|------|
| §4.1.1 | Policy | 2 items | [Go](./1-program-foundation/1-policy/) |
| §4.1.2 | Competence ★ | 6 items | [Go](./1-program-foundation/2-competence/) |
| §4.1.3 | Awareness | 1 item | [Go](./1-program-foundation/3-awareness/) |
| §4.1.4 | Program Scope ★ | 3 items | [Go](./1-program-foundation/4-scope/) |
| §4.1.5 | Standard Practice Implementation ★ | 1 item | [Go](./1-program-foundation/5-standard-practice/) |

### §4.2 Relevant Tasks

| Clause | Title | Verification Materials | Details |
|------|------|:---:|------|
| §4.2.1 | Access | 2 items | [Go](./2-relevant-tasks/1-access/) |
| §4.2.2 | Effectively Resourced | 4 items | [Go](./2-relevant-tasks/2-resourced/) |

### §4.3 Content Review and Approval

| Clause | Title | Verification Materials | Details |
|------|------|:---:|------|
| §4.3.1 | SBOM | 2 items | [Go](./3-content-review/1-sbom/) |
| §4.3.2 | Security Assurance ★ | 2 items | [Go](./3-content-review/2-security-assurance/) |

### §4.4 Conformance

| Clause | Title | Verification Materials | Details |
|------|------|:---:|------|
| §4.4.1 | Completeness | 1 item | [Go](./4-conformance/1-completeness/) |
| §4.4.2 | Duration | 1 item | [Go](./4-conformance/2-duration/) |

**Total: 11 clauses / 25 Verification Material items**

{{% pageinfo %}}

★ **Summary of 18974 Additional Items Compared to ISO/IEC 5230**

| Clause | Added Content | Number of Added Items |
|------|-----------|:-----------:|
| §4.1.2 Competence | List of participants (4.1.2.3), evidence of periodic review (4.1.2.5), alignment with internal best practices (4.1.2.6) | +3 items |
| §4.1.4 Program Scope | Performance metrics (4.1.4.2), evidence of continuous improvement (4.1.4.3) | +2 items |
| §4.1.5 Standard Practice Implementation | Documented procedures for all 8 vulnerability handling methods (4.1.5.1) | New clause |
| §4.3.2 Security Assurance | Vulnerability detection and resolution procedure (4.3.2.1), vulnerability and action records (4.3.2.2) | New clause |

{{% /pageinfo %}}

## ISO/IEC 18974 Certification Process

There are three ways to officially have ISO/IEC 18974 conformance recognized.

{{% pageinfo %}}

**Step 1. Self-Certification**

Complete the online checklist provided by the OpenChain Project to self-declare conformance. There is no cost and you can start immediately.

- Checklist: [https://certification.openchainproject.org/](https://certification.openchainproject.org/)
- Suitable for: Organizations preparing for certification for the first time or for internal review purposes

---

**Step 2. Independent Assessment**

An external expert or consulting organization evaluates the security assurance program. This is used to demonstrate the level of conformance to supply chain partners.

- Partner list: [Open Compliance Directory](https://www.openchainproject.org/find-a-partner)

---

**Step 3. Third-party Certification**

A certification body approved by OpenChain conducts an audit and issues an official certificate. This is suitable for meeting global supply chain requirements.

- Approved certification bodies (as of 2024): ORCRO, PwC, TÜV SÜD, Synopsys, Bureau Veritas

{{% /pageinfo %}}

{{% alert title="Phased Approach Recommended" color="success" %}}
Organizations that have already obtained ISO/IEC 5230 can efficiently prepare for 18974 certification by leveraging their existing infrastructure (policy, competence, SBOM) and adding the security assurance-specific items (§4.1.5, §4.3.2).
{{% /alert %}}
