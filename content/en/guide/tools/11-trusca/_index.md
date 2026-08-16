---
title: "TRUSCA"
weight: 11
type: docs
categories: ["guide"]
tags: ["trusca", "sca", "sbom", "cve", "vulnerability"]
---

Managing the vulnerabilities and licenses of open source components calls for an SCA (Software Composition Analysis) tool. Several commercial products exist, but some organizations look for an open source tool they can install and run on their own infrastructure.

TRUSCA is a self-hosted SCA portal published for that purpose. Released under Apache 2.0, it brings vulnerabilities (CVE), license compliance, and SBOM management into a single screen. It is developed by [Trusted OSS](../../trustedoss/), a project that grew out of KWG community work.

## Features

- Component detection across more than 30 language ecosystems (based on cdxgen), distinguishing direct from transitive dependencies
- Vulnerability detection from Trivy's unified database (NVD, OSV, GitHub Advisory, EPSS, KEV) with a seven-state VEX triage workflow and EPSS-based prioritization
- License classification (allowed, conditional, forbidden), obligation tracking, and automatic NOTICE file generation
- SBOM export (CycloneDX JSON and XML, SPDX JSON and Tag-Value) and ingestion of SBOMs produced by other tools
- Component approval workflow (pending, under review, approved, rejected), audit log, and role-based access control
- GitHub Action, GitLab CI template, and Jenkinsfile examples. Builds can be configured to stop when a critical vulnerability or a forbidden license is detected
- Korean and English user interface

## Installation

A development environment can be started with Docker Compose.

```bash
git clone https://github.com/trustedoss/trusca.git
cd trusca
cp .env.example .env
docker-compose -f docker-compose.dev.yml up
```

The containers become ready in about 30 seconds, and the portal is available at http://localhost:5173. For production, use Docker Compose (bundled with Traefik and Let's Encrypt) or the Kubernetes Helm chart. See the official documentation for details. : [https://trustedoss.github.io/trusca/docs/installation/docker-compose](https://trustedoss.github.io/trusca/docs/installation/docker-compose)

## Trying it first

To see the features before installing, use the read-only demo site. : [https://trusca-demo.duckdns.org](https://trusca-demo.duckdns.org)

It is seeded with real projects, scans, vulnerabilities, licenses, and SBOMs, and it resets daily. You can also upload a CycloneDX SBOM to see how it is matched against licenses and vulnerabilities. Sign-in details are provided on the demo site.
