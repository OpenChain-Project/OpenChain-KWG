---
title: "cdxgen"
weight: 5
type: docs
categories: ["guide"]
tags: ["cdxgen", "SBOM", "CycloneDX"]
---

cdxgen is an open source SBOM generation tool managed by OWASP (Open Web Application Security Project).
It analyzes source code, build artifacts, and container images to automatically generate SBOMs in [CycloneDX](https://cyclonedx.org/) format.

- GitHub: <https://github.com/CycloneDX/cdxgen>
- License: Apache-2.0

## Features

- **Wide language and ecosystem support**: Java (Maven/Gradle), Node.js, Python, Go, Rust, PHP, Ruby, .NET, and 20+ more
- **Multiple scan targets**: Source code directories, container images, GitHub repositories
- **CycloneDX standard output**: Supports CycloneDX 1.4/1.5/1.6 in JSON and XML formats
- **REPL mode**: Interactive interface for exploring and querying SBOMs
- **CI/CD integration**: Easy integration with GitHub Actions, GitLab CI, and other major pipelines

## Installation

Install with Node.js 18 or later:

```bash
npm install -g @cyclonedx/cdxgen
```

Or use the Docker image:

```bash
docker pull ghcr.io/cyclonedx/cdxgen
```

## Basic Usage

### (1) Scan a Source Code Directory

```bash
# Scan current directory and generate CycloneDX JSON SBOM
cdxgen -o sbom.json .

# Specify language if auto-detection fails
cdxgen -t java -o sbom.json /path/to/project
```

### (2) Scan a Container Image

```bash
cdxgen -t docker -o sbom.json ubuntu:22.04
```

### (3) Scan a GitHub Repository

```bash
cdxgen -t github -o sbom.json https://github.com/org/repo
```

### (4) Explore SBOM in REPL Mode

```bash
cdxgen --repl -o sbom.json .
```

## CI/CD Integration Example

```yaml
# GitHub Actions example
- name: Generate SBOM with cdxgen
  run: |
    npm install -g @cyclonedx/cdxgen
    cdxgen -o sbom.json .
- name: Upload SBOM
  uses: actions/upload-artifact@v4
  with:
    name: sbom
    path: sbom.json
```

## References

- cdxgen GitHub: <https://github.com/CycloneDX/cdxgen>
- CycloneDX Standard: <https://cyclonedx.org/>
- OWASP CycloneDX: <https://owasp.org/www-project-cyclonedx/>
