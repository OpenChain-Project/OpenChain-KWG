---
title: "7. AI Compliance"
linkTitle: "7. AI Compliance"
weight: 70
type: docs
categories: ["guide"]
tags: ["AI Compliance", "ISO/IEC 42001", "AI SBOM", "AI Supply Chain"]
description: >
  Explains the AI compliance factors that companies developing and operating AI systems must consider from an open source perspective.
  Focuses on the open source cross-cutting requirements of the ISO/IEC 42001 AI management system standard.
---

{{% alert title="Requirements Covered in This Section" color="success" %}}
**ISO/IEC 42001**: §5.2 (AI Policy) · §6.1.2 (AI Risk Assessment) · §7.5 (Documentation) · §8.5 (AI Lifecycle) · §8.6 (AI Data) · §8.8 (External AI Procurement)
{{% /alert %}}

AI systems make extensive use of open source frameworks, pre-trained models, and open datasets.
Companies that operate an open source management system (ISO/IEC 5230 · 18974) must apply
open source compliance principles during the AI system development phase as well.
In addition, development environments that leverage AI coding tools (GitHub Copilot, Claude Code, Cursor, etc.)
require a new management framework to address license contamination and the introduction of vulnerable packages.

ISO/IEC 42001 (AI management system) covers AI governance as a whole, and some of its clauses
directly intersect with open source management. This section organizes those intersections from a practical perspective.

## 1. Three Areas Where Open Source Is Used in AI Systems

```
AI System
  ├── 1. AI Frameworks · Libraries
  │       (PyTorch, TensorFlow, Hugging Face Transformers, LangChain, etc.)
  │       → Apply general open source license compliance
  │
  ├── 2. Pre-trained Models
  │       (Llama, Mistral, Falcon, BERT, etc.)
  │       → Custom per-model license verification required
  │
  └── 3. Training Datasets
          (Common Crawl, Wikipedia, CC-BY datasets, etc.)
          → Fulfill open data license obligations
```

Each area has points that differ from existing open source compliance processes, so refer to the following.


## 2. Open Source Management by AI System Area

### (1) Managing AI Frameworks · Libraries

Open source frameworks and libraries used in AI development are subject to the same
ISO/IEC 5230 open source management process as general software.

#### Major AI Framework Licenses

| Framework | License | Commercial Use | Key Obligations |
|-----------|---------|:--------------:|-----------------|
| PyTorch | BSD 3-Clause | ✅ Allowed | Copyright notice |
| TensorFlow | Apache 2.0 | ✅ Allowed | Copyright notice, change notice |
| Hugging Face Transformers | Apache 2.0 | ✅ Allowed | Copyright notice |
| LangChain | MIT | ✅ Allowed | Copyright notice |
| scikit-learn | BSD 3-Clause | ✅ Allowed | Copyright notice |

#### Checkpoints

{{% alert title="Applying ISO/IEC 5230 · 18974" color="success" %}}
- Include all AI frameworks/libraries and their versions in the SBOM
- Fulfill each framework's license obligations (copyright notice, change notice, etc.)
- Analyze AI code repositories using existing scan tools such as FOSSology and FOSSLight
{{% /alert %}}


### (2) Managing Pre-trained Models

Pre-trained models often use **custom licenses** that differ from general open source libraries.
In particular, they may include commercial use restrictions or obligations to disclose derivative models, so caution is required.

#### Major Open Source AI Model License Types (as of 2026-05)

The following table summarizes the licenses of leading industry models as of 2026-05.
Based on **OSAID 1.0** (Open Source AI Definition, OSI, 2024-10), it distinguishes between
"open source AI models" (disclosure of all three elements: data, code, and weights) and
"Open Weight models" (weights only disclosed).

| License Type | Representative Models (as of 2026) | OSAID 1.0 | Commercial Use | Derivative Model Disclosure |
|--------------|-----------------------------------|:---------:|:--------------:|:---------------------------:|
| Apache 2.0 | Mistral 7B, Qwen 2.5 / Qwen 3, Falcon 7B/40B | ✅ Compliant | ✅ Allowed | ❌ Not required |
| MIT | DeepSeek-V3 / DeepSeek-R1, Phi-4, GPT-J | ✅ Compliant | ✅ Allowed | ❌ Not required |
| Meta Llama Community License | Llama 3.1 / 3.3 / 4 | ⚠️ Open Weight | Conditional (free for MAU ≤ 700M) | ❌ Not required |
| Gemma Terms of Use v3 | Gemma 3 | ⚠️ Open Weight | Conditional (AUP acceptance) | ❌ Not required |
| TII Falcon 180B License | Falcon 180B | ⚠️ Open Weight | Separate conditions for commercial use | Check terms of use |
| CC-BY 4.0 | Some academic models | ⚠️ Data only | ✅ Allowed | Attribution required |
| CC-BY-NC 4.0 | Some research models | ❌ Non-commercial only | ❌ Non-commercial only | — |

{{% alert title="OSAID 1.0 vs Open Weight Distinction" color="info" %}}
**OSAID 1.0**: Only models in which all three elements—training data, training code, and model weights—are disclosed under an OSI-approved open source license are recognized as "open source AI models."
**Open Weight**: Models in which only the weights are disclosed while training data/code are not, or models with usage restrictions. Llama, Gemma, Falcon 180B, etc. fall into this category.

During an audit or compliance review, you must be able to clearly answer "Is this model open source by the OSAID standard, or is it Open Weight?"
{{% /alert %}}

{{% alert title="Llama License Obligation Checklist" color="warning" %}}
When using models under the Meta Llama Community License (Llama 3.1·3.3·4, etc.), fulfill all of the following obligations.

- [ ] **Verify the 700 million MAU threshold** — If your company or affiliates exceed 700 million monthly active users (MAU), a separate Meta license negotiation is required
- [ ] **"Built with Llama" notice** — Required notice on derivative models or Llama-based services
- [ ] **"Llama" prefix on derivative model names** — When distributing a derivative model, include "Llama" in the model name (e.g., "Llama-3-Custom-Finetuned")
- [ ] **Acceptable Use Policy (AUP) acceptance** — Accept the terms of use and disseminate them within the organization
- [ ] **Block prohibited use areas** — Prohibited: development of military, nuclear, biological, or chemical weapons, cyberattacks, discrimination, etc. (specified in the AUP)
- [ ] **Verify redistribution restrictions for large models such as 405B** — Some models, such as Llama 3 405B, have additional conditions when redistributing weights
- [ ] **Verify license differences by version** — The license text differs for each version: Llama 2 / 3 / 3.1 / 3.3 / 4

For detailed obligations, see the [official Meta Llama license page](https://www.llama.com/llama-downloads/).
{{% /alert %}}

{{% alert title="Caution: Model Licenses Must Be Verified Individually" color="warning" %}}
AI model licenses are not standardized, so the conditions differ from model to model.
You must directly verify the model card and license on the Hugging Face Model Hub, etc.
In particular, review the following:
- Whether commercial use is permitted
- Restrictions based on number of users (MAU) or revenue
- Obligations to disclose derivative (fine-tuned) models
- Obligations to specify the models used in the AI system
- Differences in license text by model version (e.g., Llama 2/3/3.1/3.3/4)
{{% /alert %}}

#### Including Model Information in the AI SBOM

Build an **AI SBOM** that includes pre-trained models in the SBOM (Software Bill of Materials).
The two de facto industry-standard formats are **SPDX 3.0 AI Profile** (strong on license/copyright expression) and
**CycloneDX 1.6 ML-BOM** (rich in security/ethics/performance metadata),
and organizations may adopt either one or both.

```yaml
# Example AI SBOM model entry (based on SPDX 3.0 AI Profile)
- name: "meta-llama/Llama-3.1-8B"
  version: "3.1"
  license: "Llama Community License Agreement"
  primaryPurpose: "inference"
  hyperparameter:
    contextWindow: 131072
  modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B"
```

For the key field specifications of each standard (12 fields in SPDX 3.0 AI Profile / 4 modelCard areas in CycloneDX 1.6 ML-BOM)
as well as authoring examples and tool usage, refer to the [AI SBOM Guide (Korean)](/OpenChain-KWG/guide/iso42001_guide/4-operation/2-ai-sbom/).


### (3) Managing Training Datasets

If a dataset used to train an AI model is subject to an open data or Creative Commons license,
you must fulfill the conditions of that license.

#### Major Open Data License Types

| License | Attribution | Commercial Use | Share-Alike |
|---------|:-----------:|:--------------:|:-----------:|
| CC0 | ❌ Not required | ✅ Allowed | ❌ Not required |
| CC-BY 4.0 | ✅ Required | ✅ Allowed | ❌ Not required |
| CC-BY-SA 4.0 | ✅ Required | ✅ Allowed | ✅ Required |
| CC-BY-NC 4.0 | ✅ Required | ❌ Non-commercial only | ❌ Not required |

#### Checkpoints

- Record training datasets and their licenses in the AI SBOM
- When using CC-BY-family data, specify the source in the model card or system documentation
- When CC-BY-SA data is used for training, consult the legal team on the license treatment of derivative models


## 3. Alignment with ISO/IEC 42001

If a company operates or is preparing an ISO/IEC 42001 AI management system,
the following clauses connect directly to open source management.

| ISO 42001 Clause | Role of the Open Source Manager |
|------------------|---------------------------------|
| §5.2 AI Policy | Include open source usage principles in the AI policy |
| §6.1.2 AI Risk Assessment | Identify and assess OSS license/vulnerability risks |
| §7.5 Documentation | Establish and maintain the AI SBOM |
| §8.5 AI Lifecycle | Review OSS compliance at each development phase |
| §8.6 AI Data | Manage dataset licenses |
| §8.8 External AI Procurement | Verify the supply chain of external open source models |

Full guide on the open source cross-cutting requirements of ISO/IEC 42001: **[ISO/IEC 42001 Guide (Korean)](/OpenChain-KWG/guide/iso42001_guide/)**


## 4. Leveraging AI Work Group Deliverables

The AI Work Group of the OpenChain Korea Work Group developed an AI SBOM compliance guide.
This guide provides detailed instructions on how to document AI system components (models, datasets, frameworks)
in SPDX 3.0 AI Profile or CycloneDX 1.6 ML-BOM format.

- AI Work Group activities and guide: **[Resources — AI Work Group](../../../resource/AI_work_group/)**


## 5. Compliance When Using AI Coding Tools

AI coding tools such as GitHub Copilot, Claude Code, Cursor, and Windsurf boost development productivity,
but they also bring new risks from an open source compliance perspective.

### (1) Key Risks of AI Coding Tools

- **License contamination risk**: AI learns from open source code and generates similar code. Copyleft code such as GPL may be inadvertently introduced.
- **Recommendation of vulnerable packages**: AI sometimes recommends older versions based on its training data, so packages containing known CVEs may be introduced.
- **Missing dependency SBOM entries**: Dependency packages suggested by AI are also subject to SBOM and vulnerability management.

### (2) Four-Stage Strategy by Assurance Level

| Stage | Core Means | Assurance Level | Recommended For |
|-------|-----------|-----------------|-----------------|
| Stage 1: Reliance on prompts | None (individual memory) | Low | Individual experimentation |
| Stage 2: Internalizing AI rules | CLAUDE.md · .cursorrules, etc. | Medium | Team collaboration |
| Stage 3: Automated CI/CD blocking | syft · grype · ORT | High | Team · Organization |
| Stage 4: Continuous monitoring | Dependabot · Renovate + AI | Very High | Organization · Company-wide |

Stage 1 can be started immediately, but true automated blocking (hard block) takes effect from Stage 3 onward.

### (3) Internalizing the Open Source Policy in AI Rule Files

If you specify the open source policy in advance in AI tool configuration files such as
CLAUDE.md · .cursorrules · .clinerules, the AI will automatically be aware of the policy when generating code.

```markdown
## Open Source Policy

### License Management
Always verify and specify the license when adding a new external package.

**Allowed licenses**: MIT, Apache-2.0, BSD-2-Clause, BSD-3-Clause, ISC
**Caution licenses** (legal review required): LGPL, MPL
**Prohibited licenses** (may not be used without prior approval): GPL, AGPL, SSPL

### Security Management
- Do not use package versions with known CVE vulnerabilities
- Run a vulnerability audit after adding dependencies: `npm audit` / `pip-audit` / `trivy fs .`

### SBOM Management
- The SBOM must be updated when dependencies change
- Generation tools: syft, cdxgen, trivy
```

{{% alert title="Caution: AI Rules Alone Cannot Hard Block" color="warning" %}}
AI rule files act as "recommendations." They will not stop the AI if it makes a mistake or if the developer ignores them.
To mechanically block policy violations, CI/CD pipeline gating is required.
{{% /alert %}}

### (4) Automated CI/CD Pipeline Blocking

Automatically verify with SCA (Software Composition Analysis) tools before merging a PR.

| Role | Tool | Behavior |
|------|------|----------|
| SBOM generation | syft | Extracts all dependencies in CycloneDX/SPDX format |
| Vulnerability blocking | grype | Fails the build when a High/Critical CVE is found |
| License blocking | ORT / script | Fails the build when a prohibited license is found |

For how to configure CI/CD, refer to [4. Tools](../4-tool/) in this guide.

### (5) Handling Copyright Attribution of AI-Generated Code

The copyright attribution of code generated by AI coding tools varies depending on whether **human authorship** is recognized.
From a legal and compliance perspective, decide on and document the following five items.

#### 5-1. Copyright Attribution Criteria for AI-Generated Code

| Scenario | Human Authorship | Eligible for Copyright Registration |
|----------|:----------------:|-------------------------------------|
| Fully AI-generated (only a prompt entered, output used as-is) | ❌ None | ❌ Cannot be registered as a company work (US Copyright Office 2024 guidance) |
| AI draft + substantial human modification (50%+ changed) | ✅ Yes | ✅ Registrable for the human-modified portion only |
| AI-assisted + human-decided design and integration | ✅ Yes | ✅ Registrable as a company work |

**US Copyright Office 2024 AI Guidance** ([official page](https://www.copyright.gov/ai/)): No copyright is granted
to fully AI-generated works; for AI-assisted work, "human creative contribution" must be recognized for copyright to apply.

#### 5-2. Leveraging Vendor IP Indemnification

The following AI coding tool vendors provide IP indemnification (intellectual property assurance) in their terms of use.
Verify the terms before adoption and reflect them in internal policy.

- **Microsoft Copilot Copyright Commitment** — Covers defense and settlement costs for copyright infringement claims for Microsoft 365 Copilot · GitHub Copilot Business/Enterprise users
- **OpenAI Copyright Shield** — Provides the same coverage for ChatGPT Enterprise/Team users
- **Anthropic Customer Protection** — Provides IP coverage for Claude commercial customers
- **Google Cloud Generative AI Indemnification** — Covers users of GCP generative AI services such as Vertex AI

Each form of coverage applies only when its conditions are met (e.g., enabling content filtering, complying with the terms, etc.).

#### 5-3. AI Use Disclosure and Labeling Obligations

EU AI Act §50 and the Korea AI Basic Act impose obligations to label AI-generated content.
Indicate the following when disclosing content internally or externally.

- **Internal code commit messages**: Specify the AI tool used (e.g., `feat: implement API handler (assisted by Claude Code)`)
- **Externally released code**: State AI usage disclosure in the README or CONTRIBUTING
- **AI system outputs**: Labeling per EU AI Act §50 (e.g., "AI-generated", "AI-assisted")

#### 5-4. Documenting the AI Coding Tool Usage Policy

Specify the following items in your internal policy or AI coding tool guidelines.

```markdown
## AI Coding Tool Usage Policy

### Permitted Tools
- Use only commercial tools that provide vendor IP indemnification
  (e.g., GitHub Copilot Business, ChatGPT Enterprise, Claude for Business)
- Personal free accounts (Copilot Individual, etc.) are prohibited for internal code

### Copyright Attribution Decisions
- When AI output is used as-is, state it in the commit message
- For AI draft + human modification, record the modification ratio and the rationale in the PR description
- For fully AI-generated code, review separate license labeling when releasing externally

### Blocking License Risk
- Verify whether AI-recommended code is similar to copyleft-licensed code such as GPL/AGPL
- Use matching detection tools such as Copilot duplicate detection
- Escalate to the legal team when in doubt
```

#### 5-5. External Fact References

This subsection corresponds to the obligations of the US Copyright Office AI guidance · EU AI Act §50 · Korea AI Basic Act
in [§1 Global AI Regulation Matrix (Korean)](/OpenChain-KWG/guide/iso42001_guide/1-context-leadership/#41-조직과-조직-맥락-이해).
When regulations change, check the matrix above first.

#### Checkpoints

- [ ] Is the AI coding tool usage policy documented?
- [ ] Are the criteria for determining copyright attribution of AI-generated code specified?
- [ ] Have the vendor IP indemnification conditions been reviewed and satisfied?
- [ ] Are the AI usage labeling obligations fulfilled for internal commits and external releases?


## 6. Summary

AI compliance is a natural extension of the existing ISO/IEC 5230 · 18974 open source management system.
By identifying and fulfilling license obligations for the three areas of an AI system (frameworks · models · datasets),
and applying the open source cross-cutting clauses of the ISO/IEC 42001 AI management system, a company can build
a comprehensive compliance framework.

Through this section, a company can gain the following benefits:

1. Clarify license obligations for each AI system component
2. Secure external supply chain transparency by operating an AI SBOM
3. Block the risk of license contamination and vulnerability introduction when using AI coding tools
4. Pre-organize the open source area when preparing for ISO/IEC 42001 certification
5. Mechanically prevent policy violations through CI/CD pipeline automation

---

> **ISO/IEC 5230 / 18974 / 42001 Compliance Guide** — Clauses related to this section:
> - [ISO/IEC 42001 Guide Home (Korean)](/OpenChain-KWG/guide/iso42001_guide/) — Overview of the entire AI management system
> - [§5.2 Policy (Korean)](/OpenChain-KWG/guide/iso42001_guide/1-context-leadership/) — Including OSS principles in the AI policy
> - [§6.1.2 AI Risk Assessment (Korean)](/OpenChain-KWG/guide/iso42001_guide/2-planning/) — OSS risk assessment
> - [§7.5 Documentation (Korean)](/OpenChain-KWG/guide/iso42001_guide/3-support/) — AI SBOM
> - [§8.5 · §8.6 AI System · Data (Korean)](/OpenChain-KWG/guide/iso42001_guide/4-operation/1-oss-in-ai/) — OSS management during operation
> - [§8.8 External AI Procurement (Korean)](/OpenChain-KWG/guide/iso42001_guide/4-operation/3-supply-chain/) — AI supply chain verification
> - [AI SBOM Guide (Korean)](/OpenChain-KWG/guide/iso42001_guide/4-operation/2-ai-sbom/) — SPDX 3.0 AI Profile
> - [ISO/IEC 5230 Guide — §3.3.1 SBOM](../../iso5230_guide/3-content-review/1-sbom/) — General SBOM criteria
