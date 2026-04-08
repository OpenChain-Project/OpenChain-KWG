---
title: "FOSSLight"
weight: 3
type: docs
categories: ["guide"]
tags: ["FOSSLight"]
---

FOSSLight is an open source project led by LG Electronics. It analyzes source code, binaries, and dependencies using various scanners to generate an SBOM (Software Bill of Materials). FOSSLight Hub provides open source management, license management, and vulnerability management features to support the compliance process.

- Official website: <https://fosslight.org/>
- GitHub: <https://github.com/fosslight/fosslight_hub>
- License: Apache-2.0

### 1. Features

- **Multiple scanner integration**: Integrates ScanCode Toolkit, SPDX Tools, CycloneDX, FOSSology, and other open source scanners
- **Wide scan target support**: Source code, binaries, container images, Linux packages, and more
- **SBOM generation and management**: Creates and manages SBOMs in various formats (SPDX, CycloneDX, Excel, Text)
- **License detection and management**: Accurately detects and manages open source license information
- **Vulnerability integration**: Links to external vulnerability databases such as NVD and CVE
- **FOSSLight Hub**: Web-based UI providing open source management, license management, and vulnerability management

### 2. Installation

FOSSLight consists of FOSSLight Scanner and FOSSLight Hub. The easiest way to install both is using Docker Compose.

**Prerequisites**: Docker and Docker Compose must be installed on your system.

```bash
# Clone the FOSSLight Hub repository
git clone https://github.com/fosslight/fosslight_hub.git
cd fosslight_hub
```

The repository includes a `docker-compose.yml` file. Run the following command to start FOSSLight:

```bash
docker-compose up -d
```

This starts FOSSLight Hub, FOSSLight Scanner, and the MariaDB database as Docker containers.

Access `http://localhost:8080` in your browser to verify the installation.

### 3. Basic Usage

#### FOSSLight Hub

1. Navigate to `http://localhost:8080` and log in.
2. Create a new project under **Projects** → **New Project**.
3. Upload scan results from FOSSLight Scanner.
4. Review SBOM information, license details, and vulnerability data in the web UI.
5. Generate reports in SPDX, CycloneDX, Excel, or Text format.

#### FOSSLight Scanner (CLI)

```bash
# Scan a project directory and output results as JSON
docker run --rm \
  -v $(pwd)/upload:/home/fosslight_scanner/upload \
  -v $(pwd)/result:/home/fosslight_scanner/result \
  fosslight/fosslight_scanner \
  -p /home/fosslight_scanner/upload/my_project \
  -o /home/fosslight_scanner/result/my_sbom.json \
  -f fosslight_json
```

Scan results are saved to the `result` directory and can be uploaded to FOSSLight Hub.

### 4. References

- FOSSLight Official Website: <https://fosslight.org/>
- FOSSLight GitHub: <https://github.com/fosslight/fosslight_hub>
- SPDX: <https://spdx.dev/>
- CycloneDX: <https://cyclonedx.org/>
