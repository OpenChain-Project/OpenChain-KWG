---
title: "OWASP AIBOM Generator"
weight: 10
type: docs
categories: ["guide"]
tags: ["AI SBOM", "OWASP", "CycloneDX", "Tools"]
description: >
  Explains, with screenshots of actual runs, how to use the OWASP tool that generates CycloneDX AI SBOMs from Hugging Face models and scores their completeness.
---

## Overview

OWASP AIBOM Generator is an open source tool that takes a Hugging Face model ID, retrieves the model card metadata, and generates an AI SBOM in CycloneDX format. It is maintained by the OWASP Gen AI Security Project, and its distinguishing feature is scoring how complete the generated BOM is.

Unlike cdxgen, which identifies dependencies quickly but leaves licenses empty, this tool fills in the license, authors, and external references written in the model card. It is a good starting point for the license review required by [3.5 License Obligations](../../2-ai-extension/1-license-obligations/).

## Key Features

- Retrieves metadata of Hugging Face models and generates AIBOMs in CycloneDX 1.6 and 1.7 format.
- Evaluates the completeness of the generated BOM with a score (0 to 100) and a profile, broken down by section.
- Shows model information, the model card, licenses, and external references in a human-readable view.
- Can be used through a web UI or a command line interface (CLI).

## Usage A: Web UI

This is the simplest option because you only enter a model ID in the browser. Use the Hugging Face Space provided by the OWASP Gen AI Security Project, or clone the repository and run it locally.

First, on the input screen, enter a Hugging Face model ID (e.g., `facebook/bart-large-cnn`) and click Generate.

![OWASP AIBOM Generator input screen](images/input-form.png)

**Figure 1.** OWASP AIBOM Generator input screen *(GenAI Security Project, captured 2026-06-13)*

When generation finishes, the result screen shows the AIBOM summary, the completeness assessment, download buttons (CycloneDX 1.6 and 1.7), AI model information, and the model card. The completeness assessment at the top of the screen shows at a glance whether the BOM has the minimum fields needed for identification.

![OWASP AIBOM Generator result screen](images/result-view.png)

**Figure 2.** Generation result screen: model information, license (MIT), completeness assessment (Basic) *(captured 2026-06-13)*

Along with the Human-Friendly View, the result screen provides tabs for a field checklist, a score report, and a JSON view. You can check the fields needed for license obligation review and AI SBOM retention directly on screen and download them as a CycloneDX file.

## Usage B: Command Line (CLI)

The CLI is convenient when adding the tool to CI/CD or processing many models in a batch. After installation, pass the model ID as an argument.

```bash
# Install (a Python virtual environment is recommended)
pip install "git+https://github.com/GenAI-Security-Project/aibom-generator"

# Generate an AIBOM from a model ID
aibom facebook/bart-large-cnn -o aibom.json
```

Below is the actual run result. It generates CycloneDX 1.6 and 1.7, passes schema validation, and shows the completeness score by section.

```text
$ aibom facebook/bart-large-cnn -o aibom.json

✅ Successfully generated CycloneDX 1.6 SBOM — Schema Validation (1.6): Valid
✅ Successfully generated CycloneDX 1.7 SBOM — Schema Validation (1.7): Valid

📊 Completeness Score: 58.7/100   Profile: Basic
   - Required Fields:        20/20
   - Metadata:                8/20
   - Component Basic:        17.1/20
   - Component Model Card:    6.7/30
   - External References:    10/10
```

**Figure 3.** CLI run output *(aibom CLI, model facebook/bart-large-cnn, run 2026-06-13)*

In the generated BOM, the model component has its license and model card filled in. Unlike the cdxgen output, the `licenses` field is not empty.

```json
{
  "type": "machine-learning-model",
  "name": "bart-large-cnn",
  "purl": "pkg:huggingface/facebook/bart-large-cnn",
  "licenses": [{ "license": { "id": "MIT" } }],
  "authors": [{ "name": "facebook" }],
  "modelCard": { "modelParameters": { }, "considerations": { } }
}
```

## What the Run Results Show

{{% alert title="The completeness score depends on the quality of the input metadata" color="info" %}}
In the actual run, the completeness score was 58.7/100 (Basic). Required Fields and External References received full marks, but the model card score was low at 6.7/30. This is not a limitation of the tool but the result of the model provider not filling in enough information in the Hugging Face model card. The tool faithfully retrieves the metadata that exists, but it cannot create information that is missing. If the model card is incomplete, a person must check the sources and supplement it.
{{% /alert %}}

## References

- AI SBOM generation and management procedure: [3.9 AI SBOM](../../2-ai-extension/3-ai-sbom/)
- License obligation review: [3.5 License Obligations](../../2-ai-extension/1-license-obligations/)
- Another generation tool: [cdxgen](../2-cdxgen/)
- Official: [OWASP AIBOM Generator](https://genai.owasp.org/resource/owasp-aibom-generator/)
