---
title: "Management: Continuous Checks and Audit Readiness for Internal Operational Systems"
linkTitle: "5. Management"
weight: 60
type: docs
categories: ["guide"]
tags: ["Finance", "Open Source", "Monitoring", "Audit", "Operational Resilience"]
description: >
  Covers how to continuously check and monitor open source in internal operational systems that are
  not distributed externally, and how to manage risk in the operation stage through periodic
  reassessment and audit evidence management.
---

{{% alert title="Where this page fits" color="info" %}}
Checking once at adoption and stopping there is not management. Open source risk continues
throughout operation, and new vulnerabilities are disclosed after adoption. This is the management
(monitoring) step, the last procedure of the FSEC guide, and it corresponds to continuous monitoring
in ISO/IEC 18974. It is the step with the greatest weight in the financial sector.

Documents produced here: periodic reassessment records, and audit evidence packages.
{{% /alert %}}

## Distributed software and internal operational systems

The focus of open source management is often placed on software distributed externally, because
distribution triggers license obligations. In the financial sector, however, open source is used
most in internal operational systems that are not distributed externally: core banking systems,
information systems, internal financial management systems, and internal servers. This guide covers
the two scopes separately.

- Distributed software (external services, customer apps): License obligations (notices, and in some
  cases providing source code) are the focus. This is the domain of ISO/IEC 5230.
- Internal operational systems and servers (not distributed): Because there is no external
  distribution, source disclosure obligations are weak, but security vulnerabilities and supply chain
  risks are larger and constant. Continuous vulnerability checks, asset inventory, and periodic
  reassessment are the focus. This is the domain of ISO/IEC 18974 and operational resilience.

This page concentrates on the second scope, that is, management of internal operational systems,
because this is an emphasis specific to the financial sector. The European Union's Digital
Operational Resilience Act (DORA) requires ICT operational resilience and management of open source
vulnerabilities and patches for the same reason. **[Guide recommendation]**

## Operational asset inventory

Continuous checking starts with knowing what is running. Make a list of the open source contained in
the internal systems and servers in operation. Identify with SBOMs (Software Bill of Materials) not
only new adoptions but also legacy systems that have been in operation for a long time. If you miss
legacy systems with no adoption records, the check scope has gaps.

The operational asset inventory is the collection of SBOMs created in the identification step
([Identification](../2-identify/)), organized by operational system. If you link which system uses
which components, you can find the affected systems right away when a new vulnerability is disclosed.

## Continuous vulnerability monitoring

The core of the operation stage is constant monitoring. Set up a structure that traces back to the
affected operational systems each time a new vulnerability (CVE, Common Vulnerabilities and
Exposures) is disclosed. This activity carries the vulnerability detection and resolution procedure
of ISO/IEC 18974 (4.3.2.1) into the operation stage. **[ISO requirement]**

The method is to register the SBOMs of operational systems in a vulnerability management tool. When
you register SBOMs in [Dependency-Track](../../tools/7-dependency-track/), all registered SBOMs are
reassessed each time the vulnerability database is updated, and new vulnerabilities surface
automatically. Scan servers, containers, and file systems periodically with
[Trivy](https://trivy.dev/). If you run a CI platform such as GitLab in-house, you can set up the
same continuous checks with its built-in dependency scanning, and commercial SCA tools serve the same
role.

![Dependency-Track project list with SBOMs registered per system](./dt-projects.png)

*Figure: Dependency-Track project list with SBOMs registered per operational system. When a new
vulnerability is disclosed, the affected systems show up in this list. The screen reuses a capture
from the [cdxgen and Dependency-Track tutorial](../../tools/8-cdxgen-dt/).*

### Periodic scanning example

The example below shows a flow for scanning operational servers regularly and keeping the results.
The tool is an example and can be replaced with an equivalent tool.

```bash
# Scan the operational server's file system and keep the results by date
trivy fs --format json --output /var/log/oss-scan/$(date +%Y%m%d).json /opt/app

# In a closed network, update the vulnerability DB offline in advance and turn off automatic updates
TRIVY_SKIP_DB_UPDATE=true trivy fs /opt/app
```

In a closed network, the vulnerability database is updated offline. The update procedure is covered
in [Closed Network Operation](../0-closed-network/#offline-vulnerability-management). Scan results
are kept as audit evidence, which is covered next.

{{% alert title="Applying in a closed network" color="info" %}}
Operational systems in a closed network cannot receive real-time vulnerability information, so the
synchronization cycle of the offline vulnerability database is in effect the cycle at which new
vulnerabilities become known. Set the synchronization cycle and the person responsible, and manage
the risks that can arise during the gap before vulnerabilities become known. For the detailed
procedure, see [Closed Network Operation](../0-closed-network/#offline-vulnerability-management).
{{% /alert %}}

## Periodic reassessment

If continuous monitoring is automated surveillance, periodic reassessment is an activity in which
people periodically review the checking system itself. Along with regular reviews such as quarterly
or semi-annual ones, make rechecks at the time of system changes part of the procedure. ISO/IEC 18974
requires periodic review of the program and evidence of changes (4.1.2.5) as verification material.
**[ISO requirement]**

Systems with a network separation exception update their self risk assessment regularly. Because
they have been released from network separation through regulatory relief, the responsibility of
self-regulated security continues along with the reassessment cycle. The self risk assessment report
is covered in [Usage Approval](../4-approve/#self-risk-assessment-for-network-separation-exceptions).

## Audit evidence management

The financial sector must prepare for internal and external audits and for information technology
(IT) inspections by the Financial Supervisory Service (금융감독원). Check records from the management
step are audit evidence in themselves. If you keep records of what was checked when and how each
vulnerability was handled, you do not need to create separate evidence for audits and inspections.

It is efficient to reuse the ISO verification material structure as audit evidence. The
vulnerability and remediation records required by ISO/IEC 18974 and the creation and retention of
compliance artifacts required by ISO/IEC 5230 (3.4.1.1, 3.4.1.2) serve directly as audit response
materials. Decide where and for how long to keep evidence, and use a recording method that prevents
tampering. **[Guide recommendation]**

For a checklist of what to keep and a specification of where to keep it, use the [Audit Evidence
List](../artifacts/3-audit-evidence/) provided as an artifact.

{{% alert title="What a new organization should do first, and how an operating organization can advance" color="success" %}}
Organizations setting up a program for the first time start continuous monitoring by registering
SBOMs for internet-facing operational systems first, and begin by keeping check records in one
place.

Organizations that already run a program extend the asset inventory to legacy systems, make the
periodic reassessment cycle a formal procedure, share vulnerability information by linking with the
financial sector's supply chain security platform, and manage audit evidence in a tamper-resistant
form.
{{% /alert %}}

## Connection to the FSEC guide and ISO standards

| Management activity | ISO/IEC 5230 | ISO/IEC 18974 | FSEC guide |
|------|------|------|------|
| Continuous vulnerability monitoring | - | 4.3.2 Post-release monitoring | Management |
| Periodic reassessment | - | 4.1.2.5 Periodic review and evidence of changes | Management |
| Creating and retaining artifacts | 3.4.1.1 Creation, 3.4.1.2 Retention | - | Management |
| Audit evidence | Applying 3.4.1.2 Retention | 4.3.2.2 Vulnerability and remediation records | Management |

Clause-by-clause details of continuous monitoring and security assurance are covered in the
[ISO/IEC 18974 Conformance Guide](../../iso18974_guide/).

{{% alert title="Field case: KakaoBank's audit response and use of AI" color="success" %}}
At the 30th KWG regular meeting (2026-06), KakaoBank shared its experience responding to audits in
the financial sector. It has responded to inspections and data requests from several institutions,
including the Financial Supervisory Service's IT risk quantitative assessment and management
condition assessment, and the Bank of Korea (한국은행)'s annual survey on the status of financial
informatization. What the institutions commonly checked came down to five things: whether the
open source inventory is managed, the full inventory list, the composition of management staff,
policies and internal rules, and the security vulnerability check procedure. The everyday records of
quarterly self-checks and continuous vulnerability monitoring served directly as response materials.
The tooling is not a single dedicated platform but a combination: KakaoBank said it uses a
commercial tool (FossID) and its own command-line tool for identification and license analysis,
GitLab's dependency scanning for vulnerability checks, and a separate tool (Insight) for SBOM
management. This shows that a combination suited to the organization's environment is realistic.

At the same meeting, KakaoBank also introduced a case of using an AI coding agent to automate
license identification and compatibility analysis, SBOM generation, and notice writing, which
reduced verification work that had been repeated for every release.

![Presentation slide on using an AI coding agent for open source governance](./30th-s1-claude-code.png)

*Figure: Using an AI coding agent for open source governance. Heonkwan Ha (KakaoBank), slides, page 7.
The slide image is the presenter's work and is not covered by the CC BY 4.0 license that applies to
this text.*

Sources: Minae Lee (KakaoBank), "Experience Report on Open Source Operations as a Financial Company" (금융회사로서의 오픈소스 관련 업무 대응 후기), [slides](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-2026/30th-session3-finance-oss-report.pdf);
Heonkwan Ha (KakaoBank), "AI-driven Open Source Governance", [slides](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-2026/30th-session1-ai-driven-oss-governance.pdf). KWG 30th meeting (2026-06).
{{% /alert %}}

---

*Last reviewed: 2026-06-10. This page is reviewed when regulations change and once a year on a regular basis.*
