---
title: "Dependency-Track"
weight: 7
type: docs
categories: ["guide"]
tags: ["Dependency-Track", "SBOM", "vulnerability", "CycloneDX"]
---

Dependency-Track is an open source SBOM management and vulnerability analysis platform managed by OWASP.
It continuously monitors component-level vulnerabilities based on uploaded SBOMs (CycloneDX, SPDX) and automatically evaluates policy violations.

- GitHub: <https://github.com/DependencyTrack/dependency-track>
- Official docs: <https://docs.dependencytrack.org/>
- License: Apache-2.0

## Features

- **SBOM-based continuous monitoring**: Automatically tracks the latest vulnerabilities per component after uploading SBOMs in SPDX or CycloneDX format
- **Multiple vulnerability data sources**: NVD, OSV, GitHub Advisories, VulnDB, and more
- **Policy engine**: Define rules for license policies, vulnerability severity thresholds, and component allowlists for automatic evaluation
- **REST API**: Integrate with CI/CD pipelines to automatically upload SBOMs and receive feedback at build time
- **Web UI dashboard**: View per-project risk scores, vulnerability status, and license distribution at a glance
- **Notifications**: Send new vulnerability alerts via Slack, email, Webhook, and other channels

## Installation

Using Docker Compose is the simplest approach:

```bash
# Download official Docker Compose file
curl -LO https://dependencytrack.org/docker-compose.yml

# Start services
docker compose up -d
```

By default, the API server runs on port 8081 and the frontend on port 8080.
Default admin credentials: `admin` / `admin` (change immediately after first login)

## Basic Usage

### (1) Create a Project and Upload SBOM via Web UI

1. Navigate to `http://localhost:8080`
2. Click **Projects** → **Create Project**
3. Enter project name and version, then save
4. Open the project → **Components** tab → **Upload BOM**
5. Upload your SBOM file (`.cdx.json` or `.spdx.json`)

After upload, Dependency-Track automatically starts vulnerability analysis.

### (2) Upload SBOM via API (CI/CD Integration)

```bash
# API Key: Administration > Access Management > Teams
API_KEY="your-api-key"
PROJECT_UUID="your-project-uuid"

curl -X PUT \
  "http://localhost:8081/api/v1/bom" \
  -H "X-Api-Key: ${API_KEY}" \
  -H "Content-Type: multipart/form-data" \
  -F "project=${PROJECT_UUID}" \
  -F "bom=@sbom.cdx.json"
```

### (3) GitHub Actions Integration Example

```yaml
- name: Upload SBOM to Dependency-Track
  uses: DependencyTrack/gh-upload-sbom@v3
  with:
    serverhostname: dependency-track.example.com
    apikey: ${{ secrets.DT_API_KEY }}
    project: ${{ secrets.DT_PROJECT_UUID }}
    bomfilename: sbom.cdx.json
```

## Using with cdxgen / Syft

Dependency-Track is most effective when used with SBOM generation tools like cdxgen and Syft:

```
cdxgen or Syft  →  Generate SBOM  →  Upload to Dependency-Track  →  Continuous monitoring
```

- SBOM generation: Use [cdxgen](../5-cdxgen/) or [Syft](../6-syft/) to generate SBOMs at build time
- Centralized management: Upload to Dependency-Track to manage vulnerability status across all projects

## References

- Dependency-Track Official Docs: <https://docs.dependencytrack.org/>
- Dependency-Track GitHub: <https://github.com/DependencyTrack/dependency-track>
- CycloneDX Standard: <https://cyclonedx.org/>
