---
title: "OSV-SCALIBR"
weight: 4
type: docs
categories: ["guide"]
tags: ["OSV-SCALIBR", "SBOM", "vulnerability"]
---

OSV-SCALIBR (Open Source Vulnerabilities - Software Composition Analysis LIBRary) is an open source software composition analysis tool developed by Google.
It scans filesystems, container images, and binaries to identify included packages and detects known vulnerabilities by cross-referencing the [OSV (Open Source Vulnerabilities)](https://osv.dev/) database. It also supports SBOM generation in SPDX format.

- GitHub: <https://github.com/google/osv-scalibr>
- License: Apache-2.0

### 1. Features

- **Multiple scan targets**: Local filesystem, container images, archive files
- **Wide ecosystem support**: Go, Python, Java (Maven), JavaScript (npm), Rust, Ruby, and more
- **OSV DB integration**: Cross-references scan results with the OSV database to provide CVE and other vulnerability information
- **SBOM output**: Exports results in SPDX 2.3 format
- **CLI and library**: Provided as both a standalone binary (CLI) and a Go library

### 2. Installation

Build with Go 1.21 or later:

```bash
git clone https://github.com/google/osv-scalibr.git
cd osv-scalibr
go build -o scalibr ./binary/cli/...
```

Alternatively, download pre-built binaries from the [Releases page](https://github.com/google/osv-scalibr/releases).

### 3. Basic Usage

#### (1) Filesystem Scan

```bash
# Scan a directory and output vulnerability results
./scalibr scan --result=result.json /path/to/project

# Generate SBOM in SPDX format
./scalibr scan --output=sbom.spdx.json /path/to/project
```

#### (2) Container Image Scan

```bash
./scalibr scan --image=ubuntu:22.04 --result=result.json
```

#### (3) Reviewing Results

```bash
# Query vulnerability list from JSON result file
cat result.json | jq '.findings[].adv.id'
```

### 4. CI/CD Integration

OSV-SCALIBR is well-suited for integration into CI/CD pipelines to automatically detect vulnerabilities during build and deployment stages.

```yaml
# GitHub Actions example
- name: Run OSV-SCALIBR
  run: |
    ./scalibr scan --result=result.json .
    # Fail build if vulnerabilities are found
    jq -e '.findings | length == 0' result.json
```

### 5. References

- OSV-SCALIBR GitHub: <https://github.com/google/osv-scalibr>
- OSV Database: <https://osv.dev/>
- SPDX: <https://spdx.dev/>
