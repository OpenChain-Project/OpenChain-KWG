---
title: "Syft"
weight: 6
type: docs
categories: ["guide"]
tags: ["Syft", "SBOM", "SPDX", "CycloneDX"]
---

Syft is an open source SBOM generation CLI tool developed by Anchore.
It scans container images, filesystems, and archives to identify included packages and generates SBOMs in SPDX or CycloneDX format.

- GitHub: <https://github.com/anchore/syft>
- License: Apache-2.0

## Features

- **Multiple scan targets**: Container images (Docker, OCI), local filesystems, tar archives
- **Wide ecosystem support**: Alpine (apk), Debian/Ubuntu (dpkg), RPM, Python, Java, Go, Node.js, Ruby, Rust, and more
- **Standard output formats**: SPDX 2.2/2.3 (JSON, tag-value), CycloneDX 1.4/1.5 (JSON, XML), Syft JSON
- **Grype integration**: Pairs naturally with Anchore's Grype vulnerability scanner for SBOM-based vulnerability analysis
- **Easy installation**: Single binary distribution, no additional runtime required

## Installation

### Script Installation (Linux/macOS)

```bash
curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin
```

### Homebrew (macOS)

```bash
brew install syft
```

### Docker

```bash
docker pull anchore/syft
```

## Basic Usage

### (1) Scan a Container Image

```bash
# Scan a Docker image and output SPDX JSON
syft ubuntu:22.04 -o spdx-json=sbom.spdx.json

# Output as CycloneDX JSON
syft ubuntu:22.04 -o cyclonedx-json=sbom.cdx.json
```

### (2) Scan a Local Directory

```bash
syft dir:/path/to/project -o spdx-json=sbom.spdx.json
```

### (3) View Results in Terminal

```bash
# Print package list to terminal
syft ubuntu:22.04

# Output as JSON to stdout
syft ubuntu:22.04 -o json
```

### (4) Vulnerability Scanning with Grype

```bash
# Generate SBOM with Syft and analyze vulnerabilities with Grype
syft ubuntu:22.04 -o json | grype
```

## CI/CD Integration Example

```yaml
# GitHub Actions example
- name: Generate SBOM with Syft
  uses: anchore/sbom-action@v0
  with:
    image: myapp:latest
    format: spdx-json
    output-file: sbom.spdx.json
- name: Upload SBOM
  uses: actions/upload-artifact@v4
  with:
    name: sbom
    path: sbom.spdx.json
```

## References

- Syft GitHub: <https://github.com/anchore/syft>
- Grype (vulnerability scanner): <https://github.com/anchore/grype>
- SPDX Standard: <https://spdx.dev/>
- CycloneDX Standard: <https://cyclonedx.org/>
