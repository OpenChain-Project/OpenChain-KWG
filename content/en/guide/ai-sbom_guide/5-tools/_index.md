---
title: "Tools"
linkTitle: "Tools"
weight: 50
type: docs
categories: ["guide"]
tags: ["AI SBOM", "Tools"]
description: >
  Explains the main features and usage of open source tools that generate and analyze AI SBOMs, with screenshots of actual runs.
---

This section covers open source tools that automate AI SBOM compliance. For each tool, it summarizes the main features, installation, and usage, along with actual run results. It makes the categories in the automation maturity map of [3.9 AI SBOM](../2-ai-extension/3-ai-sbom/) concrete, tool by tool.

There is a limit worth stating plainly. Tools generate BOMs automatically, but they cannot guarantee that the licenses in the generated BOM are correct or that no components are missing. In the tool comparison below, OWASP AIBOM Generator fills in the license from the model card, while cdxgen identifies dependencies quickly but leaves the license field empty. Consider this difference when choosing a tool.

## Tools at a Glance

| Tool | Input | Output | Strengths | Covered in |
|---|---|---|---|---|
| OWASP AIBOM Generator | Hugging Face model ID | CycloneDX 1.6/1.7 | Model card and license metadata, completeness score | [Go](./1-aibom-generator/) |
| cdxgen | Project directory, model files | CycloneDX | Automatic dependency identification, CI/CD integration | [Go](./2-cdxgen/) |
| Lab700x, Trivy, Syft | Model binaries, containers, virtual environments | Reports, SBOMs | Static analysis of models, identification of inference servers and packages | [Go](./3-scanners/) |

Each tool automates some of the generation, analysis, and management stages. No single tool covers everything, so combine tools that generate AI SBOMs (OWASP AIBOM Generator, cdxgen), tools that analyze security (Lab700x, Trivy), and tools that manage them ([Dependency-Track](../../tools/7-dependency-track/)).
