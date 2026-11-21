---
title: "cdxgen"
weight: 20
type: docs
categories: ["guide"]
tags: ["AI SBOM", "cdxgen", "CycloneDX", "Tools"]
description: >
  Explains, with actual run output, how to use the AI BOM mode of OWASP cdxgen, which generates CycloneDX SBOMs from projects and models.
---

## Overview

cdxgen is the official SBOM generator of the OWASP CycloneDX project. It supports more than 20 languages and package managers, and recent versions provide a dedicated AI BOM mode. It automatically identifies the dependencies of AI applications (PyTorch, Transformers, etc.) and integrates well with CI/CD pipelines.

From an AI SBOM perspective, cdxgen's strengths are speed and automation. Its weakness is that it does not fill in license information in a default run. The run results below show this characteristic. Whereas OWASP AIBOM Generator centers on model card metadata, cdxgen centers on code and dependencies. Using both together covers both models and dependencies.

## Key Features

- Identifies dependencies in source code and container images and generates CycloneDX SBOMs.
- Includes AI/ML metadata (formulation) in AI BOM mode (`-t ai`).
- Accepts Hugging Face model URLs, Modelfiles, and GGUF artifacts directly as input.
- Can automatically submit SBOMs to a Dependency-Track server for ongoing management.

## Installation

```bash
# One-time run (requires Node.js)
npx @cyclonedx/cdxgen@latest --version

# Global installation
npm install -g @cyclonedx/cdxgen
```

## Usage: Generating an AI BOM

Run it in AI BOM mode in the AI project directory.

```bash
# Generate an AI BOM
cdxgen -t ai -o aibom.json .

# Generate including AI/ML metadata (formulation)
cdxgen -t ai --include-formulation -o aibom.json .
```

Below is the result of actually running cdxgen on a summarization app (depending on `transformers` and `torch`) that loads a pretrained model (`facebook/bart-large-cnn`). It automatically identifies 5 dependencies and creates a CycloneDX 1.7 BOM.

```text
$ cdxgen -t python --include-formulation -o aibom.json .
CycloneDX Generator 12.5.1 (Node.js)

Generated components: 5 (CycloneDX 1.7):
  transformers     4.44.2    pkg:pypi/transformers@4.44.2      license: empty
  torch            2.4.0     pkg:pypi/torch@2.4.0             license: empty
  numpy            1.26.4    pkg:pypi/numpy@1.26.4            license: empty
  tokenizers       0.19.1    pkg:pypi/tokenizers@0.19.1       license: empty
  huggingface-hub  0.24.6    pkg:pypi/huggingface-hub@0.24.6   license: empty
```

**Figure 1.** cdxgen run output *(cdxgen 12.5.1, run 2026-06-13)*

One of the generated components looks like this. The identification evidence (evidence) is filled in, but the `licenses` field is empty.

```json
{
  "name": "transformers",
  "version": "4.44.2",
  "purl": "pkg:pypi/transformers@4.44.2",
  "type": "library",
  "evidence": {
    "identity": [
      { "field": "purl", "confidence": 0.5,
        "methods": [{ "technique": "manifest-analysis", "value": "requirements.txt" }] }
    ]
  }
}
```

## What the Run Results Show

{{% alert title="cdxgen identifies quickly, but a person must supplement the licenses" color="warning" %}}
cdxgen quickly identified 5 dependencies from `requirements.txt`, but the `licenses` field of each component is empty. In addition, the pretrained model `facebook/bart-large-cnn` that the app loads was not captured in the BOM by code scanning alone. It must be collected separately as an inbound component and added. A practical combination is to build the dependency skeleton quickly with cdxgen, have a person check and fill in the licenses, and generate the model separately with OWASP AIBOM Generator and merge it.
{{% /alert %}}

## References

- AI SBOM generation and management procedure: [3.9 AI SBOM](../../2-ai-extension/3-ai-sbom/)
- Generator centered on model metadata: [OWASP AIBOM Generator](../1-aibom-generator/)
- SBOM management: [Dependency-Track](../../../tools/7-dependency-track/), [cdxgen + Dependency-Track integration](../../../tools/8-cdxgen-dt/)
- Official: [cdxgen AI-BOM documentation](https://github.com/cdxgen/cdxgen/blob/master/docs/AI_BOM.md)
