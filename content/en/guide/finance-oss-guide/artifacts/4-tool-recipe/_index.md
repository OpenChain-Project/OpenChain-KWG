---
title: "Tool Setup Recipe"
linkTitle: "Tool Setup Recipe"
weight: 40
type: docs
categories: ["guide"]
tags: ["Finance", "Open Source", "Tools", "Dependency-Track", "Closed Network"]
description: >
  A docker-compose example and integration procedure for setting up SBOM generation and continuous
  vulnerability monitoring in an on-premises closed network environment. It shows the flow of
  creating SBOMs with cdxgen and registering them in Dependency-Track.
---

This recipe is an example of setting up SBOM (Software Bill of Materials) generation and continuous
vulnerability monitoring in a closed network. As a quick starting point, it reorganizes the existing
[cdxgen and Dependency-Track pipeline tutorial](../../../tools/8-cdxgen-dt/) for the financial sector.
The purpose is not to recommend a specific product but to show how to build the setup with open
source, on-premises tools.

{{% alert title="Closed network assumptions" color="warning" %}}
The example below includes a step that downloads tool images. In a closed network, obtain the images
and vulnerability databases from outside, move them to the internal container registry and mirror,
and configure the tools to pull only from inside. For the import procedure, see [Closed Network
Operation](../../0-closed-network/#import-control).
{{% /alert %}}

## Setting up Dependency-Track

When SBOMs are registered in [Dependency-Track](../../../tools/7-dependency-track/), it automatically
reassesses the affected components each time the vulnerability database is updated. Use it for
continuous monitoring of operational systems. Below is a docker-compose example that runs the API
server and the frontend together.

```yaml
# docker-compose.yml
volumes:
  dependency-track:

services:
  dtrack-apiserver:
    image: dependencytrack/apiserver:latest
    deploy:
      resources:
        limits:
          memory: 12288m
        reservations:
          memory: 8192m
    ports:
      - "8081:8080"
    volumes:
      - "dependency-track:/data"
    restart: unless-stopped

  dtrack-frontend:
    image: dependencytrack/frontend:latest
    depends_on:
      - dtrack-apiserver
    environment:
      - API_BASE_URL=http://localhost:8081
    ports:
      - "8080:8080"
    restart: unless-stopped
```

In a closed network, change the `image` values to internal registry addresses. For example, instead
of `dependencytrack/apiserver:latest`, point to an image mirrored internally, such as
`registry.internal/dependencytrack/apiserver:4.x`. For the version tag, it is safer to use a
verified fixed version instead of `latest`.

`API_BASE_URL` is the address the user's browser uses to call the API server, so when deploying on
an internal server, replace `localhost` with that server's host name (for example,
`http://dtrack.internal:8081`).

After starting the services, log in, change the initial administrator password, and issue an API key
for uploading SBOMs.

```bash
# Start the services
docker compose up -d

# Check the status
docker compose ps
```

Depending on the environment, you may need to use the `docker-compose` (hyphenated) command instead
of `docker compose` (plugin). The hyphenated command (legacy v1) ignores the `deploy.resources`
memory limits in the example, so add the `--compatibility` option to apply the limits.

![Dependency-Track dashboard after setup](./dt-dashboard.png)

*Figure: The Dependency-Track dashboard you see after finishing the setup and registering SBOMs. The
screen reuses a capture from the [cdxgen and Dependency-Track tutorial](../../../tools/8-cdxgen-dt/).
Step-by-step screens for account setup and API key issuance are also in that tutorial.*

## Integrating SBOM generation and registration

Create the project's SBOM with [cdxgen](../../../tools/5-cdxgen/) and upload the result to Dependency-Track. The uploaded SBOM
is then reassessed automatically each time the vulnerability database is updated. cdxgen accesses
build tools and package repositories while resolving dependencies for each language ecosystem, so in
a closed network, run it with the repository settings for npm, Maven, and so on pointing to the
internal mirror.

```bash
# 1) Generate a CycloneDX SBOM with cdxgen
#    -r recursively collects multiple manifests in subdirectories
cdxgen --spec-version 1.6 -r -o sbom.json /path/to/project

# 2) Upload the SBOM to a Dependency-Track project
curl -X POST "http://localhost:8081/api/v1/bom" \
  -H "X-Api-Key: ${DT_API_KEY}" \
  -F "projectName=my-service" \
  -F "projectVersion=1.0.0" \
  -F "autoCreate=true" \
  -F "bom=@sbom.json"
```

The latest version of cdxgen generates CycloneDX 1.7 by default, but depending on the
Dependency-Track version, only up to 1.6 may be accepted. If the upload is rejected, specify
`--spec-version 1.6` as shown above to match the format. `autoCreate=true` creates a new project if
none exists with the same name and version. If you keep a project for each operational system and
register its SBOM, you can see in one place which systems are affected when a new vulnerability is
disclosed. This flow implements the continuous monitoring covered in
[Management](../../5-manage/#continuous-vulnerability-monitoring).

## Offline vulnerability database

In a closed network, configure the addresses of the vulnerability data sources that Dependency-Track
refers to so that they point to internal mirrors, using the administration screen. The difficulty of
setting up a mirror for each data source and the preliminary verification it needs, as well as how
cache files are imported for command-line scanning tools (Grype, Trivy), are covered in
[Offline vulnerability management in Closed Network Operation](../../0-closed-network/#offline-vulnerability-management).

## Tool selection criteria

This recipe uses cdxgen and Dependency-Track as examples, but you can replace them with other open
source tools that do the same job. When choosing tools, follow the criteria presented in [Closed
Network Operation](../../0-closed-network/#choosing-tools-for-a-closed-network) (on-premises
installation, offline database updates, standard-format input and output, and the license of the
tool itself). Installation and usage for each tool are described on the [tools page](../../../tools/).

---

*Last reviewed: 2026-06-10. This page is reviewed when regulations change and once a year on a regular basis.*
