---
title: "ISO/IEC 5230 Conformance Guide"
linkTitle: "ISO/IEC 5230 Conformance Guide"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "License Compliance", "OpenChain"]
description: >
  A clause-by-clause conformance guide explaining all 24 verification material items of ISO/IEC 5230.
---

This guide walks through each requirement clause of ISO/IEC 5230 (OpenChain License Compliance) one by one.
It explains what verification materials each clause requires, how to comply, and what sample documents
can be used directly.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

## Target Audience

- Open source compliance officers and open source program managers
- Personnel at companies preparing for ISO/IEC 5230 certification
- Practitioners who want to review their existing open source management framework against ISO standards

## How to Use This Guide

{{% alert title="Relationship with the Enterprise Open Source Management Guide" color="success" %}}

The **[Enterprise Open Source Management Guide](../opensource_for_enterprise/)** explains how to implement open
source management in practice (policies, processes, tools, and organization).

**This guide (ISO/IEC 5230 Conformance Guide)** organizes, clause by clause, what must be demonstrated for certification.

| Guide | Focus | When to Use |
|-------|-------|-------------|
| Enterprise Open Source Management Guide | Practical implementation (How to implement) | When building an open source management framework from scratch |
| ISO/IEC 5230 Conformance Guide | Verification material criteria by clause (What to prove) | When preparing for certification or conducting a self-assessment |

The two guides are complementary. Each clause page provides cross-links to the corresponding section of the
Enterprise Open Source Management Guide.

{{% /alert %}}

## Full Clause Checklist

ISO/IEC 5230 consists of **13 clauses and 24 verification material items**.

### §3.1 Program Foundation

| Clause | Title | Verification Materials | Details |
|--------|-------|:---------------------:|---------|
| §3.1.1 | Policy | 2 | [Go to](./1-program-foundation/1-policy/) |
| §3.1.2 | Competence | 3 | [Go to](./1-program-foundation/2-competence/) |
| §3.1.3 | Awareness | 1 | [Go to](./1-program-foundation/3-awareness/) |
| §3.1.4 | Program Scope | 1 | [Go to](./1-program-foundation/4-scope/) |
| §3.1.5 | License Obligations | 1 | [Go to](./1-program-foundation/5-license-obligations/) |

### §3.2 Relevant Tasks

| Clause | Title | Verification Materials | Details |
|--------|-------|:---------------------:|---------|
| §3.2.1 | External Inquiry Response (Access) | 2 | [Go to](./2-relevant-tasks/1-access/) |
| §3.2.2 | Effective Resources (Effectively Resourced) | 5 | [Go to](./2-relevant-tasks/2-resourced/) |

### §3.3 Content Review and Approval

| Clause | Title | Verification Materials | Details |
|--------|-------|:---------------------:|---------|
| §3.3.1 | SBOM | 2 | [Go to](./3-content-review/1-sbom/) |
| §3.3.2 | License Compliance | 1 | [Go to](./3-content-review/2-license-compliance/) |

### §3.4 Compliance Artifacts

| Clause | Title | Verification Materials | Details |
|--------|-------|:---------------------:|---------|
| §3.4.1 | Compliance Artifacts | 2 | [Go to](./4-artifacts/1-compliance-artifacts/) |

### §3.5 Community Engagement

| Clause | Title | Verification Materials | Details |
|--------|-------|:---------------------:|---------|
| §3.5.1 | Contributions | 3 | [Go to](./5-community/1-contributions/) |

### §3.6 Adherence to the Specification

| Clause | Title | Verification Materials | Details |
|--------|-------|:---------------------:|---------|
| §3.6.1 | Conformance | 1 | [Go to](./6-conformance/1-conformance/) |
| §3.6.2 | Duration | 1 | [Go to](./6-conformance/2-duration/) |

**Total: 13 clauses / 24 verification material items**

## ISO/IEC 5230 Certification Process

There are three ways to officially recognize conformance with ISO/IEC 5230.

{{% pageinfo %}}

**Step 1. Self-Certification**

Complete an online checklist provided by the OpenChain Project to self-declare conformance.
There is no cost and it can be started immediately.

- Checklist: [https://certification.openchainproject.org/](https://certification.openchainproject.org/)
- Suitable for: First-time certification preparation or internal assessment

---

**Step 2. Independent Assessment**

An external expert or consulting organization evaluates the open source program. This is more
credible than self-certification and is used to demonstrate compliance levels to supply chain partners.

- Partner list: [Open Compliance Directory](https://www.openchainproject.org/find-a-partner)

---

**Step 3. Third-party Certification**

An OpenChain-accredited certification body conducts an audit and issues an official certificate.
This provides the highest level of credibility and is suitable for meeting global supply chain requirements.

- Accredited certification bodies (as of 2024): ORCRO, PwC, TÜV SÜD, Synopsys, Bureau Veritas

{{% /pageinfo %}}

{{% alert title="Phased Approach Recommended" color="success" %}}
For companies preparing for certification for the first time, it is recommended to proceed in stages:
**Self-Certification → Independent Assessment → Third-party Certification**.
Self-certification alone can satisfy the compliance level required by many supply chain partners.
{{% /alert %}}
