---
title: "Model and Container Scanners (Lab700x, Trivy, Syft)"
linkTitle: "Model and Container Scanners"
weight: 30
type: docs
categories: ["guide"]
tags: ["AI SBOM", "Security", "Tools"]
description: >
  Introduces the main features and usage of security scanners that analyze AI model binaries, inference servers, and AI packages.
---

This page introduces analysis and identification tools that complement AI SBOM generation. If the generation tools (OWASP AIBOM Generator, cdxgen) record "what is inside," these tools look at "whether it is safe" and "which version it is." The commands and features below are based on each tool's official documentation (the tools actually run in this guide are [OWASP AIBOM Generator](../1-aibom-generator/) and [cdxgen](../2-cdxgen/)).

## Lab700x AI SBOM Scanner: Static Analysis of Model Binaries

This tool statically analyzes AI model files themselves to extract information. It examines model binaries such as `.safetensors`, `.pt` (PyTorch), and `.pkl` (Pickle) directly without running them (deep introspection).

- **Key features**: Because it understands the internal structure without executing the model, it detects malicious code hidden in model files (such as Pickle injection), vulnerabilities, and license violations before deployment.
- **Role in AI SBOM**: Used to inspect externally adopted models at the intake gate. Combined with the enforcement of intake metadata in [3.5 License Obligations](../../2-ai-extension/1-license-obligations/), it lets you perform metadata verification and binary safety inspection together.

Models in Pickle format can execute arbitrary code during deserialization, so the supply chain risk is high. The core of this tool is that it inspects models without running them.

## Trivy: Scanning LLM Inference Server Containers

An open source scanner from Aqua Security that checks container images and file systems for vulnerabilities. It recently added awareness of AI model infrastructure.

- **Key features**: Scans LLM inference server containers such as Ollama and LocalAI and collects the open source libraries they contain and container vulnerabilities.
- **Usage**:

```bash
# Scan a container image (vulnerabilities)
trivy image ollama/ollama:latest

# Generate an SBOM (CycloneDX)
trivy image --format cyclonedx --output sbom.json ollama/ollama:latest
```

In environments that deploy AI models as containers, it is used to record the vulnerabilities and components of the inference server as an SBOM.

## Syft: Identifying AI Packages and Virtual Environments

Anchore's SBOM generator, which scans containers, file systems, and virtual environments.

- **Key features**: Analyzes Python virtual environments and collects the exact versions of packages used to run AI, such as PyTorch and Transformers. Outputs in SPDX and CycloneDX formats.
- **Usage**:

```bash
# Scan a directory and output CycloneDX
syft scan dir:. -o cyclonedx-json=sbom.json

# Scan a container image
syft scan registry:python:3.11-slim -o spdx-json
```

Its role is similar to cdxgen, so for organizations that already use the Anchore toolset (Syft, Grype), a natural combination is to generate the dependency SBOM of AI applications with Syft and check vulnerabilities with Grype.

## Recommended Tool Combination

No single tool covers everything. In practice, divide the roles and combine tools.

| Purpose | Tool |
|------|------|
| AIBOM generation from model metadata | OWASP AIBOM Generator |
| Dependency SBOM generation | cdxgen, Syft |
| Model binary safety inspection | Lab700x AI SBOM Scanner |
| Inference server and container vulnerabilities | Trivy |
| SBOM storage and vulnerability monitoring | [Dependency-Track](../../../tools/7-dependency-track/) |

## References

- AI SBOM generation and management procedure: [3.9 AI SBOM](../../2-ai-extension/3-ai-sbom/)
- Run results of generation tools: [OWASP AIBOM Generator](../1-aibom-generator/), [cdxgen](../2-cdxgen/)
