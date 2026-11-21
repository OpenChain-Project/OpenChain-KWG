---
title: "2. Planning"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "AI Risk", "Impact Assessment", "Planning"]
description: >
  Explains the requirements of ISO/IEC 42001 §6 (Planning) that intersect with open source management.
  It describes how to include open source license and vulnerability risks in the AI risk assessment and the AI system impact assessment.
---

## 1. Overview

ISO/IEC 42001 §6 requires a systematic way to identify and address risks and opportunities related to AI systems.
In particular, <strong>§6.1.2 (AI risk assessment)</strong> and <strong>§6.1.4 (AI system impact assessment)</strong> are
used directly to include risks that can arise from open source components.

---

## 2. §6.1.2 AI Risk Assessment: Including Open Source Risks ★

ISO/IEC 42001 requires a process to identify, analyze, and evaluate risks related to AI systems.
Open source practitioners must explicitly include **open source license risks** and **security vulnerability risks**
in this process.

### Types of Open Source-Related AI Risks

| Risk type | Cause | Impact | Response |
|-----------|------|------|---------|
| **License non-compliance** | Custom license terms of an AI model not checked | Legal disputes, service suspension | Mandatory license review before use |
| **GPL contamination** | Combining copyleft-licensed AI components with proprietary code | Obligation to disclose source code | Prior review of license compatibility |
| **Violation of model license terms** | MAU limits or use restrictions not met | License termination, damages | Regular checks of compliance with each term |
| **Open source vulnerabilities** | CVEs in AI frameworks or their dependencies | System compromise, data leakage | Regular SCA scans, applying patches |
| **Dataset license violation** | Using CC-BY-NC data in a commercial service | Copyright infringement | Re-review of dataset licenses |
| **Supply chain risk** | License change of an external open source model | Threat to service continuity | Establishing supply chain monitoring |

### Open Source Items to Include in the AI Risk Assessment Report

```markdown
## AI Risk Assessment Report: Open Source Risk Section

### AI system assessed: [System name]
### Assessment date: YYYY-MM-DD

| # | Risk item | Component currently used | Likelihood | Impact | Risk level | Response |
|---|------------|-----------------|:----:|:----:|:---------:|---------|
| 1 | License non-compliance | [Model name, license] | Medium | High | High | Legal review |
| 2 | OSS vulnerability | [Framework name, version] | Medium | High | High | SCA scan |
| 3 | Dataset license | [Dataset name, license] | Low | Medium | Medium | Recheck license |
```

{{% alert title="Connection with ISO/IEC 18974" color="success" %}}
The risk of open source vulnerabilities used in AI systems connects directly to the §4.3.2 (Security assurance) requirement
of ISO/IEC 18974. Applying the vulnerability detection and assessment process of 18974 to AI systems as well removes the need to build
a separate risk assessment framework.

Related guide: [ISO/IEC 18974: §4.3.2 Security Assurance](../../iso18974_guide/3-content-review/2-security-assurance/)
{{% /alert %}}

**Checkpoints**:
- [ ] Does the AI risk assessment process include open source license risk items?
- [ ] Does the AI risk assessment process include open source security vulnerability risk items?
- [ ] Are the results of the risk assessment documented?
- [ ] Has a treatment plan been established according to the risk level?

---

## 3. §6.1.4 AI System Impact Assessment: Using ISO/IEC 42005 ★

When assessing the impact an AI system can have on individuals, groups, and society,
also include the impact caused by open source components.

{{% alert title="ISO/IEC 42005:2025, AI System Impact Assessment" color="info" %}}
ISO/IEC 42005:2025 (published 2025-05) is an SC 42 family standard that provides the **specific method of performing**
the §6.1.4 AI system impact assessment. ISO 42001 states only the principle that "an impact assessment shall be performed,"
but 42005 provides guidance on the assessment scope, timing, interested parties, and even the documentation format.

**Recommended use**: ISO 42001 certification auditors use the eight assessment areas of 42005 as the criteria
when checking how specific the impact assessment deliverables are. Organizations that comply only with 42001 without referring to 42005
are likely to be told that their impact assessment reports are a formality.
{{% /alert %}}

### 3.1 Eight Impact Assessment Areas Based on ISO/IEC 42005

| # | Assessment area | Key question (open source perspective) |
|---|----------|------------------------|
| 1 | **Affected individuals and groups** | Which population groups are affected in a discriminatory way by known biases of the open source model? |
| 2 | **Societal and environmental impact** | Are the training data sources biased toward particular languages or cultures? What are the carbon emissions of GPU training? |
| 3 | **Intended use cases** | Does the open source model license permit the intended use (for example, the military and medical exclusion clauses of Llama)? |
| 4 | **Reasonably foreseeable misuse** | What misuse paths are possible because the model weights are public (deepfakes, generating weapons information, and so on)? |
| 5 | **Data quality and representativeness** | Bias, licenses, and inclusion of personal information in the training dataset (open data) |
| 6 | **System limitations and failure modes** | Are the limitations stated in the model card sufficiently communicated to users? |
| 7 | **Explainability and transparency** | Level of disclosure of the AI SBOM (SPDX 3.0/CycloneDX 1.6 ML-BOM) |
| 8 | **Governance and accountability** | Allocation of responsibility when the open source model has defects (including limits on supplier indemnification) |

### 3.2 AI System Impact Assessment Report Template

```markdown
## AI System Impact Assessment Report (ISO/IEC 42001 §6.1.4 + ISO/IEC 42005)

### 1. System overview
- System name / version / assessment date / assessor
- Intended use cases / out-of-scope use cases
- Open source models, datasets, and frameworks used (see the AI SBOM)

### 2. Identifying interested parties
- Direct users / indirectly affected groups / regulators / data subjects

### 3. Impact analysis by area (eight areas of 42005)
- Area 1 (affected individuals and groups): __________
- Area 2 (societal and environmental): __________
- ... (complete all eight areas)

### 4. Impacts related to open source components
- Impact of security vulnerabilities: __________
- Impact of service suspension due to copyright issues: __________
- Transparency of training data sources: __________

### 5. Mitigation measures
- Mitigation measure / owner / due date for each identified risk

### 6. Assessment result and approval
- Residual risk level / deployment approval / next reassessment date
```

**Checkpoints**:
- [ ] Do the AI system impact assessment items include security and legal impacts related to open source components?
- [ ] Is the impact assessment performed before deploying the AI system and when major changes occur?
- [ ] Does it cover all eight assessment areas of ISO/IEC 42005?
- [ ] Are the assessment results appropriately disclosed to interested parties (including mitigation measures)?

---

## 4. §6.2 AI Objectives

Establish measurable AI objectives linked to open source compliance.

### Examples of Open Source-Related AI Objectives

```markdown
- AI SBOM currency rate: maintain 100% each quarter
- Open source vulnerability patch completion rate: 95% or more of Critical CVEs patched within 14 days of discovery
- AI model license review completion rate: 100% prior review when adopting new models
- Dataset license recording rate: 100% of dataset licenses recorded in the AI SBOM
```

---

## 5. References

- [ISO/IEC 42001 Guide home](../)
- [ISO/IEC 18974: §4.3.2 Security Assurance](../../iso18974_guide/3-content-review/2-security-assurance/)
- [Enterprise Open Source Management Guide: 3. Process](../../opensource_for_enterprise/3-process/)
- [ISO 5230, 18974, 42001 Comparison: SC 42 Family Mapping](../compare/#3-sc-42-family-mapping)
