---
date: 2021-04-18
title: "What Is an OSPO?"
linkTitle: "What Is an OSPO?"
slug: ospo-definition
description: "The definition and guide for the OSPO<sub>Open Source Program Office</sub>"
author: Haksung Jang ([@haksungjang](https://haksungjang.github.io/)) / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
categories: ["blog"]
tags: ["OSPO"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: TODO Group"
---

{{% pageinfo %}}
This paper was translated by Haksung Jang from the English version available at the [OSPO Definition](https://github.com/todogroup/ospodefinition.org).  The original document is licensed under [CC-BY-SA-4.0](https://github.com/todogroup/ospodefinition.org/blob/master/LICENSE). 
{{% /pageinfo %}}

---

> Hello!  
> 
> [TODO Group](https://todogroup.org/)[^todogroup] is a [group](https://todogroup.org/members/)[^todogroupmember] under the Linux Foundation that advocates Talk Openly, Develop Openly, aiming to build successful open source projects and programs through collaboration. TODO Group creates and publishes open source [guides](https://todogroup.org/guides/)[^guide], [tools](https://github.com/todogroup/repolinter)[^repolinter], and more, making them available to anyone interested in open source.
> 
> For an organization such as a company to effectively manage and use open source, it is said that establishing an OSPO<sub>Open Source Program Office</sub> is needed for activities such as developer education, ensuring compliance, engaging with and building community, releasing open source, and code review. This article carries over the [article defining](https://todogroup.org/blog/ospo-definition/)[^definition] what an OSPO is and what role it plays, as written by TODO Group.

[^todogroup]: TODO Group : https://todogroup.org/
[^todogroupmember]: TODO Group Member : https://todogroup.org/members/
[^repolinter]: Repolinter : https://github.com/todogroup/repolinter
[^guide]: TODO guides : https://todogroup.org/guides/
[^definition]: Open Source Program Office (OSPO) Definition and Guide : https://github.com/todogroup/ospodefinition.org

---

{{< imgproc todogroup Fit "768x768" >}}
{{< /imgproc >}}


## Definition of an OSPO

An OSPO<sub>Open Source Program Office</sub> is designed to concentrate an organization's capabilities centrally for the organization's open source operations. This can include the use, distribution, selection, and inspection of open source and the establishment of related policies, as well as activities that facilitate developer education, ensuring compliance, and engaging with and building community in ways that benefit the organization.

There is no broad template for building an open source program that can be applied across all industries, but here we have classified the general functions of an OSPO into three categories.
1. Legal Risk Mitigation
2. Improving Engineers' Practices
3. Enabling Financial Benefits

Classifying them into these three categories brings to mind Fear, Love, and Money, respectively.

### Legal Risk Mitigation

A company's primary concern is legal compliance. Accordingly, the OSPO builds and manages the company's open source license compliance process. Companies that distribute software generally have the most interest in this issue, and it is this legal risk mitigation that most often gets an OSPO started in the first place.

For legal risk management, the OSPO holds the following responsibilities.
* Overseeing open source license compliance management
* Running a review process for the use of inbound code<sub>note: code obtained from external sources such as open source</sub>
* Ensuring effective contribution to open source projects

### Improving Engineers' Practices

The OSPO improves engineering functions by providing guides and policies for code management in an open source environment. Companies with many software engineers tend to focus their OSPO on engineering policy and practices.

The OSPO's responsibilities in this area are as follows.

* Clearly communicating the company's open source strategy both inside and outside the company
* Fostering an open source culture within the organization
* Ensuring that high-quality code is released to open source communities frequently

### Enabling Financial Benefits

Some companies focus on the financial benefits related to open source. They use the OSPO to establish a strategy for whether to use commercial vendors or open source vendors. Meanwhile, some technology companies leverage their own OSPO (and open source projects) to drive customers toward purchasing their commercial products.

The OSPO's responsibilities in this area are as follows.

* Ownership and oversight of strategy execution
* Promoting the effective use of open source in commercial products and services
* Collaborating with the developer community to encourage adoption of strategic open source projects

---

<i>In this way, each OSPO is structured to fit the company's business, products, and goals.</i>


## OSPO Guides

> TODO Group provides guides for companies to establish and operate an OSPO.

* [How to Create an Open Source Program](https://todogroup.org/guides/create-program)[^howtocreate]
* [Measuring Your Open Source Program](https://todogroup.org/guides/measuring)[^measuring]
* [Tools for Managing Your Open Source Program](https://todogroup.org/guides/management-tools)[^tools]

[^howtocreate]: How to Create an Open Source Program : https://todogroup.org/guides/create-program
[^measuring]: Measuring Your Open Source Program : https://todogroup.org/guides/measuring
[^tools]: Tools for Managing Your Open Source Program : https://todogroup.org/guides/management-tools


## OSPO Examples

> TODO Group has compiled and published case studies of how companies that make effective use of open source, such as Microsoft, Facebook, and Uber, run their OSPOs.

* [Autodesk](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/autodesk.md)[^autodesk]
* [Capital One](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/capitalone.md)[^capitalone]
* [Comcast](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/comcast.md)[^comcast]
* [Facebook](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/facebook.md)[^facebook]
* [Microsoft](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/microsoft.md)[^microsoft]
* [Red Hat](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/redhat.md)[^redhat]
* [Salesforce](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/salesforce.md)[^salesforce]
* [SAP](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/sap.md)[^sap]
* [Uber](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/uber.md)[^uber]
* [Yahoo/Verizon Media](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/oath.md)[^yahoo]

[^autodesk]: Autodesk's OSPO : https://bit.ly/3mVdi0I
[^capitalone]: Capital One's OSPO : https://bit.ly/3sxbf4e
[^comcast]: Comcast's OSPO : https://bit.ly/2RAIw1A
[^facebook]: Facebook's OSPO : https://bit.ly/3gkwOmg
[^microsoft]: Microsoft's OSPO : https://bit.ly/3eajxKm
[^redhat]: Red Hat : https://bit.ly/3xfk3iW
[^salesforce]: Salesforce's OSPO : https://bit.ly/3akfzgR
[^sap]: SAP's OSPO : https://bit.ly/32sVznS
[^uber]: Uber's OSPO : https://bit.ly/2Qcxwar
[^yahoo]: Yahoo/Verizon Media's OSPO : https://bit.ly/3mYRmBP

> I close this article by introducing SK telecom's OSPO: [SK telecom OSPO](https://sktelecom.github.io/about/ospo/)[^sktospo]
> 
> Thank you.

[^sktospo]: SK telecom OSPO : https://sktelecom.github.io/about/ospo

