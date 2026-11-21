---
title: "Identification: Finding All the Open Source You Use"
linkTitle: "2. Identification"
weight: 30
type: docs
categories: ["guide"]
tags: ["Finance", "Open Source", "SBOM", "Identification", "Supply Chain"]
description: >
  Covers how to identify, without omission, newly incoming open source, legacy already in operation, and outsourced deliverables and
  record them as SBOMs, and how to integrate with the financial sector supply chain security platform.
---

{{% alert title="Where this page fits" color="info" %}}
Identification is the starting point of management. If you do not know what you use, you cannot manage
its vulnerabilities or license obligations. It is the first procedure in the "Guide to Using and Managing Open Source Software in the Financial
Sector" (금융분야 오픈소스 소프트웨어 활용·관리 안내서; Financial Supervisory Service (금융감독원) and
Financial Security Institute (금융보안원), 2022, hereafter the FSEC guide) and the activity
that SBOM management in ISO/IEC 5230 (3.3.1) requires.

Documents produced here: SBOMs and an inventory of production assets.
{{% /alert %}}

## What do you identify?

Identifying open source means finding all three kinds.

- Newly incoming open source: libraries that developers newly adopt, and their dependencies.
- Open source in systems already in operation: legacy that was not recorded at the time of adoption.
- Open source included in deliverables made by outsourced development companies or electronic financial
  auxiliary service providers (전자금융보조업자). An outsourced development company (a contractor entrusted with the
  work) and an electronic financial auxiliary service provider (a party that assists a financial institution with
  electronic financial transactions under the Electronic Financial Transactions Act (전자금융거래법)) are
  legally different categories, but in both cases the open source in their deliverables must be identified.

You must expand not only the dependencies you declare directly but also the transitive dependencies
they pull in. Most of the actual risk hides in lower-level dependencies that you do not see directly.

In the financial sector, a regulatory basis applies here as well. Before the 2025-02-05 amendment,
Article 21 of the Regulation on Supervision of Electronic Financial Transactions (전자금융감독규정)
stated that ownership, copyright, and intellectual property rights in products must be made clear when
building information processing systems and in electronic financial transaction contracts, and the FSEC
guide uses this as a basis for its guidance. The amended current Article 21 requires establishing and
operating internal control procedures for contracts, including this. Identifying the origin and license
of open source is the first step toward meeting this requirement. **[FSEC guide]**

## Creating and recording SBOMs

Record identification results as an SBOM (Software Bill of Materials). An SBOM is a list of all the open
source components that make up the software, with their versions, licenses, and dependency
relationships. SPDX and CycloneDX are widely used as standard formats. **[ISO requirement]**

To create SBOMs, you can use open source tools such as [Syft](../../tools/6-syft/), [cdxgen](../../tools/5-cdxgen/), and
[OSV-SCALIBR](../../tools/4-osvscalibr/). All of them can be installed on premises and produce output in
standard formats. The full list of tools is on the [tool pages](../../tools/). The procedure for creating and managing SBOMs becomes the verification material for SBOM management (3.3.1.1) and component records (3.3.1.2)
in ISO/IEC 5230.

{{% alert title="Applying in a closed network" color="info" %}}
In a closed network, create the SBOM at the stage of importing open source and register it in the
internal mirror together with the open source. This way, what is present and in which version can be seen
in one place. The import procedure and internal mirror setup are covered in
[Closed Network Operation](../0-closed-network/#import-control).
{{% /alert %}}

## Identifying systems already in operation

Managing only new adoptions covers only half the picture. In-house systems and servers already in
operation also contain open source adopted long ago, and much of it has no adoption record. Identifying
this legacy with SBOMs is especially important in the financial sector, because vulnerabilities in
production systems are a constant risk.

Identifying systems in operation is not a one-time task. Build an asset inventory and keep updating
which open source is in which system. This inventory becomes the basis for continuous monitoring
([Management](../5-manage/)). **[Guide recommendation]**

## Identifying third-party and outsourced deliverables

The FSEC guide includes the identification of open source used by electronic financial auxiliary
service providers as a check item. The financial sector relies heavily on outsourced development and
entrustment, so open source that you did not adopt directly comes in through outsourced deliverables. If
it is not identified, there is a gap in the scope of management. **[FSEC guide]**

The method is to require SBOM submission for outsourced deliverables. Make providing an SBOM an obligation
at the contract stage, and verify the SBOMs you receive. The specific requirements to include in
contracts and requests for proposal are covered in [Use Approval](../4-approve/).

{{% alert title="Applying to third parties and outsourcing" color="info" %}}
Do not trust an SBOM submitted by an outsourcing company as is; verify it. Check again with checking
tools whether the SBOM you received matches the actual deliverable and whether any components are missing.
If the outsourcing company does not have the capability to create SBOMs, also scan the deliverable
yourself to generate an SBOM.
{{% /alert %}}

## Integration with the supply chain security platform

The Financial Security Institute's Financial Sector Software Supply Chain Security Platform (금융권
소프트웨어 공급망 보안 플랫폼) enters full operation in 2026 (for an overview, see the
[guide overview](../)). To participate in the platform, financial institutions should prepare in advance
the format for producing and submitting SBOMs.

Abroad, the United States and Europe are moving toward mandatory SBOM submission, and the Korean
government has also set out a direction for step-by-step institutionalization through the "Software
Supply Chain Security Guidelines 1.0" (SW 공급망 보안 가이드라인 1.0) (2024-05-13). The government is
pursuing mandatory SBOM submission in the public sector with a target of 2027, and this trend is
expected to spread to the financial sector. SBOM submission is not currently mandatory across the board
for the Korean financial sector, but it is reasonable to prepare for this trend in advance.
**[Guide recommendation]**

{{% alert title="What a new organization should do first, and how an operating organization can advance" color="success" %}}
An organization setting up a system for the first time starts by creating and recording SBOMs for newly
adopted open source, and chooses one standard format (SPDX or CycloneDX) to use consistently.

An organization that already operates a system extends the scope of identification to legacy systems
through an asset inventory, requires SBOM submission for outsourced deliverables, and automates SBOM
production to match the submission format of the supply chain security platform.
{{% /alert %}}

## Connection to the FSEC guide and ISO standards

| Identification activity | ISO/IEC 5230 | FSEC guide |
|------|------|------|
| Defining scope | 3.1.4.1 Program scope | Identification |
| Creating and managing SBOMs | 3.3.1.1 SBOM management procedure | Identification |
| Recording components | 3.3.1.2 Open source component records | Identification |
| Identifying third-party and outsourced components | 3.3.1.1 applied accordingly | Identification (electronic financial auxiliary service providers) |

General practice for creating SBOMs and using tools is covered in more detail in the [tools section of the existing Enterprise Open Source Management Guide](../../opensource_for_enterprise/4-tool/) and
the [SBOM clause of the ISO/IEC 5230 Conformance Guide](../../iso5230_guide/3-content-review/1-sbom/).

{{% alert title="Field case: KFTC's ISO/IEC 5230 conformance" color="success" %}}
At the 25th KWG regular meeting (2025-03), the Korea Financial Telecommunications and Clearings Institute
(금융결제원, KFTC) shared a case of conforming to ISO/IEC 5230:2020 for its payment infrastructure. It is
a case of identifying the open source in financial payment systems and applying a management system.

Source: Daeyeol Ryu (KFTC), "ISO/IEC 5230:2020 Conformance in KFTC" (금융결제원의 ISO/IEC 5230:2020 준수 사례), [KWG 25th meeting (2025-03) slides](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-legacy/20250325_KFTC_OpenChain-KWG_25th_ko.pdf).
{{% /alert %}}

---

*Last reviewed: 2026-06-10. This page is reviewed when regulations change and once a year on a regular basis.*
