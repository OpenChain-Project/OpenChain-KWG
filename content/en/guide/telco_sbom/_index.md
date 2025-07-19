---
title: "Guide to Software Supply Chain Security in the Telco Industry: A Handbook for the OpenChain Telco SBOM Guide"
linkTitle: "Telco SBOM Guide Handbook"
weight: 150
type: docs
description: >
  Technical Guidelines on Software Bill of Materials (SBOM)
---

{{% pageinfo %}}

This handbook provides detailed guidance for companies in the Telecommunications (Telco) industry to successfully apply the '[OpenChain Telco SBOM Guide](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)' to their practical work, presenting step-by-step implementation plans and use-case scenarios for each stakeholder.

Through this handbook, organizations can efficiently establish their SBOM management systems and, furthermore, significantly enhance their software supply chain security.

**Author : [Haksung Jang](https://haksungjang.github.io/) / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

{{% /pageinfo %}}

## Chapter 1: Why is an SBOM Necessary in the Telco Industry Now?

### 1.1. Changes in the Global Software Supply Chain and New Threats

#### 1.1.1. Deepening Open Source Dependency in 5G and Cloud-Native Environments

The [telecommunications industry](https://seo.goover.ai/report/202504/go-public-report-ko-808587ee-afb5-4b01-8dd2-0d5f3e4ee352-0-0.html) is currently experiencing an unprecedented wave of digital innovation. With the deployment of 5G networks, the adoption of cloud-native technologies, and the explosive growth of IoT devices, the complexity and interdependence of software have increased exponentially.

Currently, over 90% of software development processes utilize open-source software. In telecommunications infrastructure, open-source [communication protocols](https://www.thelec.kr/news/articleView.html?idxno=33454) like OPC UA and MQTT play a crucial role in real-time data exchange. The complex architecture of 5G networks consists of thousands of software components, and the [dependency relationships](https://www.oss.kr/oss_guide/show/7d7d50dd-816f-410d-9bbb-682683a26181) among them are becoming increasingly intricate.

#### 1.1.2. The Impact and Lessons of Supply Chain Attacks as Seen in the Log4j Incident

The Log4Shell ([Log4j vulnerability](https://www.ibm.com/think/topics/log4j)) disclosed in December 2021 sent shockwaves through the global software ecosystem, including the telecommunications industry. This vulnerability exposed several critical issues:

*   **Widespread Impact:** [Log4j](https://blog.cloudflare.com/inside-the-log4j2-vulnerability-cve-2021-44228/) is one of the most widely deployed open-source programs globally, affecting millions of systems. According to IBM's [X-Force Threat Intelligence Index](https://www.ibm.com/reports/threat-intelligence), vulnerabilities increased by 34% between 2020 and 2021, primarily [attributed to Log4Shell](https://www.ibm.com/think/topics/log4j).
*   **Difficulty in Detection and Response:** Many companies spent a significant amount of time just identifying whether their systems used third-party products that included the Log4j program. Even two years after the vulnerability was disclosed, 38% of applications using Log4j were still found to be [vulnerable](https://www.epnc.co.kr/news/articleView.html?idxno=300506).
*   **Discovery of Subsequent Vulnerabilities:** Following the initial vulnerability (CVE-2021-44228), [seven additional vulnerabilities](https://m.boannews.com/html/detail.html?idx=105394) were discovered, highlighting the importance of continuous monitoring and updates.

#### 1.1.3. The Rising Importance of Ensuring Software Transparency through SBOMs

The Log4j incident clearly demonstrated how dangerous a lack of visibility into software components can be. In its wake, governments and industries worldwide began to actively consider the [adoption of a Software Bill of Materials (SBOM) to ensure transparency in the software supply chain](https://www.igloo.co.kr/security-information/sbom%EC%9D%84-%EC%9D%B4%EC%9A%A9%ED%95%9C-%EA%B3%B5%EA%B8%89%EB%A7%9D-%EB%B3%B4%EC%95%88/).

In May 2021, the Biden administration issued an Executive Order to enhance cybersecurity, instructing the strengthening of software supply chain security. Similarly, the South Korean government announced plans to reinforce SW development and supply chain security in its K-Cyber Quarantine Promotion Strategy, released in February of the same year.

### 1.2. The Unique Characteristics and Challenges Facing the Telco Industry

#### 1.2.1. Complex Ecosystem: A Multi-layered Supply Chain of Equipment, Solutions, and Services

The telecommunications industry has a complex, multi-layered supply chain structure:

*   **Hardware Layer:** Network equipment manufacturers supply firmware and embedded software for base stations, routers, switches, etc.
*   **Software Layer:** Various network software suppliers provide solutions such as SDN/NFV, network management, and security.
*   **Service Layer:** Telecom operators offer end-users services like 5G, cloud, and IoT.

In this multi-layered structure, a single vulnerability can have a massive ripple effect across the entire network.

#### 1.2.2. High Standards for Reliability and Security

Telecommunications infrastructure is classified as critical national infrastructure, demanding extremely high levels of security and reliability. 5G networks, in particular, face new security challenges:

*   **Massive Connection of IoT Devices:** In a 5G environment, billions of IoT devices are connected, each serving as a potential entry point for attacks.
*   **Distributed Nature of Edge Computing:** As data processing moves to the network edge, centralized security management becomes more difficult.
*   **Isolation Issues in Network Slicing:** A security issue in one slice risks spreading to other slices.

#### 1.2.3. Increasing Demand for SBOMs from Domestic and International Regulations and Customers

Recently, the demand for SBOMs has been rapidly increasing both at home and abroad:

*   **Government and Public Institutions:** Public institutions, such as the Korea Meteorological Administration, are beginning to [require SBOM submission](https://kisia.or.kr/bucket/uploads/2025/03/11/%5Bkisia%5D%20sbom%20%EB%8F%84%EA%B5%AC%20%EC%8B%A4%EC%A6%9D%20%EA%B2%B0%EA%B3%BC%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf) in infrastructure procurement notices.
*   **Global Regulatory Trends:**
    *   **United States:** [Mandated](https://seo.goover.ai/report/202409/go-public-report-ko-d69ad755-7cc7-441a-9899-de0ddd66ea3b-0-0.html) the provision of SBOMs for all software delivered to the federal government.
    *   **EU:** Is [pushing for SBOM mandates through the Cyber Resilience Act (CRA)](https://www.oss.kr/oss_guide/show/f02cd419-df61-4f00-9149-e50c901ce06e).
    *   Other major countries like Japan and South Korea are considering similar policies.
*   **Customer Demands:** Large telecom operators, equipment manufacturers, and network solution companies are increasingly specifying SBOM provision as a contractual condition for software delivery.
*   **Industry Standardization:** International standards bodies like the OpenChain Project have begun to propose industry-specific SBOM guides for telecommunications.

These changes are not just a trend but a clear signal of the need to fundamentally innovate software supply chain security in the telecommunications industry. An SBOM is no longer an option but a mandatory requirement for survival and maintaining competitiveness in the telco sector.

## Chapter 2: What is the OpenChain Telco SBOM Guide?

*   English (Original): [OpenChain Telco SBOM Guide 1.1](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)
*   Korean: [OpenChain Telco SBOM 가이드 1.1](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_KR.md)

### 2.1. The Guide's Background and Core Objectives

#### 2.1.1. Solving the SBOM Fragmentation Problem in the Telco Industry

The telecommunications industry is one of the most complex and interconnected software ecosystems in the world. With the convergence of 5G infrastructure, cloud-native solutions, and network virtualization technologies, [each organization has applied different SBOM creation methods and requirements](https://openchainproject.org/news/2024/07/30/openchain-telco-sbom-guide-general-availability).

This fragmentation has led to several serious problems:

*   **Lack of Compatibility:** The SBOM format required by Telco A did not match the format provided by Equipment Manufacturer B, resulting in additional conversion work and costs.
*   **Redundant Investment:** As each organization developed its own tools and processes, the industry as a whole experienced inefficient, redundant investments.
*   **Limited Risk Management:** Non-standardized SBOMs made it difficult to track vulnerabilities and respond quickly across the entire supply chain.

To address these issues, the OpenChain Project established the Telco Working Group in 2023 and began developing a [specialized SBOM guide for the telecommunications industry](https://www.scanoss.com/post/the-openchain-telco-sbom).

#### 2.1.2. Proposing a Standard for Interoperability, Repeatability, and Efficiency

The OpenChain Telco SBOM Guide proposes a practical approach that reflects the specific characteristics of the telecommunications industry while ensuring compatibility with global standards. The core objectives of the guide are as follows:

*   **Ensuring Repeatability:** To provide clear criteria so that an SBOM of consistent quality can be generated for the same software, regardless of when, where, or by whom it is created.
*   **Streamlining Tools and Processes:** To support various SBOM generation tools in producing standardized outputs according to the guide, ensuring compatibility between organizations.
*   **Enhancing Supply Chain Transparency:** To enable all entities that produce and consume SBOMs to exchange software component information based on a common standard.

### 2.2. The Guide's Three Core Principles

#### 2.2.1. **Standardization:** Data Format and Structure Based on the International Standard (SPDX)

The [OpenChain Telco SBOM Guide](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md) adopts the [SPDX (Software Package Data Exchange)](https://www.iso.org/standard/81870.html) standard, officially certified as [ISO/IEC 5962:2021](https://www.iso.org/standard/81870.html), as the basis for its data format. This decision is based on the following strategic reasons:

*   **Compliance with International Standards:** SPDX is the only SBOM international standard officially adopted by the International Organization for Standardization (ISO) and the International Electrotechnical Commission (IEC) in September 2021.
*   **Technical Superiority:** SPDX offers more features for license compliance than CycloneDX and supports a human-readable format.
*   **Industry Validation:** Global companies such as Intel, Microsoft, Siemens, Sony, and Nokia use SPDX for their software supply chain management, making it a practically proven standard.

The guide requires compliance with **SPDX version 2.2 or 2.3** and specifies that SBOMs be provided in **Tag:Value or JSON format**.

#### 2.2.2. **Clarity:** Practical Definition of Required Fields and Delivery Methods

The OpenChain Telco SBOM Guide is based on the [minimum requirements of the NTIA (National Telecommunications and Information Administration)](https://www.ntia.gov/blog/2021/ntia-releases-minimum-elements-software-bill-materials) but provides clear criteria that reflect the practical needs of the telecommunications industry:

**Specification of Required SPDX Elements:**

*   Document Creation Information: SPDXVersion, DataLicense, Creator, Created, etc.
*   Package Information: PackageName, PackageVersion, PackageSupplier, PURL, etc.
*   Relationship Information: Dependency relationships like DESCRIBES, CONTAINS, etc.

**Specification of Delivery Timing and Method:**

*   **Delivery Timing:** SBOM must be delivered concurrently with the software.
*   **Delivery Method:** Embedded within the software package is the principle, but web hosting is allowed if technically infeasible (with at least 18 months of access guaranteed).

**Mandatory SBOM Generation Information:**

*   The Creator field must include the organization name and tool name/version.
*   The CreatorComment field must include the CISA-defined SBOM Type (e.g., Design, Source, Build).

#### 2.2.3. **Comprehensiveness:** Pursuit of Completeness, Including Transitive Dependencies

Modern software has numerous transitive dependencies, which are major pathways for security vulnerabilities. As seen in the Log4j incident, the propagation of vulnerabilities through transitive dependencies is unpredictable and can cause extensive damage.

The OpenChain Telco SBOM Guide reflects this reality by demanding a **comprehensive scope**:

*   **Inclusion of All Open Source:** All open-source software delivered with the product, including all its transitive dependencies, must be included.
*   **Recommendation for Commercial Components:** It is recommended to include all commercial components. If not included, they must be reported as "known unknowns."
*   **Support for Container Environments:** Includes packages installed in the container, components copied or downloaded to the container, and dependencies used to build the compiled components in the container.

### 2.3. At-a-Glance Summary of Key Guide Requirements

The following table summarizes the key requirements of the OpenChain Telco SBOM Guide:

| Category | Requirement | Details |
| --- | --- | --- |
| **Data Format** | SPDX 2.2/2.3 Required | Tag:Value or JSON format |
| **Required Elements** | NTIA Minimum Elements + α | Document Creation Info, Package Info, Relationship Info |
| **Delivery Timing** | Concurrent with software delivery | No later than the time of software delivery |
| **Delivery Method** | Embedded in package (principle) | Web hosting if infeasible (18-month guarantee) |
| **SBOM Scope** | Open Source + Transitive Dependencies | Commercial components recommended; "known unknowns" if excluded |
| **Generation Info** | Organization, Tool Name/Version | Include CISA SBOM Type |
| **Verification** | Digital Signature Recommended | Use tools like Sigstore |

Through this systematic and practical approach, the OpenChain Telco SBOM Guide provides a solid foundation for elevating the level of software supply chain management in the telecommunications industry. The fact that a global telecommunications equipment manufacturer like Nokia has already adopted this guide as the basis for its internal framework is a testament to its practicality and effectiveness.



## Chapter 3: The Business Value and Expected Benefits of Guide Compliance

### 3.1. Enhanced Supply Chain Risk Management

#### 3.1.1. Proactive Vulnerability Analysis and Rapid Security Patch Response

Complying with the OpenChain Telco SBOM Guide can dramatically shorten vulnerability response times. According to recent research, organizations with a mature vulnerability management system utilizing SBOMs have been shown to [reduce their response time by 30%](https://www.cybeats.com/blog/pci-dss-4-0-sboms-a-2025-readiness-guide).

When the Log4j incident occurred, organizations with SBOMs were able to [identify affected systems within minutes](https://www.pivotpointsecurity.com/a-software-bill-of-materials-sbom-benefits-both-vendors-and-users/), whereas those without SBOMs took [weeks to months](https://www.fortressinfosec.com/blog/cost-of-cyber-attacks-on-supply-chains). One software vendor testified that "an SBOM capability alone could have easily saved 240 hours." ([Source](https://pure.tudelft.nl/ws/portalfiles/portal/217100048/3634737.3637659.pdf)).

A demonstration project by Japan's METI reported that in the medical device sector, vulnerability management using SBOMs reduced the management workload by about 70% compared to manual management. ([Source](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf))

#### 3.1.2. Automation of Open Source License Compliance and Risk Mitigation

By clearly managing the license information of each component through the standardized SPDX format, organizations can proactively prevent risks of lawsuits and fines due to license violations.

[Utilizing SBOM tools](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf) significantly improves the efficiency of license management. Automating compliance functions, such as displaying the content of each license and warning about licenses that require attention, can drastically reduce administrative costs.

### 3.2. Enhanced Business Competitiveness and Trust

#### 3.2.1. Proactively Meeting the SBOM Demands of Customers and Partners

Currently, many System Integrators (SIs) and Software Vendors (SVs) recognize 'compliance with regulations and industry standards through SBOM adoption' and 'enhanced trust' as [key incentives](https://runsafesecurity.com/blog/sbom-requirements-global-guide/).

Organizations with SBOM provision capabilities can secure a clear competitive advantage:

*   **[Gaining a differentiated position](https://anchore.com/blog/how-to-respond-when-your-customers-require-an-sbom/)** in contracts with security-conscious customers.
*   **[Meeting mandatory requirements](https://www.opswat.com/resources/guides/sbom-in-2025-a-strategic-asset-not-just-a-list)** in contracts with government agencies and large corporations.
*   **[Demonstrating the capability](https://cycode.com/blog/software-bill-of-materials/)** to respond to global regulations like the EU CRA and the US Executive Order 14028.

#### 3.2.2. Gaining a Competitive Edge in RFPs, Contracts, and Public Bids

Many telecom operators and public institutions already specify SBOM submission as a mandatory bidding condition. The CEO of an API management vendor testified, "Being able to present an SBOM early in the conversation enables a completely different level of dialogue and allows CISOs to say, 'Let's try this.'"

The ability to provide a standardized SBOM becomes a tangible advantage, effectively shortening the sales cycle with customers who prioritize security and transparency.

#### 3.2.3. Demonstrating Compliance for Global Market Entry

The OpenChain Telco SBOM Guide is based on ISO/IEC 5962:2021 (SPDX), allowing it to be [submitted as-is for international procurement and exports](https://www.slideshare.net/slideshow/openchain-telco-sbom-guide-overview-2024-09-25/272051639) without additional format conversion. This is a crucial asset for ensuring both compatibility and trust in business dealings with global vendors and customers.

### 3.3. Increased Development and Operational Efficiency

#### 3.3.1. Standardization of SBOM Generation and Management Processes

Through a standardized format (SPDX 2.2/2.3) and clear definitions of required elements, organizations can [achieve automation and repeatability](https://www.ntia.doc.gov/sites/default/files/publications/copado_-_2021.06.17_0.pdf) in the SBOM generation, verification, and delivery processes.

[Specific time-saving benefits](https://noux.cloud/save-5-hours-weekly-cra-machine-builder-software-bill-of-materials-automation-solution/):

*   Component documentation and verification: 2.5 hours saved per week.
*   Version control and change management: 1.5 hours saved per week.
*   Compliance documentation: 1.2 hours saved per week.
*   Inter-team collaboration and handoffs: 0.8 hours saved per week.

In total, over 5 hours of engineering time can be saved per week, which can be reinvested into core development tasks.

#### 3.3.2. Reducing Internal Development Team Confusion with Clear Guidelines

By establishing consistent SBOM creation standards, all departments within an organization can share the same component information, [eliminating the inefficiencies](https://pure.tudelft.nl/ws/portalfiles/portal/217100048/3634737.3637659.pdf) of redundant scans and manual management. This is further [accelerated](https://soos.io/https-soos-io-sbom-adoption-guide-part-1-burden-or-opportunity) through the automation of repetitive tasks and integration with CI/CD pipelines.

### 3.4. Cost Reduction and Economic Benefits

#### 3.4.1. Direct Loss Prevention by Thwarting Supply Chain Attacks

The average cost of a software supply chain attack is $4.35 million per incident, and this is projected to grow to an annual scale of $80.6 billion by 2026. ([Source](https://bluesoft.com/service/consulting/software-supply-chain-security)) A systematic approach through the OpenChain Telco SBOM Guide can proactively prevent these potential multi-million dollar losses.

#### 3.4.2. Operational Cost Savings and Automation Effects

There are [numerous real-world cases](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf) reporting that hundreds of hours spent on vulnerability analysis and patch verification can be saved with an SBOM. One organization reported that it "reduced vulnerability review time from a full day to less than an hour, saving an estimated 500 hours of vulnerability analysis and prioritization per open-source project."

### 3.5. Enhanced Global Regulatory and Standards Compliance

#### 3.5.1. Regulatory Compliance Capability Through Adherence to International Standards

The OpenChain Telco SBOM Guide provides a practical foundation for effectively responding to global compliance requirements from bodies like NTIA, CISA, and ISO.

Key ongoing regulations:

*   **USA:** SBOM provision is [mandatory](https://security.cms.gov/learn/software-bill-materials-sbom) for federal government procurement.
*   **EU:** SBOM mandates are being [pushed](https://runsafesecurity.com/blog/sbom-requirements-global-guide/) through the Cyber Resilience Act (CRA).
*   **Japan, South Korea:** Similar policies are under review and preparation for introduction.

#### 3.5.2. Strengthening Multinational Partnerships and Supply Chain Collaboration

[Standardized SBOM exchange](https://www.cisa.gov/sbom) is emerging as a major global challenge. Adhering to the guide ensures compatibility with third-party SBOMs, [eliminating collaboration barriers](https://www.scanoss.com/post/the-openchain-telco-sbom).

The fact that a global telecommunications equipment manufacturer like Nokia has already adopted this guide as the basis for its internal framework is a prime [example](https://openchainproject.org/news/2025/05/09/expanded-support-for-the-telco-guide) that demonstrates the guide's practicality and business value.



## Chapter 4: Role-Based Application and Customized Scenarios

The OpenChain Telco SBOM Guide can be utilized differently depending on the roles and needs of each entity within the telecommunications ecosystem. This chapter presents specific scenarios on how **telecom operators (consumers), telecom equipment manufacturers (producers), network solution providers (producers)**, and **practitioners** can strategically leverage the guide.

### 4.1. Telecom Operators (Software Consumer Perspective)

Telecom operators are the **ultimate guardians of the supply chain** and **core consumers of SBOMs**, as they procure equipment and solutions from numerous suppliers to provide final services. Their primary interest lies in **proactively identifying security risks** in procured software and **ensuring transparency across the entire supply chain**.

#### 4.1.1. Scenario: Verifying the Supply Chain with SBOMs when Procuring External Solutions

*   **Situation:**
    A telecom operator plans to introduce a new Orchestration solution for managing 5G network slicing. They have received proposals from several global vendors, but some do not provide an SBOM, or the ones provided are in different formats and content, making an objective risk assessment difficult.

*   **Applying the OpenChain Telco SBOM Guide:**

    1.  **Step 1: Requirement Clarification**
        *   **Mandate Guide Compliance in RFP:** Include the submission of an SBOM in **SPDX 2.2 or 2.3 format** as a mandatory evaluation criterion for all vendors. This sets a unified standard, standardizing the quality and format of submitted SBOMs.
        *   **Demand Completeness:** In accordance with the guide, require a complete SBOM that includes not only direct dependencies but also **all transitive dependencies**. This allows for the proactive identification of hidden security threats and license risks.

    2.  **Step 2: Quantitative Risk Assessment**
        *   **Automated Analysis:** Input the standardized SBOMs into an internal Software Composition Analysis (SCA) tool to automatically scan and quantify known security vulnerabilities (CVEs) and their severity.
        *   **License Compliance Verification:** Analyze the license information of each component (`PackageLicenseConcluded`, `PackageLicenseDeclared`) to automatically verify if any licenses conflict with internal policies or have restrictions on commercial use.
        *   **Transparency Assessment:** Review the `known unknowns` field to use as an evaluation metric for how transparently a vendor understands its own software components.

    3.  **Step 3: Continuous Supply Chain Management**
        *   **Contractual Obligation:** In the contract with the selected vendor, specify a clause that "an updated SBOM must be provided concurrently within 48 hours of any software patch or version update."
        *   **Guaranteed Accessibility:** Ensure that web-hosted SBOMs are accessible for at least 18 months, as per the guide, to prepare for long-term security management and audits.

*   **Expected Benefits:**
    *   **Rapid Threat Response:** In the event of a zero-day vulnerability like Log4j, identify affected systems across the entire supply chain within minutes and prioritize responses.
    *   **Data-Driven Vendor Selection:** Objectively compare and evaluate the security level of suppliers based on standardized SBOM data, rather than on intuition or business relationships.
    *   **Enhanced Security Governance:** Transparently visualize software assets across the supply chain, effectively demonstrating compliance with regulatory audits and internal security policies.

#### 4.1.2. Tip: Specifying SBOM Requirements in RFPs and Contracts

Formalizing SBOM requirements is the most effective way to encourage responsible participation from suppliers.

*   **Standard RFP Clause Example:**
    > "For all proposed software products, an SBOM compliant with the 'OpenChain Telco SBOM Guide v1.1' must be submitted. The SBOM must be in SPDX version 2.2 or 2.3, in either Tag:Value or JSON format, and must include all open-source and commercial components in the product, as well as all transitive dependencies. The submission and quality of the SBOM will be a key consideration in the proposal evaluation."

*   **Key Contractual Clauses:**
    *   **SBOM Provision Obligation and Timing:** "The Supplier shall provide an SBOM compliant with the 'OpenChain Telco SBOM Guide,' as specified in Appendix X of this contract, concurrently with the software delivery."
    *   **Accuracy Guarantee:** "The Supplier warrants that the information in the provided SBOM is substantially accurate and complete."
    *   **Update Obligation:** "The Supplier shall provide an updated SBOM reflecting any changes to the Client (Telecom Operator) within 7 days of providing a major update or security patch for the software."
    *   **Breach Clause:** "In case of a breach of this SBOM provision obligation, the Client may terminate part or all of the contract and claim damages accordingly."

### 4.2. Telecom Equipment Manufacturers (Software Producer Perspective - Hardware-Coupled)

Telecom equipment manufacturers develop software deeply integrated with hardware, such as firmware and embedded OS, making them **key producers of SBOMs**. Their goal is to **efficiently meet the diverse requirements of their customers (telecom operators)** and **demonstrate the reliability and global competitiveness** of their products.

#### 4.2.1. Scenario: Establishing a Process for Concurrent SBOM Delivery with Network Equipment

*   **Situation:**
    A telecom equipment manufacturer is supplying 5G routers to various domestic and international telecom operators. However, each operator has different SBOM requirements for format and content, leading to a significant amount of time and cost spent on manual conversion and verification for each product release.

*   **Applying the OpenChain Telco SBOM Guide:**

    1.  **Standardizing Internal Processes: Building an 'SBOM Factory'**
        *   **CI/CD Pipeline Integration:** Mandate the inclusion of an automated SBOM generation and verification step in the **CI/CD pipeline** for firmware builds. A successful build is conditioned on the generation of a guide-compliant SBOM.
        *   **Metadata Automation:** Automatically record the organization name, SCA tool name, and version in the `Creator` field, and specify `SBOM Type: Build` according to the build time. This ensures the traceability and consistency of SBOM generation.

    2.  **Product-Centric SBOM Management**
        *   **Version Control:** Integrate with a version control system like Git to automatically generate and match SBOMs for each firmware version. This facilitates vulnerability analysis for specific versions.
        *   **Accessibility Design:** Considering the storage constraints of the product, print a **QR code with a link to download the SBOM** on the product box or manual, or **embed** a compressed SBOM within the package.
        *   **Integrity Assurance:** Apply a **digital signature (e.g., using Sigstore)** to the generated SBOM file to prevent tampering during transmission and increase customer trust.

    3.  **Efficient Customer Response System**
        *   **Single Standard Provision:** Provide a standard SBOM based on the **OpenChain Telco SBOM Guide** to all customers by default.
        *   **Flexible Conversion:** If a customer additionally requires a specific format (e.g., CycloneDX), quickly respond by using a **conversion tool** with the standard SPDX SBOM as the source.
        *   **Technical Support Integration:** Train the technical support team to instantly look up the SBOM for a specific product version when handling customer inquiries, allowing them to accurately and promptly answer questions about vulnerabilities and licenses.

*   **Expected Benefits:**
    *   **Increased Productivity:** The 'Create Once, Use Many' principle can reduce the time spent on custom SBOM work for each customer by over 80%.
    *   **Enhanced Customer Trust and Competitiveness:** Proactively providing a standardized and verified SBOM demonstrates the product's transparency and security level, securing a competitive edge in supply contracts.
    *   **Global Standard Compliance:** By following a guide based on ISO standards, the company can easily meet the SBOM requirements for entering stringent global markets like the US and EU.

#### 4.2.2. Tip: Managing SBOMs for Firmware and Embedded OS

Managing SBOMs with consideration for the specifics of embedded environments is crucial.

*   **Technical Implementation Methods:**
    *   **Build System Integration:** Integrate SBOM generation metadata layers or plugins into embedded Linux build systems like **Yocto or Buildroot** to automatically extract component information during the build process.
    *   **Utilizing Binary Analysis:** For third-party binaries or drivers where source code is not accessible, use SCA tools with binary analysis capabilities to identify components and include them in the SBOM.

*   **Management Processes:**
    *   **Product Lifecycle Integration:** Establish a policy to create, update, store, and retire SBOMs in conjunction with the entire product lifecycle, from planning and development to launch and end-of-life.
    *   **Synchronization with Security Patches:** When deploying a new firmware version with security patches, ensure that the SBOM reflecting those patch details is also updated and communicated to customers.
    *   **Legacy Product Management:** For legacy products that are no longer produced but still in use, retroactively generate SBOMs and provide information on known vulnerabilities to minimize customer risk.


### 4.3. Network Solution/Service Providers (Software Producer Perspective - Pure Software)

Network solution and service providers are the **key producers of SBOMs** most closely associated with modern software deployment methods like **cloud-native, SaaS, and containers**. Their goal is to **establish flexible SBOM provision strategies that adapt to a rapidly changing technological landscape** and to transform this capability into a **differentiated service competitiveness**.

#### 4.3.1. Scenario: SBOM Provision Strategy for SaaS and On-Premise Solutions

*   **Situation:**
    A domestic network security solution company provides both a cloud-based DDoS defense solution (SaaS) and a data center firewall solution (on-premise) to telecom operators. Recently, a major financial institution client has requested detailed SBOMs for both solutions, and the company is struggling, especially with managing SBOMs for the continuously updated SaaS environment.

*   **Applying the OpenChain Telco SBOM Guide:**

    1.  **Developing Differentiated Provision Strategies per Solution**
        Design distinct SBOM provision strategies tailored to the deployment method and customer requirement level of each solution.

        *   **On-Premise Solution (Installable Software):**
            *   **Embedding in Package:** Following the guide's principle, **embed** the SBOM file directly within the software installation package (e.g., RPM, DEB, MSI).
            *   **Verification at Installation:** Verify the validity of the SBOM file during the installation process and inform the administrator of its location and access method.
            *   **Container-Based Deployment:** When deploying in a Docker/Kubernetes environment, include the SBOM in a container image layer or store and manage it alongside the image in an image registry according to OCI (Open Container Initiative) standards.

        *   **SaaS Solution (Software as a Service):**
            *   **Service Tiering:** Leveraging the fact that SaaS is an optional application in the guide, structure SBOM provision as a **premium service**. Provide summary information to basic customers and detailed SBOMs to security-sensitive enterprise customers for a fee, creating a new revenue stream.
            *   **Providing a Security Portal:** Offer a dedicated security portal for enterprise customers to securely view and download the latest SBOMs for the real-time updated service.
            *   **API-Based Access:** Configure a service that provides SBOM data via **API** to allow integration with the customer's automated security management systems (e.g., SOAR).

    2.  **Full Integration with DevSecOps Pipeline**
        *   **SBOM Generation per Microservice:** If the solution is composed of a microservice architecture (MSA), generate individual SBOMs in the build pipeline of each service (e.g., authentication service, analysis service).
        *   **Integration and Relationship Definition:** During the full solution deployment, merge the individual microservice SBOMs into one unified SBOM using **SPDX's relationship definition features (e.g., DESCRIBES, CONTAINS)**. This clearly represents the structure and dependencies of the entire solution.
        *   **Integration with Continuous Deployment (CD):** Establish a system where the SBOM for a service is automatically updated whenever a new version of a microservice is deployed, and this change is reflected in the unified SBOM in real-time.

*   **Expected Benefits:**
    *   **Creating New Business Opportunities:** Position SBOM provision not merely as a cost but as a premium security service to **generate additional revenue**.
    *   **Customer Lock-in Effect:** By providing in-depth security services like API-based SBOM integration, **strengthen long-term partnerships with security-sensitive large customers**.
    *   **Demonstrating Technological Leadership:** By showcasing the capability to systematically manage complex SBOMs in a cloud-native environment, **build a brand image as a technology-leading company**.

#### 4.3.2. Tip: Utilizing SBOMs for Customer Technical Support and Maintenance

SBOMs provide even greater value in the post-sales customer support and maintenance stages.

*   **Proactive Vulnerability Management Service:**
    *   When a new CVE is disclosed, automatically scan all of the company's product SBOMs to **instantly identify the list of affected customers**.
    *   Before customers even inquire, provide a **proactive notification service**, such as: "The OOO component in v2.1 of the OOO solution you are using is affected by the recent CVE-2025-XXXX. A patch is currently in development, and the temporary mitigation measures are as follows."

*   **Transparent License Compliance Support:**
    *   When a customer undergoes an internal audit, provide the accurate SBOM for that point in time upon request to **support license status reporting**.
    *   If the license of an open-source component used in the solution changes, notify the customer in advance and review the business impact together.

*   **Efficient Maintenance and Updates:**
    *   Before a solution update, compare the SBOMs of the previous and new versions to **proactively identify changed components and potential conflicts**.
    *   This reduces the likelihood of failures due to updates and can be used to formulate rollback plans in case of issues.

### 4.4. Open Source/Compliance Officer Perspective (Practitioner's View)

Open source and compliance officers are the **core brains of SBOM governance**, responsible for establishing the organization's SBOM policy and maintaining consistent quality across the enterprise. Their goal is to **create clear and actionable policies** that **reduce the workload on development teams while minimizing organizational risk**.

#### 4.4.1. Scenario: Establishing an Internal SBOM Policy Based on the Guide

*   **Situation:**
    The head of the open-source program at a large telecom company is tasked with creating a company-wide SBOM policy. Facing different requirements from various departments like development, security, procurement, and legal, they are struggling to create a standard policy that satisfies everyone.

*   **Establishing a Policy Based on the OpenChain Telco SBOM Guide:**
    Use the objective, international standard-based guide as the foundation of the policy to mediate disagreements between departments and as a basis for persuasion.

    1.  **Constructing the Policy Framework:**
        Create a clear and concise policy document that reflects the core requirements of the guide.
        ```
        [Internal SBOM Management Policy]

        Article 1 (Purpose)
        The purpose of this policy is to ensure software supply chain transparency and systematically manage related risks by complying with the 'OpenChain Telco SBOM Guide v1.1'.

        Article 2 (Scope of Application)
        This policy applies to all software developed, purchased, or distributed by our company.
        1. Externally Purchased Software: Provision of a guide-compliant SBOM is a mandatory condition in contracts.
        2. Internally Developed Software: Generation of a guide-compliant SBOM is mandatory when distributing to external customers.

        Article 3 (SBOM Quality Requirements)
        All SBOMs must meet the requirements of Chapter 3 of the 'OpenChain Telco SBOM Guide' (e.g., data format, required fields, delivery method).
        ```

    2.  **Clarifying Roles and Responsibilities (R&R) by Department:**
        To enhance the policy's executability, specifically define the role of each department.
        *   **Development Department:** Responsible for generating SPDX-format SBOMs using standard tools within the CI/CD pipeline.
        *   **Procurement Department:** Responsible for including standard clauses regarding SBOM provision in all software purchase contracts.
        *   **Security Department:** Responsible for regular vulnerability monitoring and analysis based on SBOMs.
        *   **Legal/Compliance Department:** Responsible for reviewing the license information in SBOMs and giving final confirmation on compliance violations.

    3.  **Standardizing Processes and Tools:**
        Present standards to maintain consistent quality across the enterprise.
        *   **Designating Standard SCA Tools:** Define a list of officially approved and supported SCA tools in the organization.
        *   **Automating Quality Verification:** Introduce a policy to automatically measure quality scores using open-source tools like Interlynk's `sbomqs` during SBOM generation and to fail the build if the score is below a certain threshold.
        *   **Education and Support:** Operate regular training, online guides, and internal communities so that developers can easily understand and follow the policy.

#### 4.4.2. Tip: A Guide to Adopting and Selecting an SBOM Generation Tool (SCA Tool)

The key to successful SBOM management is selecting the right tool for the organization.

*   **Phased Adoption Plan:**
    1.  **Define Requirements:** Create a list of essential requirements considering the organization's tech stack, budget, and security policies.
    2.  **Market Research and Candidate Selection:** Select 3-4 candidate tools by referring to reports from Gartner, Forrester, and evaluations from open-source communities.
    3.  **Conduct a Proof of Concept (PoC):** Apply the candidate tools to an actual development project to directly compare their performance, accuracy, and user-friendliness.
    4.  **Final Selection and Phased Rollout:** Based on the PoC results, select the optimal tool and promote a gradual, enterprise-wide rollout, starting with a pilot team.

### 4.5. Collaborative Scenario: Linking SBOMs Across the Entire Supply Chain

Ultimately, the value of an SBOM is maximized when it connects the entire supply chain ecosystem, not just individual organizations.

*   **Integrated Scenario:**
    A case study of a major 5G private network construction project in South Korea where a telecom operator (consumer), an equipment manufacturer (1st-tier supplier), and a solution provider (2nd-tier supplier) collaborate based on the OpenChain Telco SBOM Guide as a **Common Language**.

    1.  **Project Initiation (Contract and Design Phase):**
        *   The project participation contract specifies that all parties will comply with the 'OpenChain Telco SBOM Guide'.
        *   They exchange SPDX-format SBOMs and jointly analyze the integrated security risks of the entire system architecture based on them.

    2.  **Development and Construction Phase:**
        *   The solution provider provides the SBOM for its solution to the equipment manufacturer.
        *   The equipment manufacturer **merges the received SBOM with the SBOM of its own firmware using SPDX's relationship definition features** to create an integrated equipment SBOM, which is then finally submitted to the telecom operator.

    3.  **Operation and Maintenance Phase:**
        *   The telecom operator registers the submitted integrated SBOM into a central monitoring system to manage the software assets of the entire network in real-time.
        *   If a zero-day vulnerability is discovered in a specific open-source component, the telecom operator can immediately identify the affected equipment and solutions and demand a prompt patch from the responsible supplier.

*   **Expected Benefits:**
    *   **Real-time Visibility of the Entire Supply Chain:** When a problem occurs, instead of passing the buck or wasting time identifying the cause among multiple suppliers, the root of the problem can be immediately identified and resolved.
    *   **Maximized Collaboration Efficiency:** Since all participants use the same standard and format, unnecessary costs and time for data conversion or reinterpretation are eliminated.
    *   **Enhanced National Critical Infrastructure Security:** Beyond the security efforts of individual companies, the resilience and security level of the nation's critical telecommunications infrastructure can be dramatically improved.




## Chapter 5: Getting Started — A Phased Implementation Plan for Your Company

The successful adoption of the OpenChain Telco SBOM Guide is not a one-time project but a continuous journey of embedding it into your organization's culture and processes. This chapter presents a practical, three-phased implementation plan—**‘Assess → Implement → Scale’**—to help your organization effectively build and operate its SBOM management system.

### 5.1. Phase 1: Assess - Current State Analysis and Goal Setting

The goal of this phase is to **"Know where you are and decide where you need to go."** This is the foundational step for a successful SBOM adoption. Rushing to introduce tools or policies without an accurate diagnosis of the current situation can lead to inefficient outcomes that are disconnected from on-the-ground realities. It is crucial to clearly understand your organization's current capabilities and the challenges it faces.

#### 5.1.1. Organizational Assessment and SBOM Maturity Evaluation

First, you must objectively assess your organization's current software supply chain management practices. This process is not just about documenting the current state but about discovering potential risks and opportunities for improvement.

*   **Mapping the Current Software Supply Chain**
    *   **Product/Service Inventory:** Create a list of all software currently in development and operation. This is the first step in defining the scope of SBOM management.
    *   **Component Management Practices:** Examine the processes for introducing, using, and retiring open-source and commercial software components. Determine whether component lists are managed manually (e.g., in spreadsheets) or with automated tools.
    *   **Risk Management Process Review:** Analyze how existing Vulnerability Management and License Compliance processes are operated.
    *   **Historical Analysis:** Analyze supply chain-related security incidents or license violations from the past 2-3 years to identify key vulnerabilities.

*   **SBOM Maturity Self-Assessment**
    Use the following three-stage model to diagnose your organization's current maturity level.

| Maturity Level | Characteristics | Key Challenges |
| --- | --- | --- |
| **Beginner (Procrastinators)** | Basic awareness of SBOMs but lacks concrete plans or execution. Relies on manual management. | To evangelize the need and value of SBOM adoption internally and secure executive buy-in. |
| **Early Adopter** | Planning SBOM adoption or piloting it in some projects. Lacks a standardized process. | To establish a company-wide standard process and policy based on successful pilot projects. |
| **Innovator** | Operates a standardized, enterprise-wide SBOM process. Automation is integrated into the CI/CD pipeline. | To pursue advanced strategies like predictive threat intelligence and proactive response using SBOM data. |

*   **Gap Analysis**
    Based on the self-assessment results, specifically identify the gaps between the OpenChain Telco SBOM Guide's requirements and your organization's current capabilities.
    *   **Data Format:** Does the currently generated SBOM comply with SPDX 2.2/2.3?
    *   **Required Fields:** Are all the required fields from the guide (e.g., PackageName, PURL) included?
    *   **Process:** Is there a process to deliver the SBOM concurrently with the software?
    *   **Resources:** Are the necessary tools, personnel, and budget secured?

#### 5.1.2. Stakeholder Identification and Task Force Formation

SBOM adoption is not a task for a single department but a company-wide project that requires collaboration. A dedicated team with clear roles and responsibilities must be formed for successful implementation.

*   **Securing Key Stakeholder Involvement**
    *   **Development Team:** Responsible for SBOM generation and CI/CD integration.
    *   **Security Team:** Responsible for vulnerability analysis and security policy validation.
    *   **Compliance/Legal Team:** Responsible for license management and legal risk review.
    *   **Procurement Team:** Responsible for including SBOM requirements in supplier contracts.
    *   **Executive Leadership:** Responsible for providing strategic direction and allocating resources.

*   **Forming an SBOM Adoption Task Force (TF)**
    This should be an execution-oriented team with clear Roles & Responsibilities (R&R), not just a consultation body.
    *   **TF Lead:** Responsible for the overall project and reporting progress to the executive team.
    *   **Technical Expert:** Responsible for tool evaluation, selection, and technical implementation.
    *   **Process Architect:** Responsible for designing the end-to-end SBOM workflow.
    *   **Change Manager:** Responsible for training and communication to ensure the new processes and culture are adopted.

#### 5.1.3. Goal Setting and Scope Definition

Based on the diagnosis, set realistic and measurable goals. This will help focus the organization's resources efficiently and provide a clear standard for judging the project's success.

*   **Setting SMART Goals**
    Instead of vague objectives, set specific and actionable goals using the SMART principle.
    *   **(Example)** "By Q4 2025, automate the generation and delivery process for 100% compliant OpenChain Telco SBOM Guide SBOMs for our three flagship telecom equipment product lines."

*   **Defining Scope Based on Priority**
    Rather than applying it to all products at once, expand the scope in phases, considering business importance and risk level.
    1.  **Priority 1 (Strategic Importance):** Core products or new flagship services provided to external customers.
    2.  **Priority 2 (Risk-Based):** Product lines subject to regulatory requirements or with high open-source dependencies.
    3.  **Priority 3 (Internal Efficiency):** Internally used development projects.

### 5.2. Phase 2: Build & Implement - Tool Selection and Process Establishment

**Goal: "Build a sustainable system based on the blueprint."**

In this phase, you build the actual systems and processes based on the plan established in Phase 1. The key is to create an automated system that is naturally integrated into the development lifecycle and can be operated continuously, rather than as a one-off task.

#### 5.2.1. SBOM Generation Tool Evaluation and Selection

This involves selecting the optimal tool that fits your organization's tech stack, budget, and goals.

*   **Establishing Tool Selection Criteria**
    Create an objective evaluation model by assigning weights to each criterion based on your organization's situation.

| Evaluation Criteria | Details |
| --- | --- |
| **Format Support** | Support for generating and parsing **SPDX 2.2/2.3** format. |
| **Language/Framework Support** | Coverage of major programming languages and frameworks used in the organization. |
| **Integration** | Ease of integration with **CI/CD pipelines** like Jenkins, GitHub Actions. |
| **Accuracy** | Accuracy of transitive dependency detection, low False Positive rate. |
| **Scalability/Performance** | Performance when scanning large-scale projects, scalability for organizational growth. |
| **Cost-Effectiveness** | Appropriateness of features relative to license and maintenance costs. |

*   **Comparing Major Tools and Conducting a PoC (Proof of Concept)**
    Test 2-3 selected candidate tools in a real development environment.
    *   Apply them directly to a **pilot project** to compare performance, accuracy, and usability.
    *   Gather **developer feedback** to assess practical usability in day-to-day work.
    *   Conduct a Return on Investment (ROI) analysis to select the final tool.

#### 5.2.2. Process Design and Standardization

Design a standardized SBOM management process that fits your organization's development culture, using the selected tools.

*   **Designing a CI/CD Integrated Workflow**
    Make SBOM generation an automated part of the process, not an additional task for developers.
    1.  **Code Commit:** The pipeline is triggered when a developer commits code.
    2.  **Build & Scan:** The code is built, and the SCA tool scans for dependencies.
    3.  **SBOM Generation:** An SBOM in SPDX format is automatically generated based on the scan results.
    4.  **Quality Validation:** Automatically validate that the generated SBOM meets the guide's required fields and format.
    5.  **Secure & Check:** Based on the SBOM, scan for known vulnerabilities and license policy violations. (Fail the build if policies are violated).
    6.  **Sign & Store:** Apply a digital signature to the validated SBOM and store it in a central artifact repository.
    7.  **Deploy:** Include the SBOM in the final deployment package and deploy them together.

*   **Documenting Policies and Guidelines**
    Provide clear, written standards that all members of the organization can follow.
    *   **Corporate SBOM Policy:** Defines the principles and responsibilities for SBOM generation and management.
    *   **Tool Usage Guide:** Provides step-by-step instructions and best practices for developers.
    *   **Quality Checklist:** A checklist for self-verifying compliance with the guide before submitting an SBOM.

#### 5.2.3. Internal Capability Building and Training

New tools and processes cannot take root without sufficient training and support.

*   **Customized Training Programs by Target Audience**
    *   **Executives/Leaders:** Briefing on the strategic value and business impact of SBOMs.
    *   **Developers/Engineers:** Hands-on training on tool usage, CI/CD integration, and troubleshooting SBOM errors.
    *   **Security/Compliance Teams:** Advanced training on SBOM-based vulnerability analysis, license auditing, etc.

### 5.3. Phase 3: Pilot & Scale - Pilot Project and Gradual Rollout

**Goal: "Prove value through small successes and expand across the organization."**

In this phase, you apply the SBOM process to a real project to verify its effectiveness and then drive a company-wide adoption based on the results.

#### 5.3.1. Executing a Pilot Project

Proceed with the pilot following the principle of 'Start small, succeed fast, and spread widely.'

*   **Pilot Project Selection Criteria**
    *   **Representativeness:** Does it have a moderate level of complexity to represent a typical project in the organization?
    *   **Cooperativeness:** Does it involve a development team that is positive and cooperative about change?
    *   **Influence:** Is it a project whose success can positively influence other teams?

*   **Pilot Execution and Performance Measurement**
    Execute the pilot for a defined period (e.g., 8 weeks) and objectively measure its performance using predefined Key Performance Indicators (KPIs).

| KPI Area | Measurement Metric | Target Value (Example) |
| --- | --- | --- |
| **Quality** | Inclusion rate of required fields in the SBOM | Over 95% |
| **Efficiency** | Automation rate of SBOM generation & validation | Over 90% |
| **Security** | Time to identify & analyze new vulnerabilities | 50% reduction from baseline |
| **Satisfaction** | Team satisfaction survey score | 4 out of 5 or higher |

#### 5.3.2. Gradual Rollout Strategy

Based on the successes and lessons from the pilot, establish a systematic roadmap for enterprise-wide expansion.

*   **Establishing a Rollout Roadmap**
    Instead of a "big bang" approach, expand the scope in phases by product line and business unit.
    *   **(Example)** Phase 1 (3 months): Pilot completion & application to 3 core products → Phase 2 (6 months): Expansion to 50% of major product lines → Phase 3 (12 months): Company-wide standardization complete.

*   **Change Management and Overcoming Resistance**
    A strategy is needed to minimize resistance from members to the new process and to lead the change successfully.
    *   **Communication:** Transparently share the background and expected benefits of the adoption and regularly communicate progress.
    *   **Support:** Operate dedicated support channels (helpdesk, internal community, etc.) to promptly resolve difficulties.
    *   **Participation:** Actively listen to voices from the field and reflect feedback in process improvements.

#### 5.3.3. Establishing and Advancing a Governance System

Build a continuous management system to ensure that SBOM management does not end as a one-time effort but becomes a core competency of the organization.

*   **Operating an SBOM Management Organization (SBOM CoE: Center of Excellence)**
    Operate an expert organization that oversees the company-wide SBOM strategy, quality management, technical support, and training.
*   **Continuous Improvement Process**
    Identify improvement tasks through quarterly performance reviews and incorporate changing external standards and technology trends into the process.
*   **Performance Measurement and Value Demonstration**
    Quantitatively analyze the ROI of SBOM adoption—such as reduced vulnerability response time, decreased license violation risk, and increased RFP win rates—to report to management and secure ongoing investment and support.

Through this systematic three-phase approach, organizations can successfully adopt the OpenChain Telco SBOM Guide and transform their software supply chain security into a business competitiveness.


## Chapter 6: Conclusion — The First Step Towards a More Secure Telco Ecosystem

### 6.1. The Significance and Future of the OpenChain Telco SBOM Guide

#### The Historical Significance of the Guide

The [OpenChain Telco SBOM Guide](https://github.com/OpenChain-Project/Telco-WG) marks the beginning of a software supply chain security revolution in the telecommunications industry. In a world where large-scale supply chain attacks like Log4Shell and SolarWinds have threatened global digital infrastructure, this guide has provided a clear solution: **a specialized SBOM standard for the telecommunications industry**.

Over the past 18 months, the development of the guide, the release of Version 1.1, and its adoption as an internal framework by global leaders like Nokia have proven that this guide is not just a document but an **industry standard that drives real change**.

#### Fostering Change Across the Industry Ecosystem

The greatest significance of the guide lies in its ability to maximize efficiency across the entire telecommunications industry through **interoperability and standardization**. As Gergely Csatári of Nokia [mentioned](https://www.scanoss.com/post/the-openchain-telco-sbom), the guide addresses the real-world need for "harmonization of completeness, quality, and content to ensure interoperability of SBOMs, both internally and at external interfaces."

In particular, the announcement of commercial tool support from SCANOSS is a significant milestone, showing that the guide is evolving from a theoretical guideline into a **practical, automated solution**.

### 6.2. Why You Need to Start Now

#### The Rapidly Changing Regulatory Landscape

The years 2025-2026 are a critical period for SBOM [mandates](https://fossid.com/articles/2025-outlook-open-source-software-risk-management/). A look at key regulatory trends reveals:

*   **USA:** Full implementation of mandatory SBOM provision for federal government procurement.
*   **EU:** SBOM requirements under the Cyber Resilience Act (CRA) will be fully [enforced](https://www.linkedin.com/pulse/sbom-requirements-european-unions-cyber-resilience-act-pscheidl-1m3hf/) from September 2026.
*   **Japan, South Korea:** Acceleration of government-led SBOM adoption policies.

Many experts are already forecasting that "[2026 will be the real year of SBOM adoption](https://fossid.com/articles/2025-outlook-open-source-software-risk-management/)," and **a delayed response will mean falling behind in the market**.

#### The Exponential Increase in Supply Chain Attacks

The latest security threat data shows a reality that can no longer be ignored:

*   **Threats in open-source package repositories have increased by 1,300%** ([Source](https://www.ibm.com/think/insights/4-trends-in-software-supply-chain-security)).
*   **Weaponized vulnerabilities have increased by 10%**, with 0.91% of vulnerabilities being actively exploited in attacks ([Source](https://www.lineaje.com/post/2025-cybersecurity-forecast-navigating-the-future-of-software-supply-chains)).
*   **The average loss from a single software supply chain attack is $4.35 million** ([Source](https://www.marketreportanalytics.com/reports/software-bill-of-materials-sbom-52589)).

The fact that **38% of applications still have vulnerabilities** two years after Log4Shell highlights the urgency of systematic SBOM management.

#### The Maturation of Automation and Tool Ecosystems

The year 2025 marks a turning point where SBOM management is shifting **from manual tasks to an automated system**. Automation tools that support the OpenChain Telco SBOM Guide are emerging one after another:

*   **Validation Tool:** The Nokia-contributed OpenChain Telco SBOM Guide [Validator](https://openchainproject.org/news/2025/05/09/recording-openchain-telco-work-group-meeting-2025-05-07).
*   **Commercial Tool:** [Native support](https://www.linkedin.com/posts/openchain_the-openchain-telco-sbom-guide-activity-7326247571994087425-o6Q8/) from SCANOSS.
*   **Next-Generation Tool:** AI-based accuracy enhancement [solutions](https://conf.researchr.org/details/icse-2025/icse-2025-demonstrations/5/SIT-An-accurate-compliant-SBOM-generator-with-incremental-construction) like SIT.

We are at a **decisive turning point** in the history of software supply chain security.

Rather than grand transformations, what is important is **a small but certain first step**. We encourage you to take that step and advance your organization's software supply chain management capabilities with the OpenChain Telco SBOM Guide.


## Appendix

### Appendix A: Full Text of the OpenChain Telco SBOM Guide (Korean Version Link)

*   Download and view the full text of the guide: [OpenChain-Telco-SBOM-Guide_EN.md](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)
*   Download and view the full text of the guide (Korean translation): [OpenChain-Telco-SBOM-Guide_KR.md](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_KR.md)

### Appendix B: Glossary

| Term | Definition |
| --- | --- |
| SBOM | Software Bill of Materials. A document that records all components and their relationships that make up a piece of software. |
| SPDX | Software Package Data Exchange. An SBOM data format based on the ISO/IEC 5962:2021 standard. |
| PURL | Package URL. A de facto standard URL for uniquely identifying software packages. |
| Transitive dependency | An indirect dependency. All chained dependencies required for the software to run, which are not direct dependencies. |
| NTIA minimum elements | A set of minimum elements for an SBOM as defined by the U.S. National Telecommunications and Information Administration. |
| CreatorComment | A field in SPDX, a free-text field for recording additional metadata such as tool information or SBOM Type. |
| Known unknowns | A way to transparently indicate that certain components were not included when creating an SBOM, by marking them as "known but not included." |
| Tag:Value | One of the human-readable SPDX data format types. A text format in the form of "key:value". |
| JSON | One of the machine-readable formats, JavaScript Object Notation for representing structured data. |
| Digital signature | A digital signature applied to an SBOM file to ensure its integrity. Utilizes tools like Sigstore. |
| Container SBOM | An SBOM that documents all packages, copied/downloaded components, and build dependencies included in a container image. |
| SaaS SBOM | An SBOM applied to Software as a Service (SaaS). Optional application is possible under the current guide. |

### Appendix C: Frequently Asked Questions (FAQ)

**Q1. Do I have to use a specific tool to create an SBOM?**

A. No. The guide only defines the requirements for the SPDX 2.2/2.3 format and allows any tool that can generate it. You can evaluate various SCA tools like Syft, FOSSA, SCANOSS, and Black Duck to choose the one that best fits your organization's environment.

**Q2. Is it mandatory to apply an SBOM to SaaS offerings?**

A. As this guide is applied on a per-SBOM (specification) basis, its application to SaaS is optional (MAY). If needed, a guide-compliant SBOM can be provided through a SaaS service portal or API.

**Q3. How can I verify compliance with the guide?**

A. Check if the SBOM meets the following requirements:

1.  SPDX 2.2/2.3 format (Tag:Value or JSON).
2.  Inclusion of required fields (Document Creation Information, Package Information, Relationship Information).
3.  Recording of generation information such as Creator and Created fields.
4.  Inclusion of SBOM Type and transitive dependencies.
5.  Integrity verification procedures such as a digital signature (recommended).

**Q4. How do I update an existing SBOM to comply with the guide?**

A.
1.  Check the current SBOM format and list of fields.
2.  Compare it with the guide's list of required elements and add any missing items.
3.  Convert it to Tag:Value or JSON format.
4.  Enter tool information and SBOM Type in the Creator/CreatorComment fields.
5.  Apply and verify a digital signature.

**Q5. How can I apply an SBOM to legacy (older) products?**

A.
*   Generate an SBOM from the source code or build artifacts using an SCA tool.
*   If storage space is limited, provide it via web hosting (with an 18-month guarantee).
*   Maintain transparency by explicitly marking components that are handled as ‘known unknowns’.

**Q6. How do I merge SBOM files?**

A. You can merge multiple SBOM files into one using SPDX's Relationship feature. You can perform an automated merge using tools like `sbomasm`.

With this appendix, you can find the full text of the guide, key terminology, and frequently asked questions by practitioners all in one place. Feel free to use it as-is for your organization's internal guidance materials.