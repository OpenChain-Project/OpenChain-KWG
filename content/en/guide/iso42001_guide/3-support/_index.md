---
title: "3. Support"
weight: 30
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "Competence", "AI SBOM", "Documentation", "Support"]
description: >
  Explains the requirements of ISO/IEC 42001 §7 (Support) that intersect with open source management.
  It describes how to establish competence in AI open source management and how to document the AI SBOM.
---

## 1. Overview

ISO/IEC 42001 §7 covers the **competence, awareness, communication, and
documentation** needed to operate the AI management system. From the perspective of open source practitioners, **§7.2 (Competence)** and <strong>§7.5 (Documented information)</strong> are
the key points of intersection.

---

## 2. §7.2 Competence: AI Open Source Management Competence ★

ISO/IEC 42001 requires that persons performing AI-related roles have the necessary competence.
From an open source compliance perspective, AI development and operations staff should have the following competencies.

### Elements of AI Open Source Management Competence

| Competence area | Description | Related training |
|---------|------|---------|
| **Understanding AI framework licenses** | Knowing the license terms of major frameworks such as PyTorch and TensorFlow | Open source license training |
| **Reviewing AI model licenses** | Analyzing custom license terms (use restrictions, handling of derivatives) | Training on collaboration with the legal team |
| **Writing AI SBOMs** | How to build an AI SBOM based on the SPDX 3.0 AI profile | AI SBOM hands-on practice |
| **Open source vulnerability management** | SCA scanning of AI system dependencies and CVE response | DevSecOps training |
| **Open data licenses** | CC family license terms and rules for using datasets | Data license training |

### Integration with the Existing Open Source Competence Framework

{{% alert title="Extending the ISO/IEC 5230 competence framework" color="success" %}}
If the company already operates a competence and training framework based on ISO/IEC 5230,
extend it by adding **AI-specific modules** to the existing open source training courses.

Examples of additional modules:
- Understanding AI model licenses (1 hour)
- AI SBOM hands-on practice (2 hours)
- How to verify open source in the AI supply chain (1 hour)

Related guide: [Enterprise Open Source Management Guide: 5. Training](../../opensource_for_enterprise/5-training/)
{{% /alert %}}

**Checkpoints**:
- [ ] Do AI development staff understand the license terms of AI frameworks and models?
- [ ] Is training on how to write AI SBOMs provided?
- [ ] Are competence evaluation records documented?

---

## 3. §7.5 Documented Information: AI SBOM ★

ISO/IEC 42001 §7.5 requires establishing and maintaining the **documented information** needed to operate the AI management system.
From an open source perspective, the **AI SBOM (AI System Bill of Materials)** is the key deliverable of §7.5.

### What is an AI SBOM?

An AI SBOM extends the software SBOM (§3.3.1 of ISO 5230) to AI systems.
It is a list that documents every element that makes up an AI system, along with its source and license.

| Category | Conventional software SBOM | AI SBOM |
|------|---------------------|---------|
| Scope | Libraries, packages | Frameworks + models + datasets |
| Licenses | SPDX standard licenses | SPDX + custom AI licenses |
| Standard format | SPDX 2.x, CycloneDX | SPDX 3.0 AI profile |
| Additional metadata | None | Number of model parameters, training data sources, and so on |

### Components of an AI SBOM

```
AI SBOM
  ├── 1. AI frameworks and libraries
  │       name, version, license, hash
  │
  ├── 2. Pre-trained Model
  │       name, version, license, modelCard URL
  │       primaryPurpose (inference / training / fine-tuning)
  │
  ├── 3. Training datasets
  │       name, version, license, datasetType
  │       knownBias (bias information, if any)
  │
  └── 4. Fine-tuning data (if applicable)
          name, license, source
```

Details on writing an AI SBOM: [AI SBOM Guide](../4-operation/2-ai-sbom/)

### Brief Example of the SPDX 3.0 AI Profile

```yaml
SPDXVersion: SPDX-3.0
DataLicense: CC0-1.0

# AI framework
- SPDXID: SPDXRef-pytorch
  name: pytorch
  versionInfo: "2.2.0"
  licenseConcluded: BSD-3-Clause
  primaryPurpose: library

# Pre-trained model
- SPDXID: SPDXRef-llama3
  name: meta-llama/Llama-3.1-8B
  versionInfo: "3.1"
  licenseConcluded: LicenseRef-Llama-Community
  primaryPurpose: inference
  modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B"

# Training dataset (for fine-tuning)
- SPDXID: SPDXRef-dataset-alpaca
  name: tatsu-lab/alpaca
  licenseConcluded: CC-BY-4.0
  dataCollectionProcess: "Stanford Alpaca 52K instruction dataset"
```

**Checkpoints**:
- [ ] Are all frameworks, models, and datasets used in the AI system recorded in the AI SBOM?
- [ ] Is the AI SBOM updated every time the AI system changes?
- [ ] Does the AI SBOM include license information for each component?

---

## 4. §7.3 Awareness

Ensure that persons performing roles related to AI systems are aware of the importance of open source compliance.

**Checkpoints**:
- [ ] Are AI development staff aware of the risks of not complying with open source requirements in AI systems?

---

## 5. References

- [ISO/IEC 42001 Guide home](../)
- [AI SBOM Guide](../4-operation/2-ai-sbom/)
- [ISO/IEC 5230: §3.3.1 SBOM](../../iso5230_guide/3-content-review/1-sbom/)
- [ISO/IEC 18974: §4.3.1 SBOM](../../iso18974_guide/3-content-review/1-sbom/)
- [Enterprise Open Source Management Guide: 5. Training](../../opensource_for_enterprise/5-training/)
- [AI Work Group](../../../resource/AI_work_group/)
