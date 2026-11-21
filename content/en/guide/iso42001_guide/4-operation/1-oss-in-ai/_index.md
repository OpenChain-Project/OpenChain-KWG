---
title: "Open Source Management in AI Systems"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "AI Framework", "Open Source License", "AI Data"]
description: >
  Explains how to manage the open source licenses of AI frameworks, pre-trained models, and training datasets
  in accordance with ISO/IEC 42001 §8.5 (AI system life cycle) and §8.6 (AI data management).
---

## 1. Overview

ISO/IEC 42001 §8.5 (AI system life cycle) and §8.6 (AI data management) cover requirements that must be managed
during the AI system development stage. From an open source perspective, the key is
**license compliance for the open source components** used in AI systems.

---

## 2. §8.5 AI System Life Cycle: Managing Open Source Frameworks and Models

### 2.1 Planning and Design Stage

When selecting the open source frameworks and models to use in the planning stage of an AI system,
review their licenses in advance.

**Prior license review procedure:**

```
1. List candidate components
   (framework name, version, source URL)

2. Check licenses
   - Frameworks: check PyPI, npm, GitHub README
   - AI models: check the Hugging Face Model Card and official repository

3. License terms to review
   □ Whether commercial use is permitted
   □ Whether there is an obligation to disclose derivatives (fine-tuned models)
   □ Whether there is a copyright notice obligation
   □ Whether there is a patent clause (such as the explicit patent grant in Apache 2.0)
   □ Whether there are use restrictions based on MAU or revenue

4. If an unacceptable license is identified, look for alternative components
```

### 2.2 Development Stage

Each time a new open source component is added during development, check its license
and reflect it in the AI SBOM immediately.

**Using SCA (software composition analysis) tools:**

Apply existing open source scanning tools to AI project repositories in the same way.

```bash
# Example of scanning an AI project with FOSSLight
fosslight -p ./ai-project-dir -o ./ai-sbom-output

# Generate an SBOM for a Python AI project with cdxgen
cdxgen -t python ./ai-project-dir -o ai-sbom.json
```

Related tool guides:
- [FOSSLight](../../../tools/3-fosslight/)
- [cdxgen](../../../tools/5-cdxgen/)

### 2.3 Details of Major AI Framework Licenses

| Framework | License | Copyright notice | Patent grant | Commercial use | Source disclosure |
|-----------|---------|:---------:|:-------:|:-------:|:-------:|
| PyTorch | BSD 3-Clause | ✅ Required | ❌ None | ✅ Allowed | ❌ Not required |
| TensorFlow | Apache 2.0 | ✅ Required | ✅ Yes | ✅ Allowed | ❌ Not required |
| JAX | Apache 2.0 | ✅ Required | ✅ Yes | ✅ Allowed | ❌ Not required |
| Hugging Face Transformers | Apache 2.0 | ✅ Required | ✅ Yes | ✅ Allowed | ❌ Not required |
| LangChain | MIT | ✅ Required | ❌ None | ✅ Allowed | ❌ Not required |
| scikit-learn | BSD 3-Clause | ✅ Required | ❌ None | ✅ Allowed | ❌ Not required |
| ONNX Runtime | MIT | ✅ Required | ❌ None | ✅ Allowed | ❌ Not required |
| vLLM | Apache 2.0 | ✅ Required | ✅ Yes | ✅ Allowed | ❌ Not required |

### 2.4 Comparison of Major Open Source AI Model Licenses

| Model | License | Commercial use | Derivative models | Main restrictions |
|-----|---------|:--------:|:--------:|-------------|
| Llama 3.1 (8B/70B) | Meta Llama Community License | ✅ Conditional | ✅ Allowed | Permission from Meta required above 700 million MAU |
| Llama 3.1 (405B) | Meta Llama Community License | ✅ Conditional | ✅ Allowed | Restrictions on redistributing model weights |
| Mistral 7B | Apache 2.0 | ✅ Allowed | ✅ Allowed | No restrictions |
| Falcon 180B | Falcon License | ✅ Conditional | ✅ Allowed | License required when generating revenue |
| Gemma 2 | Gemma ToU | ✅ Conditional | ✅ Allowed | Compliance with Google's usage policy |
| Phi-3 | MIT | ✅ Allowed | ✅ Allowed | No restrictions |
| BERT, GPT-2 | Apache 2.0 / MIT | ✅ Allowed | ✅ Allowed | No restrictions |

{{% alert title="Caution: recheck model licenses regularly" color="warning" %}}
The terms of AI model licenses can change when versions are updated.
If you use a model for a long period, **recheck each quarter whether the license terms have changed**.
Models with commercial use restrictions or MAU conditions in particular need to be reviewed again as the scale of the service changes.
{{% /alert %}}

**Checkpoints: §8.5**
- [ ] Have the licenses of all frameworks used in developing the AI system been reviewed?
- [ ] Have the license terms (commercial use, MAU limits, and so on) of the pre-trained models in use been confirmed?
- [ ] Are license obligations (copyright notices and so on) included in the distributed artifacts?
- [ ] Has an SCA scan been performed to identify security vulnerabilities?

---

## 3. §8.6 AI Data Management: Training Dataset Licenses ★

If an open data license applies to a dataset used to train an AI system,
the terms of that license must be fulfilled.

### 3.1 Obligations of Major Open Data Licenses

| License | Attribution | ShareAlike | Commercial use | How to comply |
|---------|:---------:|:--------:|:--------:|---------|
| CC0 1.0 | ❌ Not required | ❌ Not required | ✅ Allowed | No action needed |
| CC-BY 4.0 | ✅ Required | ❌ Not required | ✅ Allowed | State the data source in the model card |
| CC-BY-SA 4.0 | ✅ Required | ✅ Required | ✅ Allowed | Legal review required (license of the derivative model) |
| CC-BY-NC 4.0 | ✅ Required | ❌ Not required | ❌ Not allowed | Use only for non-commercial research purposes |
| ODbL (OpenStreetMap and others) | ✅ Required | ✅ Required | ✅ Allowed | Publish derivative databases under the same terms |

### 3.2 Writing a Model Card

If a CC-BY family dataset was used for training, state the source in the model card.

```markdown
## Model Card: [Model name]

### Training Data

This model was trained using the following datasets:

| Dataset | License | Source |
|---------|---------|------|
| Wikipedia (2024-01) | CC-BY-SA 4.0 | https://dumps.wikimedia.org/ |
| Common Crawl (CC-MAIN-2023) | No conditions | https://commoncrawl.org/ |
| [Internal dataset] | Owned by the organization | Internal |
```

**Checkpoints: §8.6**
- [ ] Are the list of training datasets and their licenses recorded in the AI SBOM?
- [ ] When CC-BY family data is used, is the source stated in the model card or public documentation?
- [ ] Is CC-BY-NC data not being used in commercial services?
- [ ] If CC-BY-SA data was used for training, has the license of the derivative model been discussed with the legal team?

---

## 4. References

- [Operation section home](../)
- [AI SBOM Guide](../2-ai-sbom/)
- [AI Supply Chain Verification](../3-supply-chain/)
- [ISO/IEC 5230: §3.3 Content Review](../../../iso5230_guide/3-content-review/)
- [ISO/IEC 18974: §4.3.2 Security Assurance](../../../iso18974_guide/3-content-review/2-security-assurance/)
- [Enterprise Open Source Management Guide: AI Compliance](../../../opensource_for_enterprise/7-ai-compliance/)
