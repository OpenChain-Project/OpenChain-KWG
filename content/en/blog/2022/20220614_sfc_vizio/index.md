---
date: 2022-06-14
title: "A Quick Look at the SFC v. Vizio Ruling"
linkTitle: "A Quick Look at the SFC v. Vizio Ruling"
slug: sfc-vizio
description: Let's look at the background and issues of the SFC and Vizio GPL lawsuit.
author: Haksung Jang / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
categories: ["blog"]
tags: ["SFC v. Vizio"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

> Hello, this is [Haksung Jang](https://haksungjang.github.io/).
> 
> [SFC](https://sfconservancy.org/) (Software Freedom Conservancy) filed suit against [Vizio](https://www.vizio.com/), a US smart TV manufacturer, alleging violations of the GPL. On May 13, 2022, a US federal court issued a [ruling](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf) related to this case.
> 
> I have put together a superficial summary of the background and implications of this ruling. Since I am not a legal expert, there may be errors in terminology or interpretation. I would appreciate it if experts could provide [feedback](https://github.com/haksungjang/haksungjang.github.io/issues/new). ^^

## References

First, I would like to disclose the references I consulted while writing this article.

- PROCEEDINGS: (IN CHAMBERS) ORDER GRANTING PLAINTIFF'S MOTION TO REMAND: [https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf)
- Software Freedom Conservancy files right-to-repair lawsuit against California TV manufacturer Vizio Inc. for alleged GPL violations: [https://sfconservancy.org/copyleft-compliance/vizio.html](https://sfconservancy.org/copyleft-compliance/vizio.html)
- SFC Files GPL Enforcement Suit Against Vizio Advancing Novel Legal Theories: [https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories/](https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories/)
- First Update on the Vizio lawsuit: [https://sfconservancy.org/blog/2021/nov/30/vizio-update-0/](https://sfconservancy.org/blog/2021/nov/30/vizio-update-0/)
- SFC v. Vizio remanded back to California state courts: [https://lwn.net/Articles/895405/](https://lwn.net/Articles/895405/)
- Software Freedom Conservancy right-to-repair lawsuit against California TV manufacturer Vizio, Inc. remanded to California State Court: [https://sfconservancy.org/news/2022/may/16/vizio-remand-win/](https://sfconservancy.org/news/2022/may/16/vizio-remand-win/)
- US court holds "GPL is a contract too" ... recognizes consumers' right to demand code (Korean article): [https://zdnet.co.kr/view/?no=20220518145132](https://zdnet.co.kr/view/?no=20220518145132)
- Open source license violations and copyright infringement (Korean article): [https://olis.or.kr/library/openSwDetail.do?bbsId=103&bbsNum=26400](https://olis.or.kr/library/openSwDetail.do?bbsId=103&bbsNum=26400)
- Legal effect of open source licenses (Korean article): [https://www.copyright.or.kr/information-materials/trend/the-copyright/download.do?brdctsno=10231&brdctsfileno=4699](https://www.copyright.or.kr/information-materials/trend/the-copyright/download.do?brdctsno=10231&brdctsfileno=4699)
- Characteristics of the Federal Court (Korean article): [https://lawandstory.com/연방-법원federal-court-특징/](https://lawandstory.com/%EC%97%B0%EB%B0%A9-%EB%B2%95%EC%9B%90federal-court-%ED%8A%B9%EC%A7%95/)


## 1. Background

On May 18, an article titled "[US court holds 'GPL is a contract too' ... recognizes consumers' right to demand code](https://zdnet.co.kr/view/?no=20220518145132)" was published. The following sentence seemed to convey something important, but I did not quite understand exactly what it meant.

{{< alert >}}"US District Court Judge Josephine L. Staton stated in her ruling that SFC's argument — that enforcement of the additional contractual promises is a separate and distinct extra element from the rights provided by copyright law under the GPLv2 — is not preempted by federal law, and therefore remanded the case (to a higher court)."{{< /alert >}}

Out of curiosity, I looked into some materials and summarized what I understood in my own way. I hope this helps others who have had similar questions.

### 1-1 Copyright Law and Contract Law

#### Copyright Law
- A licensee may use a work within the scope of the methods and conditions of use permitted by copyright law.
    - Here, "use" refers only to acts granted by economic rights under copyright, such as reproduction, public transmission, distribution, and the creation of derivative works; it does not include "usage" in the ordinary sense.
    - If there is a method or condition attached to an act of "usage" and it is violated, this does not constitute infringement of economic rights under copyright; only liability for breach of contract arises.
- If a licensee acts outside the scope of the methods and conditions of use permitted by copyright law, this constitutes copyright infringement.
- If it constitutes copyright infringement, criminal punishment and injunctive relief are possible for violation of copyright law.

#### Contract Law
- A contract is generally an agreement between a licensor (in the case of open source, the copyright owner) and a licensee.
- To impose liability under contract law, it is first required that a contract was validly formed between the two parties.
- If a party breaches an obligation it bears by virtue of the contract's (agreement's) effect, only contractual liability for non-performance arises.
  - There is no risk of criminal punishment or injunctive relief, as with copyright infringement, but the agreed-upon amount of damages must be paid.
  - Whether a work under an open source license constitutes formation of a contract is disputed depending on jurisdiction.
- Damages amounts and remedies are limited.

#### Examples
- Copyright holders of GPL software have filed suit alleging copyright infringement
  - e.g., Harald Welte, Patrick McHardy
- Jacobsen v. Katzer precedent
    - If a copyright license imposing license conditions is not complied with, this constitutes copyright infringement.
    - If a license provision is a condition, copyright law applies; if it is merely a covenant, contract law applies.
- Hancom vs. Artifax
    - Hancom argued that there was no breach of contract because there was no act such as signing a contract or a process of mutual agreement.
    - The court ruled that this constituted a breach of contract.

### 1-2 US Federal Courts and State Courts
- The United States has federal courts and state courts, each handling cases of a different character.
    - State courts: generally handle cases affecting the personal lives of residents (family law, probate law, etc.)
    - Federal courts
        - Consist of District Courts, Appellate Courts, and the Supreme Court.
        - Handle only a limited set of cases: constitutional matters, federal crimes, military law, intellectual property, etc.
        - Copyright law (the Copyright Act) is handled in federal court.
- In the United States, federal courts have exclusive jurisdiction over copyright claims.
    - Accordingly, in the past, nearly all claims in US GPL litigation were brought in federal court, which has exclusive jurisdiction over copyright law.
- If a complaint is filed in the wrong court, the case will be dismissed or transferred to another court.
    - That is, an action filed in state court can be removed if it is preempted by federal court jurisdiction.

## 2. History of the SFC v. Vizio Lawsuit

SFC filed suit against Vizio in October 2021. The contents of the suit at the time and the subsequent history are as follows.

### 2021-10-19

- SFC filed [suit](https://sfconservancy.org/docs/software-freedom-conservancy-v-vizio-complaint-2021-10-19.pdf) in state court against Vizio, alleging violations of the GPL and LGPL in connection with [SmartCast](https://www.vizio.com/en/smartcast) TVs.
    - plaintiff: Software Freedom Conservancy, Inc. ("[SFC](https://sfconservancy.org/)")
    - defendant: Vizio, Inc. ("[Vizio](https://www.vizio.com/)")
    - allege:
        - Vizio uses "at least twenty-five programs, including the Linux kernel software" in its smart TVs that are covered by the GPL Agreements,
        - Vizio does not make the corresponding source code for these programs available to purchasers of its smart TVs.
    - seek:
        - to enforce SFC's right to have access to the source code corresponding to the executable code resident on Vizio's devices covered by the GPL Agreements.
        - as a remedy to its breach of contract claim, SFC seeks to compel Vizio to make the source code available
    - claim:
        1. breach of contract and
        2. declaratory relief
            - Declaratory relief is a procedure within US civil procedure whereby a judge declares the rights, obligations, and responsibilities of the parties in a civil suit, without ordering any performance, action, or compensation. In patent and similar litigation, it is used by an alleged infringer as a claim or counterclaim against a patent holder to seek a declaration of non-infringement, invalidity, or unenforceability.
    - See: "[Recent litigation cases: Stockfish v. ChessBase, SFC v. Vizio (Wonjae Park)](https://openchain-project.github.io/OpenChain-KWG/meeting/12th/)"

### 2021-11-29

Vizio responded to this as follows.

- Violating the GPL constitutes copyright infringement.
- Because copyright law is preempted by federal courts, this is not a matter for state courts.
- Under copyright law, only the copyright owner has the right to request source code under the GPL and LGPL, and SFC, as a consumer, has no right to demand source code.

For this reason, Vizio requested that the case, filed in state court, be handled by federal court instead ([NOTICE of REMOVAL of ACTION to FEDERAL COURT](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.1.0.pdf)).

If the federal court approves this, the case would need to be reviewed under US copyright law, and since SFC is not the copyright holder, it would not even have standing as a plaintiff.

### In Response,

SFC rebutted Vizio's arguments and filed a Motion to Remand with the federal court to have the case sent back to state court.

### 2022-05-13

The federal court granted SFC's Motion to Remand [(ORDER GRANTING PLAINTIFF'S MOTION TO REMAND)](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf) and remanded the case to state court.

## 3. Points Worth Noting

This lawsuit has several new aspects compared to prior GPL litigation. Heather Meeker, a US open source attorney, [explained](https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories) this as follows.

### 3-1. Breach of Contract and Specific Performance
- In the past, nearly all GPL litigation was brought as a claim of copyright infringement.
- However, this lawsuit is a claim under contract law, not copyright law.
- Rather than seeking monetary damages, it seeks to require that all TV purchasers be provided with the technical information required by the copyleft license (disclosure of source code).
    - Rather than compensation for "damages," it seeks disclosure of source code: "specific performance."
- Under contract law, any remedy sought other than monetary damages amounts to a demand for specific performance (specific performance is an unusual remedy under contract law).
- Generally, a plaintiff seeks specific performance instead of compensation from a defendant who breached a contract when the plaintiff wants something that money cannot replace.

{{< alert type="warning" title="specific performance" >}}
Fulfilling the requirements of a contract in exactly the way the contract specifies. When most contracts are disputed in court, the plaintiff expects to receive money, that they can use to remedy the harm that the other party caused them in not holding up their side of the deal. When a plaintiff seeks specific performance, they want something that money can't replace.
{{< /alert >}}

### 3-2. Claim Brought in State Court
- In the United States, federal courts have exclusive jurisdiction over copyright claims.
- Accordingly, in the past, nearly all claims in US GPL litigation were brought in federal court, which has exclusive jurisdiction over copyright law.
- However, this lawsuit brought by SFC was filed in state court in Orange County, California.
- State court litigation, compared to federal court, is less predictable, less consistent in outcome, and more likely to produce unexpected views on novel legal theories.

### 3-3. No Author as Plaintiff
- SFC filed suit as a purchaser of the product.
- In past GPL litigation, the plaintiff was the copyright owner of the GPL software.
- In contrast, the plaintiff in this lawsuit is SFC, filing suit as a consumer who purchased a Vizio TV.
- SFC aims to establish that not only copyright owners but also consumers of a product have the right to receive GPL source code.

### 3-4. Declaratory Relief
- This lawsuit essentially asks the court to declare that the GPL and LGPL are legally enforceable and that Vizio violated them.
- Even treating the GPL as a contract, since a contract is generally an agreement between a licensor (i.e., the code copyright owner) and a licensee, it is difficult to view SFC as a party to the contract.
- For this reason, SFC brought suit under the theory that it, along with all consumers, is a third-party beneficiary of the contract.
    - Third Party Beneficiary: a person who is not a party to a contract but who can sue to enforce the contract — that is, a person who, although not a party to the contract, is directly involved in the benefit of the contract.
    - Third-party beneficiaries of the GPL: those who are not parties to the GPL contract, but who can obtain a benefit when the parties to the GPL contract perform it faithfully. One example of such a benefit is receiving the source code of GPL software.

{{< alert type="warning" title="third-party beneficiaries of the GPL" >}}
People who aren't a party to a GPL agreement, but who would benefit from the contract if the parties to the GPL do as they promise under the agreement. An example of such a benefit might be the receipt of the source code of the GPL'd software. See also General Public License (GPL).
{{< /alert >}}

## 4. Key Contents of the Federal Court Ruling (2022-05-13)

Let's look at what the federal court ruled on May 13, 2022.

### 4-1. The Central Question

The court first explained the central question that the federal court needed to decide, as follows.

- The only issue the court needs to decide is whether the federal Copyright Act completely preempts SFC's claims (breach of contract and declaratory relief) so as to create federal jurisdiction.
- If the claims are equivalent to rights within the general scope of copyright covered by federal copyright law (such as the exclusive rights of reproduction, distribution, and display of derivative works), they are preempted by federal copyright law and therefore create federal jurisdiction.
- To argue that a case is not preempted by federal copyright law, the cause of action must protect rights other than those protected by copyright, and there must be an "extra element" that changes the nature of the suit.

### 4-2. Relevant Precedent: "Versata Software vs. Ameriprise"

- The GPL's requirement to disclose source code for a derivative work is separate from copyright obligations.
- The defendant was not sued for copyright infringement.
    - It was sued by the plaintiff for violating an "additional obligation" — failure to comply with the source disclosure obligation — regarding a derivative work incorporating an open source program.
- In this way, an "additional contractual promise" that does not correspond to a right provided by copyright law constitutes an "extra element."

### 4-3. Whether SFC's Claim Is an "Extra Element"

- The purpose of copyright protection is the exclusive right to restrict who may reproduce, distribute, and display a work.
- However, copyright law does not grant a right to receive source code. Such a right is, if anything, the opposite of the exclusive rights protected by copyright law.
- SFC's assertion, as a non-copyright-holder, of standing as a third-party beneficiary of the GPL agreement is distinct from rights arising under copyright law.
- In other words, SFC's claim that it is entitled to receive source code as a third-party beneficiary of the GPL agreement is an "extra element."

### 4-4. Whether Vizio's Argument Is Valid

- Vizio argues that violating an open source license is copyright infringement, but SFC did not make a claim of copyright infringement in this lawsuit.
    - There is no reason for the court to rule on a matter the plaintiff did not claim.
    - Furthermore, since SFC is not the copyright holder, it could not even make such a claim.
    - SFC is not trying to use copyright law to restrict Vizio's ability to reproduce or create derivative works; it is merely requesting that Vizio provide source code.
- Vizio argued that since providing source code is a "condition" of the license, violating it is not a "breach of contract" but "copyright infringement."
    - Accordingly, Vizio argued that SFC's "contract claim" should be converted into a claim of copyright infringement.
    - However, only the violation of a "condition" — defined as "an act or event that must occur before a duty of performance arises" — can constitute copyright infringement; violations of all other license terms and covenants can only be litigated under contract law.
    - Furthermore, ambiguous contract provisions are interpreted as covenants, not conditions.


### 4-5 Ruling

- SFC's claims were not completely preempted by copyright law.
  - A GPL agreement functions both as a copyright license and as a contractual agreement.
- Accordingly, the federal court lacks jurisdiction, and the Motion to Remand to state court is GRANTED.

## 5. Implications

SFC stated regarding this ruling that, while many people believe the GPL functions only as a copyright license, this decision marks a watershed moment in the history of copyleft licensing, showing that it functions as a contract as well as a copyright license. SFC also [stated](https://sfconservancy.org/news/2022/may/16/vizio-remand-win/) that this lawsuit is the first legal case to focus on the rights of individual consumers as third-party beneficiaries of the GPL, and that it looks forward to the opportunity to establish these consumer rights in state court.

Honestly, when I skimmed only the domestic (Korean) news coverage, I thought SFC had won the lawsuit and that ordinary consumers now had a legal right to demand GPL source code from companies. But this ruling was not a final decision on that question. As I understand it, it is a ruling that grants an opportunity to litigate this matter in state court going forward.

Finally, [Heather Meeker's commentary](https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories/) on this is a useful reference.

- SFC is trying to establish a new standard for GPL litigation. This is welcome, but there are also concerns about a backlash.
    - Over the past 25 years, many companies that build products using GPL software have not been greatly worried about GPL litigation.
    - If SFC prevails in this lawsuit, companies could become burdened in using GPL code, which could become an obstacle to the spread of free software.
    - Also, if the general public becomes able to bring GPL litigation, trolls seeking purely financial gain could emerge.
- It is also not yet known whether SFC's attempt will succeed.
    - The fact that the federal court did not dismiss the case but instead remanded it to state court can be seen not as fully accepting SFC's arguments, but simply as a determination that the case was not appropriate for federal court and therefore there was no basis for dismissal.
    - For now, SFC has gained a foothold to argue that it is entitled, as a third-party beneficiary of the GPL, to demand disclosure of source code from the defendant.
    - However, this lawsuit could become complex, prolonged, and costly going forward.
    - Most GPL litigation is often resolved quickly through settlement.


With that, I will wrap up this summary and take another look at the [domestic article](https://zdnet.co.kr/view/?no=20220518145132) that I had trouble understanding earlier.

{{< alert >}}"US District Court Judge Josephine L. Staton stated in her ruling that SFC's argument — that enforcement of the additional contractual promises is a separate and distinct extra element from the rights provided by copyright law under the GPLv2 — is not preempted by federal law, and therefore remanded the case (to a higher court)."{{< /alert >}}

Now it seems to make sense. However, I still don't understand why it says the case was remanded "(to a higher court)." A US district court is a federal court, and this case was remanded to state court — so why does it say remanded "(to a higher court)"? Is it a typo? Do Americans refer to state courts as a "higher court"? Or am I misunderstanding something? I would welcome an [opinion](https://github.com/haksungjang/haksungjang.github.io/issues/new) from a legal expert. :)

Thank you.
