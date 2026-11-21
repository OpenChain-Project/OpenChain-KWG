---
title: "1. Context of the Organization and Leadership"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "AI Policy", "Context of the Organization", "Leadership"]
description: >
  Explains the requirements of ISO/IEC 42001 §4 (Context of the organization) and §5 (Leadership) that intersect with open source management.
  It describes how to include open source usage principles in the AI policy.
---

## 1. Overview

ISO/IEC 42001 §4 and §5 are the **foundation** of the AI management system. They determine which AI systems the organization operates,
who the interested parties are, and on what principles top management will manage AI.

From the perspective of open source practitioners, §5.2 (AI policy) is the most important point of intersection.
Including principles on open source use in the AI policy makes it possible to operate it in an integrated way with the ISO 5230 policy.

---

## 2. §4 Context of the Organization: Open Source Considerations

### §4.1 Understanding the Organization and Its Context

When identifying internal and external issues that affect the purpose of the AI management system,
include external issues related to open source:

- Changes in the license policies of open source AI models (for example, changes to Llama license terms)
- Domestic and international AI regulations and mandatory open source disclosure requirements
- Security vulnerability risks of open source components in the AI supply chain

#### Global AI Regulations and Standards Matrix (as of 2026-05)

The following global regulations and standards directly intersect with open source management in AI systems,
so they must be reflected in the analysis of the organization's context. This matrix is the reference baseline for this entire guide.

| Regulation or standard | Effective date | Key obligations | Open source intersection |
|----------|-----------|----------|---------------|
| **EU AI Act §53** (GPAI) | Phased application from 2026-08 | Publishing a summary of training data, respecting copyright opt-outs, preparing technical documentation | Tracking licenses and sources of AI model training datasets |
| **EU AI Act §50** | 2026-08 | Labeling and transparency for AI-generated content | Marking the output of AI coding tools |
| **EU AI Act §40** | 2026-08 | Reporting energy consumption | AI SBOM `energyConsumption` field |
| **EU AI Act §25** | 2026-08 | Value chain obligations (providing information to downstream integrators) | Receiving supplier information when adopting external AI models |
| **EU AI Act §11 + Annex IV** | 2027 (high-risk) | Obligation to prepare technical documentation | AI SBOM as a core element of technical documentation |
| **Korea's AI Basic Act (AI 기본법)** | In force from 2026-01 | Classification of high-impact AI, impact assessment, AI system labeling obligations, disclosure of training data sources | Obligation to prepare AI SBOMs and model cards |
| **US Copyright Office AI guidance** | Published 2023-03, updated 2024 | Fully AI-generated works = no human authorship (cannot be registered for company copyright). Copyright is recognized according to the proportion of human review and modification | Handling copyright ownership of AI coding tool output |
| **US EO 14110** (2023) | Revoked 2025-01 (replaced by EO 14179) | SBOM requirements for federal AI systems, reporting of dual-use AI models | AI SBOM standardization, adoption of NIST AI RMF |
| **NIST AI RMF 2.0** | Published 2024 | Standard framework for AI risk management (GOVERN, MAP, MEASURE, MANAGE) | Complementary to ISO/IEC 42001 |
| **OSAID 1.0** (OSI, 2024-10) | In effect | Definition of an "open source AI model": disclosure of three elements (data, code, weights) | "Open Weight" models (Llama, Gemma) do not meet OSAID, so classification in tables must be accurate |
| **ISO/IEC 42005** (2025) | Published | Standard for AI system impact assessment | Specific techniques for the §6.1.4 impact assessment |
| **ISO/IEC 23894** (2023) | Published | Standard for AI risk management | Supplements the §6.1.2 risk assessment |
| **ISO/IEC 5338** (2023) | Published | Standard for AI system life cycle | Defines life cycle stages for §8.5 |
| **ISO/IEC 42003** | In development (new project stage) | Implementation guidance for AI management systems | OpenChain AI WG is working to provide input |
| **ISO/IEC 42006** | Published (2025-07) | Requirements for AI certification bodies | Based on ISO 17021-1, reliability of third-party certification |

{{% alert title="Using the matrix in context analysis" color="info" %}}
Map this matrix to external issues when analyzing the organization's context (§4.1). The other pages of this guide
(§6.1.2 risk assessment, §6.1.4 impact assessment, §7.5 documentation, §8.5 system life cycle,
§8.6 data, §8.8 external procurement) also refer to this matrix.

The regulations and standards listed in the matrix are as of 2026-05. Update this table
when a new version is published or an effective date changes.
{{% /alert %}}

### §4.3 Determining the Scope of the AI Management System

When defining the scope of the AI management system, explicitly include AI systems and processes
that use open source.

**Checkpoints**:
- [ ] Does the AI management system scope document include AI systems that use open source frameworks, models, and datasets?
- [ ] Are external issues related to open source licenses included in the analysis of the organization's context?

---

## 3. §5.2 AI Policy: Including Open Source Principles ★

ISO/IEC 42001 requires the organization to establish an **AI policy**.
From an open source compliance perspective, including the following in the AI policy
keeps it consistent with the ISO 5230 policy.

### Open Source Principles to Add to the AI Policy

```markdown
## Principles for Open Source Use in AI Systems

This organization complies with the following principles when using open source in the development and operation of AI systems.

1. **License compliance**  
   Review and fulfill the license terms of all open source frameworks, pre-trained models,
   and training datasets used in AI systems.

2. **AI SBOM management**  
   Document the open source components (frameworks, models, datasets) that make up AI systems
   in an AI SBOM and keep it up to date.

3. **Security vulnerability management**  
   Regularly check the open source components used in AI systems for security vulnerabilities
   and respond promptly to identified vulnerabilities.

4. **Supply chain verification**  
   Confirm the components and licenses of open source AI models and AI services procured externally.
```

### Integration with the Existing Open Source Policy

{{% alert title="How to integrate with the ISO/IEC 5230 policy" color="success" %}}

If the company already operates an open source policy based on ISO/IEC 5230,
it can operate them in an integrated way by **adding an AI section to the existing open source policy**
instead of writing separate open source principles for the AI policy.

- How to establish an ISO 5230 policy: [Enterprise Open Source Management Guide: 2. Policy](../../opensource_for_enterprise/2-policy/)
- Open source policy template: [Templates: Open Source Policy](../../templates/1-policy/)

{{% /alert %}}

**Checkpoints**:
- [ ] Does the AI policy or the open source policy include principles for open source use in AI systems?
- [ ] Has the AI policy been approved by top management and communicated within the organization?
- [ ] Are there no conflicts between the open source policy and the AI policy?

---

## 4. §5.3 Roles, Responsibilities, and Authorities

Clarify roles and responsibilities related to open source in the AI management system.

| Role | ISO 42001 responsibility | Additional open source responsibility |
|------|---------------|----------------------|
| AI governance lead | Establishing and overseeing the AI policy | Ensuring OSS principles are included in the AI policy |
| AI development lead | Managing the AI system life cycle | Creating and maintaining AI SBOMs |
| Open source program manager (OSPM) | - | Overall OSS compliance of AI systems |
| Security owner | AI risk management | Monitoring AI OSS vulnerabilities |

{{% alert title="Recommendation" color="success" %}}
Formalizing the role so that the open source program manager (OSPM) participates in the AI governance committee
or AI review process allows compliance in both areas to be integrated efficiently.
{{% /alert %}}

---

## 5. References

- [ISO/IEC 42001 Guide home](../)
- [Standards Comparison: ISO 5230, 18974, 42001](../compare/)
- [Enterprise Open Source Management Guide: 2. Policy](../../opensource_for_enterprise/2-policy/)
- [Enterprise Open Source Management Guide: 1. Organization](../../opensource_for_enterprise/1-teams/)
