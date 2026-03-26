---
title: "§4.1.4 Program Scope"
weight: 40
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "program scope"]
description: >
---

## 1. Clause Overview

§4.1.4 is the clause from ISO/IEC 5230 §3.1.4 (Program Scope) with 2 additional Verification Materials. While 5230 only requires a written statement that clearly defines the program's scope, 18974 additionally requires a **set of performance metrics the program seeks to improve upon (4.1.4.2)** and **documented evidence from each review, update, or audit demonstrating continuous improvement (4.1.4.3)**. These two items are intended to demonstrate that the security assurance program is not static compliance, but a system with measurable goals that continuously improves.

## 2. What to Do

- Create a documented written statement that clearly defines the program scope (target software, organizational units, exclusions) (same as 5230).
- **Define the performance metrics that the program seeks to improve upon** (added in 18974).
- **Maintain records demonstrating that continuous improvement is achieved through periodic reviews, updates, and audits** (added in 18974).
- Periodically measure actual performance against metric targets and record the results.
- Identify areas for improvement and document the history of follow-up actions.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.1.4 | The program scope must be clearly defined, and metrics for program improvement and evidence of continuous improvement must be maintained. | **4.1.4.1** A written statement that clearly defines the scope and limits of the program<br>**4.1.4.2** A set of metrics the program seeks to improve upon ★<br>**4.1.4.3** Documented evidence from each review, update, or audit to demonstrate continuous improvement ★ |

★ = Additional items compared to ISO/IEC 5230 §3.1.4

> **§4.1.4 Program Scope**
> Different programs may be designed to address different scopes depending on
> the supplier's needs and business model. The scope needs to be clear.
>
> **Verification Material(s):**
> 4.1.4.1 A written statement that clearly defines the scope and limits of
> the program.
> 4.1.4.2 A set of metrics the program seeks to improve upon.
> 4.1.4.3 Documented evidence from each review, update, or audit to
> demonstrate continuous improvement.

## 4. How to Comply and Samples per Verification Material

### 4.1.4.1 Written Statement of Program Scope

This is the same as ISO/IEC 5230 §3.1.4.1. Refer to [§3.1.4.1 Written Statement of Program Scope](../../iso5230_guide/1-program-foundation/4-scope/) for how to prepare this. From a security assurance perspective, explicitly state that "response to known and newly discovered vulnerabilities" is included within the scope.

---

### 4.1.4.2 Set of Performance Metrics ★

**How to Comply**

The performance metrics that the security assurance program seeks to improve must be defined and documented. Metrics must be measurable and realistic, and connected to the program's key objectives (vulnerability detection rate, response time, SBOM completeness, etc.). The metrics set itself is Verification Material 4.1.4.2.

**Considerations**

- **Measurability**: Set quantitative indicators rather than qualitative descriptions.
- **Realistic targets**: Set targets at an achievable level initially and progressively raise them.
- **Periodic measurement**: Measure metrics at a minimum quarterly and record the results.

**Sample**

```
[Security Assurance Program Performance Metrics]

| Metric | Measurement Method | Target | Measurement Cycle |
|--------|--------------------|--------|--------------------|
| SBOM Completeness | Proportion of distributed software with an SBOM | 100% | Quarterly |
| Critical Vulnerability Average Response Time | Detection date to patch application date | 7 days or less | Quarterly |
| High Vulnerability Average Response Time | Detection date to patch application date | 30 days or less | Quarterly |
| Vulnerability Recurrence Rate | Rate of re-vulnerability in the same component | 10% or less | Semi-annually |
| New Participant Awareness Assessment Completion Rate | Rate of assessment completion within 30 days of joining | 100% | Quarterly |
| External Vulnerability Inquiry Response Compliance Rate | Rate of response completion within 14 days | 95% or more | Quarterly |
```

---

### 4.1.4.3 Evidence of Continuous Improvement ★

**How to Comply**

Records showing that the security assurance program is actually improving through periodic reviews, process updates, internal audits, etc. must be maintained. Document the issues found, improvement actions taken, and improvement results at each review or audit. These records themselves are Verification Material 4.1.4.3.

**Considerations**

- **Regular audit schedule**: Conduct a full program audit at a minimum annually and record the results.
- **Track improvement history**: Track and record whether issues raised in previous audits were resolved in subsequent audits.
- **Link to metrics**: Use the performance trend of the metrics defined in 4.1.4.2 as evidence of improvement.

**Sample**

```
[Security Assurance Program Periodic Review Record]

Review date: 2026-01-10
Reviewers: Gil-dong Hong (Open Source Program Manager), Chul-su Kim (Security)

Metrics performance:
- SBOM Completeness: 97% → 100% (target achieved)
- Critical vulnerability average response time: 9 days → 6 days (target achieved)
- High vulnerability average response time: 35 days → 28 days (target achieved)

Improvements identified:
1. External vulnerability inquiry response compliance rate 88% → target of 95% not met
   Action: Additional inquiry monitoring assignee designated (completed 2026-02-01)
2. Delays in awareness assessment for new participants identified
   Action: Awareness assessment added as mandatory item to onboarding checklist (completed 2026-01-20)

Next review scheduled: 2027-01-09
```

## 5. References

- Corresponding ISO/IEC 5230 clause: [§3.1.4 Program Scope](../../iso5230_guide/1-program-foundation/4-scope/)
- Related guide: [Enterprise Open Source Management Guide — 2. Policy](../../../opensource_for_enterprise/2-policy/)
- Related template: [Open Source Policy Template — §1.4 Scope](../../../templates/1-policy/)
