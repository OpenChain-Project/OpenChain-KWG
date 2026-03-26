---
title: "§3.4.1 Artifacts"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "Compliance Artifacts"]
description: >
---

## 1. Clause Overview

To fulfill license obligations, Compliance Artifacts such as notices and source code packages must
actually be prepared and provided with the software. §3.4.1 requires the establishment of a procedure
for preparing the Compliance Artifacts required by the identified licenses and distributing them with
the supplied software, as well as a procedure for retaining copies of the artifacts for a certain period.
This clause connects the results of the §3.3 review and approval stage to actual distribution and archiving.

## 2. What to Do

- Define the types of Compliance Artifacts (NOTICES file, source code package, written offer, etc.)
  required for each license.
- Document a procedure for preparing artifacts and providing them with the supplied software.
- Establish and document a procedure for retaining copies of distributed artifacts for a certain period.
- Specify the artifact retention period in the policy (industry practice: at least 3 years after the
  last distribution).
- Maintain records that prove the archiving procedure was carried out correctly.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.4.1 | A process shall exist for creating the identified compliance artifacts for the supplied software. | **3.4.1.1** A documented procedure that describes the process under which the compliance artifacts are prepared and distributed with the supplied software as required by the identified licenses.<br>**3.4.1.2** A documented procedure for archiving copies of the compliance artifacts of the supplied software - where the archive is planned to exist for a reasonable period of time since the last offer of the supplied software; at least 3 years is a common practice. Records exist that demonstrate the procedure was followed. |

## 4. How to Comply and Samples by Verification Material

### 3.4.1.1 Compliance Artifacts Preparation and Distribution Procedure

**How to Comply**

A procedure for preparing Compliance Artifacts required by license obligations and providing them with
the supplied software must be documented. This procedure document is Verification Material 3.4.1.1.
The procedure must include the following steps: (1) determining artifact types, (2) creating artifacts,
(3) reviewing and approving, (4) providing with the software, and (5) record retention.

The types of Compliance Artifacts vary depending on the licenses being distributed. Generally, licenses
with notice obligations (MIT, Apache-2.0, etc.) require a NOTICES file, and GPL-family licenses require
a source code package or written offer. Artifacts can be provided in various ways such as enclosed in
the product, included in the package, posted on a website, or provided upon request.

**Considerations**

- **Define artifact types**: Define in advance what artifacts are required for each license so that
  distribution preparation can proceed quickly.
- **NOTICES file quality**: Review that copyright notices and full license text for all open source
  components are included without omission.
- **Source code package**: For GPL components, prepare a complete source code package that includes
  modified source code and build scripts.
- **Provision method**: Determine whether to enclose artifacts with the software, post them on a
  website, or provide them upon request based on license requirements.
- **Final review**: The Open Source Program Manager conducts a final check of the completeness of
  artifacts before distribution.

**Sample**

The following is a sample outline of a Compliance Artifacts preparation and distribution procedure.

```
[Compliance Artifacts Preparation and Distribution Procedure]

1. Determine Artifact Types
   - Review the list of included licenses based on the SBOM.
   - Determine the necessary artifacts based on license obligations:
     · Notice obligation licenses → NOTICES file
     · GPL-2.0/3.0 → Source code package or written offer
     · LGPL → Dynamic link structure proof document or source code

2. Create Artifacts
   - NOTICES file: Generate using automated tools (FOSSology, ORT, etc.) or create manually.
     Include component name, version, full license text, and copyright notice.
   - Source code package: Include modified source code and build scripts for GPL components.

3. Review and Approval
   - The Open Source Program Manager reviews the completeness and accuracy of the artifacts.
   - Incomplete items are corrected and re-reviewed.

4. Provide with Software
   - Enclose in the product package or include in the screen displayed during installation.
   - If posting on a website or providing upon request, specify the relevant URL or procedure.
   - If using a written offer, include a written commitment valid for 3 years.
```

---

### 3.4.1.2 Compliance Artifacts Archiving Procedure

**How to Comply**

A procedure for retaining copies of Compliance Artifacts for distributed supplied software for a certain
period must be documented, and records must be maintained that prove the procedure was actually followed.
This procedure document and archiving records are Verification Material 3.4.1.2.

The retention period must be a reasonable period from the last distribution of the software, and at
least 3 years is recommended as industry practice. The items to be retained include all artifacts provided
upon distribution such as NOTICES files, source code packages, written offer copies, and SBOMs. Artifacts
should be systematically managed by software version so that artifacts for a specific version can be
immediately retrieved and submitted.

**Considerations**

- **Specify retention period**: Specify the retention period (at least 3 years) in the policy or
  procedure document.
- **Version-by-version management**: Link software release versions to artifacts and retain by version.
- **Storage location**: Store in an accessible and secure location such as an internal file server,
  document management system, or source code repository.
- **Maintain archiving records**: Record the history of when artifacts for which version were archived.
- **Accessibility**: Store in a searchable format so that artifacts can be immediately submitted when
  audits or external inquiries occur.

**Sample**

The following is a sample Compliance Artifacts archiving record form.

```
| Software Name | Version | Distribution Date | Artifact Type | Storage Location | Retention Deadline | Responsible |
|---------------|---------|-------------------|---------------|-----------------|-------------------|-------------|
| MyProduct | v1.0.0 | 2024-03-01 | NOTICES file, GPL source code package | /archive/myproduct/v1.0.0/ | 2027-03-01 | Gil-dong Hong |
| MyProduct | v1.1.0 | 2024-09-15 | NOTICES file | /archive/myproduct/v1.1.0/ | 2027-09-15 | Gil-dong Hong |
| FirmwareX | v2.3.0 | 2025-01-10 | NOTICES file, LGPL source code package, SBOM | /archive/firmwarex/v2.3.0/ | 2028-01-10 | Infra Lee |
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related template: [Open Source Process Template](../../../templates/2-process-template/)
