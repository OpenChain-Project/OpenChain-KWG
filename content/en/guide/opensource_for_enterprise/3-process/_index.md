---
title: "3. Process"
linkTitle: "3. Process"
weight: 30
type: docs
description: >
---

The open source process is an executable procedure that allows companies to comply with open source policies during the software development and distribution process.

From the perspective of open source license compliance, activities are carried out to comply with the conditions required by each license for the open source used in developing and distributing software, resulting in the creation of deliverables such as open source notices and source code to be disclosed.

{{< imgproc input Fit "900x600" >}}
<center><i>Simplified view of the compliance end-to-end process : https://www.linuxfoundation.org/wp-content/uploads/OpenSourceComplianceHandbook_2018_2ndEdition_DigitalEdition.pdf</i></center>
{{< /imgproc >}}

For open source security assurance, activities must be carried out to detect the presence of security vulnerabilities in the software to be distributed, identify structural/technical threats, and resolve issues before release.

In order for a company to effectively achieve open source license compliance and security assurance, the following processes must be established:

* Open source process
* Open source vulnerability response process
* External inquiry response process
* Open source contribution process

Let's take a look at how each process should be structured.


## 1. Open Source Process

Companies should establish an open source process for open source license compliance and security vulnerability management according to the software development process.

The image below is a sample open source process that companies can generally adopt and use.

![](./process.png)

The procedures to be taken at each stage according to the open source process are as follows:

### (1) Identification and Inspection of Open Source

In the identification and inspection stage of open source, it is necessary to identify what license the open source you want to use is, what obligations the license requires, and whether there are known vulnerabilities.

Review and record which open source you want to use, what its license is, what obligations each license imposes, and what known vulnerabilities are.

The ISO/IEC 5230 standard requires a documented procedure to handle common open source license use cases and to review and record the obligations, restrictions, and rights granted by each identified license.

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.3.2.1 - A documented procedure for handling the common open source license use cases for the open source components of the supplied software.<br>`A documented procedure for handling the common open source license use cases for the open source components of the supplied software`
  
* 3.1.5.1 - A documented procedure to review and document the obligations, restrictions and rights granted by each identified license.<br>`A documented procedure to review and document the obligations, restrictions and rights granted by each identified license`

{{% /alert %}}

An example of a procedure for this is as follows:

1. The open source program manager provides a guide on the obligations, restrictions, and rights of major open source licenses. This guide should include the following use cases to handle common open source license use cases:

   - Distribution in binary form
   - Distribution in source form
   - Integration with other open source that triggers additional license obligations
   - Inclusion of modified open source
2. The business unit checks the license and known vulnerabilities according to the criteria defined in the open source policy.
3. The business unit consults with the open source program manager and security officer on any questions. If necessary, advice is sought from external experts.
4. All decisions and related grounds are documented and kept.

For this, companies should establish a documented procedure to review and record the obligations, restrictions, and known vulnerabilities granted by each identified license before product release through the open source identification and inspection stage.

```

(1) Open Source Identification

The business unit complies with the following matters at the software design stage.

- Identify the anticipated open source usage status and check the license while designing the software.
- Check the obligations of each open source license. The obligations of each license can be checked in the company's open source license guide. : https://sktelecom.github.io/guide/use/obligation/
- Design the software considering the source code disclosure range of each open source license.

The open source program manager creates and publishes a guide on the obligations, restrictions, and rights of major open source licenses so that the business units of the company can refer to it. This guide should include the following use cases to handle common open source license use cases:

- Distribution in binary form
- Distribution in source form
- Integration with other open source that triggers additional license obligations
- Inclusion of modified open source

The business unit marks copyright and license in the source code according to the company rules. The company's source code copyright and license marking rules can be found on the following page. (insert_link)

When the business unit considers introducing new open source, it first identifies the license. According to the company's open source license guide, check the obligations, restrictions, and rights of the license. If the license is not explained in the company's open source license guide, ask the open source program manager about the possibility of introduction and precautions. Create a Jira Ticket for inquiries.

The open source program manager analyzes the obligations of the open source license and guides the software development organization.

- If there is any doubt, consult with the legal officer and provide clear guidance.
- The newly analyzed license information is reflected in the company-wide license guide.

The security officer provides a guide for the company's security assurance.

(2) Source Code Inspection

The business unit requests an open source check according to the guidance of the IT manager and provides the source code.

The IT manager uses the open source analysis tool to check the open source and create an SBOM (Software Bill of Materials).

The open source program manager reviews the possibility of complying with the open source license obligations, checks for conflicts between open source licenses, and if there are issues, requests the business unit to resolve them. Issues are created as Jira Tickets and assigned to the business unit.

The security officer reviews the detected known vulnerabilities and provides a response guide to the business unit according to the pre-defined Risk classification criteria. Risk is classified by CVSS (Common Vulnerability Scoring System) Score, and Critical Risk is guided to establish a plan that can be addressed within 1 week.

```

In the open source identification and inspection stage, source code scanning tools can be used. More details on this can be found in "[1. Source Code Scanning Tools](../4-tool/#1-source-code-scanning-tools)".

### (2) Problem Solving

After identifying open source through open source identification and inspection, and confirming the risks of licenses and security vulnerabilities, a procedure is needed to solve the problem. All detected problems should be solved in the following ways:

- Remove the open source that is causing the issue.
- Replace with open source under a different license to resolve open source license issues.
- Replace with a version of open source where known vulnerabilities have been resolved.

An example of a documented process for this is as follows:

```
(3) Problem Solving

The business department solves all problems found in the source code inspection stage.

Remove the open source that is causing the issue, or replace it with open source under a different license. In the case of security vulnerability issues, measures such as replacing with a version where known vulnerabilities have been fixed are taken.

Once the business department has resolved all discovered issues, they resolve the Jira Ticket issue and request a re-review.

```

### (3) SBOM Identification, Review, and Storage

The most basic of open source license compliance activities is to understand the status of open source included in the distributed software. You need to build a process to create and manage an SBOM (Software Bill of Materials) that contains information identifying the open source and its licenses included in the distributed software. Knowing which open source is included in each version of the distributed software is essential for complying with the obligations required by each open source license when distributing software. This is also an essential process for discovering and responding to open source security vulnerabilities.

All open source must be reviewed and approved before being integrated into the distributed software. Not only the functionality and quality of the open source, but also whether the origin, license requirements can be met, and whether known vulnerabilities have been resolved, etc., must be reviewed in advance. A review request → review → approval process is required for this.

ISO standards commonly require a documented procedure that ensures that all open source software used in the supplied software is continuously recorded during the lifecycle of the supplied software.

For this, companies can reflect the following content about SBOM in the open source process:

```

(4) Review

The open source program manager reviews whether all issues have been properly supplemented. If necessary, the source code inspection is re-performed using the open source analysis tool.

The security officer reviews whether all serious vulnerabilities have been resolved. If there are vulnerabilities that are difficult to resolve, they review whether they can be approved considering the business form and service exposure status.

(5) Approval

The open source program manager finally approves or rejects whether the open source compliance procedure has been properly performed. If rejected, they propose a reason and a modification method to the business department.

(6) Registration

The open source program manager finalizes the BOM to track the list of open source used in each version of the software.

The IT officer registers the finalized BOM in the system. The BOM includes a list of open source included in the distributed software and the following information:

- Product (or service) name and version of the distributed software
- Open source list
  - Open source name / version
  - Open source license

The open source program manager finalizes the BOM to track the list of open source used in each version of the software.

```

For more details on tools for managing SBOM, see "[SBOM Management Tools](../4-tool/#3-sbom-management-tools)".

Also, all processes and results of such open source processes must be documented. It is more efficient to use an issue tracking system such as [Jira](https://www.atlassian.com/software/jira), [Bugzilla](https://www.bugzilla.org/) than using email.

### (4) Creation of License Compliance Artifacts

As mentioned above, the most basic of open source license compliance activities is to understand the status of open source included in the distributed software. This is precisely because it is the core of open source license compliance to properly meet the requirements of open source licenses. In other words, a process must be established to create a set of compliance artifacts for the open source included in the distributed software.

The ISO/IEC 5230 standard requires a documented procedure that describes the process under which the compliance artifacts are prepared and distributed with the supplied software as required by the identified licenses.

Compliance artifacts are divided into two main categories:

1. Open Source Notice: A document for providing open source license text and copyright information

    ![](ossnotice.png)

    * For how to create an open source notice that aggregates the SBOM using tools, see "[Open Source Compliance Artifact Creation Tools](../4-tool/#5-open-source-compliance-artifact-creation-tools)".


Sure, here is the English translation of the Korean guide you provided, written in a professional style suitable for user manuals, help documents, and technical documents:

2. Source Code Package to be Disclosed: A package that consolidates source code to be disclosed in order to comply with the obligations of open source licenses that require source code disclosure, such as GPL, LGPL.

Compliance deliverables must be provided along with the distribution of the software for distribution.

For this, companies can reflect the content on the creation of compliance deliverables from the notification stage to the distribution stage in the open source process as follows:

```
(7) Notification

The open source program manager creates an open source notice to comply with the notification obligation. The open source notice includes the following:

- Open source contact point where open source related inquiries can be made
- Notice content for each open source
  - Copyright
  - Open source license name
  - Copy of open source license
  - (If applicable) Written agreement to obtain a copy of the source code (Written Offer)

The open source program manager creates an open source notice and delivers it to the business department. At this time, if source code disclosure is necessary, the method of collecting the source code to be disclosed is guided to the business department.

The business department includes the open source notice when distributing the product. If the product has a screen, measures are taken so that the user can check it through the menu. (Example: App > Menu > Settings > Copyright Information > Open Source License)

The business department, when using open source under a license that requires source code disclosure such as GPL, LGPL, checks the scope of source code disclosure for this and collects the source code to be disclosed.

- The source code collected to comply with the obligations of licenses such as GPL, LGPL must match the source code that constitutes the binary loaded on the product. In other words, if you build the collected source code, it must be the same as the binary loaded on the product.

(8) Confirmation before distribution

The business department submits the following deliverables to prove that the open source compliance activities have been properly performed.

1. Final open source notice included in the product
2. Materials confirming that the open source notice is included in the product (Example: Screen capture image showing the open source notice)
3. (If applicable) Source code to be disclosed (Submit as a single file compressed)

The open source program manager reviews the materials submitted by the business department and checks for any abnormalities.

(9) Distribution

The open source program manager submits the compliance deliverables submitted by the business department to the IT manager.

The IT manager registers the compliance deliverables on the company's open source distribution site.
```

When distributing software for distribution, it may be difficult to include a package of source code to be disclosed. In this case, you can substitute it by providing a written agreement (Written Offer) that you will provide the source code for at least 3 years. Typically, the written agreement is provided through the product's user manual, and the example is as follows:

```
The software included in this product contains copyrighted software 
that is licensed under the GPL. A copy of that license is included 
in this document on page X. You may obtain the complete Corresponding 
Source code from us for a period of three years after our last shipment 
of this product, which will be no earlier than 2011-08- 01, by sending 
a money order or check for $5 to:

GPL Compliance Division
Our Company
Any Town, US 99999

Please write“source for product Y” in the memo line of your payment.
You may also find a copy of the source at http://www.example.com/sources/Y/.
This offer is valid to anyone in receipt of this information.

<Source: SFLC Guide to GPL Compliance>
```

Therefore, compliance deliverables must be kept for more than 3 years, and a process for this must be established.

For this, companies can consider building an open source website. You can check the details in "[Open Source Compliance Deliverable Storage](../4-tool/#6-오픈소스-컴플라이언스-산출물-보관)".

## 2. Open Source Security Vulnerability Response Process

Companies must perform activities for security assurance, such as detecting and resolving open source security vulnerabilities, while developing products/services.

The ISO/IEC 18974 standard requires documented procedures and records of actions taken for security assurance methods as follows:

{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

3.1.5 - Standard Practice Implementation

The Program demonstrates a sound and robust handling procedures of Known Vulnerabilities and Secure Software Development by defining and implementing following procedures:

* Method to identify structural and technical threats to the Supplied Software is defined;
* Method for detecting existence of Known Vulnerabilities in Supplied Software;
* Method for following up on identified Known Vulnerabilities;
* Method to communicate identified Known Vulnerabilities to customer base when warranted;
* Method for analyzing Supplied Software for newly published Known Vulnerabilities post release of the Supplied Software;
* Method for continuous and repeated Security Testing is applied for all Supplied Software before release;
* Method to verify that identified risks will have been addressed before release of Supplied Software;
* Method to export information about identified risks to third parties as appropriate.

* 3.1.5.1: A documented procedure exists for each of the methods identified above.<br>`위에서 식별된 각 방법에 대한 문서화된 절차가 존재한다.`


3.3.2 - Security Assurance

* 3.3.2.1: A documented procedure for handling detection and resolution of Known Vulnerabilities for the Open Source Software components of the Supplied Software;
* 3.3.2.2: For each Open Source Software component a record is maintained of the identified Known Vulnerabilities and action(s) taken (including even if no action was required).

{{% /alert %}}

이를 위해 기업은 배포용 소프트웨어에서 알려진 취약점 존재 여부를 탐지하고, 식별된 위험이 출시 전에 해결해야 할 뿐 아니라 출시 후 새롭게 알려진 취약점에 대응하기 위한 방법과 절차를 갖춰야 합니다.

먼저 기업은 배포용 소프트웨어에 알려진 취약점이 있는지 탐지하고, 식별된 위험을 출시 전에 해결해야 합니다. 이와 같이 알려진 취약점을 탐지하고 해결하는 절차는 [오픈소스 프로세스](#1-오픈소스-프로세스)의 오픈소스 식별 단계, 소스 코드 검사 단계, 문제 해결 단계를 통해 수행할 수 있습니다.

그리고, 배포용 소프트웨어의 릴리스 후 새롭게 알려진 취약점이 공개되었을 때 이미 배포된 소프트웨어에 존재하는지 확인하고, 해결하기 위해서는 신규 보안 취약점 대응 프로세스를 수립해야 합니다.

아래는 신규 보안 취약점 발견 시 대응을 위한 프로세스 샘플입니다.

![](./securityprocess.png)
<center><i>신규 보안 취약점 대응 프로세스 (샘플)</i></center><br>


```

1. 신규 보안취약점 대응 프로세스

제품/서비스가 시장에 출시된 후 새롭게 보안 취약점이 보고될 경우 위험도에 따라 적절한 조치를 취하기 위해 다음과 같은 프로세스를 준수합니다.

(1) 모니터링

IT 담당은 새로운 보안 취약점을 모니터링하는 시스템을 구축하여 운영합니다. 이 시스템은 다음과 같은 기능을 수행합니다.

- 새로운 보안 취약점이 공개되는 것을 주기적으로 수집합니다.
- 새로운 알려진 취약점을 갖고 있는 오픈소스가 이미 출시된 제품/서비스에 사용된 경우, 해당 제품/서비스의 사업 부서 담당자에게 알림을 보냅니다. 이때 알림부터 검토, 조치, 해결 사항이 모두 문서화되어 기록될 수 있도록 Jira Issue Tracker를 사용합니다.


(2) 초기 대응

보안 담당은 사전 정의한 위험 분류 기준에 따라 사업 부서에 대응 가이드를 제공합니다. 위험은 CVSS(Common Vulnerability Scoring System) 점수로 분류하며, Critical Risk는 1주 이내에 조치할 수 있는 계획을 수립하도록 안내합니다.

사업 부서는 기존 출시한 제품/서비스에 새로운 보안 취약점이 발견된 경우, 보안 담당자가 제공한 대응 가이드에 따라 조치 계획을 수립합니다.

보증이 필요한 고객이 있는 경우, 사업 부서는 위험도에 따라 필요한 경우 이메일 등의 방법으로 확인된 알려진 취약점을 고지합니다.

(3) 문제 해결

사업 부서는 수립한 조치 계획에 따라 문제가 되는 오픈소스를 삭제하거나 패치된 버전으로 교체하는 등의 방법으로 보안 취약점 문제를 해결합니다. 발견된 모든 이슈를 해결하면, 재검토를 요청합니다.

(4) 검토

IT 담당은 오픈소스 분석 도구를 활용하여 문제가 적절하게 해결되었는지 확인합니다.

(5) 승인

보안 담당은 심각한 취약점이 모두 해결되었는지 검토합니다. 해결하기 어려운 취약점이 남아 있을 경우, 비즈니스 형태와 서비스 노출 현황 등을 고려하여 승인 여부를 검토합니다.

(6) 등록

IT 담당은 오픈소스 보안 취약점이 해결된 SBOM을 시스템에 등록합니다.

(7) 고지

오픈소스 프로그램 매니저는 오픈소스 보안 취약점이 해결된 SBOM을 기준으로 오픈소스 고지문을 생성하여 사업 부서에 전달합니다.

사업 부서는 제품 배포 시 동봉한 오픈소스 고지문을 교체합니다.

IT 담당은 수정된 오픈소스 고지문을 회사의 오픈소스 배포 사이트에 등록합니다.

(8) 배포

사업 부서는 오픈소스 보안 취약점 문제가 해결된 버전의 소프트웨어를 재배포합니다.

보안 담당은 제3자에게 공개가 필요한 위험 정보가 존재하는지 식별하고, 존재할 경우 IT 담당자에게 전달합니다.

IT 담당은 신별된 위험에 대한 정보를 오픈소스 웹사이트에 등록하여 제3자가 확인할 수 있게 합니다.

```


## 3. 외부 문의 대응 프로세스

기업이 외부 클레임으로 인해 법적 소송에까지 이르지 않기 위해서는 외부 문의 및 요청에 가능한 한 빠르고 정확하게 대응하는 것이 중요합니다. 이를 위해 기업은 외부 오픈소스 문의에 빠르고 효과적으로 대응할 수 있는 프로세스를 구축해야 합니다.

ISO 표준은 공통적으로 다음과 같이 제3자의 문의에 대응하기 위한 내부의 문서화된 절차를 요구합니다. 

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.2.1.2 - An internal documented procedure for responding to third party open source license compliance inquiries.<br>`제 3자의 오픈소스 라이선스 컴플라이언스 문의에 대응하기 위한 내부의 문서화된 절차`

{{% /alert %}}


{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.2.1.2: An internal documented procedure exists for responding to third party Known Vulnerability or Newly Discovered Vulnerability inquiries.<br>`제3자에 의한 알려진 취약점 또는 새로 발견된 취약점 문의에 대응하기 위한 내부의 문서화된 절차`

{{% /alert %}}

아래 그림은 외부 문의 대응을 위해 기업이 갖춰야할 프로세스 샘플입니다.  

![](access.png)
<center><i>외부 문의 대응 프로세스 (샘플)</i></center><br>

```

외부로부터의 오픈소스 컴플라이언스 문의에 신속하고 정확하게 대응한다면 소송까지 진행되는 위험을 크게 줄일 수 있다. 이를 위해 기업은 외부의 오픈소스 컴플라이언스 문의에 대응하기 위해 다음과 같은 프로세스를 준수합니다.

(1) 접수 알림

오픈소스 프로그램 매니저는 문의를 받은 즉시 요청자에게 문의가 접수되었음을 알립니다. 이때 조치 예정일을 함께 알립니다. 요청자의 의도가 무엇인지 정확히 파악하는 것이 중요하기 때문에 문의가 불명확한 경우 추가 설명을 요청합니다.

대응이 필요한 문의 및 요청의 주요 내용은 아래와 같습니다.

- 특정 제품 및 서비스에 오픈소스가 사용되었는지 문의
- 서면 약정(Written Offer)에 언급된 GPL, LGPL 라이선스 하의 소스 코드 제공 요청
- 오픈소스 고지문에 명시되지 않았지만, 제품에서 발견된 오픈소스에 대한 해명 및 소스 코드 공개 요청
- GPL, LGPL 등의 의무로 공개된 소스 코드에 누락된 파일 및 빌드 방법 제공 요청
- 저작권 표시 요청

오픈소스 프로그램 매니저는 접수한 요청에 대한 Jira Issue를 생성하여 대응 상황을 모두 자세히 기록합니다.

(2) 조사 알림

오픈소스 프로그램 매니저는 요청자에게 오픈소스 컴플라이언스를 충실히 수행하고 있음과 요청자의 문의를 조사하고 있음을 알립니다. 내부 조사 진행 상황이 업데이트될 때마다 알리는 것이 좋습니다.

(3) 내부 조사

오픈소스 프로그램 매니저는 요청 사항에 대한 내부 조사를 진행합니다. 문제가 된 제품의 버전에 대하여 컴플라이언스 프로세스가 적절하게 수행되었는지 BOM 및 문서화된 검토 이력을 통해 확인합니다. 필요 시 법무 담당에 자문을 요청합니다.

특정 사업 부서에서 확인이 필요한 사항일 경우 오픈소스 프로그램 매니저는 사업 부서에 조사를 요청합니다. 조사를 요청받은 사업 부서는 컴플라이언스 산출물에 문제가 있는지 즉시 확인하고 결과를 오픈소스 프로그램 매니저에게 보고합니다.

(4) 요청자에게 보고

오픈소스 컴플라이언스 담당은 조치 예정일 내에 내부 조사를 마치고, 요청자에게 결과를 알립니다.

- 요청자의 문의가 오해로 인한 잘못된 지적이었다면 추가 조치 없이 요청자에게 이를 알리고 처리를 종료합니다.
- 문제가 맞는다면 요청자에게 해당 오픈소스 라이선스의 의무를 이행하기 위한 정확한 방법과 시기를 알립니다.

(5) 문제 보완 / 알림

내부조사에서 실제 컴플라이언스 문제가 발견되면 해당 사업 부서는 컴플라이언스 문제를 해결하는 데 필요한 모든 절차를 수행합니다.

(6) 문제 해결 알림

문제를 해결한 후에는 즉시 요청자에게 알리고 문제가 해결되었음을 확인할 수 있는 최선의 방법을 제공합니다.

(7) 프로세스 개선

컴플라이언스 문제가 있었던 경우, OSRB 미팅을 통해 사례를 검토하고, 문제가 발생한 경위를 파악하여, 문제가 재발하지 않을 수 있도록 프로세스를 개선합니다.

```

## 4. 오픈소스 기여 프로세스

기업이 외부 오픈소스 프로젝트에 기여를 허용하는 정책을 갖고 있다면, 사내 개발자들이 어떤 절차로 외부 프로젝트에 기여할 수 있을지 관리하는 문서화된 절차가 있어야 합니다. 

ISO/IEC 5230 표준은 다음과 같이 오픈소스 기여를 관리하는 문서화된 절차를 요구합니다.


{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

3.5.1.2 - A documented procedure that governs open source contributions; <br>`오픈소스 기여를 관리하는 문서화된 절차`

{{% /alert %}}

SK텔레콤에서 공개한 [오픈소스 기여 절차](https://sktelecom.github.io/guide/contribute/process/)는 좋은 예입니다.

![](contribution.png)
[https://sktelecom.github.io/guide/contribute/process/](https://sktelecom.github.io/guide/contribute/process/)


## 5. 프로세스 현행화

프로세스가 문서화만 되어 있고 실제 운영되지 않는다면 바람직하지 않습니다. 또한, 업무 상황이나 조직 구성에 맞지 않게 되어 있는 것도 문제입니다. 기업은 프로세스가 회사 내부 조직과 상황에 맞게 항상 최신 상태로 유지되어야 합니다.

ISO/IEC 18974 표준은 다음과 같이 프로세스를 주기적으로 검토 및 개선해야 함을 요구합니다.

{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.1.2.5: Documented Evidence of periodic reviews and changes made to the process;<br>`프로세스를 주기적으로 검토하고 개선했음을 나타내는 문서화된 증거`
* 3.1.2.6: Documented verification that these processes are current with company internal best practices and who is assigned to accomplish them.<br>`이러한 프로세스는 회사 내부 모범 사례를 반영하여 항상 현행화되어야 하고, 이를 누가 책임지고 수행해야 하는지를 명시한 문서화된 증거`

{{% /alert %}}

기업은 이를 위해 아래의 샘플과 같이 오픈소스 정책 문서 내에 매년 정기적으로 오픈소스 정책과 오픈소스 프로세스를 개선하고, 모든 과정을 문서화하여 기록하도록 정의할 수 있습니다. 

```
4. 역할, 책임 및 역량

정책의 효과를 보장하기 위해 다음과 같이 역할과 책임 및 각 역할의 담당자가 갖추어야 할 역량을 정의합니다.

(1) OSRB

OSRB(Open Source Review Board)는 회사의 오픈소스 관리를 위해 오픈소스 프로그램 매니저와 법무팀, 특허팀, 개발팀, 인프라팀 등 관련 조직의 책임자로 구성된 협의체입니다.

OSRB는 매년 정기적으로 검토하여 정책과 프로세스를 개선합니다. 모든 개선 과정은 문서화하여 기록합니다.
  - OSRB는 회사의 프로세스 수행 성과와 미흡한 부분, 모범 사례를 분석하고 비즈니스 환경을 반영하여 항상 현행화합니다.
  - 오픈소스 컴플라이언스를 위한 정책과 프로세스는 오픈소스 프로그램 매니저가 책임을 갖고 관리합니다.
  - 오픈소스 보안 보증을 위한 정책과 프로세스는 보안 담당이 책임을 갖고 관리합니다.

```





## 6. Summary

여기까지 프로세스를 구축하게 되면 ISO 표준 규격 중 아래의 노란색으로 표시된 요구사항을 충족할 수 있습니다.

![](./processno.png)




