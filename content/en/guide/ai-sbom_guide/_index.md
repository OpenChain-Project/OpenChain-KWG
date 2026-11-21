---
title: "AI SBOM Compliance Guide"
linkTitle: "AI SBOM Compliance Guide"
weight: 43
type: docs
categories: ["guide"]
tags: ["AI SBOM", "OpenChain", "ISO/IEC 5230", "ISO/IEC 42001", "Compliance"]
description: >
  A practical guide for organizations that explains, clause by clause, the requirements of the
  OpenChain AI SBOM Compliance Guide (Version 1.0).
---

This guide explains, one by one, each requirement of *AI System Bill of Materials: Compliance
Management Guide for the Supply Chain* (Version 1.0), published by the OpenChain AI Work Group.
It describes what verification materials each clause requires, how to comply, and what samples and
tools can be used directly.

This specification carries the structure of the open source license compliance standard ISO/IEC 5230
(requirements, verification materials, rationale) over to the AI supply chain. It brings into the scope
of compliance not only code but also the license and transparency obligations of model weights,
training datasets, and the Model Tree.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

{{% alert title="Note" color="info" %}}
All 10 requirements (3.1 to 3.10), numbered as in the body of the specification, have been written.
The compare page that compares the positioning of the standards is being expanded.
{{% /alert %}}

## Target Audience

- Compliance practitioners at organizations that develop AI systems or exchange them through the supply chain
- Practitioners who have an open source compliance (ISO/IEC 5230) program in place and want to extend it to AI
- Legal, security, and development staff who need to review the license and transparency obligations of AI models and datasets

## How to Use This Guide

{{% alert title="Division of roles between the OpenChain specification and the KWG practical guide" color="success" %}}
The OpenChain specification defines "what must be demonstrated." This guide fills in "how to achieve
it." Each clause page does not stop at restating the specification requirements. It also covers actual
procedures, samples, tools, and how to handle the parts that tools alone cannot cover.
{{% /alert %}}

{{% alert title="Notation: [Specification requirement] vs. [Guide recommendation]" color="info" %}}
The content of each clause page is divided into the following two categories.

- **[Specification requirement]**: Items that the body of the AI SBOM Compliance Guide states with `shall` or as verification materials.
- **[Guide recommendation]**: Items that are not in the body of the specification but that the OpenChain Korea Work Group
  recommends based on practical experience, good practices, and other standards (ISO/IEC 5230, 42001, etc.). Adoption is at the organization's discretion.

Activities presented with a verification material number (e.g., `3.1.1`) are <strong>[Specification requirement]</strong>. Additions
made by this guide, such as automation, tool use, and intake gates, are <strong>[Guide recommendation]</strong>.
{{% /alert %}}

{{% alert title="About clause numbering" color="info" %}}
In the original specification, the section numbers in the table of contents and the body do not match (the
"3.9 AI content review and approval" section in the table of contents is missing from the body, so the
following numbers shift up by one). This inconsistency has been reported to the OpenChain AI Work Group.
This guide follows the <strong>numbering of the specification body (3.1 to 3.10)</strong>.
{{% /alert %}}

## Phased Implementation Roadmap

The 10 requirements are divided into four phases by implementation priority. Phase 1 lays the foundation
of the program, Phase 2 builds the AI-specific compliance processes, Phase 3 establishes the operating
structure, and Phase 4 puts governance in place.

---

### Phase 1: Program Foundation

**Goal**: Define the scope of the program, establish the policy, and secure competence and awareness.

| Done | Verification Material | Description | Detailed Guide |
|:----:|---------|------|------------|
| ☐ | **3.4.1** | Program scope statement | [3.4 →](./1-program-foundation/4-scope/) |
| ☐ | **3.1.1** | Documented AI SBOM policy | [3.1 →](./1-program-foundation/1-policy/) |
| ☐ | **3.1.2** | Policy awareness procedure | [3.1 →](./1-program-foundation/1-policy/) |
| ☐ | **3.2.1-3.2.3** | List of roles, competence definitions, evidence of assessed competence | [3.2 →](./1-program-foundation/2-competence/) |
| ☐ | **3.3.1** | Evidence of assessed participant awareness | [3.3 →](./1-program-foundation/3-awareness/) |

---

### Phase 2: AI Extension Processes

**Goal**: Build AI-specific license, transparency, and SBOM processes that cover models, weights, and
datasets beyond code. This is the area where the AI SBOM guide extends ISO/IEC 5230 the most.

| Done | Verification Material | Description | Detailed Guide |
|:----:|---------|------|------------|
| ☐ | **3.5.1** | Procedure for reviewing and documenting license obligations | [3.5 →](./2-ai-extension/1-license-obligations/) |
| ☐ | **3.6.1** | Procedure for reviewing transparency obligations | [3.6 →](./2-ai-extension/2-transparency-obligations/) |
| ☐ | **3.9.1** | Procedure for identifying, tracking, reviewing, approving, and archiving the AI SBOM | [3.9 →](./2-ai-extension/3-ai-sbom/) |
| ☐ | **3.9.2** | Records demonstrating that the procedure was followed | [3.9 →](./2-ai-extension/3-ai-sbom/) |

---

### Phase 3: Operating Structure

**Goal**: Set up a channel for responding to external compliance inquiries, and assign accountability and resources to the program.

| Done | Verification Material | Description | Detailed Guide |
|:----:|---------|------|------------|
| ☐ | **3.7.1-3.7.2** | Public inquiry method, internal response procedure | [3.7 →](./3-relevant-tasks/1-access/) |
| ☐ | **3.8.1-3.8.5** | Role assignment, resources, legal expertise, remediation procedure | [3.8 →](./3-relevant-tasks/2-resourced/) |

---

### Phase 4: Governance

**Goal**: Establish a governance framework across the AI system lifecycle and reflect emerging AI regulations.

| Done | Verification Material | Description | Detailed Guide |
|:----:|---------|------|------------|
| ☐ | **3.10.1** | AI governance framework and periodic review procedure | [3.10 →](./4-governance/1-governance/) |

---

## Full Clause Checklist

The body of the AI SBOM Compliance Guide consists of **10 clauses and 19 verification material items** (based on
the verification material numbering used in this guide).

| Clause | Title | Verification Materials | Details |
|------|------|:---:|------|
| 3.1 | Policy | 2 | [Go to](./1-program-foundation/1-policy/) |
| 3.2 | Competence | 3 | [Go to](./1-program-foundation/2-competence/) |
| 3.3 | Awareness | 1 | [Go to](./1-program-foundation/3-awareness/) |
| 3.4 | Program scope | 1 | [Go to](./1-program-foundation/4-scope/) |
| 3.5 | License obligations | 1 | [Go to](./2-ai-extension/1-license-obligations/) |
| 3.6 | Transparency obligations | 1 | [Go to](./2-ai-extension/2-transparency-obligations/) |
| 3.7 | Access | 2 | [Go to](./3-relevant-tasks/1-access/) |
| 3.8 | Effectively resourced | 5 | [Go to](./3-relevant-tasks/2-resourced/) |
| 3.9 | AI SBOM | 2 | [Go to](./2-ai-extension/3-ai-sbom/) |
| 3.10 | Governance | 1 | [Go to](./4-governance/1-governance/) |

**Total: 10 clauses / 19 verification material items**

## Automation Maturity Map

This map plainly distinguishes how far each AI SBOM compliance task can be automated with tools.
"Generation" already has usable open source tools. In contrast, interpreting license obligations and
tracking compliance with non-standard licenses are still the job of people and policy. Each clause page
follows this boundary and separates "what tools can do" from "what people must fill in."

| Task | Automation Level | Representative Open Source Tools |
|------|------------|-------------------|
| Generating code and dependency SBOMs | Mature | cdxgen, Syft |
| Generating BOMs for AI models and metadata | Tools emerging | OWASP AIBOM Generator, cdxgen `aibom` mode |
| Static analysis of model binaries | Tools emerging | Lab700x AI SBOM Scanner |
| Identifying LLM inference servers and AI packages | Mature | Trivy, Syft |
| SBOM storage and vulnerability monitoring | Mature | Dependency-Track, SW360 |
| Interpreting license obligations and tracking non-standard compliance | Immature (people and policy) | Tools at a supplementary stage |

{{% alert title="Generation by tools, interpretation by people" color="info" %}}
Several tools already generate AI SBOMs automatically. However, tools cannot automatically guarantee
whether the license fields of a generated BOM are accurate, whether the behavioral use restrictions of
non-standard licenses (the RAIL family, the Llama Community License) are being followed, or whether
obligations are passed downstream without omission. This area is covered by policy and human review.
Details are covered in [3.5 License obligations](./2-ai-extension/1-license-obligations/).
{{% /alert %}}

Installation and usage of each tool are covered with screenshots and command output in the [Tools](./5-tools/) section.

## Relationship with Other Standards

{{% alert title="Relationship with ISO/IEC 5230 and 42001" color="info" %}}
- **ISO/IEC 5230 (license compliance)**: The AI SBOM guide inherits the 5230 methodology as is.
  Organizations that already have a 5230 program can reuse the program foundation, such as policy,
  competence, and resources, and only need to add the AI extension areas. See the
  [ISO/IEC 5230 Conformance Guide](../iso5230_guide/).
- **ISO/IEC 42001 (AI management system)**: Technical details of AI SBOM formats (SPDX 3.0 AI Profile,
  CycloneDX ML-BOM) and generation tools are covered in
  [ISO/IEC 42001 Guide: AI SBOM](../iso42001_guide/4-operation/2-ai-sbom/). Building on that, this
  guide focuses on "how to operate a compliance program."
{{% /alert %}}

## Original Specification

{{% pageinfo %}}
- **Document**: Artificial Intelligence System Bill of Materials: Compliance Management Guide for
  the Supply Chain, Version 1.0
- **Publisher**: OpenChain Project AI Work Group, 2025-10-20
- **License**: Creative Commons Attribution 4.0 (CC-BY-4.0)
- **Official version**: Published as PDF and Markdown in the OpenChain Reference-Material repository (`AI-SBOM-Compliance/en`)
- **Announcement**: [openchainproject.org](https://openchainproject.org/news/2025/10/20/welcoming-the-openchain-ai-system-bill-of-materials-compliance-guide)
{{% /pageinfo %}}
