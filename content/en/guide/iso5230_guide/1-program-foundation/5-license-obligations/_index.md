---
title: "§3.1.5 License Obligations"
weight: 50
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "License Obligations"]
description: >
---

## 1. Clause Overview

The most critical task when including open source components in software is accurately understanding
the obligations, restrictions, and rights imposed by the licenses applied to those components. Distributing
without reviewing license obligations can result in serious legal risks such as mandatory source code
disclosure, missing copyright notices, and patent clause violations. §3.1.5 requires the establishment
of a procedure for reviewing all identified licenses to determine their obligations, restrictions, and
rights, and for recording the results. This procedure forms the foundation of the §3.3.2 License
Compliance process.

## 2. What to Do

- Identify and list the licenses of open source components used in the software.
- Review the obligations (notice obligations, source code disclosure obligations, etc.), restrictions
  (commercial use restrictions, patent use restrictions, etc.), and rights (use, modification, and
  redistribution rights, etc.) imposed by each license.
- Document review results by license and maintain records.
- Establish a procedure for requesting legal review when there is uncertainty in license interpretation.
- Update the procedure when new licenses emerge or existing license interpretations change.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.1.5 | A process shall exist for reviewing the identified licenses to determine the obligations, restrictions and rights granted by each license. | **3.1.5.1** A documented procedure to review and document the obligations, restrictions, and rights granted by each identified license. |

## 4. How to Comply and Samples by Verification Material

### 3.1.5.1 License Obligation Review Procedure

**How to Comply**

A procedure for reviewing and recording the obligations, restrictions, and rights of each open source
license must be documented. The procedure must include the following steps: (1) license identification,
(2) obligation, restriction, and rights analysis, (3) recording review results, (4) requesting legal
review for uncertain items, and (5) record retention. This procedure document itself is Verification
Material 3.1.5.1.

License obligations by license can be efficiently managed by utilizing pre-compiled license databases
(SPDX License List, etc.). It is practically effective to prepare an obligation summary table in advance
for major licenses (MIT, Apache-2.0, GPL-2.0, GPL-3.0, LGPL-2.1, AGPL-3.0, etc.) and to immediately
conduct additional review when new licenses are discovered. The criteria for escalating to the legal
team in the case of complex license combinations or situations requiring legal judgment should also be
specified in the procedure.

**Considerations**

- **SPDX utilization**: Using the SPDX License List as a reference license list standardizes
  identification and classification.
- **Obligation type distinction**: Record obligations by type, such as notice obligations, source code
  disclosure obligations, patent clauses, and trademark restrictions.
- **Review by distribution format**: Review by distribution format, as license obligations may differ
  depending on the distribution format such as binary distribution, SaaS, and internal use.
- **Escalation criteria**: Specify in the procedure the situations requiring legal review (license
  conflicts, non-standard licenses, commercial restriction clauses, etc.).
- **Update cycle**: Immediately update the procedure and records when new licenses are adopted or
  existing license interpretations change.

**Sample**

The following is a sample obligation summary table for major open source licenses. Writing and retaining
it as part of the license review procedure can serve as Verification Material.

```
| License | Notice Obligation | Source Code Disclosure | Same License for Modifications | Patent Clause | Commercial Use |
|---------|-------------------|----------------------|-------------------------------|---------------|----------------|
| MIT | Yes | No | No | No | Yes |
| Apache-2.0 | Yes | No | No | Yes (patent grant) | Yes |
| GPL-2.0 | Yes | Yes (upon distribution) | Yes | No | Yes |
| GPL-3.0 | Yes | Yes (upon distribution) | Yes | Yes (patent grant) | Yes |
| LGPL-2.1 | Yes | Yes (library) | Yes (library) | No | Yes |
| AGPL-3.0 | Yes | Yes (including network) | Yes | Yes (patent grant) | Yes |
| MPL-2.0 | Yes | Yes (file-level) | Yes (file-level) | Yes (patent grant) | Yes |
| BSD-2-Clause | Yes | No | No | No | Yes |
| BSD-3-Clause | Yes | No | No | No | Yes |
```

The following is a sample outline of a license obligation review procedure.

```
[License Obligation Review Procedure]

1. License Identification
   - Identify open source components and licenses through SBOM generation tools
     (FOSSology, ORT, etc.).

2. Obligation, Restriction, and Rights Analysis
   - Refer to the pre-compiled license obligation summary table to confirm the
     obligations, restrictions, and rights of the applicable license.
   - For licenses not in the summary table, review the SPDX License List and
     license text to add new entries.

3. Legal Review Request (if applicable)
   - When license conflicts, non-standard licenses, or commercial restriction
     clauses are present, request legal review from the legal team.

4. Recording Review Results
   - Record review results in the SBOM or license review record and store in
     the open source management system.

5. Obligation Fulfillment Confirmation
   - Before distribution, confirm that license obligations (notice inclusion,
     source code disclosure, etc.) have been completed.
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related template: [Open Source Process Template](../../../templates/2-process-template/)
