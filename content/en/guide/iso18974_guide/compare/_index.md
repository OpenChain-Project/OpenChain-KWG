---
title: "ISO/IEC 5230 vs 18974 Comparison"
weight: 50
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "ISO/IEC 18974", "comparison"]
description: >
---

## 1. Relationship Between the Two Standards

ISO/IEC 5230 and ISO/IEC 18974 are both international open source standards led by the OpenChain Project, but they address different problems. 5230 covers open source license compliance (fulfillment of copyright obligations, SBOM management, and distribution of Compliance Artifacts), while 18974 covers open source security assurance (vulnerability detection, assessment, response, and CVD). The two standards do not have a complete superset/subset relationship. They share 9 common clauses covering policy, competence, SBOM, and similar areas, but each has its own exclusive clauses — 5230 has clauses for license compliance, artifacts, and contributions, while 18974 has clauses for Standard Practice Implementation and Security Assurance.

Complying with both standards simultaneously allows license obligation fulfillment and security vulnerability management to be operated as a single integrated open source program. Common foundational documents (policy, competence records, SBOM procedures) can be written once and used for both standards simultaneously, so the practical additional work required to prepare for 18974 after obtaining 5230 certification is approximately 30–40% of the total.

---

## 2. Clause-by-Clause Comparison Table

| ISO/IEC 5230 Clause | Title | ISO/IEC 18974 Clause | Differences |
|---|---|---|---|
| §3.1.1 | Policy | §4.1.1 | Added requirement for a periodic review process for the policy and its communication method |
| §3.1.2 | Competence | §4.1.2 | 3 additional Verification Materials (list of participants, evidence of periodic review, alignment with internal best practices) |
| §3.1.3 | Awareness | §4.1.3 | Added awareness items from a security assurance perspective; same number of Verification Materials |
| §3.1.4 | Program Scope | §4.1.4 | 2 additional Verification Materials (performance metrics, evidence of continuous improvement) |
| — | — | §4.1.5 | Standard Practice Implementation (new in 18974 — documentation of 8 vulnerability handling methods) |
| §3.2.1 | External Inquiry Response | §4.2.1 | Focus shifted from license inquiries to vulnerability inquiries |
| §3.2.2 | Effectively Resourced | §4.2.2 | Legal expertise replaced by vulnerability resolution expertise; Verification Materials reduced from 5 to 4 |
| §3.3.1 | SBOM | §4.3.1 | Emphasis on continuous lifecycle recording and integration with vulnerability monitoring |
| §3.3.2 | License Compliance | — | 5230 exclusive (not in 18974) |
| §3.4.1 | Compliance Artifacts | — | 5230 exclusive (not in 18974) |
| §3.5.1 | Contribution | — | 5230 exclusive (not in 18974) |
| — | — | §4.3.2 | Security Assurance (new in 18974 — full lifecycle of CVE detection, assessment, remediation, notification, and monitoring) |
| §3.6.1 | Conformance | §4.4.1 | Name changed to Completeness only; content is the same |
| §3.6.2 | Duration | §4.4.2 | Same |

**Summary**

- **Common clauses**: 9 (16 Verification Materials)
- **5230-exclusive clauses**: §3.3.2, §3.4.1, §3.5.1 (6 Verification Materials)
- **18974-exclusive clauses**: §4.1.5, §4.3.2 (3 Verification Materials)
- **Common clauses expanded in 18974**: 4 — §4.1.1, §4.1.2, §4.1.4, §4.2.2 (+6 Verification Materials)

---

## 3. Verification Material Count Comparison

| Category | ISO/IEC 5230 | ISO/IEC 18974 |
|------|-------------|--------------|
| Total Verification Materials | 24 | 25 |
| Exclusive clause (Verification Materials) | §3.3.2, §3.4.1, §3.5.1 (6 items) | §4.1.5, §4.3.2 (3 items) |
| Additional Verification Materials within common clauses | — | +6 items (expanded common clauses) |
| Common Verification Materials | 18 | 16 (including those with changed scope) |

---

## 4. Strategy for Simultaneous Conformance with Both Standards

The most efficient path is to obtain 5230 first and then prepare for 18974 as an addition. The policy documents, competence records, and SBOM procedures built during the 5230 certification process can be directly used for 18974's common clauses (§4.1.1–§4.1.4, §4.2.1, §4.2.2, §4.3.1, §4.4.1, §4.4.2). What needs to be separately prepared are additions to existing documents and 2 new clauses exclusive to 18974.

The items that need to be newly prepared exclusively for 18974 are as follows:

- **§4.1.5 Standard Practice Implementation**: Documented procedures for each of the 8 vulnerability handling methods (threat identification, detection, follow-up, customer notification, post-deployment analysis, security testing, risk verification, and information export)
- **§4.3.2 Security Assurance**: Full process from CVE detection → risk assessment → remediation decision → execution → monitoring, and per-component vulnerability action records
- **Supplementing common clauses**: Additional preparation of §4.1.2 list of participants (4.1.2.3), evidence of periodic review (4.1.2.5), alignment with best practices (4.1.2.6), §4.1.4 performance metrics (4.1.4.2), and evidence of continuous improvement (4.1.4.3)

The practical workload for an organization with a 5230 framework to additionally prepare for 18974 is estimated to be approximately 30–40% of the total 5230 preparation work.

---

## 5. Reference Links

- [ISO/IEC 5230 Conformance Guide](../../iso5230_guide/)
- [ISO/IEC 18974 Conformance Guide](../)
- [Enterprise Open Source Management Guide](../../../opensource_for_enterprise/)
- [OpenChain Self-Certification](https://certification.openchainproject.org/)
