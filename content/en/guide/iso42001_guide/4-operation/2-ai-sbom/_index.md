---
title: "AI SBOM"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "AI SBOM", "SPDX 3.0", "AI Documentation"]
description: >
  Describes how to build an AI SBOM (AI System Bill of Materials) and which tools generate it,
  in accordance with ISO/IEC 42001 §7.5 (Documented information) and §8.5 (AI system life cycle).
---

## 1. What is an AI SBOM?

An **AI SBOM (AI System Bill of Materials)** documents a list of every element that makes up an AI system,
along with its source and license. It extends the concept of the software SBOM (ISO/IEC 5230 §3.3.1)
to AI systems and is the key deliverable for the ISO/IEC 42001 §7.5 (Documented information) requirement.

### Why an AI SBOM Is Needed: Transparency and Regulatory Compliance

The AI SBOM is a key means of securing **transparency and explainability of AI systems**.
ISO/IEC 42001 Appendix C.2.11 states transparency and explainability as key objectives of the AI management system.

| Requiring party | Basis | Role of the AI SBOM |
|---------|------|------------|
| **ISO/IEC 42001** | Appendix C.2.11 (transparency and explainability) | Securing transparency of AI system composition |
| **EU AI Act** | Technical documentation requirements for high-risk AI systems | Stating training data and model sources |
| **EU Cyber Resilience Act (CRA)** | Transparency obligations for AI products | Component list and vulnerability tracking |
| **OpenChain AI Work Group** | AI SBOM Compliance Guide | Standard procedures for AI SBOMs in the supply chain |

{{% alert title="ISO/IEC 42003 and the AI SBOM" color="info" %}}
**ISO/IEC 42003** (in development), the implementation guidance for ISO/IEC 42001, is expected to include specific requirements related to AI SBOMs.
The OpenChain AI Work Group is working to have its AI SBOM guide reflected in
§6.2 (AI objectives) and Appendix C.2.11 (transparency and explainability) of 42003.
{{% /alert %}}

### AI SBOM vs Software SBOM

| Item | Software SBOM | AI SBOM |
|---------|---------------|---------|
| **Scope** | Libraries, packages, executables | Frameworks + models + datasets |
| **License types** | SPDX standard licenses | SPDX + custom AI licenses (Llama, Gemma ToU, and others) |
| **Standard format** | SPDX 2.x, CycloneDX 1.4 | SPDX 3.0 AI profile, CycloneDX 1.6 |
| **Additional information** | None | Number of model parameters, training data sources, model purpose, and so on |
| **Related ISO standard** | ISO/IEC 5230 §3.3.1 | ISO/IEC 42001 §7.5 |

---

## 2. Components of an AI SBOM

```
AI SBOM
  │
  ├── 1. AI frameworks and libraries
  │       (same items as a regular software SBOM)
  │       - name, version, license, PURL, hash
  │
  ├── 2. Pre-trained Model
  │       - name, version, license
  │       - primaryPurpose (inference / training / fine-tuning / evaluation)
  │       - modelCard URL (link to the model card)
  │       - baseModel (original model, for fine-tuning)
  │
  ├── 3. Training datasets
  │       - name, version, license
  │       - dataCollectionProcess (collection method)
  │       - dataType (text / image / audio / etc.)
  │       - knownBias (known bias, if any)
  │
  ├── 4. Fine-tuning data (if applicable)
  │       - name, license, source
  │       - dataType
  │
  └── 5. Fact Sheet (AI system card) ★
          - Bias information and limitations
          - Data sources and data availability
          - Summary of model performance and evaluation results
          - Intended uses and prohibited uses
          - Known safety and security issues
```

{{% alert title="What is a Fact Sheet?" color="info" %}}
A **Fact Sheet** (or extended model card) is a document that provides transparency and explainability for an AI system.
It is a key means of meeting ISO/IEC 42001 Appendix C.2.11 and the technical documentation requirements for high-risk AI under the EU AI Act.
The OpenChain AI Work Group is working to include this Fact Sheet information as a standard component of the AI SBOM.
{{% /alert %}}

---

## 3. AI SBOM Standard Format Specifications (SPDX 3.0, CycloneDX 1.6)

Two AI SBOM standard formats have become de facto industry standards. The two formats complement each other,
and an organization can adopt either one or both.

| Standard | Released | AI specification | Key strengths |
|------|------|------------|----------|
| **SPDX 3.0** | 2024-04 | AI Profile (`AIPackage` class) | Strong expression of licenses and copyright, successor to ISO/IEC 5962:2021 |
| **CycloneDX 1.6** | 2024-04 | ML-BOM (`modelCard`) | Rich security, ethics, and performance metadata, ECMA-424 standard |

The AI Work Group of the OpenChain Korea Work Group has developed an AI SBOM guide that supports both formats.

### 3.1 Twelve Core Fields of the SPDX 3.0 AI Profile

The SPDX 3.0 AI Profile expresses AI model metadata through the [`AIPackage`](https://spdx.github.io/spdx-spec/v3.0.1/model/AI/Classes/AIPackage/)
class. Among the AI-specific fields, the twelve core fields used most often are as follows.

| # | Field | Meaning | Example value |
|---|------|------|--------|
| 1 | `typeOfModel` | Model type | "LLM", "Image Classification", "Reinforcement Learning" |
| 2 | `modelArchitecture` | Details of the model architecture | "Transformer Decoder", "Vision Transformer", "MoE" |
| 3 | `hyperparameter` | Hyperparameters (key/value) | `contextWindow: 131072`, `learningRate: 2e-5` |
| 4 | `modelDataPreprocessing` | Training data preprocessing method | "BPE Tokenization", "Image normalization (224×224)" |
| 5 | `informationAboutTraining` | Information about the training procedure | "Pretrained on 15T tokens, fine-tuned on KoAlpaca" |
| 6 | `informationAboutApplication` | Information about the intended application | "Customer support chatbot, EN/KO" |
| 7 | `metric` | Performance metrics | "MMLU: 0.78", "HumanEval: 0.65" |
| 8 | `metricDecisionThreshold` | Decision threshold | "Toxicity > 0.7 → reject" |
| 9 | `limitation` | Known limitations and weaknesses | "Hallucinates on dates after 2024-12" |
| 10 | `safetyRiskAssessment` | Result of the safety and security risk assessment | "Prompt injection assessment completed (PASS)" |
| 11 | `modelExplainability` | Explainability techniques | "SHAP analysis supported", "Attention map visualization" |
| 12 | `autonomyType` | Level of autonomy | "Human-in-the-loop", "Fully autonomous" |

Supplementary fields (as needed): `domain` (application domain), `energyConsumption` (energy consumption),
`standardCompliance` (list of standards complied with), `useSensitivePersonalInformation` (whether sensitive personal information is used).
Inherited fields (`name`, `packageVersion`, `downloadLocation`, `suppliedBy`, `primaryPurpose`,
`releaseTime`) are written in the same way as in a regular SBOM.

### 3.2 Example of an SPDX 3.0 AI SBOM

```yaml
spdxVersion: SPDX-3.0
SPDXID: SPDXRef-DOCUMENT
name: "MyAI-Service AI SBOM"
dataLicense: CC0-1.0
created: "2026-04-01T00:00:00Z"
createdBy:
  - type: Tool
    identifier: "cdxgen-10.0"

packages:
  # 1. AI frameworks
  - SPDXID: SPDXRef-pytorch
    name: torch
    versionInfo: "2.2.0"
    supplier: "Organization: Meta AI"
    downloadLocation: "https://pypi.org/project/torch/2.2.0/"
    licenseConcluded: BSD-3-Clause
    primaryPurpose: library

  - SPDXID: SPDXRef-transformers
    name: transformers
    versionInfo: "4.40.0"
    supplier: "Organization: Hugging Face"
    downloadLocation: "https://pypi.org/project/transformers/4.40.0/"
    licenseConcluded: Apache-2.0
    primaryPurpose: library

  # 2. Pre-trained model
  - SPDXID: SPDXRef-llama3-8b
    name: meta-llama/Llama-3.1-8B-Instruct
    versionInfo: "3.1"
    supplier: "Organization: Meta AI"
    downloadLocation: "https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct"
    licenseConcluded: LicenseRef-Meta-Llama-Community-License
    primaryPurpose: inference
    # AI profile extension fields
    modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct"
    hyperparameter:
      contextWindow: 131072

  # 3. Fine-tuning dataset
  - SPDXID: SPDXRef-dataset-alpaca-korean
    name: beomi/KoAlpaca-v1.1a
    versionInfo: "1.1a"
    downloadLocation: "https://huggingface.co/datasets/beomi/KoAlpaca-v1.1a"
    licenseConcluded: CC-BY-NC-4.0
    primaryPurpose: trainData
    dataCollectionProcess: "Korean instruction-following dataset"

relationships:
  - spdxElementId: SPDXRef-llama3-8b
    relationshipType: TRAINED_ON
    relatedSpdxElement: SPDXRef-dataset-alpaca-korean
```

{{% alert title="Caution with CC-BY-NC datasets" color="warning" %}}
The `beomi/KoAlpaca-v1.1a` dataset in the example above is licensed under **CC-BY-NC 4.0**
and may be used only for **non-commercial purposes**. If a commercial service uses a model
fine-tuned with this dataset, consult the legal team immediately.

This example is intended to explain the AI SBOM format. Commercial services should use datasets under licenses
that permit commercial use, such as Apache 2.0, MIT, CC-BY 4.0, or CC0.
{{% /alert %}}

### 3.3 Core Fields of the CycloneDX 1.6 ML-BOM (Four Areas of modelCard)

[CycloneDX 1.6 ML-BOM](https://cyclonedx.org/capabilities/mlbom/) expresses AI model metadata in the
`modelCard` field of a component. modelCard consists of four areas.

**(1) `modelParameters`: Model configuration (7 fields)**

| Field | Meaning |
|------|------|
| `approach` | Training approach (Supervised / Unsupervised / Reinforcement / Semi-supervised) |
| `task` | Type of model task (classification, regression, text-generation, and so on) |
| `architectureFamily` | Architecture family (transformer, CNN, RNN, LSTM, and so on) |
| `modelArchitecture` | Specific architecture (GPT-4o, ResNet-50, YOLOv8, and so on) |
| `datasets` | List of references to datasets used for training and evaluation |
| `inputs` | Input format (MIME type, tensor shape, and so on) |
| `outputs` | Output format |

**(2) `quantitativeAnalysis`: Performance analysis (2 fields)**

| Field | Meaning |
|------|------|
| `performanceMetrics` | Performance metrics (accuracy, F1, MSE, top-k, and so on) |
| `graphics` | Attached graphs and images of evaluation results |

**(3) `considerations`: Ethical and operational considerations (7 fields)**

| Field | Meaning |
|------|------|
| `users` | Intended users |
| `useCases` | Intended use cases |
| `technicalLimitations` | Technical limitations |
| `performanceTradeoffs` | Performance and accuracy trade-offs |
| `ethicalConsiderations` | Assessment of ethical risks |
| `environmentalConsiderations` ★ | Environmental impact (power consumption, carbon emissions), **new in 1.6** |
| `fairnessAssessments` | Fairness assessment (benefits and risks for each affected group) |

**(4) `properties`: Free-form key-value**

Additional internal organizational metadata (approver, review date, and so on) can be recorded.

### 3.4 Example of a CycloneDX 1.6 ML-BOM

```json
{
  "bomFormat": "CycloneDX",
  "specVersion": "1.6",
  "components": [
    {
      "type": "machine-learning-model",
      "bom-ref": "model-llama3.1-8b",
      "name": "Meta Llama 3.1 8B Instruct",
      "version": "3.1",
      "supplier": { "name": "Meta AI" },
      "licenses": [
        { "license": { "name": "Llama 3.1 Community License" } }
      ],
      "modelCard": {
        "bom-ref": "card-llama3.1-8b",
        "modelParameters": {
          "approach": { "type": "supervised" },
          "task": "text-generation",
          "architectureFamily": "transformer",
          "modelArchitecture": "Decoder-only Transformer",
          "datasets": [ { "ref": "ds-meta-pretrain-15T" } ],
          "inputs": [ { "format": "text/plain" } ],
          "outputs": [ { "format": "text/plain" } ]
        },
        "quantitativeAnalysis": {
          "performanceMetrics": [
            { "type": "MMLU", "value": "0.78" },
            { "type": "HumanEval", "value": "0.65" }
          ]
        },
        "considerations": {
          "users": [ "Enterprise developers" ],
          "useCases": [ "Customer support chatbot (EN/KO)" ],
          "technicalLimitations": [ "Hallucinates on dates after 2024-12" ],
          "ethicalConsiderations": [
            { "name": "Prompt injection", "mitigation": "Input filtering" }
          ],
          "environmentalConsiderations": {
            "energyConsumptions": [
              {
                "activity": "inference",
                "energyMeasure": { "value": 0.5, "unit": "kWh" }
              }
            ]
          }
        }
      }
    }
  ]
}
```

{{% alert title="Recommendation to publish SPDX 3.0 and CycloneDX 1.6 together" color="success" %}}
To meet both the technical documentation requirements for high-risk systems under the EU AI Act and future ISO/IEC 42003 requirements,
it is recommended to **publish both** SPDX 3.0 (for license tracking) and the CycloneDX 1.6 ML-BOM (for security and ethics tracking).
The two formats can be linked through component IDs (PURL or `modelCard.bom-ref`).
{{% /alert %}}

---

## 4. AI SBOM Generation Tools

### 4.1 cdxgen (CycloneDX Format)

cdxgen analyzes the dependencies of a Python AI project and generates an SBOM in CycloneDX format.
AI-specific fields must be added separately.

```bash
# Generate an SBOM for a Python AI project
cdxgen -t python ./my-ai-project -o ai-sbom.json

# Generate based on requirements.txt
cdxgen -t pypi -r requirements.txt -o ai-sbom.json
```

Tool guide: [cdxgen usage guide](../../../tools/5-cdxgen/)

### 4.2 Syft (Container Image Analysis)

If an AI service is deployed as a container, use Syft to generate an SBOM for the entire container image.

```bash
# Generate an SBOM for an AI service container image
syft my-ai-service:latest -o spdx-json=ai-container-sbom.json
```

Tool guide: [Syft usage guide](../../../tools/6-syft/)

### 4.3 Dependency-Track (AI SBOM Management and Vulnerability Tracking)

Uploading the generated AI SBOM to Dependency-Track enables continuous vulnerability monitoring.

```bash
# Upload an AI SBOM to Dependency-Track
curl -X "POST" "http://dtrack:8080/api/v1/bom" \
  -H "X-Api-Key: ${DTRACK_API_KEY}" \
  -F "bom=@ai-sbom.json" \
  -F "projectName=MyAI-Service" \
  -F "projectVersion=1.0.0"
```

Tool guide: [Dependency-Track usage guide](../../../tools/7-dependency-track/)

---

## 5. AI SBOM Operating Procedure

### Managing the AI SBOM Life Cycle

```
Start of AI system development
  └─ Draft the AI SBOM (when frameworks and models are decided)
       └─ Update immediately when components are added during development
            └─ Final review of the AI SBOM before deployment
                 └─ Archive the AI SBOM at deployment (by version)
                      └─ Respond using the AI SBOM when new vulnerabilities are found during operation
                           └─ Monitor model license changes → update the AI SBOM as needed
```

**Checkpoints**:
- [ ] Have AI SBOMs been generated and archived for all deployed versions?
- [ ] Does the AI SBOM include all frameworks, models, and datasets?
- [ ] Is the license of each component recorded accurately?
- [ ] Is vulnerability monitoring performed based on the AI SBOM?
- [ ] Are model signing (OpenSSF Model Signing, Sigstore) verification results recorded in the AI SBOM?
- [ ] Is the training build provenance (SLSA for AI L1 or higher) kept as an attestation?

{{% alert title="Model signing and build provenance" color="info" %}}
Sign model weight files with OpenSSF Model Signing (the `model-signing` CLI),
and attach provenance to training and fine-tuning builds according to the SLSA for AI level (L1 to L3).
For specific procedures, see [Supply Chain Verification §6.3 OpenSSF Model Signing](../3-supply-chain/#63-adopting-openssf-model-signing) and
[§6.4 SLSA for AI Build Levels](../3-supply-chain/#64-slsa-for-ai-build-levels).
{{% /alert %}}

---

## 6. Connection with the AI Work Group Guide

The AI Work Group of the OpenChain Korea Work Group has developed and published the **AI SBOM Compliance Guide**.
This guide explains in detail how to write AI SBOMs using the SPDX 3.0 AI profile.

- AI Work Group activities and guide: [Resources: AI Work Group](../../../../resource/AI_work_group/)

---

## 7. References

- [Operation section home](../)
- [ISO/IEC 5230: §3.3.1 SBOM](../../../iso5230_guide/3-content-review/1-sbom/)
- [ISO/IEC 18974: §4.3.1 SBOM](../../../iso18974_guide/3-content-review/1-sbom/)
- [Tools: cdxgen](../../../tools/5-cdxgen/)
- [Tools: Syft](../../../tools/6-syft/)
- [Tools: Dependency-Track](../../../tools/7-dependency-track/)
- [AI Work Group](../../../../resource/AI_work_group/)
