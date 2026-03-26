---
title: "§4.4.1 Completeness"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "completeness"]
description: >
---

## 1. Clause Overview

§4.4.1 corresponds to ISO/IEC 5230 §3.6.1 (Conformance). A document must be prepared affirming that the program defined in §4.1.4 satisfies all requirements of ISO/IEC 18974. The structure is the same as 5230 §3.6.1, but the difference is that the subject of confirmation covers all 25 Verification Material items of 18974. When preparing for ISO/IEC 5230 and 18974 certification simultaneously, it is efficient to conduct an integrated review of the common items of both standards and then additionally confirm the 9 items exclusive to 18974 (marked with ★).

## 2. What to Do

- Conduct a self-assessment to verify that all Verification Materials (25 items) of all clauses from §4.1 to §4.3 are in place.
- Prepare a document affirming that the program defined in §4.1.4 satisfies all requirements of ISO/IEC 18974 within the defined scope.
- Record the reviewer, approver, and confirmation date in the confirmation document.
- When simultaneously complying with ISO/IEC 5230 and 18974, use an integrated checklist to reduce duplicated review burden.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.4.1 | For a program to be deemed conformant with this specification, the organization shall affirm that the program satisfies all the requirements of this specification. | **4.4.1.1** Documented evidence affirming the program specified in §4.1.4 satisfies all the requirements of this specification |

> **§4.4.1 Completeness**
> In order for a program to be deemed conformant with this specification, the
> organization shall affirm that the program satisfies the requirements
> presented in this specification.
>
> **Verification Material(s):**
> 4.4.1.1 Documented evidence affirming the program specified in §4.1.4
> satisfies all the requirements of this specification.

## 4. How to Comply and Samples per Verification Material

### 4.4.1.1 Specification Conformance Confirmation Document

**How to Comply**

A document affirming that the program defined in §4.1.4 satisfies all requirements of ISO/IEC 18974 within the defined scope must be prepared. This document is Verification Material 4.4.1.1. Use the checklist below to review all 25 Verification Material items and record the confirmation results.

**ISO/IEC 18974 Conformance Self-Assessment Checklist**

```
§4.1 Program Foundation
[ ] 4.1.1.1 Documented security assurance policy
[ ] 4.1.1.2 Procedure for communicating policy awareness
[ ] 4.1.2.1 List of roles and responsibilities
[ ] 4.1.2.2 Document identifying competencies per role
[ ] 4.1.2.3 List of participants and role mapping ★
[ ] 4.1.2.4 Evidence of assessed competence
[ ] 4.1.2.5 Evidence of periodic reviews and changes ★
[ ] 4.1.2.6 Verification of alignment with internal best practices ★
[ ] 4.1.3.1 Evidence of assessed awareness for participants
[ ] 4.1.4.1 Written statement of program scope
[ ] 4.1.4.2 Set of performance metrics ★
[ ] 4.1.4.3 Evidence of continuous improvement ★
[ ] 4.1.5.1 Documented procedures for 8 vulnerability handling methods ★

§4.2 Relevant Tasks
[ ] 4.2.1.1 Publicly available vulnerability inquiry channel
[ ] 4.2.1.2 Internal vulnerability inquiry response procedure
[ ] 4.2.2.1 Document identifying role assignees
[ ] 4.2.2.2 Confirmation of staffing and budget
[ ] 4.2.2.3 Document identifying vulnerability resolution expertise ★
[ ] 4.2.2.4 Internal responsibility assignment procedure

§4.3 Content Review and Approval
[ ] 4.3.1.1 SBOM lifecycle continuous recording procedure
[ ] 4.3.1.2 Open source component records (SBOM)
[ ] 4.3.2.1 Vulnerability detection and resolution procedure ★
[ ] 4.3.2.2 Vulnerability and action records ★

§4.4 Conformance
[ ] 4.4.1.1 Document affirming all requirements are satisfied
[ ] 4.4.2.1 Document affirming requirements satisfied within past 18 months

★ = Additional items compared to ISO/IEC 5230 (9 items)
```

**Considerations**

- **Integrated review with 5230**: If ISO/IEC 5230 certification is held, reuse existing materials for the 16 common items and focus on the 9 items exclusive to 18974.
- **Approval procedure**: Formalize the document through review by the Open Source Program Manager and approval by management.
- **Specify specification version**: Specify ISO/IEC 18974:2023 (version 1.0) as the specification confirmed for conformance in the document.

**Sample**

```
[ISO/IEC 18974 Specification Conformance Confirmation]

Program name: [Company name] Open Source Security Assurance Program
Scope: [Scope as defined in §4.1.4]
Specification confirmed for conformance: ISO/IEC 18974:2023 (version 1.0)
Confirmation date: YYYY-MM-DD

This document affirms that the above program satisfies all requirements
(25 Verification Material items) of ISO/IEC 18974:2023 from §4.1 through §4.4.

Conformance confirmation summary:
- §4.1 Program Foundation (5 clauses, 13 Verification Materials): Satisfied ✓
- §4.2 Relevant Tasks (2 clauses, 6 Verification Materials): Satisfied ✓
- §4.3 Content Review and Approval (2 clauses, 4 Verification Materials): Satisfied ✓
- §4.4 Conformance (2 clauses, 2 Verification Materials): Satisfied ✓

Reviewer: [Open Source Program Manager name]
Approver: [Management or OSRB head name]
Approval date: YYYY-MM-DD
```

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.6.1 Conformance](../../iso5230_guide/6-conformance/1-conformance/)
- ISO/IEC 18974 self-certification: [https://certification.openchainproject.org/](https://certification.openchainproject.org/)
- Full clause checklist: [ISO/IEC 18974 Conformance Guide](../../)
