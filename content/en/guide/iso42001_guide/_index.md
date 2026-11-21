---
title: "ISO/IEC 42001 Guide"
linkTitle: "ISO/IEC 42001 Guide"
weight: 30
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "AI Management System", "AI Compliance", "AIMS"]
description: >
  A guide that explains the ISO/IEC 42001 AI management system standard from an open source perspective.
  It covers the key requirements where AI system development and operation intersect with open source compliance.
---

This guide explains, **from the perspective of open source practitioners**, the key requirements of ISO/IEC 42001 (AI Management System)
that intersect with open source management. It provides practical guidance on what must be complied with when using open source frameworks,
pre-trained models, and training datasets in AI systems, and on how to structure an AI SBOM.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

## What is ISO/IEC 42001?

ISO/IEC 42001:2023 is an international standard for an **AI management system (AIMS, AI Management System)** that enables organizations
to develop, operate, and manage AI systems responsibly and transparently.

| Item | Description |
|------|------|
| **Official title** | ISO/IEC 42001:2023 Information technology - Artificial intelligence - Management system |
| **Developed by** | ISO/IEC JTC 1/SC 42 (Artificial intelligence) |
| **Year published** | 2023 |
| **Standard family** | ISO management system standards (same structure as ISO 9001 and ISO 27001) |
| **Applies to** | All organizations that develop, provide, or use AI products and services |

{{% alert title="Differences from ISO/IEC 5230 and 18974" color="warning" %}}

ISO/IEC 5230 (license compliance) and ISO/IEC 18974 (security assurance) were first developed as specifications by the **OpenChain Project**
and then adopted by ISO as standards. They are specialized for open source software management.
OpenChain provides free self-certification checklists for them.

**ISO/IEC 42001** is an **AI management system** standard developed independently by ISO/IEC JTC 1 SC 42,
and it is unrelated to OpenChain. It is not specialized for open source but covers AI governance as a whole,
and no official self-certification checklist is provided for it.

For a detailed comparison of the three standards, see the **[Standards Comparison](./compare/)** page.

{{% /alert %}}

## Positioning of This Guide

{{% alert title="An ISO 42001 guide from an open source perspective" color="success" %}}

ISO/IEC 42001 is a broad standard that covers the AI management system as a whole (risk, governance, life cycle, human oversight, and so on).
This guide focuses on the **requirements that intersect with open source management**.

| What this guide covers | What this guide does not cover |
|----------------------|--------------------------|
| Open source license compliance for AI systems | AI ethics governance in general |
| Open source management of AI frameworks, models, and datasets | AI bias and fairness evaluation |
| Building and maintaining AI SBOMs | Human oversight and explainability requirements |
| Supply chain verification of open source AI models | AI system performance optimization |

For AI compliance in general, see [Enterprise Open Source Management Guide: AI Compliance](../opensource_for_enterprise/7-ai-compliance/).

{{% /alert %}}

## How to Confirm Conformance with ISO/IEC 42001

Unlike OpenChain, ISO 42001 does not provide an official self-certification checklist.
An organization can confirm or declare conformance in the following three ways.

{{% pageinfo %}}

**Method 1. Self gap analysis (Self-assessment)**

The organization internally reviews each clause of ISO 42001 (the "shall" requirements), evaluates its current level,
and establishes an improvement plan. It costs nothing, and the checkpoints in this guide can be used.

---

**Method 2. Second-party assessment**

A customer or partner company directly evaluates the organization's AI management system.
It is used to build trust in the supply chain.

---

**Method 3. Third-party certification**

An ISO certification body such as BSI or TÜV SÜD conducts an audit and issues an official ISO 42001 certificate.
It operates in the same way as ISO 27001 certification.

{{% /pageinfo %}}

## Structure of the Guide

This guide follows the §4 to §10 structure of ISO/IEC 42001, focusing on the sections that intersect with open source.

| Section | ISO 42001 clause | Open source intersection |
|------|----------------|----------------|
| [Standards Comparison](./compare/) | - | Relationship among ISO 5230, 18974, and 42001 |
| [1. Context of the Organization and Leadership](./1-context-leadership/) | §4, §5 | Including OSS principles in the AI policy |
| [2. Planning](./2-planning/) | §6 | AI risk assessment, OSS license and vulnerability risks |
| [3. Support](./3-support/) | §7 | AI OSS competence, AI SBOM documentation |
| [4. Operation](./4-operation/) | §8 | OSS frameworks, datasets, and supply chain |
| └ [Open Source Management in AI Systems](./4-operation/1-oss-in-ai/) | §8.5, §8.6 | OSS license compliance |
| └ [AI SBOM](./4-operation/2-ai-sbom/) | §7.5, §8.5 | Building and maintaining AI SBOMs |
| └ [AI Supply Chain Verification](./4-operation/3-supply-chain/) | §8.8 | Verifying procurement of external OSS models |
| [5. Performance Evaluation and Improvement](./5-evaluation/) | §9, §10 | OSS compliance metrics |

## Connection with the AI Work Group

The **AI Work Group** of the OpenChain Korea Work Group is developing an AI SBOM compliance guide.
The [AI SBOM](./4-operation/2-ai-sbom/) section of this guide is linked with the deliverables of the AI Work Group.

- AI Work Group activities: [Resources: AI Work Group](../../resource/AI_work_group/)

## Abbreviations

| Abbreviation | Full name | Meaning |
|------|------|------|
| **AIMS** | AI Management System | AI management system (the core concept of ISO/IEC 42001) |
| **AI SBOM** | AI System Bill of Materials | List of AI system components (models, datasets, frameworks) |
| **ML-BOM** | Machine Learning Bill of Materials | ML model SBOM format of CycloneDX 1.6 |
| **AI Profile** | SPDX 3.0 AI Profile | AI SBOM specification based on the `AIPackage` class of SPDX 3.0 |
| **GPAI** | General-Purpose AI | General-purpose AI model category under EU AI Act §53 |
| **OSAID** | Open Source AI Definition | Open Source AI Definition by OSI (2024-10) |
| **MAU** | Monthly Active Users | Number of monthly active users (for example, the Llama license threshold) |
| **CRA** | EU Cyber Resilience Act | EU Cyber Resilience Act (entered into force 2024-12) |
| **NIS 2** | Network and Information Security Directive 2 | EU Network and Information Security Directive (applied from 2024-10) |
| **EO 14028** | US Executive Order 14028 | US Executive Order on Improving the Nation's Cybersecurity (2021-05) |
| **DPO** | Data Protection Officer | Data protection officer (Personal Information Protection Act (개인정보보호법)) |
| **EPSS** | Exploit Prediction Scoring System | Exploit prediction score (FIRST.org) |
| **KEV** | Known Exploited Vulnerabilities | Catalog of vulnerabilities exploited in the wild (CISA) |

**Consistent license naming** (throughout the guide):
- Llama 3.x is written as "Meta Llama 3.x Community License"
- Gemma is written as "Gemma Terms of Use"
- Falcon is written as "Falcon License" (TII Falcon LLM License)
- Standard SPDX licenses use SPDX IDs (for example, `Apache-2.0`, `MIT`, `BSD-3-Clause`)
