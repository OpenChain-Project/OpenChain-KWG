---
date: 2025-01-13
title: "The AVM Lawsuit: Revisiting LGPL-2.1 User Rights and the Obligation to Provide Installation Information"
linkTitle: "The AVM Lawsuit: Revisiting LGPL-2.1 User Rights and the Obligation to Provide Installation Information"
description: 
author: Haksung Jang / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
categories: ["blog"]
tags: ["Dispute Cases", "LGPL", "AVM"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---


> This post is based on Ars Technica's article ["German router maker is latest company to inadvertently clarify the LGPL license"](https://arstechnica.com/gadgets/2025/01/suing-wi-fi-router-makers-remains-a-necessary-part-of-open-source-license-law/). The article covers the details of the lawsuit between AVM and Sebastian Steck and the importance of LGPL license compliance.

## 1. Case Overview

On January 9, 2025, the Software Freedom Conservancy (SFC) [announced](https://sfconservancy.org/news/2025/jan/09/avm-copyleft-lawsuit-resolved-with-install/) that the lawsuit it had filed against AVM, a German network equipment manufacturer, had concluded. The core of this lawsuit concerned the rights of users specified in the GNU Lesser General Public License (LGPL) version 2.1, particularly the obligation to provide installation information.

![](./featured_AVM.png)

Sebastian Steck, a German software developer, purchased an AVM router in May 2021 and discovered that the source code provided by AVM did not allow him to reinstall modified software on the router. Steck demanded that AVM "provide the complete source code and the compilation and installation scripts for the uClibc, libblkid, libexif, and libosip2 libraries." When AVM failed to remedy this, Steck filed a lawsuit in a Berlin court in July 2023.

As a result of the lawsuit, the German court ordered AVM to pay Steck's attorney's fees. AVM decided not to appeal this decision. The ruling specifies the allocation of litigation costs, which reflects the economic value and importance of open source license compliance issues.


> **Disclaimer:** 
> 
> *This post was not written by a legal professional and cannot be used as a legal basis. For specific situations related to license and legal issues, please be sure to seek advice from a legal professional. Also, this post was written based on publicly available information and may not reflect the positions of all parties to the lawsuit. Please refer to the original text for the full content and context of the ruling.*


## 2. Background and Progress of the Lawsuit

### Background

In May 2021, German software developer Sebastian Steck purchased AVM's popular [Fritz!Box 4020](https://en.avm.de/products/fritzbox/fritzbox-4020/) router. Steck requested the source code used in the firmware of this router, and this is where the problem arose. The source code AVM provided did not allow him to reinstall modified software on the router.


### Legal Basis of the Lawsuit

An important characteristic of this lawsuit is that Sebastian Steck was able to file the lawsuit even though he was not the copyright holder of the LGPL-2.1 software. This is because the LGPL-2.1 license has the character of a contract for the benefit of third parties. According to the [complaint](https://sfconservancy.org/static/docs/avm-Complaint_Klageschrift_EN.pdf), users also have the right to receive the source code under LGPL-2.1:

"This license agreement represents a genuine contract in favor of third parties in accordance with Section 328 of the German Civil Code (BGB), namely in favor of the users who receive the software in object code and, in accordance with the wording of the LGPL-2.1 license conditions to be handed over to them, have a direct right to the transfer of the complete corresponding source code."

This legal basis significantly strengthens the rights of open source software users. When a manufacturer fails to properly fulfill its license obligations, not only the copyright holder but also ordinary users can now take legal action.

### Progress of the Lawsuit

1. May 7, 2021: Steck requested the source code for firmware version 6.83 of the Fritz!Box 4020 from AVM
2. May 11, 2021: An AVM subsidiary provided a source code download link
3. May 14, 2021: Steck pointed out the incompleteness of the provided source code and demanded a correction
4. January 12, 2023: Steck's attorney explained the legal situation to AVM and demanded correction of the source code
5. March 9, 2023: Steck additionally requested the source code for firmware version 7.02
6. July 27, 2023: Steck filed a lawsuit in the Berlin Regional Court
7. Several months after the lawsuit was filed: AVM provided Steck with all the source code requested, including "the scripts that control library installation"
8. January 9, 2025: The German court ordered AVM to pay Steck's attorney's fees. This decision includes a ruling on litigation costs, and AVM decided not to appeal this decision

### The Plaintiff's Claims

The violations of LGPL-2.1 by AVM that Sebastian Steck raised in the complaint are as follows:

1. Failure to provide compilation and installation scripts: The source code AVM initially provided lacked the compilation and installation scripts required by LGPL-2.1. These scripts are an essential element needed to convert the source code into an executable program and install that program on the device.

2. Failure to provide environment variable information: Environment variable configuration information such as KERNEL_LAYOUT, which is essential to the compilation process, was not provided. Environment variables are important information that configure the environment in which a program runs, and without them the source code cannot be compiled properly.

3. Inability to install permanently: The information AVM provided did not allow permanent installation of the modified library on the Fritz!Box. Steck argued that this violates a core requirement of LGPL-2.1, namely that users must be able to continuously use modified software on their own device.

4. Inability to build a firmware image: The provided source code did not allow building an installable firmware image for the Fritz!Box. A firmware image is a file containing the router's operating system and functionality, and being unable to build one effectively means the software cannot be modified and reinstalled.

Steck argued that these matters infringe on "user software freedom," a core principle of the LGPL-2.1 license. According to his argument, merely providing the source code is not enough; users must be able to actually modify the code and reinstall it on the device.


> [Note] An excerpt from the [complaint](https://sfconservancy.org/static/docs/avm-Complaint_Klageschrift_EN.pdf) disclosed by SFC:
> 
> "The information required for the reinstallation of the compiled program libraries on the Fritz!Box ("installation script") was also deliberately withheld from the plaintiff. Upon request, the plaintiff only received information that could be used to load the libraries in dispute into the working memory (RAM). However, this is not a sufficient installation on the Fritz!Box because the copy is only created temporarily, meaning "fleetingly [volatile]." When the Fritz!Box is switched off and restarted, the modified versions of the LGPL 2.1 libraries would no longer be present on the device, and the versions created by the defendant would be used instead. This is diametrically opposed to the purpose of the LGPL-2.1, namely, to be able to customize and reinstall the software."
> 

## 3. Summary of the Ruling

The ruling includes a decision on litigation costs and specifies that AVM must pay Steck's attorney's fees. This reflects the economic value and importance of open source license compliance issues. AVM decided not to appeal this decision.


## 4. Implications and Various Interpretations

1. **LGPL-2.1's obligation to provide installation information**:
   The complaint raised the claim that AVM must provide installation information under the LGPL-2.1 license. This includes the scripts or information needed to actually make the source code usable. The ruling does not explicitly include this content, but the decision to burden the defendant with litigation costs during the proceedings reflects the strengthening of user rights and the importance of providing installation information. However, the installation information required in this case appears to be at the level of the installation scripts required under GPL/LGPL v2, not the GPL/LGPL-3.0 level.

2. **Strengthening of users' legal rights**:
   This decision allows open source software users to take legal action directly against license violations. This is expected to strengthen the power of the open source community and further promote license compliance by companies. In particular, the fact that the third-party beneficiary logic was also recognized in Germany is an important development.

3. **Improved self-correcting capacity of the open source ecosystem**:
   Since not only copyright holders but also ordinary users can now demand license compliance, the self-correcting capacity of the open source ecosystem is expected to improve significantly. This contributes to maintaining the freedom of open source software and a collaborative development environment.

4. **Expanded scope of corporate responsibility**:
   Companies must now fulfill their LGPL-2.1 license obligations not only to copyright holders but to all users. This expands the scope of corporate responsibility and will require more thorough license compliance. This can increase the transparency and reliability of open source software use.

5. **Reconfirming the importance of open source license compliance**:
   Companies must more thoroughly comply with the relevant license terms when using open source software. They must recognize that the obligations under LGPL are not light simply because it is LGPL. However, it is difficult to say that this decision brought a major change in the legal interpretation of GPL installation information. AVM voluntarily provided the source code and installation scripts; the court did not issue a ruling on the interpretation of GPL/LGPL.

6. **Existence of various interpretations**:
   Various interpretations exist regarding this case. There is also a view that the Software Freedom Conservancy (SFC) somewhat overstates the significance of this case, because the ruling itself does not present a clear judgment on the interpretation of GPL/LGPL. These various interpretations show that the discussion on open source licenses and user rights is still ongoing.

Considering these implications and various interpretations, companies should improve their internal processes for open source license compliance and respond to user demands more quickly and proactively. Similar cases in the future are expected to further clarify these issues.
