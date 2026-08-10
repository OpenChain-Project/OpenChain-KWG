---
date: 2021-05-04
title: "Distribution of Dockerfiles: Who Is Responsible for Compliance?"
linkTitle: "Distribution of Dockerfiles"
slug: dockerfiles
description: "Distribution of Dockerfiles: Who is responsible for FOSS Licence Compliance?"
author: Haksung Jang ([@haksungjang](https://haksungjang.github.io/)) / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
categories: ["blog"]
tags: ["docker"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:

---

> Hello!  
> 
> In April 2021, Till Jaeger, a well-known German open source lawyer, [published](https://jolts.world/index.php/jolts/article/view/147) an article on who is responsible for the license compliance of the open source software included in the Docker image generated from a Dockerfile. Based on German law and the case law of the Court of Justice of the European Union (CJEU), Till explains that the Dockerfile provider must comply with license obligations. 
> 
> This is a Korean translation of Till's original English text. I added images to aid understanding, and here and there I added my own personal comments as blockquotes (in the polite register). 
> 
> * If you find translation errors or have questions, please contact me by email at haksung@sk.com 
> * I am deeply grateful to [Sean](https://www.linkedin.com/in/%EC%98%81%ED%99%98-%EA%B9%80-4069b5135/) of Kakao for his help reviewing this translation. ^^

---

{{% pageinfo %}}
This paper was translated by Haksung Jang from the English version available at the [Distribution of Dockerfiles: ](https://jolts.world/index.php/jolts/article/view/147).  The original document is licensed under [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/). The original author, Till Jaeger, has not reviewed this translation.
{{% /pageinfo %}}


{{% alert title="Abstract" color="success" %}}
Container technology enables integrated software distribution regardless of the target system. Because of this advantage, distributions using Docker are becoming more and more popular. This, however, raises a new question about FOSS license compliance. In a Docker environment, it is possible not only to distribute the entire software in the form of a "Docker image," but also to distribute only a Dockerfile. A Dockerfile, similar to a script file, contains only a kind of instructions that cause software to be downloaded from an external repository. This form of decentralized distribution raises the question of who is responsible for license compliance. This article explains the concept of "distribution" under European copyright law as a starting point for discussing free licenses. The research reveals that distribution in the sense of copyright law does not always have to be physical distribution. 

This article is funded by [OSADL](https://www.osadl.org/) (Open Source Automation Development Lab) and was co-authored. 
{{% /alert %}}


## 1. Introduction and the Problem

FOSS license compliance issues related to Docker technology have been a major subject of research in recent years. In particular, Armijn Hemel's white paper, "[Docker Containers for Legal Professionals](https://www.linuxfoundation.org/wp-content/uploads/Docker-Containers-for-Legal-Professionals-Whitepaper_042420.pdf)"[^armijn], which explains the technical foundations of Docker and raises related license compliance issues, provides an extensive analysis. Hemel openly raised the question of who is responsible for the license compliance of the software components that a recipient of a Dockerfile downloads from a third party in order to use the Dockerfile. 

[^armijn]: Hemel, Armijn, (2020), ‘Docker Containers for Legal Professionals,’ [pdf] Available at: <https://www.linuxfoundation.org/wp-content/uploads/Docker-Containers-for-Legal-Professionals-Whitepaper_042420.pdf> [Accessed 16 February 2021]. See also Peterson, Scott, (2020), ‘Making compliance scalable in a container world.’ Available at: <https://opensource.com/article/20/7/compliance-containers> [Accessed 16 February 2021].

Almost all FOSS licenses tie compliance with license obligations to "distribution" (or, in the case of GPL-3.0, "conveying"). Because most licenses do not further define what "distribution" or "conveying" means within the license itself, the definition of "distribution" must be determined by reference to the applicable copyright law[^convey]. 

[^convey]: Sec. 0 GPL-3.0 provides as follows: “To ‘convey'‘ a work means any kind of propagation that enables other parties to make or receive copies.” and “To ’propagate’ a work means to do anything with it that, without permission, would make you directly or secondarily liable for infringement under applicable copyright law, except executing it on a computer or modifying a private copy.”

> Most open source licenses require compliance with license obligations at the point when open source software is "redistributed." In other words, if the open source software is not redistributed, compliance with license obligations is not required.
> How far the scope of "distribution" extends must be interpreted according to the copyright law applicable in the relevant jurisdiction. 

Because of its importance to license compliance, the term "distribution" continues to be the subject of legal analysis. Heather Meeker wrote about [distribution in open source licenses](http://dx.doi.org/10.5033/ifosslr.v4i1.66) from the perspective of U.S. copyright law[^heather]. Although many open source licenses were drafted against the background of U.S. copyright law, European courts are expected to rule based on the definition of "distribution" elaborated by the CJEU.

[^heather]: Meeker, Heather (2012), ‘The Gift that Keeps on Giving – Distribution and Copyleft in Open Source Software Licenses’, JOLTS, 4(1), pp 29 – 40, [DOI: 10.5033/ifosslr.v4i1.66].

This article first provides an overview of the technical fundamentals of Docker and an interpretation of the term "distribution" under European copyright law. It then discusses who should be responsible for license compliance when distributing a Dockerfile. 

## 2. Technical Background of Docker

Docker is a technology for installing and distributing programs in containers. It has the advantage that all dependencies exist within a single technical unit and are largely independent of the host system. Unlike virtualization through a hypervisor, a Docker container does not include an operating system kernel. Instead, a specific operating system command causes the container's file system tree to be displayed as the root directory for all programs in the container. As a result, the rest of the file system outside the container remains invisible to programs inside the container. Docker containers require a Unix-family operating system and are mainly intended for use with the Linux kernel. 

### Docker image

A preconfigured container can be distributed as a "Docker image," which, in addition to the base program, may also include applications, dependencies as program code, and, where necessary, utilities and configuration files. A Docker image can be distributed individually, but it can also be distributed through a public repository such as "Docker Hub." The same applies to what is known as a "Base Image," which includes essential system components such as C libraries, a package manager, a shell, and a directory tree, and which refers to a specific Linux distribution. On top of this Base image, additional functionality can be distributed separately as individual archive files, but it can also be added as so-called "layers" that are built on top of one another to form a complete Docker image.

{{< imgproc image-layer Fit "768x768" >}}
<center><i>**Figure 1.** Layer storage method: https://cultivo-hy.github.io/docker/image/usage/2019/03/14/Docker정리/</i></center>
{{< /imgproc >}}


### Dockerfile

A "Dockerfile" is a text file that, similar to a script, contains step-by-step instructions for building a Docker image. A Dockerfile generally can have its own license that applies only to the Dockerfile itself, and this license does not apply to the programs included in the Docker container. 

{{< imgproc featured-dockerfile-ex Fit "768x768" >}}
<center><i>**Figure 2.** Dockerfile: https://www.slideshare.net/vincenzoferme/using-docker-containers-to-improve-reproducibility-in-software-and-web-engineering</i></center>
{{< /imgproc >}}

### The Docker Engine

The "Docker Engine," the management software for Docker containers, processes the instructions in a Dockerfile sequentially to generate a Docker image. Typically, each component for the Base image or the individual layers is downloaded from an internal or external repository. This means that it is possible for a provider to supply a Dockerfile without transmitting the physical program code, and this is in fact common practice. Using the Dockerfile they receive, customers can build a Docker container by independently obtaining all or part of the program code from a public repository. 

{{< imgproc docker Fit "768x768" >}}
<center><i>**Figure 3.** https://cultivatehq.com/posts/docker/</i></center>
{{< /imgproc >}}

This raises the question of whether, and which, license obligations the Dockerfile provider must comply with for the FOSS included in a Docker image built using such a Dockerfile. 

## 3. Legal Background - The Right of Distribution under EU Law

Almost all FOSS licenses, under copyright law, require compliance with license obligations as a condition for the act of distributing or conveying software. In other words, license obligations must be complied with when a copy of the program is transferred to a third party. Some licenses include a definition of "distribution" within the license itself (for example, GPL-3.0 includes a definition of the term "convey"), but most licenses do not define this. It is therefore common to refer to how the applicable copyright law interprets distribution. In Germany, §69c no. 3 UrhG of the German Copyright Act uses the term "`Verbreitung`" and defines distribution as "any form of distributing the original or copies of a computer program (including rental)." Here, "`Verbreitung`" can be understood, as in §17 (1) UrhG, as granting the right to make use of a work generally, not only a computer program.

{{% alert color="success" %}}
<i>"The right of distribution is the right to offer the original or copies of the work to the public or to put it into circulation."</i>
{{% /alert %}}

This was interpreted in light of Article 4 of the [Directive 2009/24/EG](https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32009L0024) of the European Parliament and of the Council on the legal protection of computer programs[^directive2009]. The highest German and European courts, the German Federal Court of Justice (Bundesgerichtshof, BGH) and the CJEU, have made numerous contributions in their judgments that help interpret the right of distribution. This is explained in more detail below. 

[^directive2009]: Directive 2009/24/EC on the legal protection of computer programs (codified version). Available at: <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32009L0024> [Accessed 16 February 2021].

## 4. Distribution of Dockerfiles - Analysis

This section first examines whether distribution under copyright law necessarily requires the physical transmission of program code. It then discusses the various components of a Docker image, namely the Base image, program libraries, patches, and updates. 

### 4.1 Is Distribution Only the Physical Distribution of Program Code? 

Not only in the first case below, but also in the second case, responsibility for "distribution" lies with the Dockerfile provider. 
- The "physical" distribution of a program copy, the concept of distribution as defined in copyright law
- Any other act that causes a third party to obtain a copy of the program

Note that the highest German and EU courts have frequently held that both of the following must be considered. 
- The physical act
- A third party who physically performs an act that is legally relevant to reproduction or distribution is regarded merely as a "tool" of the party concerned

This aspect includes, in particular, the organizational control that the CJEU calls an "essential role"[^opinion]. One example is the BGH's judgment on an "internet radio music recording service." That judgment addressed whether the fully automated recording of digital radio stations by an internet service constitutes a personal copy of the client (permitted) or a copy made by the service provider (not permitted). On this point, the BGH stated as follows[^bgh20200305]: 

[^opinion]: See the ‘Opinion of Advocate General Saugmandsgaard Øe in the joined Cases C‑682/18 and C‑683/18 (Frank Peterson v Google LLC et al), ECLI:EU:C:2020:586. Available at: <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:62018CC0682> [Accessed 16 February 2021].

{{% alert title="BGH, judgment of 2020-03-05" color="success" %}}
<i>"In this context, the decisive factor is whether the manufacturer is limited to 'taking the place of the reproduction device' and acting as a 'necessary tool' of the other party - in which case the reproduction is to be attributed to the purchaser - or whether he opens up a copyright-relevant use to an extent and intensity that cannot be reconciled with the considerations that justify the privileges of private use - then the reproduction is to be attributed to the manufacturer. Within the framework of this examination, which is based on normative standards, it must also be determined whether the client has organizational sovereignty over the recording process."</i>
{{% /alert %}} 

[^bgh20200305]: BGH (German Federal Court of Justice), judgment of 2020-03-05 - I ZR 32/19 – Internet radio recorder. Available at: <https://openjur.de/u/2202077.html> [Accessed 16 February 2021].

> For more details on the internet radio music recording service, see the Korea Copyright Commission's [2019 material](http://www.copyright.or.kr/information-materials/trend/the-copyright/download.do?brdctsno=44381&brdctsfileno=15929)[^streaming].   
> 
> The plaintiff in this judgment was the record producer Sony Music Germany, and the defendant was MusicMonster.FM, which operates a service that records and provides music broadcast on internet radio.   
> 
> The German court ruled that, because the defendant's service went beyond simply providing the technical means for reproduction and exceeded the scope justified by private use, the defendant was the actor performing the reproduction and communication to the public, and that the defendant had infringed the plaintiff's reproduction right and right of communication to the public. 

[^streaming]: A German district court rules that a provider of internet radio music recording (stream ripping) services infringes the reproduction right and the right of communication to the public: http://www.copyright.or.kr/information-materials/trend/the-copyright/download.do?brdctsno=44381&brdctsfileno=15929

The CJEU relied on several determinations as to who performed the "essential role" in relation to acts of copyright infringement. This is particularly evident in §17 UrhG (German Copyright Act). The UrhG designates a mere "offer," that is, a preparatory act of a physical distribution, as itself an act of distribution[^CJEU20150513]. 

{{% alert title="CJEU of 2015-05-13" color="success" %}}
<i>"Taking that context into account, the Court specifically found that distribution to the public is characterised by a series of acts going, at the very least, from the conclusion of a contract of sale to the performance thereof by delivery to a member of the public. A trader in such circumstances bears responsibility for any act carried out by him or on his behalf giving rise to a distribution to the public in a Member State where the goods distributed are protected by copyright. … As regards an invitation to submit an offer, or a non-binding advertisement for a protected object, those also fall under the series of acts taken with the objective of making a sale of that object. … In the light of the foregoing considerations, the answer to the questions referred is that Article 4(1) of Directive 2001/29 must be interpreted as meaning that it allows a holder of an exclusive right to distribute a protected work to prevent an offer for sale or a targeted advertisement of the original or a copy of that work, even if it is not established that that advertisement gave rise to the purchase of the protected work by an EU buyer, in so far as that that advertisement invites consumers of the Member State in which that work is protected by copyright to purchase it."</i>
{{% /alert %}} 

[^CJEU20150513]: CJEU of 2015-05-13, C-516/13 – Dimensione Direct Sales and Labianca. Available at:
<https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:62013CJ0516&qid=1607613372933&from=EN> [Accessed 16 February 2021].

This CJEU judgment, and others, show that not only technical distribution but also preparatory acts for distribution can constitute distribution, at least where the distributor plays an "essential role" in the distribution process. This is exactly the case with a Dockerfile. Because a Dockerfile provides organized instructions for transmitting a complete functioning system to the Dockerfile's recipient (depending on its intended use), the Dockerfile provider plays an essential role in the distribution of the software included in the Docker image. In this respect, it is the Dockerfile provider who holds organizational control. Accordingly, the Dockerfile provider must comply with the license obligations of the FOSS (to be included in the Docker image) that is distributed in this form.

The fact that the Dockerfile provider distributes the software referenced by the Dockerfile does not conflict with the fact that the operator of the repository from which the Base image or layers can be downloaded also performs an act of distributing the program code, or "makes it available to the public," respectively[^distributionright]. This is because most Base images or layers are offered not only for a specific container but also as a general download. In the case of a general download, it is the individual or entity providing the Base image or layer through the repository - rather than the repository operator - that can potentially be regarded as performing the act of distribution (or communication to the public). 

[^distributionright]: Please not that the “Right of communication to the public of works and right of making available to the public” in Art. 3 are independent rights from the “distribution right” in Art. 4 Directive 2001/29/EC. Available at: <https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32001L0029> [Accessed 16 February 2021].

### 4.2 Patches

Using an additional layer, an already-installed program can also be modified. In this case, the Docker container includes the unmodified program in one layer and the modified program in another layer, so that the modified program is run. Even in this situation, the Dockerfile provider must bear responsibility for the "essential role," because the modifications to be applied are defined in the Dockerfile. Accordingly, the Dockerfile provider must comply with the license obligations for the modifications.

It should be noted that, because both versions are distributed to the recipient (even if only the modified version is actually used), this applies to the original version as well as the modified version[^armijn19]. The same is true even where the program is removed by a new layer but remains physically included in the Docker image.

[^armijn19]: See Hemel Armijn, ibid n. 1, p. 19.


### 4.3 System Requirements and the Base Image

#### System Requirements

This section starts from the premise that an open source license does not extend to granting permission to use independent programs that are necessary to use the open source software but are not included within the scope of the license. A representative example is the operating system or web server needed to run an application. Such independent programs necessary to run an application will be referred to as "system requirements." A provider who distributes a Dockerfile is not responsible for complying with the license obligations for system requirements such as the Docker Engine or the Linux kernel. Such system requirements are not even referenced in the Dockerfile.

> For reference, Section 3 of GPL-2.0 provides the following exception, under which major components of the operating system, such as the compiler and kernel, are not included within the scope of source code disclosure. 
> 
> <i>"3. However, as a special exception, the source code distributed need not include anything that is normally distributed (in either source or binary form) with the major components (compiler, kernel, and so on) of the operating system on which the executable runs, unless that component itself accompanies the executable."</i>
> 
> https://www.gnu.org/licenses/old-licenses/gpl-2.0.html

#### Base image

Can a Base image also be regarded as a system requirement? Generally, the programs included in a Base image are independent of the application running in the Docker container. As long as the programs included in the Base image are used unmodified, the Base image can be regarded as a system requirement even though the Dockerfile contains a download instruction, because the Dockerfile provider is not the provider of the Base image. Furthermore, if the repository operator denies access, the download is no longer possible. In light of these facts, the Base image is outside the Dockerfile provider's control. The situation is similar for patches, but patches and system requirements must be treated differently. 

Computer programs generally operate together with other independent programs. This is a characteristic that distinguishes them from other forms of work. For example, most applications do not run without an operating system. However, the fact that system requirements must be installed to run such an application does not mean that the application provider plays an essential role in distributing the system requirements.

This situation is somewhat similar to that of a download link. Whether a link to download a copyrighted work constitutes an act relevant under copyright law - that is, an act of communication to the public (and therefore potentially giving rise to copyright infringement) - is a fiercely debated issue in the EU. The CJEU has established a set of complex criteria on this point[^cjeu14]. These criteria present, among others, the following case-by-case questions: whether the work is made available to a new group of purchasers, whether the intended use is commercial, whether the act plays an important role in the offer, and whether the offer is illegal. Because the matter must be addressed case by case in this way, a comprehensive judgment is almost impossible. In fact, Member States have not commonly taken these criteria into account. Nevertheless, these criteria were likely established out of the CJEU's desire to better harmonize the legal situation regarding internet copyright.

[^cjeu14]: As the CJEU, judgment of 14 June 2017 in case C-610/15 – Stichting Brein (The Pirate Bay) itself declares: “In order to determine whether a user is making a ‘communication to the public’ within the meaning of Article 3(1) of Directive 2001/29, it is necessary to take into account several complementary criteria, which are not autonomous and are interdependent. Consequently, those criteria must be applied both individually and in their interaction with one another, since they may, in different situations, be present to widely varying degrees.” Available at: <http://curia.europa.eu/juris/liste.jsf?language=en&T,F&num=c-610-15> [Accessed 16 February 2021].

According to the view presented so far, the operator and provider of the Base image repository play an essential role in the distribution of the Base image, whereas a Base image that the Dockerfile merely references serves only to make it easy to obtain the system requirements. Therefore, it is the repository operator who performs the act of communication to the public, and it is the repository operator - at least where this provision is lawful - who must solely comply with the license obligations of the FOSS included.

The interpretation described above is the legal opinion of this article's author. There is generally no case law on this specific situation with respect to computer programs, and Dockerfiles in particular. Other interpretations are certainly open to debate (in particular, the view that all referenced layers, including the Base image, are distributed by the Dockerfile provider). 

One point worth mentioning is that many repository operators currently do not properly comply with the license obligations of FOSS (for example, by failing to properly provide the source code for GPL and LGPL components), which gives rise to liability for copyright infringement. In this case, if the Dockerfile provider knows, or should know, of the license violation, providing a Dockerfile that includes a reference in violation of the license may be regarded as an independent act of distribution, or at least as contributory copyright infringement (that is, inciting or aiding the license violation). Accordingly, the Dockerfile provider should review whether the Base image provided by the designated repository complies with the license[^redhat]. 

A recipient who intends to use a Docker image solely within their own organization can use it without issue, because the mere execution of a FOSS program is not restricted. For example, Section 4 of GPL-2.0 states this clearly[^gpl-4]. However, if the recipient intends to redistribute the Docker image, the recipient who wishes to redistribute it must ensure compliance with the license terms, because the distribution right is not exhausted where the distribution of the Dockerfile infringes copyright (see section 4.6 below). 

[^redhat]: For efforts of Red Hat to improve the situation see Peterson, S., ibid.
[^gpl-4]: "However, parties who have received copies, or rights, from you under this License will not have their licenses terminated so long as such parties remain in full compliance."


### 4.4 Program Libraries

In the case of a library linked with a program, there is some difference of opinion as to whether the library is regarded as an independent program or becomes part of the linked program[^link]. In this context, a distinction can be made as follows. 

[^link]: See for more details Jaeger, Till and Metzger, Aaxel, Open Source Software, 5th edition, 2020, 64 et seq; Meeker, Heather, Open Source for Business, A practical Guide to Open Source Software Licensing, 3rd edition 2020, 119 et seq; Working Paper on the legal implication of certain forms of
Software Interactions (a.k.a linking), Available at:  <https://www.ifosslr.org/public/LinkingDocument.odt> [Accessed 16 February 2021].

* System libraries
* Non-system libraries linked with GPL and AGPL applications
* Non-system libraries linked with applications under licenses other than GPL and AGPL


GPL-2.0 Section 3 and GPL-3.0 Section 1(3) include a provision exempting "System Libraries" from the scope of the obligation to provide source code among the license obligations[^exemption]. Accordingly, where a Dockerfile includes an instruction to use such unmodified system libraries in a Docker container, there is no need to comply with license obligations for these system libraries. The legal situation for such system libraries is therefore the same as that applying to a Base image (see 4.3 above), in which case the essential role for distribution does not lie with the Dockerfile provider.

[^exemption]: The definition in section 1 GPL-3.0 reads as follows: ’The “System Libraries’ of an executable work include anything, other than the work as a whole, that (a) is included in the normal form of packaging a Major Component, but which is not part of that Major Component, and (b) serves only to enable use of the work with that Major Component, or to implement a Standard Interface for which an implementation is available to the public in source code form. A ‘Major Component’, in this context, means a major essential component (kernel, window system, and so on) of the specific operating system (if any) on which the executable work runs, or a compiler used to produce the work, or an object code interpreter used to run it.”


However, if a Dockerfile downloads a library (other than a system library) from a third-party repository, and specifies a layer that links this library with a GPL-3.0 or AGPL-3.0 application within the Docker container, then the obligations of the license (GPL-3.0 or AGPL-3.0) of the respective linked application must be complied with for this library. For example, the library's source code must be provided (cf. section 1 GPL-3.0: "Corresponding Source includes ..., and the source code for shared libraries and dynamically linked subprograms that the work is specifically designed to require, ..."). The same applies equally under GPL-2.0. As in the case of the library's physical distribution, the applicable license terms must be complied with (provided there is no license conflict issue). In other words, the copyleft requirements cannot be circumvented through a decentralized distribution process.

Because the Dockerfile provider has organizational control over the selection of a program library as a dependency, it can be concluded that the Dockerfile provider distributes the program library. Accordingly, the Dockerfile provider plays an essential role in the process of distributing the program library. 

### 4.5 Updates

How updates are treated depends on whether the Dockerfile provider controls the update. If the Dockerfile provider (or an agent) uploads the update directly to the repository so that the Dockerfile's recipient can retrieve it, the Dockerfile provider can be regarded as distributing the update. By contrast, if the update is provided under the control of the repository operator (for example, where the Dockerfile references the "latest version"), this is not distribution by the Dockerfile provider. In this case, in contrast to the situation where the Dockerfile provider selects a program version and names it within the Dockerfile, the Dockerfile provider has no influence over the content of the update.

### 4.6 When License Obligations Must Be Fulfilled

License obligations must be complied with at the point of distribution (or communication to the public). Because a preparatory act within the same series of distribution steps, such as the delivery of a Dockerfile, may already be regarded as distribution, strictly speaking, license obligations must be fulfilled at the time the Dockerfile is delivered. However, open source licenses can be interpreted in a way that treats compliance with license obligations at the time of downloading from the repository as sufficient. This interpretation is further supported by the fact that, particularly at the time a Dockerfile is distributed, it is not clear what program code will be included in the layers to be downloaded - for example, where a program version is specified as "latest."

However, if the relevant repository does not fully satisfy the license obligations, it is advisable for the Dockerfile provider to independently comply with the license obligations and to provide, together with the Dockerfile, a file containing the necessary essential information (for example, the license text, copyright notices, and the provision of source code).

## 5. Conclusion

* The Dockerfile provider is responsible for compliance with the license terms of the FOSS included in the Docker container during the process of building/running the Dockerfile. Even where the Dockerfile's recipient downloads the software from an external public repository, this does not relieve the Dockerfile provider of responsibility. 
* Case law of the Court of Justice of the European Union shows that providing a Dockerfile constitutes a preparatory act, and that this is included within "distribution." 
* However, in light of the particular nature of the interaction between computer programs, the Dockerfile provider is not responsible for license compliance with respect to "system requirements" such as the operating system and the web server. 
* That said, if a Docker layer is provided from a repository in a state that does not comply with the FOSS license, this also creates risk for the Dockerfile provider who references it. 
* Accordingly, FOSS license compliance is a matter for which the Dockerfile provider and the distributor who published the Docker layer to the public repository are jointly responsible.

{{% alert title="About the author" color="success" %}}
<i><b>Till Jaeger</b> has been a partner at JBB Rechtsanwälte since 2001 (www.jbb.de). He is a Certified Copyright and Media Law Attorney and advises large and medium-sized IT businesses as well as government authorities and software developers on matters involving contracts, licensing and IP rights.

One particular focus of Till Jaeger's work is on the legal issues created by free and open source software (FOSS). He is co-founder of the Institute for Legal Aspects of Free & Open Source Software, ifrOSS (www.ifross.org), contributing to its work with academic publications, lectures and seminars in the fields of software law and copyright law.

Till Jaeger is a lecturer at the Humboldt University Berlin in the subjects of IT law and IP law and general counsel of Open Source Automation Development Lab (OSADL) eG.

He represented the gpl-violations.org project in several lawsuits to enforce the GPL and has published articles and books related to legal questions of Free and Open Source Software (among them Jaeger/Metzger, Open Source Software - Rechtliche Rahmenbedingungen der Freien Software, 5th ed. Munich 2020, and Van den Brande/Coughlan/Jaeger - The International FOSS Law Book, 2nd ed. Munich 2014). He was member of the Committee C in the GPLv3 drafting process.</i>
{{% /alert %}} 

{{% pageinfo %}}

<b>Licence and Attribution</b>

This paper was published in the Journal of Open Law, Technology, & Society, Volume 12, Issue 1 (April 2021). It originally appeared online at http://www.jolts.world

This article should be cited as follows:

Jaeger, Till (2021) 'Distribution of Dockerfiles: Who is responsible for FOSS License Compliance?', Journal of Open Law, Technology, & Society, 12(1), pp 13 – 20
DOI: 10.5033/jolts.v12i1.147

Copyright © 2021 Till Jaeger

This article is licensed under a Creative Commons Attribution 4.0 CC-BY available at

https://creativecommons.org/licenses/by/4.0/

![cc](./cc.png)

{{% /pageinfo %}}
