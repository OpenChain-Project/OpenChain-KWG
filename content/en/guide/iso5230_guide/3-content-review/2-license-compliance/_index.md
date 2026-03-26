---
title: "§3.3.2 License Compliance"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "License Compliance"]
description: >
---

## 1. Clause Overview

License obligations for open source components vary depending on the distribution format (binary, source
code), whether modifications were made, and how they are combined with other components. §3.3.2 requires
the program to have the capability to handle the common open source license use cases for open source
components in the supplied software. This clause goes beyond simply identifying licenses to establishing
procedures that define how to fulfill obligations for various distribution scenarios.

## 2. What to Do

- Identify major license use cases such as binary distribution, source code distribution, and distribution
  of modified open source, and establish handling procedures for each case.
- Include in the procedure how to handle license conflicts (combination of incompatible license components).
- Define the handling method for licenses requiring notice obligations (including copyright notices and
  full license text).
- Establish a distribution procedure for software containing licenses with source code disclosure
  obligations such as GPL.
- Document the procedure and periodically review it to address new license types.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.3.2 | The program shall be capable of handling the common open source license use cases for the open source components of the supplied software, which may include the following use cases: distributed in binary form / distributed in source form / integrated with other open source such that it may trigger additional licensing obligations / contains modified open source / contains open source or other software under an incompatible license interacting with other components within the supplied software / contains open source with attribution requirements. | **3.3.2.1** A documented procedure for handling the common open source license use cases for the open source components of the supplied software. |

## 4. How to Comply and Samples by Verification Material

### 3.3.2.1 Procedure for Handling License Use Cases

**How to Comply**

A procedure defining how to fulfill license obligations for the various scenarios in which open source
is included in supplied software must be documented. This procedure document is Verification Material
3.3.2.1. ISO/IEC 5230 presents the following 6 major use cases as examples, and the organization selects
the applicable cases based on its business environment to establish handling procedures.

Each use case procedure must include: (1) criteria for determining whether the case applies, (2) license
obligation items, (3) method for fulfilling the obligation, (4) person responsible, and (5) artifacts
(notices, source code packages, etc.). The path for escalating to the legal team in the case of license
conflicts must also be specified.

**Considerations**

- **Determine use case scope**: Select the use cases matching the organization's software distribution
  method to establish procedures (not all cases may apply to every organization).
- **License conflict response**: Pre-define the handling method for incompatible license combinations
  such as GPL and Apache-2.0.
- **Notice management**: Establish a procedure for writing notices in a NOTICES file or product
  documentation for licenses with copyright notice obligations.
- **Source code disclosure procedure**: Separately define the procedure for responding to source code
  disclosure requests under GPL-family licenses.
- **Update cycle**: Update the procedure when new license types are adopted or distribution formats change.

**Sample**

The following is a sample summary table of procedures for handling license use cases.

```
| Use Case | License Examples | Key Obligations | Handling Method |
|----------|-----------------|-----------------|-----------------|
| Binary distribution | MIT, Apache-2.0 | Include copyright notice | Include notice in NOTICES file or in-app notice screen |
| Binary distribution | GPL-2.0, GPL-3.0 | Disclose source code or include written offer | Distribute source code package or enclose written offer |
| Source code distribution | All licenses | Preserve original license file and copyright notice | Keep license file and copyright notice as is |
| Contains modified open source | GPL-2.0, LGPL-2.1 | Note modifications, apply same license to modifications | Record modification details, disclose modified source code |
| Incompatible license combination | GPL-2.0 + Apache-2.0 | Resolve license conflict | Replace component or change structure after legal review |
| Attribution requirement | BSD-3-Clause, Apache-2.0 | Include copyright notice in product documentation or UI | Add notice to product manual or About screen |
```

The following is a sample outline of a license obligation handling procedure by distribution format.

```
[License Obligation Handling Procedure for Binary Distribution]

1. SBOM Review
   - Review the list of included open source based on the latest SBOM of the
     distributed software.

2. License Obligation Classification
   - Notice obligation: MIT, Apache-2.0, BSD, etc. → Create NOTICES file
   - Source code disclosure obligation: GPL-2.0, GPL-3.0 → Prepare source code package
   - LGPL: Determine scope of obligation based on dynamic linking status
     (legal review if necessary)

3. Compliance Artifacts Preparation
   - NOTICES file: Include copyright notices and full license text for all open source
   - Source code package: Include modified source code and build scripts for GPL components

4. Review and Approval
   - The Open Source Program Manager conducts a final review of the completeness of
     the artifacts.
   - License conflicts or uncertain items are escalated to the legal team.

5. Distribution
   - Provide Compliance Artifacts together with the software.
   - Retain a copy of the artifacts (see §3.4.1).
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related template: [Open Source Process Template](../../../templates/2-process-template/)
