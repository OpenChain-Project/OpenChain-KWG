---
title: "A Handbook for Software Supply Chain Security in the Telco Industry"
linkTitle: "Telco SBOM Handbook"
weight: 70
type: docs
description: >
  A Practical Guide to the OpenChain Telco SBOM Specification
---


{{% pageinfo %}}

This handbook offers practical, step-by-step guidance for organizations in the telecommunications industry to implement the '[OpenChain Telco SBOM Guide](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)'.

It provides implementation plans and use-case scenarios tailored to each stakeholder, helping organizations establish effective SBOM management systems and strengthen their software supply chain security.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

{{% /pageinfo %}}

## Chapter 1: Why the Telco Industry Needs SBOMs Now

### 1.1. The New Threat Landscape in the Global Software Supply Chain

#### 1.1.1. Growing Reliance on Open Source in 5G and Cloud-Native Environments

The [telecommunications industry](https://seo.goover.ai/report/202504/go-public-report-ko-808587ee-afb5-4b01-8dd2-0d5f3e4ee352-0-0.html) is undergoing a period of rapid digital transformation. The rollout of 5G networks, adoption of cloud-native technologies, and explosive growth of IoT devices have exponentially increased software complexity and interdependence.

Today, over 90% of software development relies on open source. In telecom infrastructure, open-source [communication protocols](https://www.thelec.kr/news/articleView.html?idxno=33454) like OPC UA and MQTT are vital for real-time data exchange. The complex architecture of 5G networks involves thousands of software components, with increasingly intricate [dependency relationships](https://www.oss.kr/oss_guide/show/7d7d50dd-816f-410d-9bbb-682683a26181).

#### 1.1.2. The Log4j Incident: A Supply Chain Wake-Up Call

The Log4Shell ([Log4j vulnerability](https://www.ibm.com/think/topics/log4j)) disclosed in December 2021 had a profound impact on the global software ecosystem, including the telecommunications industry. This vulnerability exposed several critical issues:

*   **Widespread Impact:** [Log4j](https://blog.cloudflare.com/inside-the-log4j2-vulnerability-cve-2021-44228/) is one of the most widely deployed open-source libraries globally, affecting millions of systems. According to IBM's [X-Force Threat Intelligence Index](https://www.ibm.com/reports/threat-intelligence), vulnerabilities surged by 34% between 2020 and 2021, largely [attributed to Log4Shell](https://www.ibm.com/think/topics/log4j).
*   **Detection and Response Challenges:** Many companies spent significant time simply identifying whether their systems used third-party products containing the Log4j library. Even two years after its disclosure, 38% of applications using Log4j [remained vulnerable](https://www.epnc.co.kr/news/articleView.html?idxno=300506).
*   **Discovery of Subsequent Vulnerabilities:** Following the initial vulnerability (CVE-2021-44228), [seven additional vulnerabilities](https://m.boannews.com/html/detail.html?idx=105394) were discovered, highlighting the need for continuous monitoring and updates.

#### 1.1.3. The Push for Transparency with SBOMs

The Log4j incident starkly demonstrated the dangers of lacking visibility into software components. In its wake, governments and industries worldwide began pushing for the [adoption of a Software Bill of Materials (SBOM) to secure the software supply chain](https://www.igloo.co.kr/security-information/sbom%EC%9D%84-%EC%9D%B4%EC%9A%A9%ED%95%9C-%EA%B3%B5%EA%B8%89%EB%A7%9D-%EB%B3%B4%EC%95%88/).

In May 2021, the Biden administration issued an Executive Order on Improving the Nation's Cybersecurity, which mandated strengthening software supply chain security. Similarly, the South Korean government announced plans to reinforce software development and supply chain security in its K-Cyber Quarantine Promotion Strategy.

### 1.2. Unique Challenges of the Telco Industry

#### 1.2.1. A Complex Ecosystem with a Multi-Layered Supply Chain

The telecommunications industry features a complex, multi-layered supply chain structure:

*   **Hardware Layer:** Network equipment manufacturers supply firmware and embedded software for base stations, routers, and switches.
*   **Software Layer:** Various network software suppliers provide solutions like SDN/NFV, network management, and security.
*   **Service Layer:** Telecom operators deliver end-user services such as 5G, cloud, and IoT.

In this structure, a single vulnerability can create a massive cascading effect across the entire network.

#### 1.2.2. Demanding Standards for Reliability and Security

Telecommunications infrastructure is designated as critical national infrastructure, requiring exceptionally high levels of security and reliability. 5G networks, in particular, introduce new security challenges:

*   **Massive IoT Connectivity:** A 5G environment connects billions of IoT devices, each a potential attack vector.
*   **Distributed Edge Computing:** As data processing shifts to the network edge, centralized security management becomes more difficult.
*   **Network Slicing Isolation:** A security breach in one network slice could potentially impact others.

#### 1.2.3. Mounting Regulatory and Customer Pressure for SBOMs

The demand for SBOMs from regulators and customers is rapidly intensifying:

*   **Government and Public Sector:** Public institutions, like the Korea Meteorological Administration, are beginning to [require SBOM submission](https://kisia.or.kr/bucket/uploads/2025/03/11/%5Bkisia%5D%20sbom%20%EB%8F%84%EA%B5%AC%20%EC%8B%A4%EC%A6%9D%20%EA%B2%B0%EA%B3%BC%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf) in procurement notices.
*   **Global Regulatory Trends:**
    *   **United States:** [Mandated](https://seo.goover.ai/report/202409/go-public-report-ko-d69ad755-7cc7-441a-9899-de0ddd66ea3b-0-0.html) the provision of SBOMs for all software delivered to the federal government.
    *   **EU:** Is [advancing SBOM mandates through the Cyber Resilience Act (CRA)](https://www.oss.kr/oss_guide/show/f02cd419-df61-4f00-9149-e50c901ce06e).
    *   Other major countries like Japan and South Korea are pursuing similar policies.
*   **Customer Demands:** Large telecom operators, equipment manufacturers, and network solution providers increasingly specify SBOM delivery as a contractual requirement.
*   **Industry Standardization:** International standards bodies like the OpenChain Project are proposing industry-specific SBOM guides for telecommunications.

These shifts signal a fundamental need to innovate software supply chain security in the telecommunications industry. An SBOM is no longer an option but a core requirement for survival and competitiveness in the telco sector.


## Chapter 2: An Introduction to the OpenChain Telco SBOM Guide

*   English (Original): [OpenChain Telco SBOM Guide 1.1](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)
*   Korean (한국어): [OpenChain Telco SBOM 가이드 1.1](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_KR.md)

### 2.1. Background and Core Objectives

#### 2.1.1. Addressing SBOM Fragmentation in the Telco Industry

The telecommunications industry is one of the world's most complex and interconnected software ecosystems. As 5G infrastructure, cloud-native solutions, and network virtualization converge, [organizations have adopted disparate methods and requirements for creating SBOMs](https://openchainproject.org/news/2024/07/30/openchain-telco-sbom-guide-general-availability).

This fragmentation has created several significant challenges:

*   **Lack of Compatibility:** An SBOM from a telecom operator might not match the format provided by an equipment manufacturer, leading to added conversion work and costs.
*   **Redundant Investment:** As each organization developed its own tools and processes, the industry as a whole made inefficient, redundant investments.
*   **Limited Risk Management:** Non-standardized SBOMs made it difficult to track vulnerabilities and respond quickly across the entire supply chain.

In response, the OpenChain Project formed the Telco Working Group in 2023 to develop a [specialized SBOM guide for the telecommunications industry](https://www.scanoss.com/post/the-openchain-telco-sbom).

#### 2.1.2. A New Standard for Interoperability, Repeatability, and Efficiency

The OpenChain Telco SBOM Guide introduces a practical approach that reflects the unique needs of the telecommunications industry while ensuring compatibility with global standards. The guide's core objectives are:

*   **Repeatability:** Provide clear criteria to ensure that an SBOM of consistent quality can be generated for the same software, regardless of who creates it or when.
*   **Streamlined Tooling:** Enable various SBOM generation tools to produce standardized outputs that are compatible across organizations.
*   **Supply Chain Transparency:** Allow all entities that produce and consume SBOMs to exchange software component information based on a common standard.

### 2.2. The Three Core Principles of the Guide

#### 2.2.1. Principle 1: Standardization

The [OpenChain Telco SBOM Guide](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md) adopts the [SPDX (Software Package Data Exchange)](https://www.iso.org/standard/81870.html) format, which is certified as international standard [ISO/IEC 5962:2021](https://www.iso.org/standard/81870.html). This choice was driven by several strategic factors:

*   **International Standard Compliance:** SPDX is the only SBOM format officially adopted by the International Organization for Standardization (ISO) and the International Electrotechnical Commission (IEC) as of September 2021.
*   **Technical Advantages:** SPDX offers more robust features for license compliance than other formats and supports a human-readable structure.
*   **Industry Validation:** Global companies like Intel, Microsoft, Siemens, Sony, and Nokia use SPDX for their software supply chain management, making it a proven standard.

The guide requires compliance with **SPDX version 2.2 or 2.3** and specifies that SBOMs be provided in **Tag:Value or JSON format**.

#### 2.2.2. Principle 2: Clarity

The OpenChain Telco SBOM Guide builds on the [minimum requirements from the NTIA (National Telecommunications and Information Administration)](https://www.ntia.gov/blog/2021/ntia-releases-minimum-elements-software-bill-materials) but establishes clear, practical criteria tailored to the telecommunications industry's needs:

*   **Required SPDX Elements:**
    *   Document Creation Information: `SPDXVersion`, `DataLicense`, `Creator`, `Created`, etc.
    *   Package Information: `PackageName`, `PackageVersion`, `PackageSupplier`, `PURL`, etc.
    *   Relationship Information: Dependency relationships like `DESCRIBES`, `CONTAINS`, etc.

*   **Delivery Timing and Method:**
    *   **Timing:** The SBOM must be delivered concurrently with the software.
    *   **Method:** The primary method is to embed the SBOM within the software package. If technically infeasible, web hosting is permitted, with access guaranteed for at least 18 months.

*   **Mandatory Generation Information:**
    *   The `Creator` field must include the organization's name and the tool's name/version.
    *   The `CreatorComment` field must include the CISA-defined SBOM Type (e.g., Design, Source, Build).

#### 2.2.3. Principle 3: Comprehensiveness

Modern software has numerous transitive dependencies, which are major vectors for security vulnerabilities. As the Log4j incident demonstrated, the spread of vulnerabilities through these dependencies is unpredictable and can cause extensive damage.

The OpenChain Telco SBOM Guide reflects this reality by requiring a **comprehensive scope**:

*   **All Open Source Included:** All open-source software delivered with the product, including all transitive dependencies, must be listed.
*   **Commercial Components Recommended:** The guide recommends including all commercial components. If excluded, they must be reported as "known unknowns."
*   **Container Environment Support:** The scope includes packages installed in a container, components copied or downloaded to it, and dependencies used to build compiled components within it.

### 2.3. Key Requirements at a Glance

The following table summarizes the key requirements of the OpenChain Telco SBOM Guide:

| Category | Requirement | Details |
| --- | --- | --- |
| **Data Format** | SPDX 2.2/2.3 | Tag:Value or JSON format |
| **Required Elements** | NTIA Minimum Elements + Telco Additions | Document Creation, Package, and Relationship Info |
| **Delivery Timing** | Concurrent with software delivery | Delivered no later than the software itself |
| **Delivery Method** | Embedded in package (primary) | Web hosting if infeasible (18-month access guaranteed) |
| **SBOM Scope** | Open Source + Transitive Dependencies | Commercial components recommended; "known unknowns" if excluded |
| **Generation Info** | Organization, Tool Name/Version | Must include CISA SBOM Type |
| **Verification** | Digital Signature Recommended | Tools like Sigstore are encouraged |

Through this systematic and practical approach, the OpenChain Telco SBOM Guide provides a solid foundation for advancing software supply chain management in the telecommunications industry. Nokia's adoption of this guide for its internal framework testifies to its practicality and effectiveness.


## Chapter 3: The Business Value of Guide Compliance

Adhering to the OpenChain Telco SBOM Guide is not just a compliance task; it's a strategic investment that delivers tangible business value. By standardizing SBOM practices, your organization can enhance risk management, boost business competitiveness, increase operational efficiency, and reduce costs.

### 3.1. Strengthened Supply Chain Risk Management

#### 3.1.1. Proactive Vulnerability Analysis and Rapid Response

Complying with the guide dramatically accelerates vulnerability response times. Organizations with mature SBOM-driven vulnerability management systems can [reduce response times by 30%](https://www.cybeats.com/blog/pci-dss-4-0-sboms-a-2025-readiness-guide).

During the Log4j incident, companies with SBOMs [identified affected systems in minutes](https://www.pivotpointsecurity.com/a-software-bill-of-materials-sbom-benefits-both-vendors-and-users), while those without took [weeks or even months](https://www.fortressinfosec.com/blog/cost-of-cyber-attacks-on-supply-chains). One software vendor testified that "an SBOM capability alone could have easily saved 240 hours".

Japan's Ministry of Economy, Trade and Industry (METI) reported that using SBOMs for vulnerability management in the medical device sector reduced the workload by approximately 70% compared to manual methods.

#### 3.1.2. Automated Open Source License Compliance

By managing component license information in the standardized SPDX format, organizations can proactively prevent legal risks and fines from license violations. [Automating compliance tasks](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf), such as license scanning and policy enforcement, significantly reduces administrative overhead.

### 3.2. Enhanced Business Competitiveness

#### 3.2.1. Meeting Customer and Partner Demands for SBOMs

Many System Integrators (SIs) and Software Vendors (SVs) now view SBOM adoption as a key driver for [regulatory compliance and building trust](https://runsafesecurity.com/blog/sbom-requirements-global-guide/). An organization with proven SBOM capabilities gains a clear competitive advantage by:

*   **[Securing a differentiated position](https://anchore.com/blog/how-to-respond-when-your-customers-require-an-sbom/)** with security-conscious customers.
*   **[Meeting mandatory requirements](https://www.opswat.com/resources/guides/sbom-in-2025-a-strategic-asset-not-just-a-list)** in contracts with government agencies and large corporations.
*   **[Demonstrating compliance](https://cycode.com/blog/software-bill-of-materials/)** with global regulations like the EU's Cyber Resilience Act (CRA) and the US Executive Order 14028.

#### 3.2.2. Gaining an Edge in RFPs and Contracts

The ability to provide a standardized SBOM is a tangible asset that can shorten sales cycles. An API management vendor CEO noted, "Being able to present an SBOM early in the conversation enables a completely different level of dialogue."

#### 3.2.3. Demonstrating Compliance for Global Market Access

The guide's foundation in the ISO/IEC 5962:2021 (SPDX) standard ensures that your SBOMs can be [submitted for international procurement and exports](https://www.slideshare.net/slideshow/openchain-telco-sbom-guide-overview-2024-09-25/272051639) without costly format conversions, ensuring compatibility and trust with global partners.

### 3.3. Increased Development and Operational Efficiency

#### 3.3.1. Standardized and Automated Processes

By adopting a standard format (SPDX 2.2/2.3) and clear requirements, organizations can [automate the SBOM generation, verification, and delivery processes](https://www.ntia.doc.gov/sites/default/files/publications/copado_-_2021.06.17_0.pdf). This can lead to [significant time savings](https://noux.cloud/save-5-hours-weekly-cra-machine-builder-software-bill-of-materials-automation-solution/)—over five hours per engineer per week—that can be reinvested into core development tasks.

#### 3.3.2. Clearer Internal Guidelines for Development Teams

A consistent, organization-wide standard for SBOMs [eliminates the confusion and inefficiency](https://pure.tudelft.nl/ws/portalfiles/portal/217100048/3634737.3637659.pdf) of redundant scans and manual management. This efficiency is [accelerated by integrating automated tools into CI/CD pipelines](https://soos.io/https-soos-io-sbom-adoption-guide-part-1-burden-or-opportunity).

### 3.4. Significant Cost Reduction

#### 3.4.1. Preventing Losses from Supply Chain Attacks

A single software supply chain attack costs an average of $4.35 million, with the total annual impact projected to reach $80.6 billion by 2026. A systematic approach using the OpenChain Telco SBOM Guide can proactively prevent these multimillion-dollar losses.

#### 3.4.2. Operational Savings through Automation

There are [numerous cases](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf) of organizations saving hundreds of hours on vulnerability analysis with an SBOM. One company reported reducing its vulnerability review time "from a full day to less than an hour," saving an estimated 500 hours per open-source project.

### 3.5. Simplified Regulatory and Standards Compliance

#### 3.5.1. A Clear Path to Global Regulatory Compliance

The OpenChain Telco SBOM Guide provides a practical foundation for responding to global requirements from bodies like NTIA, CISA, and ISO. This is crucial as key regulations take full effect:

*   **USA:** SBOM provision is [mandatory](https://security.cms.gov/learn/software-bill-materials-sbom) for federal government software procurement.
*   **EU:** SBOM mandates under the Cyber Resilience Act (CRA) are being actively [advanced](https://runsafesecurity.com/blog/sbom-requirements-global-guide/).
*   **Japan, South Korea:** Similar policies are being rolled out.

#### 3.5.2. Stronger Multinational Partnerships

[Standardized SBOM exchange](https://www.cisa.gov/sbom) is a global imperative. Adhering to the guide ensures compatibility with third-party SBOMs, [eliminating collaboration barriers](https://www.scanoss.com/post/the-openchain-telco-sbom). Nokia's adoption of the guide for its internal framework is a prime [example](https://openchainproject.org/news/2025/05/09/expanded-support-for-the-telco-guide) of its practicality and business value.


## Chapter 4: Role-Based Applications and Scenarios

The OpenChain Telco SBOM Guide is designed to be flexible, offering distinct value depending on each stakeholder's role within the telecommunications ecosystem. This chapter provides specific scenarios for **telecom operators (consumers), equipment manufacturers (producers), solution providers (producers)**, and **compliance officers (practitioners)** to strategically leverage the guide.

### 4.1. For Telecom Operators (as Consumers)

Telecom operators are the **primary stewards of the supply chain** and key consumers of SBOMs. They procure equipment and solutions from numerous suppliers to deliver final services. Their main objective is to **proactively identify security risks** in procured software and **ensure transparency** across their entire supply chain.

#### 4.1.1. Scenario: Verifying the Supply Chain for External Solutions

*   **Situation:**
    A telecom operator plans to introduce a new orchestration solution for 5G network slicing. They receive proposals from several global vendors, but the lack of standardized SBOMs makes an objective risk assessment difficult.

*   **Applying the OpenChain Telco SBOM Guide:**

    1.  **Step 1: Set Clear Requirements**
        *   **Mandate Guide Compliance in RFPs:** Include the submission of an SBOM in **SPDX 2.2 or 2.3 format** as a mandatory evaluation criterion. This establishes a single standard for quality and format.
        *   **Require Complete SBOMs:** In line with the guide, demand an SBOM that includes not only direct dependencies but also **all transitive dependencies** to uncover hidden security and license risks.

    2.  **Step 2: Perform Quantitative Risk Assessments**
        *   **Use Automated Analysis:** Feed the standardized SBOMs into an internal Software Composition Analysis (SCA) tool to automatically scan for known vulnerabilities (CVEs) and quantify their severity.
        *   **Verify License Compliance:** Analyze the license information (`PackageLicenseConcluded`, `PackageLicenseDeclared`) to check for conflicts with internal policies or commercial use restrictions.
        *   **Assess Transparency:** Use the `known unknowns` field as a metric to evaluate how transparently a vendor manages its software components.

    3.  **Step 3: Ensure Continuous Management**
        *   **Define Contractual Obligations:** In the contract, require the vendor to "provide an updated SBOM within 48 hours of any software patch or version update."
        *   **Guarantee Accessibility:** As per the guide, ensure that web-hosted SBOMs are accessible for at least 18 months to support long-term security management and audits.

*   **Expected Benefits:**
    *   **Rapid Threat Response:** During a zero-day event like Log4j, identify affected systems across the supply chain in minutes and prioritize the response.
    *   **Data-Driven Vendor Selection:** Objectively compare supplier security levels based on standardized data, not just on business relationships.
    *   **Stronger Security Governance:** Gain a transparent view of software assets across the supply chain, simplifying compliance with regulatory audits and internal policies.

#### 4.1.2. Tip: Specifying SBOM Requirements in RFPs and Contracts

Formalizing SBOM requirements is the most effective way to drive supplier accountability.

*   **Standard RFP Clause Example:**
    > "All proposals must include an SBOM compliant with the 'OpenChain Telco SBOM Guide v1.1' for all software products. The SBOM must be in SPDX v2.2 or v2.3 (Tag:Value or JSON format) and include all open source and commercial components, along with their transitive dependencies. SBOM quality and completeness will be a key evaluation criterion."

*   **Key Contractual Clauses:**
    *   **SBOM Provision and Timing:** "The Supplier shall provide an SBOM compliant with the 'OpenChain Telco SBOM Guide,' as specified in Appendix X, concurrently with each software delivery."
    *   **Accuracy Warranty:** "The Supplier warrants that the information in the provided SBOM is materially accurate and complete."
    *   **Update Obligation:** "The Supplier shall provide an updated SBOM to the Client within seven (7) days of releasing a major update or security patch for the software."
    *   **Breach of Contract:** "Failure to comply with these SBOM obligations shall be considered a material breach of this contract, and the Client may pursue remedies including, but not limited to, termination and claims for damages."

### 4.2. For Telecom Equipment Manufacturers (Hardware-Coupled Producers)

Telecom equipment manufacturers develop software tightly integrated with hardware, such as firmware and embedded OS, making them **critical producers of SBOMs**. Their goal is to **efficiently meet diverse customer requirements** and **demonstrate the reliability and competitiveness** of their products.

#### 4.2.1. Scenario: Automating SBOM Delivery for Network Equipment

*   **Situation:**
    An equipment manufacturer supplies 5G routers to global telecom operators, but varying SBOM requirements lead to costly manual work for each product release.

*   **Applying the OpenChain Telco SBOM Guide:**

    1.  **Standardize Internal Processes with an 'SBOM Factory'**
        *   **CI/CD Pipeline Integration:** Integrate automated SBOM generation and validation into the **CI/CD pipeline** for firmware builds. A successful build is contingent on generating a compliant SBOM.
        *   **Automate Metadata:** Automatically populate the `Creator` field with the organization name and tool version, and set `SBOM Type: Build` based on the build time to ensure traceability.

    2.  **Implement Product-Centric SBOM Management**
        *   **Version Control:** Integrate with Git to automatically generate and link SBOMs to each firmware version, simplifying version-specific vulnerability analysis.
        *   **Design for Accessibility:** Embed a compressed SBOM within the package or print a **QR code linking to the SBOM download** on product packaging.
        *   **Ensure Integrity:** Apply a **digital signature (e.g., using Sigstore)** to the SBOM file to prevent tampering and increase customer trust.

    3.  **Establish an Efficient Customer Response System**
        *   **Provide a Single Standard:** Offer a standard SBOM based on the guide to all customers by default.
        *   **Enable Flexible Conversion:** If a customer requires a different format (e.g., CycloneDX), use a conversion tool with the standard SPDX SBOM as the source for a quick response.
        *   **Integrate with Technical Support:** Train support teams to instantly access the SBOM for a specific product version to accurately answer customer questions about vulnerabilities and licenses.

*   **Expected Benefits:**
    *   **Increased Productivity:** A 'Create Once, Use Many' approach can reduce custom SBOM work by over 80%.
    *   **Enhanced Trust and Competitiveness:** Proactively providing a standardized, verified SBOM demonstrates product transparency and security, creating a competitive advantage.
    *   **Simplified Global Compliance:** Adherence to an ISO-based guide streamlines entry into regulated markets like the US and EU.

#### 4.2.2. Tip: Managing SBOMs for Firmware and Embedded OS

Managing SBOMs for embedded environments requires special consideration.

*   **Technical Implementation:**
    *   **Build System Integration:** Integrate SBOM generation tools or plugins into embedded Linux build systems like **Yocto or Buildroot** to automatically extract component data during the build.
    *   **Use Binary Analysis:** For third-party binaries or drivers without source code, use SCA tools with binary analysis capabilities to identify components for the SBOM.

*   **Management Processes:**
    *   **Product Lifecycle Integration:** Align SBOM creation, updates, and retirement with the full product lifecycle, from development to end-of-life.
    *   **Sync with Security Patches:** When deploying a new firmware version, ensure the corresponding SBOM is updated to reflect the patch details and communicated to customers.
    *   **Manage Legacy Products:** For out-of-production but still-supported products, retroactively generate SBOMs and provide information on known vulnerabilities to minimize customer risk.

### 4.3. For Network Solution & Service Providers (Software-Only Producers)

Network solution and service providers are key SBOM producers in modern software environments like **cloud-native, SaaS, and containers**. Their goal is to **develop flexible SBOM strategies** that adapt to rapid technological changes and **leverage this capability for a competitive service advantage**.

#### 4.3.1. Scenario: SBOM Strategy for SaaS and On-Premise Solutions

*   **Situation:**
    A network security company offers both a cloud-based SaaS solution and an on-premise firewall. A major client requests detailed SBOMs for both, creating challenges, especially for the continuously updated SaaS environment.

*   **Applying the OpenChain Telco SBOM Guide:**

    1.  **Develop Differentiated Strategies by Solution**
        Design distinct SBOM strategies tailored to each solution's deployment model.

        *   **On-Premise Solution (Installable):**
            *   **Embed in Package:** As recommended by the guide, **embed** the SBOM file directly into the installation package (e.g., RPM, DEB, MSI).
            *   **Container-Based Deployment:** For Docker/Kubernetes deployments, include the SBOM in a container image layer or store it alongside the image in a registry, following OCI (Open Container Initiative) standards.

        *   **SaaS Solution (Service):**
            *   **Tiered Service Offering:** Since SaaS application is optional in the guide, structure SBOM delivery as a **premium service**. Offer summary information to basic customers and detailed, API-accessible SBOMs to enterprise customers for a fee, creating a new revenue stream.
            *   **Provide a Security Portal:** Offer a dedicated portal for enterprise customers to securely view and download the latest SBOMs for the service.
            *   **Enable API-Based Access:** Provide SBOM data via **API** to allow integration with customer security systems (e.g., SOAR).

    2.  **Integrate Fully with Your DevSecOps Pipeline**
        *   **Generate SBOMs per Microservice:** In a microservice architecture (MSA), generate individual SBOMs in each service's build pipeline.
        *   **Define Relationships:** During deployment, merge the individual SBOMs into a unified SBOM using **SPDX relationship definitions (e.g., DESCRIBES, CONTAINS)** to clearly map the solution's architecture.
        *   **Automate with Continuous Deployment (CD):** Establish a system where an SBOM is automatically updated whenever a new microservice version is deployed, reflecting the change in the unified SBOM in real-time.

*   **Expected Benefits:**
    *   **Create New Business Opportunities:** Position SBOM delivery as a premium security service to **generate additional revenue**.
    *   **Increase Customer Retention:** Strengthen partnerships with large, security-conscious customers by offering advanced, API-integrated security services.
    *   **Demonstrate Technological Leadership:** Showcase your ability to systematically manage complex SBOMs in a cloud-native environment, building a brand image as a technology leader.

#### 4.3.2. Tip: Using SBOMs for Customer Support and Maintenance

SBOMs create significant value in post-sales support and maintenance.

*   **Proactive Vulnerability Management:**
    *   When a new CVE is disclosed, automatically scan all product SBOMs to **instantly identify affected customers**.
    *   Proactively notify them before they inquire: "The `[Component Name]` in v2.1 of the `[Product Name]` you are using is affected by CVE-2025-XXXX. A patch is in development; temporary mitigation measures are available here."

*   **Transparent License Compliance:**
    *   During a customer audit, provide the precise SBOM for that point in time to **support license status reporting**.

*   **Efficient Maintenance:**
    *   Before an update, compare the old and new SBOMs to **proactively identify changed components and potential conflicts**, reducing the risk of update failures.

### 4.4. For Open Source & Compliance Officers

Open source and compliance officers are the **central architects of an organization's SBOM governance**. Their goal is to **create clear, actionable policies** that **reduce developer workload while minimizing organizational risk**.

#### 4.4.1. Scenario: Establishing an Internal SBOM Policy

*   **Situation:**
    The head of the open source program office (OSPO) at a large company needs to create a company-wide SBOM policy but faces conflicting requirements from development, security, procurement, and legal teams.

*   **Establishing a Policy Based on the Guide:**
    Use the objective, internationally recognized guide as the foundation to mediate disagreements and build consensus.

    1.  **Construct the Policy Framework**
        ```
        [Internal SBOM Management Policy]

        Article 1 (Purpose): To ensure software supply chain transparency and systematically manage related risks by complying with the 'OpenChain Telco SBOM Guide v1.1'.

        Article 2 (Scope): This policy applies to all software developed, purchased, or distributed by the company.

        Article 3 (Quality Requirements): All SBOMs must meet the requirements of the 'OpenChain Telco SBOM Guide' (e.g., data format, required fields, delivery method).
        ```

    2.  **Define Clear Departmental Roles (R&R)**
        *   **Development:** Generate SPDX-format SBOMs using standard tools in the CI/CD pipeline.
        *   **Procurement:** Include standard SBOM clauses in all software purchase contracts.
        *   **Security:** Conduct regular vulnerability monitoring and analysis using SBOMs.
        *   **Legal/Compliance:** Review license information in SBOMs for compliance risks.

    3.  **Standardize Processes and Tools**
        *   **Approve Standard SCA Tools:** Define and support a list of official SCA tools.
        *   **Automate Quality Gates:** Use open-source tools like `sbomqs` to automatically score SBOM quality during generation and fail builds that fall below a set threshold.
        *   **Provide Education and Support:** Offer regular training, online guides, and internal communities to help developers follow the policy.

#### 4.4.2. Tip: Selecting and Adopting an SBOM Tool (SCA Tool)

Successful SBOM management depends on choosing the right tool.

*   **Phased Adoption Plan:**
    1.  **Define Requirements:** List essential features based on your tech stack, budget, and security policies.
    2.  **Market Research:** Select 3-4 candidate tools based on industry reports (e.g., Gartner, Forrester) and community evaluations.
    3.  **Conduct a Proof of Concept (PoC):** Test the candidates on a real project to compare performance, accuracy, and usability.
    4.  **Select and Roll Out:** Choose the optimal tool based on PoC results and implement a phased, organization-wide rollout, starting with a pilot team.

### 4.5. Collaborative Scenario: A Unified Supply Chain

The ultimate value of an SBOM is realized when it connects the entire supply chain, acting as a **common language**.

*   **Integrated Scenario:**
    A major 5G private network project involves a telecom operator, an equipment manufacturer (tier 1), and a solution provider (tier 2), all collaborating based on the OpenChain Telco SBOM Guide.

    1.  **Project Kick-off:** The project contract mandates compliance with the guide for all parties. They exchange initial SBOMs to jointly analyze the system's integrated security posture.
    2.  **Development and Integration:** The solution provider delivers its SBOM to the equipment manufacturer. The manufacturer **merges this with its own firmware SBOM using SPDX relationship definitions** to create a unified equipment SBOM for the operator.
    3.  **Operation and Maintenance:** The operator ingests the final SBOM into a central monitoring system for real-time asset management. When a zero-day vulnerability appears, the operator can instantly identify the affected equipment and solution and demand a patch from the responsible supplier.

*   **Expected Benefits:**
    *   **End-to-End Supply Chain Visibility:** Immediately pinpoint the source of a problem instead of wasting time in multi-vendor blame games.
    *   **Maximized Collaboration Efficiency:** Eliminate the costs and delays of data conversion and re-interpretation by using a shared standard.
    *   **Strengthened Critical Infrastructure Security:** Enhance the resilience of the nation's critical telecommunications infrastructure beyond the efforts of any single company.


## Chapter 5: A Phased Implementation Plan

Successfully adopting the OpenChain Telco SBOM Guide is not a one-time project but a continuous journey of cultural and procedural integration. This chapter presents a practical, three-phase plan—**Assess → Build → Scale**—to help your organization effectively implement and operate its SBOM management system.

### 5.1. Phase 1: Assess – Diagnosis and Goal Setting

**Goal: To accurately assess your current state and define clear objectives.**

This foundational phase is crucial for success. Rushing to adopt tools or policies without a proper diagnosis can lead to inefficient outcomes disconnected from business needs. The first step is to clearly understand your organization's current capabilities and challenges.

#### 5.1.1. Organizational Assessment and Maturity Evaluation

Objectively assess your organization's current software supply chain management practices to identify risks and improvement opportunities.

*   **Map the Current Software Supply Chain:**
    *   **Product/Service Inventory:** List all software currently in development and operation to define the scope of SBOM management.
    *   **Component Management Practices:** Review how open-source and commercial components are introduced, used, and retired. Determine if management is manual (e.g., spreadsheets) or automated.
    *   **Risk Management Process Review:** Analyze existing vulnerability management and license compliance processes.
    *   **Historical Analysis:** Review supply chain-related security incidents from the past 2–3 years to identify key vulnerabilities.

*   **SBOM Maturity Self-Assessment:**
    Use this three-stage model to diagnose your organization's current maturity level.

| Maturity Level | Characteristics | Key Challenges |
| --- | --- | --- |
| **Beginner (Reactive Stage)** | Has a basic awareness of SBOMs but lacks concrete plans or execution. Relies on manual management. | To champion the need and value of SBOM adoption internally and secure executive buy-in. |
| **Early Adopter** | Is planning SBOM adoption or piloting it in some projects. Lacks a standardized, enterprise-wide process. | To establish a standard process and policy based on successful pilots and scale across the organization. |
| **Innovator** | Operates a standardized, automated SBOM process integrated into the CI/CD pipeline. | To leverage SBOM data for advanced strategies like predictive threat intelligence and proactive response. |

*   **Gap Analysis:**
    Based on the assessment, identify the gaps between the OpenChain Telco SBOM Guide's requirements and your current capabilities.
    *   **Data Format:** Does your current SBOM comply with SPDX 2.2/2.3?
    *   **Required Fields:** Are all required fields (e.g., `PackageName`, `PURL`) included?
    *   **Process:** Is there a process to deliver the SBOM concurrently with the software?
    *   **Resources:** Are the necessary tools, personnel, and budget secured?

#### 5.1.2. Stakeholder Identification and Task Force Formation

SBOM adoption is an enterprise-wide project that requires cross-functional collaboration.

*   **Secure Key Stakeholder Involvement:**
    *   **Development:** Responsible for SBOM generation and CI/CD integration.
    *   **Security:** Responsible for vulnerability analysis and policy validation.
    *   **Compliance/Legal:** Responsible for license management and legal risk review.
    *   **Procurement:** Responsible for including SBOM requirements in supplier contracts.
    *   **Executive Leadership:** Responsible for providing strategic direction and resources.

*   **Form an SBOM Adoption Task Force:**
    This should be an execution-oriented team with clear Roles & Responsibilities (R&R).
    *   **TF Lead:** Manages the overall project and reports to the executive team.
    *   **Technical Expert:** Evaluates and implements tools.
    *   **Process Architect:** Designs the end-to-end SBOM workflow.
    *   **Change Manager:** Leads training and communication to drive adoption.

#### 5.1.3. Goal Setting and Scope Definition

Set realistic, measurable goals to focus resources and define success.

*   **Set SMART Goals:**
    *   **(Example)** "By Q4 2025, automate the generation and delivery of SBOMs compliant with the OpenChain Telco SBOM Guide for our three flagship telecom equipment product lines."

*   **Define Scope by Priority:**
    Expand the scope in phases based on business importance and risk.
    1.  **Priority 1 (Strategic):** Core products or new flagship services delivered to external customers.
    2.  **Priority 2 (Risk-Based):** Product lines subject to regulatory requirements or with high open-source dependencies.
    3.  **Priority 3 (Internal):** Internally used development projects.

### 5.2. Phase 2: Build – Tool Selection and Process Integration

**Goal: To build a sustainable, automated system based on the established plan.**

This phase involves implementing the systems and processes defined in Phase 1. The key is to create an automated system that is naturally integrated into the development lifecycle.

#### 5.2.1. SBOM Generation Tool Evaluation and Selection

Select the optimal tool for your organization's tech stack, budget, and goals.

*   **Establish Tool Selection Criteria:**
    Create an objective evaluation model by weighting criteria based on organizational needs.

| Evaluation Criteria | Details |
| --- | --- |
| **Format Support** | Ability to generate and parse **SPDX 2.2/2.3** format. |
| **Language/Framework Support** | Coverage of key programming languages and frameworks used in-house. |
| **Integration** | Ease of integration with **CI/CD pipelines** like Jenkins and GitHub Actions. |
| **Accuracy** | High accuracy in transitive dependency detection; low false positive rate. |
| **Scalability/Performance** | Performance on large-scale projects and scalability for future growth. |
| **Cost-Effectiveness** | Value provided relative to license and maintenance costs. |

*   **Compare Tools and Conduct a Proof of Concept (PoC):**
    Test 2–3 candidate tools in a real development environment.
    *   Apply them to a **pilot project** to compare performance, accuracy, and usability.
    *   Gather **developer feedback** to assess practical utility.
    *   Conduct a Return on Investment (ROI) analysis to inform the final selection.

#### 5.2.2. Process Design and Standardization

Design a standardized SBOM management process that fits your development culture.

*   **Design a CI/CD-Integrated Workflow:**
    Make SBOM generation an automated part of the development process, not an extra task.
    1.  **Code Commit:** The pipeline is triggered when a developer commits code.
    2.  **Build & Scan:** The code is built, and an SCA tool scans for dependencies.
    3.  **SBOM Generation:** An SPDX-formatted SBOM is automatically generated.
    4.  **Quality Validation:** The SBOM is automatically validated against the guide's requirements.
    5.  **Policy Check:** The SBOM is used to scan for vulnerabilities and license violations. (Fail the build if policies are violated).
    6.  **Sign & Store:** A digital signature is applied, and the SBOM is stored in a central repository.
    7.  **Deploy:** The SBOM is included in the final deployment package.

*   **Document Policies and Guidelines:**
    Provide clear, written standards for all team members.
    *   **Corporate SBOM Policy:** Defines principles and responsibilities for SBOM management.
    *   **Tool Usage Guide:** Provides step-by-step instructions and best practices.
    *   **Quality Checklist:** A self-verification checklist for guide compliance.

#### 5.2.3. Internal Training and Capability Building

New tools and processes require sufficient training to ensure adoption.

*   **Customized Training Programs:**
    *   **Executives:** Briefing on the strategic value and business impact of SBOMs.
    *   **Developers:** Hands-on training on tool usage and CI/CD integration.
    *   **Security/Compliance Teams:** Advanced training on SBOM-based vulnerability and license auditing.

### 5.3. Phase 3: Scale – Pilot Project and Enterprise Rollout

**Goal: To prove value through a small success and expand across the organization.**

Apply the SBOM process to a real project to verify its effectiveness, then drive company-wide adoption.

#### 5.3.1. Execute a Pilot Project

Follow the principle: "Start small, succeed fast, and scale."

*   **Pilot Project Selection Criteria:**
    *   **Representative:** Has moderate complexity and represents a typical project.
    *   **Cooperative:** Involves a development team that is receptive to change.
    *   **Influential:** Is a project whose success can positively influence other teams.

*   **Pilot Execution and Performance Measurement:**
    Run the pilot for a defined period (e.g., 8 weeks) and measure performance using Key Performance Indicators (KPIs).

| KPI Area | Measurement Metric | Example Target |
| --- | --- | --- |
| **Quality** | Inclusion rate of required SBOM fields | > 95% |
| **Efficiency** | Automation rate of SBOM generation | > 90% |
| **Security** | Time to identify new vulnerabilities | 50% reduction |
| **Satisfaction** | Team satisfaction survey score | > 4 out of 5 |

#### 5.3.2. Gradual Rollout Strategy

Use the successes and lessons from the pilot to create a systematic roadmap for enterprise-wide expansion.

*   **Establish a Rollout Roadmap:**
    Expand the scope in phases by product line and business unit.
    *   **(Example)** Phase 1 (3 months): Pilot completion & rollout to 3 core products → Phase 2 (6 months): Expansion to 50% of major product lines → Phase 3 (12 months): Enterprise-wide standardization complete.

*   **Lead Change and Overcome Resistance:**
    *   **Communication:** Transparently share the reasons for adoption and regularly communicate progress.
    *   **Support:** Operate dedicated support channels (helpdesk, internal community) to resolve issues promptly.
    *   **Participation:** Actively listen to feedback from the field and reflect it in process improvements.

#### 5.3.3. Establish and Advance Governance

Build a continuous management system to embed SBOM management as a core competency.

*   **Operate an SBOM Center of Excellence (CoE):**
    Establish an expert organization to oversee the company-wide SBOM strategy, quality management, technical support, and training.
*   **Create a Continuous Improvement Process:**
    Identify improvement opportunities through quarterly performance reviews and incorporate evolving external standards and technologies.
*   **Measure Performance and Demonstrate Value:**
    Quantitatively analyze the ROI of SBOM adoption—such as reduced vulnerability response times and lower license violation risks—to report to management and secure ongoing investment.


## Chapter 6: Conclusion – The First Step Toward a More Secure Telco Ecosystem

### 6.1. The Significance and Future of the OpenChain Telco SBOM Guide

The [OpenChain Telco SBOM Guide](https://github.com/OpenChain-Project/Telco-WG) represents a pivotal step forward in securing the telecommunications software supply chain. In an era where large-scale attacks like Log4Shell and SolarWinds threaten global digital infrastructure, the guide provides a crucial solution: a specialized SBOM standard built for the telecommunications industry.

The guide’s development over 18 months, the release of Version 1.1, and its adoption as an internal framework by global leaders like Nokia prove that it is more than a document—it is an industry standard driving tangible change.

Its greatest significance lies in fostering interoperability and standardization, which maximizes efficiency across the entire industry. As Gergely Csatári of Nokia [noted](https://www.scanoss.com/post/the-openchain-telco-sbom), the guide addresses the real-world need for "harmonization of completeness, quality, and content to ensure interoperability of SBOMs, both internally and at external interfaces."

Furthermore, the announcement of commercial tool support from SCANOSS marks a significant milestone, signaling the guide's evolution from a theoretical standard to a practical, automated solution.

### 6.2. Why You Must Start Now

The window of opportunity for proactive adoption is closing. Three key trends underscore the urgency of implementing a robust SBOM strategy today.

#### 6.2.1. The Shifting Regulatory Landscape

The years 2025–2026 represent a critical inflection point for SBOM [mandates](https://fossid.com/articles/2025-outlook-open-source-software-risk-management/). Key regulatory deadlines are fast approaching:

*   **USA:** Full implementation of mandatory SBOM provision for federal government software procurement.
*   **EU:** SBOM requirements under the Cyber Resilience Act (CRA) will be fully [enforced](https://www.linkedin.com/pulse/sbom-requirements-european-unions-cyber-resilience-act-pscheidl-1m3hf/) from September 2026.
*   **Japan, South Korea:** Acceleration of government-led SBOM adoption policies.

Experts predict that "[2026 will be the real year of SBOM adoption](https://fossid.com/articles/2025-outlook-open-source-software-risk-management/)," making early action a competitive necessity.

#### 6.2.2. The Exponential Growth of Supply Chain Attacks

The threat landscape continues to escalate, underscoring the urgency:

*   Threats in open-source package repositories have **increased by 1,300%** ([Source](https://www.ibm.com/think/insights/4-trends-in-software-supply-chain-security)).
*   Weaponized vulnerabilities have **increased by 10%**, with nearly 1% of all vulnerabilities actively exploited in attacks ([Source](https://www.lineaje.com/post/2025-cybersecurity-forecast-navigating-the-future-of-software-supply-chains)).
*   The average loss from a single software supply chain attack is **$4.35 million** ([Source](https://www.marketreportanalytics.com/reports/software-bill-of-materials-sbom-52589)).

Two years after Log4Shell, **38% of applications remain vulnerable**, highlighting the critical need for systematic SBOM management.

#### 6.2.3. The Maturation of the Tool Ecosystem

The year 2025 marks a turning point as SBOM management shifts from manual effort to an automated system. Tools that support the OpenChain Telco SBOM Guide are now readily available:

*   **Validation Tool:** The Nokia-contributed OpenChain Telco SBOM Guide [Validator](https://openchainproject.org/news/2025/05/09/recording-openchain-telco-work-group-meeting-2025-05-07).
*   **Commercial Tool:** [Native support](https://www.linkedin.com/posts/openchain_the-openchain-telco-sbom-guide-activity-7326247571994087425-o6Q8/) from SCANOSS.
*   **Next-Generation Tool:** AI-based accuracy enhancement [solutions](https://conf.researchr.org/details/icse-2025/icse-2025-demonstrations/5/SIT-An-accurate-compliant-SBOM-generator-with-incremental-construction) like SIT.

These developments signal a decisive turning point in the history of software supply chain security.

This guide is not about pursuing a grand, unattainable transformation. It is about taking a small but definitive first step. We encourage you to take that step, use this guide to advance your organization’s software supply chain security, and help build a more resilient telecommunications ecosystem for everyone.


## Appendix

### Appendix A: Full Text of the OpenChain Telco SBOM Guide

*   Download the official guide (English): [OpenChain-Telco-SBOM-Guide_EN.md](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)
*   Download the official guide (Korean): [OpenChain-Telco-SBOM-Guide_KR.md](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_KR.md)

### Appendix B: Glossary

| Term | Definition |
| --- | --- |
| **SBOM** | Software Bill of Materials. An inventory listing all software components, libraries, and their dependencies that constitute a piece of software. |
| **SPDX** | Software Package Data Exchange. An open standard for communicating SBOM information, recognized as international standard ISO/IEC 5962:2021. |
| **PURL** | Package URL. A standardized URL format used to uniquely and universally identify software packages. |
| **Transitive Dependency** | An indirect dependency. If your project uses Library A, and Library A uses Library B, then Library B is a transitive dependency of your project. |
| **NTIA Minimum Elements** | A baseline set of SBOM fields defined by the U.S. National Telecommunications and Information Administration to ensure basic interoperability. |
| **CreatorComment** | A free-text field in the SPDX format used to record additional metadata, such as the tool used or the CISA-defined SBOM Type. |
| **Known Unknowns** | A field used to transparently document software components that were intentionally excluded from an SBOM, such as proprietary commercial components. |
| **Tag:Value** | A human-readable text format for SPDX, structured as a series of "key: value" pairs. |
| **JSON** | JavaScript Object Notation. A machine-readable data format ideal for automated processing and API exchange. |
| **Digital Signature** | A cryptographic signature applied to an SBOM file to verify its integrity and authenticity, ensuring it has not been tampered with. |
| **Container SBOM** | An SBOM that documents all software components within a container image, including base image layers, installed packages, and application code. |
| **SaaS SBOM** | An SBOM for a Software-as-a-Service application. The OpenChain Telco SBOM Guide defines this as optional but recommended for enterprise customers. |

### Appendix C: Frequently Asked Questions (FAQ)

**Q1. Do I have to use a specific tool to create an SBOM?**

A. No. The guide is tool-agnostic and only defines the requirements for the final output (SPDX 2.2/2.3 format). You are free to choose any Software Composition Analysis (SCA) tool—such as Syft, FOSSA, SCANOSS, or Black Duck—that best fits your technology stack and budget.

**Q2. Is providing an SBOM for our SaaS offering mandatory?**

A. The guide defines SBOMs for SaaS as optional (MAY), recognizing the operational complexities. However, it is a recommended best practice, especially for enterprise customers who require transparency. If you choose to provide one, you can deliver it through a secure customer portal or via API.

**Q3. How can I quickly verify if an SBOM complies with the guide?**

A. To verify compliance, check that the SBOM meets these key requirements:
1.  **Format:** Adheres to SPDX 2.2 or 2.3 in either Tag:Value or JSON format.
2.  **Completeness:** Includes all required fields for Document Creation, Package, and Relationship Information.
3.  **Traceability:** Contains creator information, tool version, and the appropriate CISA SBOM Type (e.g., Build, Source).
4.  **Scope:** Covers all open source and transitive dependencies.
5.  **Integrity:** Includes a digital signature (recommended) to ensure the file is authentic and unaltered.

**Q4. How should we update an existing, non-compliant SBOM?**

A. Follow these steps:
1.  **Analyze:** Scan the existing SBOM to identify missing fields and format inconsistencies compared to the guide's requirements.
2.  **Enrich:** Use an SCA tool to re-scan the software and add missing data, such as PURLs, license information, and transitive dependencies.
3.  **Convert:** Transform the enriched data into the required SPDX 2.2/2.3 format (Tag:Value or JSON).
4.  **Update Metadata:** Add the required `Creator`, `Created`, and `CreatorComment` fields.
5.  **Verify:** Apply a digital signature and use a validator tool to confirm full compliance.

**Q5. How can we generate an SBOM for a legacy product with limited source code access?**

A. For legacy products, a multi-faceted approach is needed:
*   **Binary Analysis:** Use an SCA tool with binary analysis capabilities to generate an SBOM directly from the compiled artifacts.
*   **Documentation:** Supplement the analysis with information from existing build scripts, developer notes, and product documentation.
*   **Transparency:** If some components cannot be identified, explicitly list them as `known unknowns` to maintain transparency.
*   **Delivery:** If embedding the SBOM is not possible, provide it via a web-hosted link, ensuring access for at least 18 months.

**Q6. When and how should we merge multiple SBOM files?**

A. Merging is necessary when a single product is assembled from multiple, independently developed components (e.g., microservices, firmware + application). You can use SPDX's `Relationship` fields (like `CONTAINS` or `DESCRIBES`) to define how the individual SBOMs relate to each other, creating a single, comprehensive SBOM for the entire product. Tools like `sbomasm` can automate this process.