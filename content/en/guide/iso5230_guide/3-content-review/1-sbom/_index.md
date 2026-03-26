---
title: "§3.3.1 SBOM"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "SBOM"]
description: >
---

## 1. Clause Overview

Without knowing what open source components are included in the supplied software, it is impossible to
fulfill license obligations or respond to security vulnerabilities. §3.3.1 requires the establishment
of a procedure for identifying, tracking, reviewing, approving, and archiving the open source components
that make up supplied software, and maintaining component records (SBOM) that demonstrate the procedure
has actually been followed. This clause forms the foundation for operating the SBOM, which is the core
infrastructure of open source license compliance and Security Assurance.

## 2. What to Do

- Identify and list the open source components included in supplied software using automated tools
  (FOSSology, ORT, Syft, cdxgen, etc.).
- Document a procedure for tracking, reviewing, approving, and archiving open source component information
  (component name, version, license, source, etc.).
- Generate and manage an SBOM for each supplied software release.
- Write SBOM data in SPDX or CycloneDX standard formats to ensure interoperability.
- Immediately update the SBOM when software changes (new component addition, version upgrade, component
  removal) occur.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.3.1 | A process shall exist for creating and managing a bill of materials that includes each open source component (and its identified licenses) from which the supplied software is comprised. | **3.3.1.1** A documented procedure for identifying, tracking, reviewing, approving, and archiving information about the collection of open source components from which the supplied software is comprised.<br>**3.3.1.2** Open source component records for the supplied software that demonstrates the documented procedure was followed. |

## 4. How to Comply and Samples by Verification Material

### 3.3.1.1 Open Source Component Management Procedure

**How to Comply**

A series of procedures for identifying, tracking, reviewing, approving, and archiving open source
components included in supplied software must be documented. The procedure covers how open source is
managed throughout the software development lifecycle and must include the following steps: (1) component
identification, (2) license confirmation, (3) obligation review, (4) use approval, (5) SBOM generation
and registration, (6) providing SBOM upon distribution, (7) SBOM update upon changes, and (8) SBOM
archiving. This procedure document itself is Verification Material 3.3.1.1.

It is recommended to adopt SPDX (ISO/IEC 5962) or CycloneDX format for standardizing the SBOM.
Integrating automated tools into the CI/CD pipeline makes it easier to keep the SBOM up to date as it
is automatically updated when components change.

**Considerations**

- **Automated tool integration**: Automate SBOM generation by integrating tools such as FOSSology, ORT,
  Syft, and cdxgen into CI/CD.
- **Standard format adoption**: Write SBOMs in SPDX or CycloneDX format to ensure interoperability
  with supply chain partners.
- **Define update triggers**: Mandate SBOM updates when new components are added, versions are upgraded,
  components are removed, or licenses change.
- **Approval procedure specification**: Include in the procedure the approval procedure by the Open
  Source Program Manager or OSRB when introducing new open source components.
- **Retention period**: Retain the SBOM for at least [N] years after the relevant software is distributed.

**Sample**

The following is a sample outline of an open source component management procedure.
The full process form can be found in the [Open Source Process Template](../../../templates/2-process-template/).

```
[Open Source Component Management Procedure Outline]

(1) Identification
    - Developers report open source components to the open source management system
      when introducing them.
    - SCA tools in the CI/CD pipeline (Syft, ORT, etc.) automatically detect components.

(2) License Confirmation and Obligation Review
    - Confirm the license of identified components based on the SPDX License List.
    - Refer to the license obligation summary table to review obligations based on
      the distribution format.
    - Request legal review if uncertain.

(3) Use Approval
    - The Open Source Program Manager approves use based on review results.
    - Components that conflict with license policy are rejected after reviewing alternatives.

(4) SBOM Generation and Registration
    - Register approved components in the SBOM (format: SPDX or CycloneDX).
    - The SBOM includes component name, version, license, source (URL), and copyright notice.

(5) Distribution and SBOM Provision
    - Provide the SBOM with the software upon distribution or upon request.

(6) Update Upon Changes
    - Immediately update the SBOM when components are added, upgraded, removed, or when
      licenses change.

(7) Archiving
    - Retain the SBOM by version for at least [N] years after software distribution.
```

---

### 3.3.1.2 Open Source Component Records (SBOM)

**How to Comply**

Component records that demonstrate the procedure defined in 3.3.1.1 has actually been followed must be
maintained for each supplied software. These records are the SBOM (Software Bill of Materials) and
constitute Verification Material 3.3.1.2. The SBOM must include at minimum the name, version, license,
and source of each open source component. Writing it in SPDX or CycloneDX format makes it immediately
submittable during audits.

The SBOM should be managed by software release version, and past version SBOMs should also be retained
so that the component configuration at a specific point in time can always be verified. The output from
SBOM generation tools can be used directly, or it can be stored and managed in an open source management
system (SW360, Dependency-Track, etc.).

**Considerations**

- **Required items**: Include component name, version, license identifier (SPDX ID), source (package
  registry URL or source repository), and copyright notice.
- **Version-by-version management**: Manage SBOMs separately for each software release version and
  retain past versions.
- **Utilize management tools**: Using open source management systems such as SW360 and Dependency-Track
  allows for systematic management of SBOM generation, tracking, and distribution.
- **Customer provision**: Retain in an accessible format so that the SBOM can be provided immediately
  when requested by customers or supply chain partners.

**Sample**

The following is a sample of key items in an SPDX format SBOM.

```
SPDXVersion: SPDX-2.3
DataLicense: CC0-1.0
SPDXID: SPDXRef-DOCUMENT
DocumentName: MyProduct-v1.2.0-sbom
DocumentNamespace: https://company.com/sbom/myproduct-1.2.0

PackageName: openssl
SPDXID: SPDXRef-openssl
PackageVersion: 3.0.8
PackageDownloadLocation: https://www.openssl.org/source/openssl-3.0.8.tar.gz
PackageLicenseConcluded: Apache-2.0
PackageLicenseDeclared: Apache-2.0
PackageCopyrightText: Copyright (c) 1998-2023 The OpenSSL Project

PackageName: zlib
SPDXID: SPDXRef-zlib
PackageVersion: 1.2.13
PackageDownloadLocation: https://zlib.net/zlib-1.2.13.tar.gz
PackageLicenseConcluded: Zlib
PackageLicenseDeclared: Zlib
PackageCopyrightText: Copyright (C) 1995-2022 Jean-loup Gailly and Mark Adler
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related template: [Open Source Process Template](../../../templates/2-process-template/)
- Related tools: [FOSSology](../../../tools/1-fossology/), [ORT](../../../tools/2-ort/), [Syft](../../../tools/6-syft/), [cdxgen](../../../tools/5-cdxgen/), [Dependency-Track](../../../tools/7-dependency-track/)
