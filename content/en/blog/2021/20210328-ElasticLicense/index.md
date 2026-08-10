---
date: 2021-03-28
title: "Elastic License 2.0 and the Evolution of Open Source Licensing"
linkTitle: "Elastic License 2.0"
slug: elastic-license
description: "Explains the background behind the drafting of Elastic License 2.0"
author: Haksung Jang ([@haksungjang](https://haksungjang.github.io/)) / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
categories: ["blog"]
tags: ["Open Source License", "Elastic"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Haksung Jang"
---


{{% pageinfo %}}
This paper was translated by Haksung Jang from the English version available at this [white paper](https://www.coss.community/coss/elastic-license-2-0-and-the-evolution-of-open-source-licensing-3jb3).  The original author, [Heather Meeker](https://heathermeeker.com/about-me/), has not reviewed this translation.
{{% /pageinfo %}}

---

> Hello.
> 
> This article is based on a [white paper](https://www.coss.community/coss/elastic-license-2-0-and-the-evolution-of-open-source-licensing-3jb3) about the Elastic License published on March 11, 2021 by [Heather Meeker](https://heathermeeker.com/about-me/), a U.S. attorney specializing in open source law. Most of it is a translation of the original article, and I have added my own opinions as blockquotes.
> 
> For reference, while Heather Meeker presented this white paper as her personal view, she also disclosed that it received some funding from Elastic. Perhaps for that reason, the original article takes a favorable stance toward the Elastic License.
>> (A bit of digging turned up that Heather Meeker [wrote Elastic License 2.0](https://www.elastic.co/blog/elastic-license-v2) herself.)
> 
> In any case, as the times change and software distribution methods shift, commercial open source companies have had to think about which licensing model to adopt in order to pursue both development and business at once, and I think this article helps in understanding one aspect of the background behind the Elastic License. 
> If you find any errors in this article, please feel free to [contact me](https://haksungjang.github.io/) at any time. :-)
> 
> * My deep thanks to [Sean](https://www.linkedin.com/in/%EC%98%81%ED%99%98-%EA%B9%80-4069b5135/) and [Robin](https://www.linkedin.com/in/hwang-minho/) of Kakao, and [Kyoungae Kim](https://www.linkedin.com/in/kyoungae-kim-597a1630) of LG Electronics, for their help reviewing this article.

---

Recently, in February 2021, [Elastic](https://www.elastic.co/) introduced a new license called [Elastic License 2.0](https://www.elastic.co/licensing/elastic-license) for its software products. This licensing model was applied to major software products such as Elasticsearch and Kibana. Let's look at the purpose of this change and what it means.

Elastic License 2.0 is a representative licensing best practice available to companies doing business under an Open Development Model. Elastic License 2.0 is not an open source license, but it aims to set the minimum restrictions necessary to maintain a fair balance between the freedom to use, share, and modify software and the prevention of behavior that harms the community.

![scale](./featured-scale.png)

## Unix, Linux, Free Software, and Open Source

To understand the trend toward new licenses like Elastic License 2.0, it helps to look at how the open source licensing movement grew.

The open source and Free Software movements began out of developers' concerns about the privatization of software. The spark for these concerns was Unix, the most popular operating system of the time. AT&T Bell Labs, the developer of Unix, was barred by a 1956 consent decree from profiting from research projects that included Unix and the C programming language,[^decree] and as a result it distributed Unix for many years under very permissive license terms. Academics, researchers, and developers began modifying, improving, and sharing Unix, and it soon became the leading operating system. However, when the consent decree was lifted in 1983, AT&T applied terms to Unix that no longer allowed the sharing of modifications. As a result, each vendor used its own modified version of the operating system, Unix splintered into many incompatible variants, and users could no longer collaborate.

[^decree]: "Modification of Final Judgment," August 24, 1982, filed in case 82-0192, United States of America v. Western Electric Company, Incorporated, and American Telephone and Telegraph Company, U.S. District Court for the District of Columbia [web.archive.org/web/20060827191354/members.cox](http://web.archive.org/web/20060827191354/members.cox.net/hwilkerson/documents/AT&T_Consent_Decree.pdf).

As Unix became privatized, the Free Software movement arose, followed by the open source movement, both seeking to prevent infrastructure software from being closed off again in this way. This movement centered on Linux, the free software that replaced Unix, and it soon grew into a larger movement based on the philosophy that all software should be "free" (free as in freedom of speech, not free as in free beer). One element of this movement was the right to access source code and to make and share improvements and changes. These principles were embodied in the [GNU General Public License](https://en.wikipedia.org/wiki/GNU_General_Public_License) (GPL), under which distributors of binaries must share the corresponding source code.

As time passed, buoyed by the internet boom of the early 2000s, open source licenses grew even more popular. Some licenses, such as the GPL, raised complex legal concerns, but they also laid the groundwork for companies to collaborate. Since 2000, open source, and the collaboration it made possible, has been adopted across every technology sector. Today, open source is a core technology for e-commerce, and companies continue to collaborate on software infrastructure.

## The Advent of the Cloud and AGPL

Licenses such as the GPL require that changes be shared. They impose a condition of sharing source code for binary distribution. Making and using a "private copy," on the other hand, does not require sharing changes. This condition was effective at compelling sharing at the time, because most software was deployed on-premise. However, starting in the early 2000s, software began moving to the public cloud, and it was no longer necessary to distribute software at all. Customers could use software without ever obtaining a local copy.

As the cloud services business grew, this paradigm shift created tension between the expectations of the open source community and cloud service providers such as AWS (Amazon Web Services). Cloud service providers were free of any legal obligation to share their improvements. Because Google was well known for relying on Linux to power its search service, this was also called the "Google Loophole." In response, the Free Software community created the [Affero GPL](https://www.gnu.org/licenses/agpl-3.0.en.html) (AGPL), a partially modified version of the GPL. AGPL 3.0 is nearly identical to GPL 3.0, but it includes the following Remote Network Interaction clause.

~~~
[I]f you modify the Program, your modified version must prominently offer 
all users interacting with it remotely through a computer network … 
an opportunity to receive the Corresponding Source of your version by 
providing access to the Corresponding Source from a network server at no 
charge, through some standard or customary means of facilitating copying 
of software….
~~~

This new license was intended to compel cloud service providers to share their source code improvements, just as the GPL had done for Linux distributions.

## AGPL and Dual Licensing

The AGPL was controversial from its very first release. In 2007, as the drafting of GPL 3.0 was nearing completion, some of its authors wanted to change the GPL into a network copyleft model. However, the community decided to leave the "loophole" in GPL 3.0 as it was, and a few months later offered the AGPL as an alternative. Even so, the AGPL was not widely adopted. [MongoDB](https://en.wikipedia.org/wiki/MongoDB), a highly popular distributed database product, is the AGPL's one and only "killer app." Companies initially found the AGPL difficult to understand and accept, but because most users neither modified the software nor offered it as a service, they were able to reasonably decide to use software under the AGPL.

> The Remote Network Interaction clause of AGPL 3.0 only requires you to make the source code of your changes available to remote users over a computer network if you have modified the program. In other words, if you do not modify it, no obligation to disclose source code arises. 

MongoDB used the AGPL under a "[dual licensing](http://monty-says.blogspot.com/2009/08/thoughts-about-dual-licensing-open.html)" business model. It gave licensees a choice between the AGPL and a commercial software license. Users who did not want to comply with the AGPL's requirements, or did not even want to be involved in the legal review needed to comply with them, chose the commercial license. This dual licensing business model was originally developed around a choice between the GPL and a commercial license, but over time the AGPL, with its broader copyleft scope, came to be used in place of the GPL. This licensing model was quite successful for MongoDB. Because the AGPL was the strongest copyleft license, it was useful to MongoDB in driving commercial negotiations. At the same time, the creators of the AGPL criticized the way it was used as a business tool by MongoDB, calling it a "[toxic shakedown](http://ebb.org/bkuhn/blog/)." In any case, even the AGPL's source-sharing condition, powerful as it was considered to be, proved insufficient to stop cloud providers from making large-scale commercial use of open source software while giving nothing back to developers or the community.

## Strip-mining

Just as cloud adoption had "broken" the GPL model, the AGPL dual licensing model also began to come under pressure as cloud computing advanced through the 2010s. This time, the problem was different. The scope of the GPL or AGPL extends only to a single program executable. This "feature" was intentionally designed into the GPL, based on the theory that a copyright license can only specify usage terms for a single work. In other words, the GPL imposes a source-sharing requirement for a derivative work, but not for a collective work. The legal boundary between the two is fairly unclear, but as the GPL grew popular, it became common practice to define a single program as a single executable process. The Free Software Foundation has long asserted this principle in its [GPL FAQ](https://www.gnu.org/licenses/gpl-faq.en.html#MereAggregation).

However, two things happened as cloud services advanced. First, software engineering became more focused on cloud implementation. Whereas cloud providers had once needed to improve or modify software to run it in a cloud environment, as software engineering advanced, cloud providers were able to use existing open source software in a "plug and play" fashion. This allowed cloud providers to shift the locus of innovation away from the primary executable. They developed additional software to manage, monitor, and deploy their software, and this innovation is what let them grow their cloud services. The AGPL did nothing to compel cloud providers to share these kinds of improvements.

In this way, commercial open source companies came to look like a shop the large cloud providers could raid for free. The problem was especially severe for "platform software," or middleware (software that sits between the top-level applications and the operating system in the computing stack). Software in this category is essential to modern computing and extremely useful for cloud implementations.

This gave rise to criticism in the business world of how cloud providers used open source software. In 2018, Salil Deshpande of Bain Capital [said](https://techcrunch.com/2018/09/07/commons-clause-stops-open-source-abuse/), "It is clearly not illegal. But we think it is wrong, and does not do right by the open-source community." Another expert [said](https://onezero.medium.com/open-source-betrayed-industry-leaders-accuse-amazon-of-playing-a-rigged-game-with-aws-67177bc748b7), "AWS is exploiting open source's Achilles heel: taking someone else's creation for free and building a business by renting out access to it." The problem is that none of the major open source licenses prevent software from being used this way.

> When the major open source licenses were drafted, there was no such thing as an AWS-style "program as a service," so their terms could not have accounted for it. 
> 
> Commercial open source companies developed open source programs and ran their business on a dual licensing model (GPL or commercial), while cloud providers simply took those open source programs, offered them as cloud services, and generated no profit for the companies in return. It's easy to imagine this had a negative effect on both the business and development sides.  
> 
> A representative example would be cloud providers offering MongoDB as [Amazon DocumentDB](https://aws.amazon.com/ko/documentdb/) or [Azure Cosmos DB](https://docs.microsoft.com/ko-kr/azure/cosmos-db/introduction) to win over customers.

Commercial open source companies and their investors were troubled by these limitations of the open source model. No license, whether GPL, AGPL, or otherwise, could use copyright law to compel cloud providers to share their changes. In addition, cloud providers with a large customer base, such as AWS, Azure, or Google Cloud, maintained "sticky" relationships with customers by making it easy to add software with the click of a button. Some open source vendors offered their own cloud services, but found it too difficult to compete with large cloud providers using their software for free. Even when an open source vendor's service was superior, customers turned away because using a new service, unlike simply "checking a box" to add a software product within an existing cloud account, carried a transaction cost.

## SSPL and Source-Available Licensing

In 2018, the industry found a breakthrough. As AWS continued to gain popularity by hosting open source platform software, open source vendors began to take action. They changed their licenses.

Open source vendors [responded to the strip-mining problem](https://techcrunch.com/2018/11/29/the-crusade-against-open-source-abuse/) through two different paths.
1. An ultra-strong network copyleft license
2. Source-available licensing with restrictions

Both of these categories were previously undefined. Both were intended to support a dual licensing model, as with MySQL and MongoDB.

### SSPL

MongoDB, which created the [SSPL](https://www.mongodb.com/licensing/server-side-public-license) (Server Side Public License) in 2018, attempted the ultra-strong copyleft approach.

~~~
1.  Offering the Program as a Service.

If you make the functionality of the Program or a modified version 
available to third parties as a service, you must make the Service 
Source Code available via network download to everyone at no charge, 
under the terms of this License. Making the functionality of the 
Program or modified version available to third parties as a service 
includes, without limitation, enabling third parties to interact 
with the functionality of the Program or modified version remotely 
through a computer network, offering a service the value of which 
entirely or primarily derives from the value of the Program or 
modified version, or offering a service that accomplishes for users 
the primary purpose of the Program or modified version.

"Service Source Code" means the Corresponding Source for the Program 
or the modified version, and the Corresponding Source for all programs 
that you use to make the Program or modified version available as a 
service, including, without limitation, management software, user 
interfaces, application program interfaces, automation software, 
monitoring software, backup software, storage software and hosting 
software, all such that a user could run an instance of the service 
using the Service Source Code you make available. [emphasis added].
~~~

This license was written to create an open source solution to the strip-mining problem. Its source-sharing requirement is far broader than that of the AGPL. The scope of this requirement was designed to work like the GPL's requirement even for distributed software. MongoDB applied a dual licensing model under which its software could be used under [either the SSPL or a commercial license](https://www.mongodb.com/community/licensing).

MongoDB submitted the SSPL to the [OSI](https://opensource.org/approval) (Open Source Initiative) for approval. After months of debate it was not approved, but MongoDB continues to use the SSPL as the open source option in its dual licensing model. The discussion of why this license does not fit the [Open Source Definition](https://opensource.org/osd) was complicated, and meeting that definition was not the only criterion at issue. In short, it was not clear whether a license with such a broad source-sharing requirement would "[ensure software freedom](https://opensource.org/approval)."

### Source-Available Licenses with Restrictions

Others followed a different path. Some companies adopted the [Commons Clause](https://commonsclause.com/), led by Salil Deshpande, while others created their own licenses, such as [Redis](https://redislabs.com/legal/licenses/), [Confluent](https://www.confluent.io/confluent-community-license), and [CockroachDB](https://www.cockroachlabs.com/cockroachdb-community-license/), just as Elastic created Elastic License 1.0. Unlike the SSPL, these licenses were not intended to satisfy the Open Source Definition. Instead, they carry restrictions specifically targeting strip-mining.

Why did these two paths diverge? It has to do with [Freedom Zero](https://www.gnu.org/philosophy/free-sw.en.html), "the freedom to run the program as you wish, for any purpose."[^free]

[^free]: The Free Software Definition is similar to the Open Source Definition, but shorter and clearer.

A key feature of open source or Free Software licenses is that they carry no licensing constraints or restrictions.[^limitation] Compare this to a typical commercial software license. An End User License Agreement, the kind you click to accept for personal use, only permits you to use the software; you cannot modify or distribute it. An enterprise license sets limits on the number of users, servers, or physical locations where the software can be used, and requires the company to monitor that usage. Open source licenses have no such restrictions. Therefore, even if the source code is provided for free, a license that carries a restriction such as no commercial use is, by definition, not open source.

[^limitation]: Open source licenses can contain conditions, such as notices or source code sharing. But these are not limitations that tell you what you cannot do with software, they only require that if you elect to do certain things, you also must do others.

In other words, any licensing restriction at all takes a license outside the open source category.

Nearly all of the licenses released as part of the wave of license changes since 2018 carry similar restrictions. Each has its own specific terms, but they all focus on letting users use the software for free while prohibiting its use to offer a competing hosted service.

## Elastic License 2.0

In early 2021, Elasticsearch blazed a path that follows both of these tracks at once. It made its software suite available under two free options: the SSPL and a new [Elastic License 2.0](https://www.elastic.co/licensing/elastic-license) (ELv2).

The new Elastic License 2.0 is short (just one page), written in plain language, and grants nearly all of the freedoms of an open source license. Recipients of the software are free to use, modify, and redistribute it. Even if you have never read a software license before, this one is worth reading.

It has two main restrictions.

~~~
You may not provide the software to third parties as a hosted or 
managed service, where the service provides users with access to 
any substantial set of the features or functionality of the software.

You may not move, change, disable, or circumvent the license key 
functionality in the software, and you may not remove or obscure 
any functionality in the software that is protected by the license key.
~~~

The first restriction is focused on addressing the strip-mining problem. As a result, using the software in violation of this restriction infringes the rights granted for the software.

The second restriction is meant to prohibit hacking the software's license key. This kind of restriction has long been common in software licenses, but it has only just begun to appear in source-available licenses. This clause allows developers to have a paid service interact with software under ELv2, or to protect part of a software component for a paid feature.

The license's other provisions are very straightforward and will be familiar to anyone who has read an open source license.

## Why Use Dual Licensing?

Elasticsearch took the unusual path of letting users choose between the SSPL and the Elastic License. Many companies today use an "open core" model, and in fact Elasticsearch itself used this model before. The distinction between the two can be described as subtle. An open core model offers the core software under an open source license (usually a permissive one, such as Apache 2.0). It then offers additional functionality, usually features useful for enterprise-scale deployment, under a restricted license or only as a service. Elasticsearch, however, stuck with a dual licensing model in which the same software can be used under two different licenses. This dual licensing model was pioneered by MySQL, and it typically uses a copyleft license, such as the GPL, AGPL, or SSPL, as the free licensing option. In recent years, though, this model has fallen out of favor because of the conflict between open source licenses and cloud services.

Elastic's choice was even more unusual in that it offered two free licensing options, the SSPL and Elastic License 2.0. Dual licensing typically offers only one free option. Through this unusual approach, Elasticsearch emphasized the flexibility to let nearly every user use the software for free.

> Elastic License 2.0 appears to reflect a resolve to prevent just one thing: cloud service providers offering Elasticsearch as their own cloud service. 
> 
> In the end, AWS [forked](https://aws.amazon.com/ko/blogs/opensource/stepping-up-for-a-truly-open-source-elasticsearch/) Elasticsearch to keep offering its Elasticsearch service, naming it [Open Distro for Elasticsearch](https://opendistro.github.io/for-elasticsearch/), applying the Apache License 2.0, and setting out to grow its own community. 
> 
> Who, then, is actually contributing to the sustainability and advancement of open source?

## Elastic License 2.0 and Modern Licensing Techniques

Elasticsearch moved to a new licensing model in order to remain as open as possible while maintaining a business model that is fair and sustainable for both users and developers. In doing so, it reflected the goals and aspirations of other participants in the source-available movement when drafting the license.

As summarized in the [FAQ on the license change](https://www.elastic.co/licensing/elastic-license/faq), Elastic's license change is not expected to affect the number of customers or community users. Most users build applications on top of Elastic's software, which is not a business of "providing [the software] to third parties as a hosted or managed service."

## Building a Better License

In addition, by devoting resources to drafting Elastic License 2.0, Elastic pursued an advance in the craft of license drafting itself. In a sense, source-available licensing is as old as software itself. In fact, binary-only licensing was a product of PC/Mac platform standardization in the 1980s. Before that, nearly all software was licensed in source code form. Over time, however, the form and method of license distribution changed considerably.

Elastic License 2.0 is the culmination of this trend. In form, it adopts the simple, intuitive drafting style and template most popular among open source licenses. It also, through its license key preservation clause, makes it easy for vendors to license software with both free and paid features.

Much like the many incompatible proprietary versions that split off from Unix decades ago, proprietary licenses are a patchwork stitched together from all manner of separate terms and conditions. Even a simple end user license for an ordinary consumer software product is typically so long and obscure that most users cannot understand it. Many say that [nobody reads them at all](https://en.wikipedia.org/wiki/HumancentiPad). Yet most of this complexity is unnecessary. Open source licenses, particularly permissive ones, have taken this lesson to heart. A simple set of rules should be enough, and the easier a license is to understand, the more likely users are to respect it.

Not only is Elastic License 2.0 short, simple, and easy to understand, but people can also [use it as a template](https://www.elastic.co/blog/elastic-license-v2). Since the debate over preventing strip-mining began, demand has grown for licenses that are frictionless, carry reasonable restrictions, and are simple and understandable. However, most small software companies lack the resources to draft their own license. It is no surprise that many software startups are looking to licenses like Elastic License 2.0 and the Confluent Community License as models they can adopt.

This space has been popularized by [Fair Code](https://faircode.io/), which has established a standard for it. Fair Code states the following.

~~~
Fair-code is not a software license. 
It describes a software model where software:

* is generally free to use and can be distributed by anybody
* has its source code openly available
* can be extended by anybody in public and private communities
* is commercially restricted by its authors
~~~

This initiative is still in its early stages, but it clearly shows that the industry is beginning to recognize the need for a paradigm that is fair to both users and developers, and that it is enabling commercial open source companies to strike that balance in a more flexible way than the open source model alone. One expert has even called this recent evolution in licensing the "[post-open-source era](https://monetize.substack.com/p/open-source-eras)." In practice, however, these source-available licenses are typically used alongside open source licenses as business and licensing models continue to evolve. The two models are therefore not strict substitutes but complements.

There is also another standardized licensing option. In 2020, a group of attorneys launched the [PolyForm Project](http://www.polyformproject.org/) to draft a collection of source-available license templates. These licenses were peer reviewed by attorneys experienced in both open source and proprietary licensing. Much like [Creative Commons](https://creativecommons.org/) for open content licensing, it offers a menu of options, including non-commercial, evaluation-only, and anti-competition licenses. Like Elastic License 2.0, all of them provide free access to source code and grant the necessary patent license. PolyForm Perimeter and PolyForm Shield resemble their forebear, the Confluent Community License, and Elastic License 2.0 has advanced the options available along this same trend.

If you have questions or would like to learn more, refer to the following resources.

**"The rise of open source IPOs"** https://coss.media/rise-of-the-open-source-ipo/. This article tracks some of the spectacular business successes of open source companies.

**"The After Open Source Era Has Started"** https://monetize.substack.com/p/open-source-eras . This article discusses the sea change represented by companies moving to source available licenses.

**US House of Representatives Committee on the Judiciary's report on investigation into competition in digital markets, spearheaded by the Subcommittee on Antitrust, Commercial and Administrative Law.** https://www.documentcloud.org/documents/7222836-Investigation-of-Competition-in-Digital-Markets.html. Note the mention of Elasticsearch on page 326.
