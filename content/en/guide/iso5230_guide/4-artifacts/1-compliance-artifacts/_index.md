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

The following is a sample of fulfilling the GPL source code disclosure obligation through a
written offer. It is enclosed with the product or posted on a website and kept valid for 3 years.

{{% alert title="GPLv2 vs GPLv3 Source Code Provision Options — Issue Them Strictly Separated" color="warning" %}}
GPLv2 and GPLv3 differ in their source code provision options and obligation wording, so **mixing them
in a single document may constitute a violation**. Issue a separate notice for each license, or clearly
separate them within a single document.

| License | Validity / Place | Cost | Constraints / Options |
|---------|------------------|------|-----------------------|
| **GPLv2 §3(a)** | **Accompanied** with the object code | — | Applies to both commercial and non-commercial distribution. The safest option |
| **GPLv2 §3(b) (written offer)** | **At least 3 years** from the last distribution date | May charge only the actual cost of media reproduction and shipping | **Applies only to non-commercial distribution of object code**. Valid upon request by any third party. Must be provided on **`a medium customarily used for software interchange`** (the medium type must be specified) |
| **GPLv2 §3(c)** | Pass along the §3(b) offer as received | — | Only a **non-commercial redistributor** may satisfy the obligation by passing along the §3(b) offer |
| **GPLv3 §6(a)** | **Accompanied** with the object code | — | The safest option |
| **GPLv3 §6(b) (written offer)** | **At least 3 years** after the last model distribution, or the support period | May charge only the actual cost of media reproduction and shipping | Valid for any third party. **A distinct option from (c)(d)(e)** |
| **GPLv3 §6(c)** | Pass along the §6(b) offer | — | Non-commercial redistribution only |
| **GPLv3 §6(d) (designated place)** | At the same place, **for as long as the object code remains available** | — | Where the **object code is offered free of charge** (e.g., a network server), the **Corresponding Source must also be offered free of charge at the same place**. Peer-to-peer is §6(e) |
| **GPLv3 §6 Installation Information** | **Accompanying** the shipment of the User Product | — | For **consumer products** (embedded), there is an obligation to provide Installation Information such as keys, signatures, and installation procedures |
| **AGPLv3 §13** | **Free download** to network-interaction users (throughout the time the modified version is used) | — | When **providing a modified version as a SaaS or network service**, there is an obligation to provide explicit notice (in the service UI, footer, About page, etc.) so that all users who remotely access the service can **download the Corresponding Source of the modified version free of charge over the network**. A written offer alone is insufficient — **a download link must be exposed at the service endpoint** |

**Key Cautions**:
- The **"Corresponding Source"** (defined in GPLv3 §1) is broader in scope than GPLv2's "complete corresponding source code" — it includes build scripts, installation information, interface definitions, and shared library sources.
- GPLv3 offers a choice among 5 options: §6(a), (b), (c), (d), and (e). **§6(b) and §6(d) are distinct options**, so the phrase "written offer exemption" is inaccurate.
- GPLv2 §3(b) is **limited to non-commercial distribution of object code**. For commercial distribution, the §3(a) accompaniment is the safe choice.
- If an AGPL component is used as a SaaS, a written offer alone is insufficient — a **download link** must be exposed to network users.
{{% /alert %}}

```
[GPLv2 Source Code Disclosure Written Offer — based on GPLv2 §3(b)]

This product includes open source software distributed under the GNU General
Public License version 2 (GPLv2).

If you request the complete corresponding machine-readable source code of that
software, please contact us in writing or by email at the address below. The
source code will be delivered on **a medium customarily used for software
interchange** (e.g., USB drive, DVD, or a download link), and we may charge the
**actual cost** of media reproduction and shipping. This offer is valid to **any
third party** for **at least 3 years** from the last distribution date of the
product.

(Note: GPLv2 §3(b) is an option that applies to non-commercial distribution of
object code. For commercial distribution, accompaniment under §3(a) is
recommended. A non-commercial redistributor may pass along this offer as received
under §3(c).)

Contact:
  Company name: [Company Name]
  Department: Open Source Compliance Team
  Email: oss@company.com
  Mailing address: [Company Address]
  Provision medium: USB or download link (selectable upon request)

Information to include in the request:
  - Product name and model name
  - Software version
  - Name of the open source component requested (optional)
```

```
[GPLv3 Source Code Provision Notice — based on GPLv3 §6(d) (designated place)]

This product includes open source software distributed under the GNU General
Public License version 3 (GPLv3). You can obtain the **Corresponding Source**
(as defined in GPLv3 §1 — including build scripts, installation information,
interface definitions, and shared library sources) in one of the following two
ways.

(1) Network download (§6(d) designated place):
    https://opensource.[company-domain]/products/[product-id]/v[version]/source.tar.xz
    This URL is provided at the same place where the object code can be downloaded
    free of charge, and is maintained for at least 3 years after the last model
    distribution or for the customer support period.

(2) Written Offer request (§6(b)):
    If the above URL is unavailable, please contact oss@company.com. We may charge
    the actual cost of media reproduction and shipping, and the offer is valid to
    any third party for at least 3 years after the last model distribution or for
    the customer support period.

[Additional Notice for User Products (consumer devices / embedded) — GPLv3 §6 Installation Information]
If this product is in a form that consumers can install themselves (embedded
devices, etc.), we also provide the following Installation Information:
  - Build procedure for the modified version
  - Signing keys or authentication bypass methods required for installation
  - Bootloader / firmware update procedures
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
| Software Name | Version | First Distribution Date | Last Distribution Date | Artifact Type | Storage Location | Retention Deadline (Final) | Responsible |
|---------------|---------|-------------------------|------------------------|---------------|-----------------|----------------------------|-------------|
| MyProduct | v1.0.0 | 2024-03-01 | 2025-08-20 (patch v1.0.5 redistributed) | NOTICES file, GPL source code package | /archive/myproduct/v1.0.0/ | **2028-08-20** | Gil-dong Hong |
| MyProduct | v1.1.0 | 2024-09-15 | 2024-09-15 | NOTICES file | /archive/myproduct/v1.1.0/ | 2027-09-15 | Gil-dong Hong |
| FirmwareX | v2.3.0 | 2025-01-10 | 2025-06-12 (patch v2.3.2 redistributed) | NOTICES file, LGPL source code package, SBOM | /archive/firmwarex/v2.3.0/ | **2028-06-12** | Infra Lee |
```

> **Retention Deadline Renewal Principle**: The 3-year period of a GPL written offer is based on the
> **"last distribution"** date. When the same version is redistributed via a patch, the final deadline
> must also be renewed. The sample above records the "First Distribution Date" and "Last Distribution
> Date" separately so that the renewal can be tracked.

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related template: [Open Source Process Template](../../../templates/2-process-template/)
