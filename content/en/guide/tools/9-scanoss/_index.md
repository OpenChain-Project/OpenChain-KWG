---
title: "SCANOSS"
weight: 9
type: docs
categories: ["guide"]
tags: ["SCANOSS", "SCA", "SBOM"]
---

SCANOSS is a Software Composition Analysis (SCA) tool that can identify open source
components not only at the file level but down to the **snippet (code fragment) level**.
It detects license and copyright information by matching against a knowledge base
(OSSKB, Open Source Knowledge Base) that indexes more than 100 million files, and
automatically generates SBOMs in CycloneDX and SPDX formats.

- GitHub: <https://github.com/scanoss>
- Official site: <https://www.scanoss.com>
- License: Apache-2.0

## 1. Key features

- **Snippet-level matching**: Can trace the origin even when a portion of code, rather than an entire file, has been copied or modified
- **Large-scale knowledge base**: OSSKB indexes more than 100 million open source files — covering major package repositories and GitHub
- **Automatic SBOM generation**: Supports CycloneDX (JSON/XML) and SPDX format output
- **Both CLI & REST API**: Provides both the `scanoss-py` (Python) CLI and a REST API, making automation integration easy
- **CI/CD pipeline integration**: Can scan with a single command in CI environments such as GitHub Actions

## 2. Installation

Install via pip in a Python 3.8 or later environment.

```bash
pip install scanoss
```

Verify the installation:

```bash
scanoss-py --version
```

## 3. Basic usage

#### (1) Scan a directory

```bash
# Scan the current directory and save results as JSON
scanoss-py scan . --output results.json
```

#### (2) Generate an SBOM (CycloneDX)

```bash
# Convert scan results into an SBOM in CycloneDX JSON format
scanoss-py convert --input results.json --format cyclonedx --output sbom.json
```

#### (3) Review results

```bash
# List the detected components
cat results.json | python3 -c "
import json, sys
data = json.load(sys.stdin)
for f, matches in data.items():
    for m in matches:
        if m.get('id') != 'none':
            print(f\"{f}: {m.get('component','?')} ({m.get('licenses','?')})\")"
```

## 4. CI/CD integration

An example of automating scans in GitHub Actions.

```yaml
# .github/workflows/scanoss.yml
name: SCANOSS License Scan

on: [push, pull_request]

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Install SCANOSS
        run: pip install scanoss
      - name: Run scan
        run: scanoss-py scan . --output results.json
      - name: Generate SBOM
        run: scanoss-py convert --input results.json --format cyclonedx --output sbom.json
      - name: Upload SBOM
        uses: actions/upload-artifact@v4
        with:
          name: sbom
          path: sbom.json
```

## 5. References

- SCANOSS GitHub: <https://github.com/scanoss>
- SCANOSS official docs: <https://docs.scanoss.com>
- OSSKB knowledge base: <https://osskb.org>
- CycloneDX official site: <https://cyclonedx.org>
