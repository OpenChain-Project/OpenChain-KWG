---
title: "§3.1.4 Program Scope"
weight: 40
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "Program Scope"]
description: >
---

## 1. Clause Overview

If it is unclear whether the open source program applies to the entire organization or only to specific
product lines or business units, the boundaries of compliance activities become vague and accountability
becomes unclear. §3.1.4 requires a documented written statement that clearly defines which software,
organizational units, and distribution channels the open source program applies to, and what is outside
the scope. The scope may vary depending on the organization's size and business model, and this clause
requires that choice to be explicitly recorded.

## 2. What to Do

- Determine the types of software the open source program applies to (externally distributed products,
  services, internal systems, etc.).
- Define the organizational scope the program applies to (company-wide, specific business unit, specific
  product line, etc.).
- If there are items explicitly excluded from the scope, record them together with the rationale.
- Document the scope statement and officially manage it as an open source policy or separate document.
- Re-examine and update the scope when the business environment changes (entry into new businesses,
  mergers and acquisitions, etc.).

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|--------|-------------|--------------------------|
| §3.1.4 | Different programs may be designed to address different scopes depending on the supplier's needs and business model. The scope might include the entire organization, a particular business unit, a particular product line, a specific product, or even a single open source component. The definition of the scope needs to be clear. | **3.1.4.1** A written statement that clearly defines the scope and limits of the program. |

## 4. How to Comply and Samples by Verification Material

### 3.1.4.1 Written Statement of Program Scope

**How to Comply**

A document must be written that clearly describes where the program applies and where it does not. This
statement can be included in the scope section of the Open Source Policy document (§3.1.1.1) or managed
as a separate document. The key point is that the boundaries must be clear. For example, it can be stated
clearly as "all software products distributed externally," or the scope can be specifically limited such
as "limited to embedded software developed by business unit A."

When determining the scope, comprehensively consider the software distribution format (binary products,
SaaS, internal tools), how open source is used (direct use, indirect dependencies), and external
contribution activities. It is also advisable to clearly state the handling policy for software used
only internally. The scope statement must be periodically reviewed and versioned in response to business
environment changes.

**Considerations**

- **Distribution format distinction**: Specify the applicability for each software distribution type
  such as externally distributed products, SaaS services, and internal systems.
- **Organizational scope**: Clearly state whether it applies company-wide or only to specific business
  units or product lines.
- **Exception recording**: If there are items excluded from the scope, record them in the document
  together with the reason for exclusion.
- **Update cycle**: Immediately re-examine and update the version when entering new businesses,
  undergoing mergers and acquisitions, or changing the product portfolio.
- **Policy alignment**: The scope statement should be consistent with the open source policy §1.4
  scope section.

**Sample**

The following is a sample scope statement within an open source policy. This text itself constitutes
Verification Material 3.1.4.1.

```
## Program Scope

This open source program applies to the following scope:

**Applicable**
- All software products externally distributed or sold by the company (including embedded software)
- Activities contributing to external open source projects
- Activities releasing internal projects as open source

**Excluded**
- Software used internally only and not distributed externally (however, a separate review procedure
  may be applied)
- Commercial software procured from third parties (however, review for open source inclusion is required)

**Organizational Scope**
This program applies to all business units of [Company Name], and subsidiaries and affiliates
determine applicability through separate consultation.

This scope is reviewed at least once a year in accordance with business environment changes,
and the Open Source Program Manager publishes the revised version when changes occur.
```

## 5. References

- Related guide: [Enterprise Open Source Management Guide — 2. Policy](../../../opensource_for_enterprise/2-policy/)
- Related template: [Open Source Policy Template — §1.4 Scope](../../../templates/1-policy/)
