---
title: "Governance: Management Organization and Approval System"
linkTitle: "1. Governance"
weight: 20
type: docs
categories: ["guide"]
tags: ["Finance", "Open Source", "Governance", "OSPO", "OSRB"]
description: >
  Covers how to form a financial sector open source management organization (OSPO) and review board (OSRB) and divide their roles,
  and how to establish approval governance in which legal, security, and technology functions take part together.
---

{{% alert title="Where this page fits" color="info" %}}
Governance is the foundation of open source management. The identification, use approval, and
management stages work only after you decide who is responsible, who reviews, and who approves. The
FSEC guide also covers the composition and roles of the management organization separately, before the
management procedures.

Documents produced here: an open source policy, a list of roles and responsibilities, and records of role assignments.
{{% /alert %}}

## Where does financial sector governance start?

The "Guide to Using and Managing Open Source Software in the Financial Sector" (금융분야 오픈소스
소프트웨어 활용·관리 안내서; Financial Supervisory Service (금융감독원) and Financial Security Institute
(금융보안원), 2022, hereafter the FSEC guide) presents the composition and
operation of the management organization and examples of roles. ISO/IEC 5230 requires these as
verification materials: a documented policy (3.1.1.1), a list of roles and responsibilities (3.1.2.1),
identification of the people in each role (3.2.2.1), and a method for accessing legal expertise
(3.2.2.3). Governance is the activity that produces these verification materials.

The financial sector adds two more conditions. First, in large organizations where legal, security,
and technology functions are separate, it must be clear who makes open source decisions. Second, in
preparation for supervisory examinations and internal and external audits, the grounds for decisions
and where accountability lies must be kept on record.

## Open Source Program Office (OSPO)

The Open Source Program Office (OSPO) is the organization that oversees the use and management of open
source. Some large companies have a dedicated department, and others assign the role to existing
security or development organizations in addition to their current duties. Whatever the size,
responsibility and authority must be gathered in one place. **[FSEC guide]**

The OSPO's roles are as follows.

- Establish and update the open source policy.
- Run the open source use approval procedure and convene the review board.
- Take responsibility for the tools and procedures used for identification, vulnerability, and license management.
- Manage the evidence needed for audits and supervisory examinations.
- Coordinate discussions among the legal, security, and development departments.

Once roles are defined, document the name, contact information, and assignment date of each role
holder. This becomes the verification material for identifying role holders in ISO/IEC 5230 (3.2.2.1)
and for the participant list and role mapping in ISO/IEC 18974 (4.1.2.3).
**[ISO requirement]**

{{% alert title="What a new organization should do first, and how an operating organization can advance" color="success" %}}
An organization setting up a system for the first time will find it hard to have a dedicated department.
Start with a minimal setup: appoint a single person responsible for open source management, and have
one person each from legal, security, and development take part in addition to their current duties.
Documenting the roles and role holders alone meets the ISO verification material requirements.

An organization that already operates a system defines the competence required for each role, reviews
the organizational structure and roles regularly while keeping a change history, and measures the
effectiveness of the program with performance indicators.
{{% /alert %}}

## Open Source Review Board (OSRB)

The Open Source Review Board (OSRB) is a consultative body that reviews and approves the adoption and
use of open source. It is especially important in the financial sector because a decision to adopt open
source involves license risk, security vulnerabilities, and operational impact together, which makes it
hard for one department to decide alone.

The board usually looks at the following perspectives together.

- Legal: license obligations and contract and intellectual property risks.
- Security: vulnerabilities, supply chain risk, and maintenance status.
- Technology and development: technical fit, availability of alternatives, and operational burden.

Keep records of the board's decisions and their grounds. These records are the core evidence for the
use approval stage (section 4) and are used again in audit response (section 5). If it is hard to
convene the board every time, differentiate the review by risk level. The specific method is covered in
[Use Approval](../4-approve/). **[Guide recommendation]**

## Legal advice and budget

ISO/IEC 5230 requires, as verification materials, a method for accessing legal expertise (3.2.2.3) and
confirmation of staffing and budget (3.2.2.2). Financial institutions often have an in-house legal
department, so decide and document the route by which open source license matters are escalated to
legal. Also define the criteria for deciding which matters need external expert advice.
**[ISO requirement]**

Budget goes to building and operating tools, training, and external advice. A new organization can
lower its initial costs by taking advantage of the fact that most open source tools are themselves open
source and can be installed on premises. Tool selection is covered in [Closed Network
Operation](../0-closed-network/#choosing-tools-for-a-closed-network) and [Management](../5-manage/).

{{% alert title="Applying to third parties and outsourcing" color="info" %}}
Open source included in deliverables made by electronic financial auxiliary service providers (전자금융보조업자) or
outsourced development companies is also within the scope of governance.
The board decides whether to include open source management requirements (SBOM (Software Bill of
Materials) submission, license notices, vulnerability response) in outsourcing contracts
and who bears that responsibility. Contract and request for proposal management is covered in detail in
[Use Approval](../4-approve/).
{{% /alert %}}

## Connection to the FSEC guide and ISO standards

| Governance activity | ISO/IEC 5230 | ISO/IEC 18974 | FSEC guide |
|------|------|------|------|
| Establishing and communicating the policy | 3.1.1.1 Policy, 3.1.1.2 Communication procedure | - | Governance |
| Defining roles and responsibilities | 3.1.2.1 List of roles and responsibilities | 4.1.2.3 Participants and role mapping | Governance |
| Identifying role holders | 3.2.2.1 Document of role holders | - | Governance |
| Access to legal expertise | 3.2.2.3 Method for legal advice | - | Governance |
| Budget and staffing | 3.2.2.2 Confirmation of staffing and budget | - | Other |
| Reviewing and correcting nonconformance | 3.2.2.5 Nonconformance review procedure | - | Other |

General practice for organization and roles is covered in more detail in the [organization section of the
existing Enterprise Open Source Management Guide](../../opensource_for_enterprise/1-teams/).
This page adds the financial sector's review board and audit-ready records on top of it.

{{% alert title="Field case: KakaoBank's ISO/IEC 5230 certification" color="success" %}}
At the 13th KWG regular meeting (2022-03), KakaoBank shared its ISO/IEC 5230 certification case. It is a
case of building governance that set up an open source management system in the financial regulatory
environment and went on to achieve certification.

Source: Heonkwan Ha and Minae Lee (KakaoBank), KakaoBank's part of the 13th meeting joint session "ISO/IEC 5230 Certification Cases of Kakao and KakaoBank" (카카오와 카카오뱅크의 ISO/IEC 5230 인증 사례 공유), [KWG 13th meeting (2022-03) slides](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-2022/KakaoBank_ISO_IEC_5230_certification_case.pdf).
{{% /alert %}}

---

*Last reviewed: 2026-06-10. This page is reviewed when regulations change and once a year on a regular basis.*
