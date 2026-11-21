---
title: "Policy and Procedure Templates"
linkTitle: "Policy and Procedure Templates"
weight: 20
type: docs
categories: ["guide"]
tags: ["Finance", "Open Source", "Policy", "Template", "Network Separation"]
description: >
  Provides outlines for a finance-specific open source policy, an import procedure, a usage approval
  form, and a self risk assessment report for network separation exceptions. Fill them in to suit
  your organization.
---

The forms here are outlines that add items specific to the financial sector. For general open source
policy and process forms, use the existing [policy and procedure templates](../../../templates/)
guide, and use the forms below for what the financial sector additionally needs: import control,
risk assessment for network separation exceptions, and SBOM requirements for outsourcing.

{{% alert title="How to use" color="info" %}}
The outlines below are not finished documents to use as they are, but frames to fill in. Replace
the parts in square brackets to suit your organization. Have them reviewed by your internal legal
and security teams before issuing them.
{{% /alert %}}

## Financial open source policy (supplementary items)

Add items specific to the financial sector to your existing open source policy. Below is an outline
of the items to include in the policy.

```text
1. Purpose and scope
   - Covers both distributed software and internal operational systems.
   - Applies separately to closed networks and network separation exception zones.

2. Identification
   - Identify open source in new, legacy, and outsourced deliverables with SBOMs.

3. Identifying and resolving issues
   - Response deadlines by vulnerability severity: [deadlines set by the organization].
   - Source code disclosure policy for GPL-family software in external distribution: [policy details].

4. Usage approval
   - Composition and authority of the approver (Open Source Review Board).
   - Approval levels by risk level (automatic approval criteria and criteria for referral to the board).

5. Management
   - Continuous monitoring of operational systems and periodic reassessment cycle: [quarterly, semi-annual, etc.].
   - Audit evidence retention period: [period set by the organization].

6. Network separation exceptions
   - Obligation of self risk assessment and reassessment cycle.

7. Roles and responsibilities, budget, access to legal advice, policy communication
```

## Open source import procedure (closed network)

This is an outline of the procedure for bringing open source into a closed network. For a detailed
explanation, see [Closed Network Operation](../../0-closed-network/#import-control).

```text
Import request
  - Requester, target open source and version, purpose, reason for import

Verification in the external zone
  - Confirm the official distribution source, compare checksums (integrity)
  - Malware scan
  - SBOM generation
  - Preliminary vulnerability check

Import approval
  - Review verification results, decide on approval
  - Record approver and approval date and time

Internal transfer
  - Cross-network data transfer, recheck hashes inside the internal network
  - Register in the internal mirror (register the SBOM as well)

Record retention
  - Keep the entire process above as audit evidence
```

## Usage approval request and review form

```text
[Request]
  - Requester / Department / Request date
  - Target open source / Version / License
  - Purpose of use / Distribution (external distribution / internal operation)
  - Attachments: SBOM, vulnerability check results

[Review] (Open Source Review Board)
  - Legal: review opinion on license obligations, contracts, and attribution of rights
  - Security: review opinion on vulnerabilities, supply chain, and maintenance status
  - Technical: review opinion on suitability and replaceability

[Decision]
  - Approval / Conditional approval (conditions: ___) / Rejection
  - Decision maker / Decision date / Basis
```

{{% alert title="Filled-in example (fictional case)" color="info" %}}
Below is a fictional case showing how to fill in the form. OO Bank and the systems and dates that
appear are all made up and have no relation to any real institution or system.
{{% /alert %}}

```text
[Request]
  - Requester: Kim OO / Digital Channel Development Team / 2026-05-12
  - Target open source: Apache Kafka / 3.9.x / Apache-2.0
  - Purpose of use: internal event streaming (loading transaction notifications) / internal operation (not distributed)
  - Attachments: kafka-3.9.sbom.json, vulnerability check results (critical 0, high 0)

[Review] (Open Source Review Board, 2026-05-19)
  - Legal: Apache-2.0, no notice obligation because of non-distributed use. No issues.
  - Security: No known critical vulnerabilities. Import via the internal mirror confirmed. No issues.
  - Technical: Consistent with the existing messaging standard. Operations team's operating capability confirmed.

[Decision]
  - Conditional approval (condition: register the operational system's SBOM in Dependency-Track and include it in continuous monitoring)
  - Decision maker: Open Source Review Board / 2026-05-19 / Synthesis of three review opinions
```

## Self risk assessment report for network separation exceptions

Prepare this report when applying a network separation exception, under the amendment to the
Regulation on Supervision of Electronic Financial Transactions (전자금융감독규정) effective
2025-02-05, to work for research and development purposes that does not process unique
identification information or personal credit information. For a detailed explanation, see [Self
risk assessment in Closed Network
Operation](../../0-closed-network/#self-risk-assessment-for-network-separation-exceptions).

```text
1. Target work
   - Work name / System name
   - Whether it qualifies as research and development purposes, and the basis for the judgment
   - Confirmation that no unique identification information or personal credit information is processed

2. Open source in use
   - SBOM (list of open source used in the target zone)
   - Vulnerability and license risk assessment

3. Additional risks and controls
   - Risks added by the internet connection
   - Alternative information security controls applied in place of network separation
   - Security controls replacing import verification

4. Implementation check and reassessment
   - How to confirm implementation of controls
   - Reassessment cycle: [cycle set by the organization, usually at least once a year]

5. Review and approval
   - Author / Date written
   - Review: information security department, open source management organization (confirmation of risk information)
   - Approval: Information Security Committee or Chief Information Security Officer (CISO) / Approval date
```

{{% alert title="Filled-in example (fictional case)" color="info" %}}
Below is a fictional case showing how to fill in the form. OO Bank and the work and dates that
appear are all made up and have no relation to any real institution or system.
{{% /alert %}}

```text
1. Target work
   - Work name: fraud detection model research / System name: FDS research and validation environment
   - Qualifies as research and development purposes: Yes. A dedicated environment for model research and validation, separated from operational services
   - No unique identification information or personal credit information processed: Confirmed. Only de-identified sample data is used

2. Open source in use
   - SBOM: fds-research-env.sbom.json (187 Python-ecosystem components)
   - Risk assessment: 0 critical vulnerabilities, 0 copyleft licenses (all Apache-2.0, BSD, MIT)

3. Additional risks and controls
   - Additional risk: inflow of unverified components through direct access to external package repositories
   - Alternative information security controls: endpoint controls and access logs according to the criteria for alternative information security controls in place of network separation
   - Security controls: internal mirror used first, weekly vulnerability scan of the entire environment

4. Implementation check and reassessment
   - Implementation check: quarterly review of control operation (information security department)
   - Reassessment cycle: once a year and whenever the environment configuration changes

5. Review and approval
   - Author: Park OO (FDS Research Team) / 2026-04-02
   - Review: information security department (2026-04-09), open source management organization (SBOM and risk assessment confirmed)
   - Approval: Information Security Committee / 2026-04-16
```

This report becomes the basis for approval in [Usage
Approval](../../4-approve/#self-risk-assessment-for-network-separation-exceptions) and is updated
periodically in [Management](../../5-manage/#periodic-reassessment).

---

*Last reviewed: 2026-06-10. This page is reviewed when regulations change and once a year on a regular basis.*
