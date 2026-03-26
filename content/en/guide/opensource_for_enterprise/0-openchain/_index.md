---
title: "0. Exploring OpenChain"
linkTitle: "0. OpenChain"
weight: 10
type: docs
categories: ["guide"]
tags: ["OpenChain", "ISO/IEC 5230", "ISO/IEC 18974"]
description: >
---

## 1. What is the OpenChain Project?

Software today is growing ever larger and more complex. Developing a single piece of software may involve not only internally developed code but also open source, third-party software, vendor SDKs, and a wide variety of software across the software supply chain.

If even one organization in this complex software supply chain fails to comply with open source license obligations or does not provide accurate open source information, the company ultimately distributing the software will inevitably fail to meet its open source license compliance obligations. This can lead to lawsuits and the suspension of product sales.

{{< imgproc supplychain Fit "900x600" >}}
<center>[OpenChain Open Source Software License Compliance General Public Guide]</center>
{{< /imgproc >}}

In December 2009, there was a lawsuit involving an open source project called [Busybox](https://busybox.net/). Busybox is an open source project licensed under GPL-2.0 that is widely used in embedded systems, and 14 companies — including two Korean companies — were named in the lawsuit. A notable aspect of this case is that some of the companies sued were those that had only distributed the product without developing it themselves.

In this complex software supply chain environment, even if one company has excellent processes in place, it is extremely difficult to achieve complete open source compliance on its own. Ultimately, for a company to properly fulfill its open source compliance obligations, all members of the software supply chain must comply with license obligations and provide accurate open source information. This trust must be built across the entire supply chain.

The [Linux Foundation](https://www.linuxfoundation.org/)'s [OpenChain](https://www.openchainproject.org/) project was founded on the belief that by concisely and consistently defining the key requirements companies must follow for open source compliance, and ensuring universal adherence, trust in the open source license dimension can be built across the entire software supply chain.

{{< imgproc openchainlogo Fit "600x450" >}}
<center>[OpenChain Project Logo]</center>
{{< /imgproc >}}

At an open source conference in Europe in 2016, Dave Marr, an open source lawyer at Qualcomm, emphasized exactly this point. To raise the level of open source compliance at one company, the level of compliance across all members of the software supply chain must be raised. He also suggested that leading companies with a deep understanding of open source and already established policies and processes open up their assets and know-how so that anyone can reference them. Conference participants resonated with the idea that "open source compliance is not an area where companies can differentiate their business advantages. Companies want to manage risk at an appropriate level with minimal resources. Therefore, the more companies share their assets with each other, the more all can achieve compliance together with fewer resources." And so the OpenChain project (then a Work Group) was born, with global companies such as [Qualcomm](https://www.qualcomm.com/), [Siemens](https://www.siemens.com/), [Wind River](https://www.windriver.com/), [ARM](https://www.arm.com/), and [Adobe](https://www.adobe.com/) joining.

The OpenChain project provides companies with three major things to help them achieve open source compliance more easily:

1. [OpenChain Specification](https://www.openchainproject.org/get-started/conformance)
2. [OpenChain Conformance Certification](https://certification.openchainproject.org/)
3. [Documentation and Resources](https://www.openchainproject.org/resources)

Let's explore how companies can leverage each of these.

## 2. OpenChain Specification and ISO/IEC Standards

The OpenChain Specification is a 10-page document defining the core requirements for open source compliance. OpenChain Specification Version 1.0 was released in 2016. The OpenChain Specification is designed to be suitable for all companies regardless of their size or industry.

In 2020, Version 2.1 of the specification was released, defining six core requirements that companies must fulfill to achieve open source compliance, along with a list of materials needed to demonstrate compliance.

1. Program Foundation
2. Relevant Tasks Defined and Supported
3. Open Source Content Review and Approval
4. Compliance Artifact Creation and Delivery
5. Understanding Open Source Community Engagements
6. Adherence to the Specification Requirements

For companies just starting with open source compliance, a good strategy is to work through each of the OpenChain Specification's requirements one by one to improve their level.

{{< imgproc spec Fit "1200x900" >}}
<center>< Source: https://github.com/OpenChain-Project/Specification/blob/master/Official/en/2.1/openchainspec-2.1.pdf></center>
{{< /imgproc >}}

This OpenChain Specification was formally registered as [ISO/IEC 5230:2020](https://www.iso.org/standard/81039.html), the international standard for open source compliance, in December 2020.

{{< imgproc iso Fit "900x600" >}}
<center>< Source: https://www.iso.org/standard/81039.html></center>
{{< /imgproc >}}

The OpenChain Specification, which had been a de facto standard for the past four years, was converted into the formal international standard ISO/IEC 5230:2020 — the first international standard defining open source compliance and process management. This has heightened interest among global IT companies in complying with ISO/IEC 5230, and it is expected that more companies in the software supply chain will begin requiring suppliers to comply with ISO/IEC 5230.

In 2023, a new standard for open source security assurance, [ISO/IEC 18974](https://www.iso.org/standard/81039.html), was announced. This standard is based on the OpenChain Security Assurance Specification and defines the core requirements for managing known security vulnerabilities in open source software. ISO/IEC 18974 covers the following key areas:

1. Identifying the key areas where security processes are needed
2. How to assign roles and responsibilities
3. How to ensure the sustainability of processes

Like ISO/IEC 5230, ISO/IEC 18974 is concise and easy to understand, and is supported by the global community to provide free reference materials and conformance resources.

These two standards work together to help organizations effectively manage license compliance and security assurance for open source software. While ISO/IEC 5230 focuses on license compliance, ISO/IEC 18974 focuses on security vulnerability management, making them complementary to each other.


## 3. How to Obtain ISO/IEC Standard Certification

If a company complies with all the requirements of both ISO/IEC 5230 and ISO/IEC 18974, it can be certified as having an open source program conformant with these standards. An open source program refers to the set of management systems — including policies, processes, and personnel — that a company uses to carry out open source compliance and security assurance activities.

The image below lists the item numbers required by ISO/IEC 5230. Companies that satisfy all of these items can be recognized as having established a transparent and trustworthy open source governance system in the software supply chain.

{{< imgproc spec3111 Fit "900x600" >}}
{{< /imgproc >}}

The [OpenChain Project](https://www.openchainproject.org/) proposes three methods of certification:

* Self-certification
* Independent evaluation
* Third-party certification

{{< imgproc certify Fit "900x600" >}}
<center><i> https://www.openchainproject.org/get-started/conformance </i></center>
{{< /imgproc >}}

Let's look at each method.

### (1) Self-certification

Self-certification is the most recommended method by the OpenChain project, with the advantage of being free of charge. The OpenChain Project provides an [ISO/IEC 5230 self-certification website](https://openchainproject.org/checklist-iso-5230-2020) so that companies can verify for themselves whether they comply with the OpenChain Specification. The open source officers of a company can register on this website and begin the online self-certification process. Self-certification proceeds by answering Yes/No questions as shown below.

{{< imgproc question Fit "900x600" >}}
<center>< Source: https://certification.openchainproject.org/></center>
{{< /imgproc >}}

If a company has established its open source compliance system well enough to answer Yes to all the questions in the OpenChain self-certification, it can submit those results on the website (Conforming Submission). After a simple confirmation procedure by the [Linux Foundation](https://www.linuxfoundation.org/), the company can then declare ISO/IEC 5230 conformance.

{{< imgproc sktannounce Fit "900x600" >}}
<center><Example: SK Telecom conformance declaration - Source: https://www.openchainproject.org/featured/2021/09/08/sk-telecom></center>
{{< /imgproc >}}

By making this conformance declaration, the company is recognized in the Global Software Supply Chain as having an open source program that complies with ISO/IEC 5230.

{{< imgproc announcelogo Fit "900x600" >}}
<center>< Companies that have declared conformant open source programs, Source - https://www.openchainproject.org/ ></center>
{{< /imgproc >}}

The OpenChain project recommends the self-certification method. For reference, most companies that have declared OpenChain conformance have also adopted the self-certification method.

In addition, companies can use the self-certification process to identify what is lacking and what additional activities are needed. This guide explains how to comply with ISO/IEC 5230 and ISO/IEC 18974 requirements for each major component such as organization, policy, and process.

Companies that lack the capacity to make improvements on their own through this guide alone may consider the independent evaluation method.

### (2) Independent Evaluation

In an independent evaluation, an independent external organization assesses and evaluates a company's open source compliance and security assurance status from a fair perspective. The distinguishing feature of an independent evaluation is that it not only generates an assessment report but also provides consulting to address the identified deficiencies. (However, it does not issue an accredited certification.)

Companies can improve their compliance and security assurance levels through fair assessment and consulting from an independent organization, and then go through a repeating process of independent evaluation again to refine policies and build processes.

{{< imgproc independent2 Fit "900x1200" >}}
<center>< Independent Compliance Assessment, Source - https://youtu.be/DEBd-g0Ab8E ></center>
{{< /imgproc >}}

Ultimately, the company reaches the level where it can obtain ISO/IEC 5230 and ISO/IEC 18974 certification, at which point it can enter the process of obtaining self-certification or third-party certification. Independent evaluation thus supports companies in raising their level of open source compliance and security assurance through assessment and consulting, helping them obtain conformant programs and achieve certification.

Companies offering independent evaluation include [AlektoMetis](https://alektometis.com/), [Source Code Control](https://sourcecodecontrol.co/), and others.

In Korea, the [Conformance Group](https://openchain-project.github.io/OpenChain-KWG/subgroup/conformance/), a subgroup of the OpenChain Korea Work Group, operates as a community where companies discuss and share methods for complying with ISO/IEC 5230 and ISO/IEC 18974 independently. Any OpenChain Korea Work Group member is welcome to participate and receive assistance.

### (3) Third-party Certification

If a company wants to demonstrate a more credible and transparent level of open source compliance and security assurance to buyers in the software supply chain, it can obtain a certificate from a third-party certification body and use it for promotional purposes. Additionally, some buyers who require a more robust level of trust in open source compliance and security assurance may mandate third-party certification from their suppliers.

As of 2024, the officially recognized OpenChain third-party certification bodies are [ORCRO](https://orcro.co.uk/), [PWC](https://www.pwc.de/en/opensource), [TÜV SÜD](https://www.tuvsud.com/), [Synopsys](https://www.synopsys.com/), and [Bureau Veritas](https://group.bureauveritas.com/).

{{< imgproc 3rdpartycertifiers Fit "900x600" >}}
<center>< Third-Party Certifiers, Source - https://www.openchainproject.org/partners ></center>
{{< /imgproc >}}

These bodies provide assessments to verify conformant programs under ISO/IEC 5230 and ISO/IEC 18974 and issue certificates to companies that pass.

{{< imgproc pwc Fit "900x600" >}}
<center>< PWC certification, Source - https://youtu.be/HslvXCM-4pQ ></center>
{{< /imgproc >}}

As of 2024, there are still few buyers or organizations that mandatorily require third-party certification. However, in the European automotive industry, some experts predict that it will not be long before ISO/IEC 5230 and ISO/IEC 18974 are mandated for automotive software suppliers, similar to [ASPICE](http://www.automotivespice.com/) (Automotive SPICE, the international standard process model for automotive software development).

For detailed information on the self-certification process, you can refer to the following slides:

* [OpenChain Korea 9th Meeting - How to Self Certify](https://openchain-project.github.io/OpenChain-KWG/meeting/9th/OpenChain_Korea_20210311_howto.pptx)



## 4. OpenChain Resources

The [OpenChain Project](https://www.openchainproject.org/) provides a variety of documentation such as policy document templates and educational materials needed by companies to build their compliance programs. These materials are designed to help comply with the OpenChain Specification and support general open source compliance activities, and are provided under a CC-0 license so anyone can use them freely.

{{< imgproc resource Fit "900x600" >}}
<center>< OpenChain Curriculum, Source - https://www.openchainproject.org/resources ></center>
{{< /imgproc >}}

Much of the content in this guide is also based on materials published by OpenChain. Open source officers at each company are encouraged to look to OpenChain Resources first when they need policies, processes, or educational materials. These materials are also being translated into Korean. The [OpenChain Korea Work Group](https://openchain-project.github.io/OpenChain-KWG/) is leading these translation efforts. Anyone interested can [participate](https://openchain-project.github.io/OpenChain-KWG/resource/) in the Korean translation.

The OpenChain Project also runs various webinars and study groups to provide additional resources:

1. Webinars: The OpenChain Project regularly hosts webinars to share the latest trends and best practices in open source compliance and security. These webinars can be found on the [OpenChain website](https://openchainproject.org/webinars), with recordings also available.

2. Educational Materials: The OpenChain Project provides a [comprehensive educational curriculum](https://github.com/OpenChain-Project/Reference-Material) to help companies develop internal training programs. These materials cover a wide range of topics from the basics of open source software to license compliance and security assurance.

By utilizing these diverse resources, companies can build and maintain a robust open source program that complies with the ISO/IEC 5230 and ISO/IEC 18974 standards.


## 5. Trends in ISO/IEC Standard Adoption

The adoption of ISO/IEC 5230 and ISO/IEC 18974 standards is showing an increasingly expanding trend in the global software supply chain.

In early 2021, news emerged that German automotive manufacturers began requiring parts suppliers to have plans to comply with ISO/IEC 5230. In response, a European open source professor stated, "It is obvious that software supply chain buyers will require suppliers to comply with ISO/IEC 5230 in the future," predicting that "it will take a position similar to ASPICE in the automotive industry."

Reflecting this forecast, in May 2021, Volkswagen Group's [Scania](https://www.scania.com/) included a requirement to comply with ISO/IEC 5230 in its own corporate standard (STD 4589) that suppliers must follow.

{{< imgproc scania Fit "900x600" >}}
<center><i>linkedin, May 2021</i></center>
{{< /imgproc >}}

Also, in July 2021, automotive and industrial technology company [Bosch](https://www.bosch.com/) declared that all group companies would have programs complying with ISO/IEC 5230 by year's end. The industry predicts that it is only a matter of time before all automakers and other industries begin requiring ISO/IEC 5230 within the software supply chain.

{{< imgproc bosch Fit "900x600" >}}
<center><i>linkedin, July 2021</i></center>
{{< /imgproc >}}

In 2023, a new standard for open source security assurance, ISO/IEC 18974, was announced. This standard defines the core requirements for managing known security vulnerabilities in open source software. Together with ISO/IEC 5230, ISO/IEC 18974 helps organizations effectively manage license compliance and security assurance for open source software.

As of 2024, this trend is accelerating further. For example, [KT](https://www.kt.com/) announced in October 2024 that it had obtained ISO/IEC 18974 certification. This demonstrates that domestic companies are also actively adopting international standards for open source security management.

The activities of the [OpenChain Korea Work Group](https://openchain-project.github.io/OpenChain-KWG/) are also becoming more vibrant. At the 22nd regular meeting held in June 2024, discussions were held on the current state of preparations for the ISO/IEC 18974 open source security standard and guidelines for SBOM-based SW supply chain management. This shows that domestic companies are actively embracing the ISO/IEC 5230 and ISO/IEC 18974 standards.

This trend is expected to continue in the future. As the complexity of software supply chains increases and security threats grow, the importance of international standards such as ISO/IEC 5230 and ISO/IEC 18974 will only become greater. By complying with these standards, companies will be able to enhance the transparency of open source use and effectively manage security risks.
