---
title: "§4.3.1 SBOM"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "SBOM"]
description: >
---

## 1. Clause Overview

§4.3.1 has the same basic structure as ISO/IEC 5230 §3.3.1 (SBOM), but the emphasis differs. While 5230 covers the SBOM for license management of open source components, §4.3.1 of 18974 emphasizes **continuously recording and retaining the SBOM throughout the entire software lifecycle**. In particular, the SBOM must be maintained even after deployment so it can be integrated with the vulnerability monitoring in §4.3.2 Security Assurance. Without an SBOM, post-deployment impact analysis for newly published CVEs (§4.1.5 Method 5) cannot be performed.

## 2. What to Do

- Establish a procedure for identifying, tracking, reviewing, and approving open source components in the supplied software (same as 5230).
- **Establish a procedure for continuously recording and retaining the SBOM throughout the software lifecycle** (emphasized in 18974).
- Retain SBOMs by version for deployed software to use in post-deployment vulnerability impact analysis.
- Integrate SBOM information with vulnerability management tools (such as Dependency-Track) so that automatic impact analysis occurs whenever new CVEs are published.
- Define triggers for immediately updating the SBOM when components are added, changed, or removed.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.3.1 | A process shall exist to ensure all open source software used in the supplied software is continuously recorded throughout the lifecycle of the supplied software. | **4.3.1.1** A documented procedure to ensure that all open source software used in the supplied software is continuously recorded during the life cycle of the supplied software (including an archive of all open source software used in the supplied software)<br>**4.3.1.2** Open source software component records for the supplied software that demonstrate the documented procedure was followed |

> **§4.3.1 Software Bill of Materials**
> A process shall exist for creating and managing a software bill of materials
> that includes each open source software component (and its identified
> licenses) from which the supplied software is comprised, in a manner that
> ensures the supplied software's open source software components are
> continuously recorded throughout the supplied software's life cycle,
> including archiving.
>
> **Verification Material(s):**
> 4.3.1.1 A documented procedure to ensure that all open source software used
> in the supplied software is continuously recorded during the life cycle of
> the supplied software. This includes an archive of all open source software
> used in the supplied software.
> 4.3.1.2 Open source software component records for the supplied software
> that demonstrates the documented procedure was followed.

## 4. How to Comply and Samples per Verification Material

### 4.3.1.1 SBOM Lifecycle Continuous Recording Procedure

**How to Comply**

Building on the SBOM management procedure from ISO/IEC 5230 §3.3.1.1, the procedure must be strengthened to focus on **continuous lifecycle recording** and **archiving**. This procedure document is Verification Material 4.3.1.1.

From a security assurance perspective, the key to SBOM management is that the SBOM must remain valid even after deployment so it can be immediately used for impact analysis whenever new CVEs are published. To this end, the procedure must include archiving the SBOMs of all deployed software versions and integrating with vulnerability management tools.

**Considerations**

- **Maintain SBOM at each lifecycle stage**: Define procedures to keep the SBOM current at each stage — development, build, deployment, and post-deployment monitoring.
- **Archive policy**: Archive the SBOMs of all deployed versions by version and specify the retention period (minimum: support period of the relevant software + 3 years).
- **Integration with vulnerability tools**: Import SBOMs into tools such as Dependency-Track so that automatic cross-referencing occurs every time new CVEs are published.
- **Update triggers**: Mandate SBOM updates upon the following events: component addition, version upgrade, component removal, license change, and replacement due to newly discovered vulnerabilities.

**Sample**

The following is a sample overview of an SBOM management procedure enhanced from a security assurance perspective.

```
[SBOM Lifecycle Management Procedure Overview]

(1) Development stage
    - Register open source components in the SBOM immediately upon introduction.
    - SCA tools (Syft, cdxgen, etc.) in the CI/CD pipeline automatically detect them.

(2) Build stage
    - Automatically generate the latest SBOM on every build (SPDX or CycloneDX format).
    - Integrate with vulnerability scanning tools to record the vulnerability status at build time.

(3) Deployment stage
    - Finalize the SBOM for the release version and store it in the archive repository.
    - Import the SBOM into Dependency-Track to activate continuous monitoring.

(4) Post-deployment monitoring
    - When new CVEs are published, automatically cross-reference against all archived version SBOMs.
    - When affected versions are confirmed, process them according to the §4.1.5 Method 5 procedure.

(5) Update triggers
    - Update the SBOM immediately upon the following events:
      · Component addition, version upgrade, component removal
      · License change, replacement due to newly discovered vulnerability

(6) Archive retention
    - Retain SBOMs of all deployed versions by version.
    - Retention period: Minimum 3 years after the official support end of the relevant software
```

---

### 4.3.1.2 Open Source Component Records (SBOM)

This is the same as ISO/IEC 5230 §3.3.1.2. From a security assurance perspective, recording the **known vulnerability status** of each component or a link to the vulnerability management tool alongside license information in the SBOM makes integration with §4.3.2 easier. Refer to [§3.3.1.2 Open Source Component Records](../../iso5230_guide/3-content-review/1-sbom/) for how to prepare this.

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.3.1 SBOM](../../iso5230_guide/3-content-review/1-sbom/)
- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related tools: [Syft](../../../tools/6-syft/), [cdxgen](../../../tools/5-cdxgen/), [Dependency-Track](../../../tools/7-dependency-track/)
