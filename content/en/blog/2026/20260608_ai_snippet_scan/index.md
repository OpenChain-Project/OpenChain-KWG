---
date: 2026-06-08
title: "AI-Generated Code: How Far Should Open-Source Scanning Go?"
linkTitle: "AI Code and Snippet Scanning"
description: >-
  Whether AI-generated code needs snippet-level open-source license scanning — the decision factors, grounded in public sources, and how this differs from security-vulnerability scanning.
author: Haksung Jang
categories: ["blog"]
tags: ["AI coding", "SCA", "snippet scanning", "license compliance", "security"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---


{{% alert title="About this article" color="info" %}}
This article was written with the help of Claude Code, and its key facts were cross-checked against public sources.
{{% /alert %}}

{{% alert title="Disclaimer" color="warning" %}}
This article reflects the author's personal analysis and is not legal advice. The cited facts were verified against public sources, but for any specific situation please consult a qualified professional such as an attorney.
{{% /alert %}}

## First, one thing to get straight

There is no quick yes-or-no answer to this question, because the deciding factor is not AI itself — as we will see. AI coding raises the rate at which code fragments enter a codebase without being declared as packages, but it does not change the conditions under which a license obligation arises. So instead of asking "does scanning still matter in the AI era," it helps to ask "under what conditions does snippet-level scanning matter more, and under what conditions less."

## Snippet scanning and SCA are different things

First, separate the terms so the discussion does not get tangled.

| Type | What it looks at | What kind of code it catches |
|---|---|---|
| Dependency-level SCA | Components declared through a package manager | Manifests and build artifacts such as `package.json`, `pom.xml` |
| Snippet-level matching | Portions of the source code itself | Code fragments brought in by copy-paste or AI generation |

Software Composition Analysis (SCA) refers broadly to identifying the open source that has entered your code and managing its vulnerabilities and licenses. Most SCA looks at declared dependencies, as in the first row of the table. Snippet-level matching is a separate capability that only some commercial tools have: it compares the source code itself against a vast number of open-source projects to find the origin of fragments that were never declared as packages. What this article addresses is not SCA as a whole, but this snippet matching.

## How real is the legal risk?

Let us start with cases where AI code snippets led to license-violation disputes.

The best-known case is the Copilot class action filed in November 2022 by open-source developers against GitHub, Microsoft, and OpenAI. In May 2023 the copyright-infringement claim was dismissed for lack of specific examples of copying, and in July 2024 the claim under Section 1202(b) of the Digital Millennium Copyright Act (DMCA) was also dismissed. That provision prohibits removing the copyright management information attached to an original work; the court did not accept the claim, reasoning that Copilot's output was not sufficiently identical to the original <a id="a2-ref-1"></a>[A2](#a2). Of the original 22 claims, only two remain: breach of an open-source license and breach of contract <a id="a2-ref-2"></a>[A2](#a2)·<a id="a3-ref-1"></a>[A3](#a3).

There are facts here that can be read two ways.

On one hand, the defendants in these disputes have all been the vendors who built the AI tools, and there is no publicly reported case of a company being sued merely for using AI-generated code <a id="c1-ref-1"></a>[C1](#c1). Microsoft also announced, in September 2023, the Copilot Copyright Commitment, under which it will cover defense costs and damages if a paid commercial customer is sued by a third party over the output. This comes with conditions: the customer must not disable the product's built-in filters and must not deliberately try to generate infringing material <a id="b1-ref-1"></a>[B1](#b1)·<a id="c5-ref-1"></a>[C5](#c5).

On the other hand, the legal position is not settled. The DMCA issue above has gone to the Ninth Circuit Court of Appeals as an interlocutory appeal — where a specific issue is argued before the appellate court ahead of the trial-court judgment — and as of June 2026 no ruling has issued while the trial-court proceedings are stayed <a id="a1-ref-1"></a>[A1](#a1). The absence of a reported precedent does not mean there is no risk.

## When does a license obligation arise?

One distinction matters here. Being sued and having an obligation to comply with a license are different things. Even if no one sues, the obligation to comply with an open-source license remains. And the moment when that obligation is triggered is what matters.

Copyleft obligations in the GPL family, which require disclosing source, arise when you distribute the software. Merely running it internally is "use," not "distribution," so no obligation arises <a id="c3-ref-1"></a>[C3](#c3)·<a id="c4-ref-1"></a>[C4](#c4). Pure SaaS, which hands code to no one, is likewise outside GPL obligations for the same reason. Two caveats apply.

- AGPL is a stricter license that treats even providing a network service as distribution. If you use an AGPL-licensed component, an obligation to disclose source arises even when you only offer it as a service without handing over the code <a id="c3-ref-2"></a>[C3](#c3). Such components can be managed by excluding them through internal policy.
- "Internal" must mean used only by your own employees; if distribution later happens through an acquisition or open-sourcing, the problem arises at that point.

The copyrightability of short code is another factor. A few lines of functional code may involve too small an amount of copying to be actionable (de minimis), or may fall outside protection because there is essentially only one way to express the idea (merger doctrine) <a id="a4-ref-1"></a>[A4](#a4)·<a id="a5-ref-1"></a>[A5](#a5). That said, this is a case-by-case judgment, and since long, creative blocks of code are protected, it is hard to assume every snippet is free.

In practice, small fragments often arrive carrying obligations. Code from Stack Overflow, which developers frequently reuse, is under the CC BY-SA license, which requires attribution and share-alike. Yet one study found that at most 1.8% of GitHub projects used such code in a way compliant with the license <a id="c6-ref-1"></a>[C6](#c6). Even a small fragment can carry a license obligation, and that obligation is widely unmet.

## Does the standard require snippet scanning?

OpenChain ISO/IEC 5230, the international standard for open-source license compliance, focuses on where to place compliance processes, how to assign roles and responsibilities, and how to keep the process sustainable <a id="a6-ref-1"></a>[A6](#a6). It is a non-prescriptive standard that defines what to achieve while leaving the specific methods to the organization, so it does not mandate any particular technique such as snippet scanning <a id="a6-ref-2"></a>[A6](#a6)·<a id="a7-ref-1"></a>[A7](#a7). What the standard requires is to identify third-party components and to maintain a Software Bill of Materials (SBOM), the list of those components. What matters for meeting the standard is understanding which components have entered the code; it does not require analyzing the origin of every single fragment. In fact, many widely used SCA tools operate only at the dependency level, without snippet matching.

This reads two ways. It means you can meet the standard without snippet scanning, and at the same time it means there is an area the standard does not cover. Dependency-level scanning cannot see fragments that were copied in or generated by AI without being declared as packages. Snippet matching fills exactly that gap, and some organizations perform it for more thorough intellectual-property management.

## When does it matter more?

How much weight to give snippet scanning depends on two conditions a company faces.

First, whether you hand code or binaries directly to customers. When code leaves the company — as with on-premises installed products, mobile apps, SDKs, or embedded device firmware — it counts as distribution, and copyleft obligations can be triggered. Pure SaaS, which hands over no code, carries less of this burden.

Second, whether you undergo external verification. Situations such as M&A due diligence, a large customer's security audit, regulatory requirements, or an SBOM request that goes down to the snippet level — where someone outside the company actually examines the origin of the code.

The more these two overlap, the more likely a latent obligation turns into a real cost. If you hand over code but there is no occasion for verification, the risk stays latent; if you hand over no code, the obligation rarely arises in the first place. Both conditions are independent of whether AI is used. AI coding increases the inflow when the conditions hold, but it does not create the conditions.

## Looking at it by company type

| Company type | Weight on snippet scanning | Why |
|---|---|---|
| Hands no code outside (pure SaaS, no AGPL components) | Low | Not distribution, so copyleft obligations rarely arise |
| Hands code or binaries to customers, but no external audit | Depends | An obligation may exist, but there is no occasion for anyone to look |
| Hands over code + M&A due diligence, customer audit, regulation | High | The point where origin is actually examined externally |

The table is a starting point, not the answer. Even within the same cell, the choice can differ by the nature of the code, the licenses involved, and the company's risk appetite.

## Embedded is a different story

Everything so far assumed software built with a package manager. Software that runs as embedded or firmware — routers, set-top boxes, IoT devices, automotive controllers — is different. It is mostly written in C/C++, and open source is often copied directly into the project as source, without a manifest. When that happens, dependency-level SCA has no manifest to read and sees almost none of the open source.

One thing to distinguish: large components used wholesale, such as the Linux kernel or BusyBox, are usually known to the company. That is not a detection problem but a question of meeting the obligation to disclose source. Snippet scanning is needed in a different case: the small fragments pulled in piecemeal from various open-source projects that no one put on a list. Finding these fragments, which dependency-level SCA cannot see, is the job of snippet scanning.

So in embedded, snippet scanning is closer to a basic means of finding undeclared open-source fragments than a conditional supplement.

## Filtering before code comes in

Apart from after-the-fact scanning, there is also a way to block problematic code before it comes in. GitHub Copilot has a setting that blocks suggestions matching public code: it does not show suggestions that match public code at or above a certain length (about 150 characters on average) <a id="b2-ref-1"></a>[B2](#b2)·<a id="c2-ref-1"></a>[C2](#c2). GitHub has stated that verbatim copying of more than 150 characters happens about 1% of the time, while independent studies report higher rates depending on context. Either way it is not zero, but turning the setting on reduces the inflow of fragments of unclear origin. It costs almost nothing, and it is also a precondition for the vendor indemnity mentioned earlier.

This setting overlaps in purpose with after-the-fact snippet scanning. One finds code after it is in; the other blocks it before it gets in. Which one to use, and how much, is something to decide together with the conditions and costs above.

## Criteria for the decision

There is a reason this decision is not simple. The only practical way to find code fragments that were copied in, or generated by AI, without being declared as packages is snippet matching. Neither dependency-level SCA nor a filter applied at generation time catches all of those fragments. So there is a small but real part that only snippet matching covers. At the same time, in many companies that small part rarely turns into an actual loss, and snippet scanning carries tool costs and review effort. In the end, it is about deciding whether the cost is worth it to close a small but real risk.

Four things to consider:

- **Do you send code outside** — the more you do, the greater the chance a copyleft obligation actually arises.
- **Do you undergo external verification** — M&A due diligence or a customer audit can surface an obligation that had been buried.
- **How much license risk are you willing to accept** — there is no reported lawsuit precedent, but the legal position is not settled either. How you take this uncertainty is a matter of company policy.
- **What other checks do you already have** — if you already run dependency-level SCA, an AI-tool setting that blocks suggestions matching public code, and a policy of excluding AGPL components, the part snippet scanning would additionally catch shrinks accordingly.

One more point. Snippet scanning is not an all-or-nothing choice. The occasions when someone outside actually examines the origin of code are fairly predictable — M&A due diligence or a large customer's audit. So one option is to run only dependency scanning and the blocking setting day to day, and have a snippet scan done when such an occasion is expected.

Applying these four factors and this operating approach to your own situation, the answer to how much weight to give snippet scanning will come out differently for each company. The exception is embedded software built without a manifest. There, snippet scanning is not a conditional supplement but a basic means of finding undeclared open-source fragments.

## Security vulnerabilities are a separate matter

Everything so far has been about licenses. Security vulnerabilities are a different axis, and you should not apply the conditional conclusion above to them. If vulnerable open source is in your code, it is dangerous whether or not you distribute, and whether or not you are audited — because it is exposed to attack even in internal-only software or a pure-SaaS backend. So vulnerability checking is broadly necessary for almost every company.

There are two main tools for security checking.

- **Dependency-level SCA** — looks at the name and version of declared open-source libraries and checks them against lists of known vulnerabilities (CVEs) <a id="d1-ref-1"></a>[D1](#d1). Known vulnerabilities in the libraries AI pulled in are caught here.
- **SAST (static analysis)** — finds risky coding patterns in the source code itself, regardless of where the code came from. The main security risk in AI code is here. In one study, about 40% of 1,689 programs generated by Copilot contained vulnerabilities <a id="d2-ref-1"></a>[D2](#d2).

Whether code was copied in or generated by AI, security checking is no different from any other code. SAST handles risky patterns in the code itself, and dependency-level SCA handles known vulnerabilities in the libraries you brought in. Snippet scanning is a feature for finding license origin, not a tool for security checking.

One exception worth noting: a rare case where vulnerable code with a known vulnerability is copied in verbatim, escaping both SAST's patterns and the dependency list. Catching this requires not the license-oriented snippet feature but a separate check that compares your code directly against signatures of vulnerable code built from CVE patches — vulnerable code clone detection <a id="d3-ref-1"></a>[D3](#d3). Academic tools and some commercial tools provide this.

## Sources

<a id="a1"></a>**A1.** BakerHostetler (2025). *Doe v. GitHub, Inc. — The Copilot Litigation*. <https://www.bakerlaw.com/the-copilot-litigation/> (accessed 2026-06-08). — Claim-by-claim progress of the Copilot class action and its pending status before the Ninth Circuit. <a href="#a1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="a2"></a>**A2.** Claburn, T. (2024). *Judge dismisses DMCA copyright claim in GitHub Copilot suit*. The Register, 2024-07-08. <https://www.theregister.com/2024/07/08/github_copilot_dmca/> (accessed 2026-06-08). — Dismissal of the DMCA §1202(b) claim; 2 of the original 22 claims (license breach, breach of contract) remain. <a href="#a2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="a3"></a>**A3.** Pearl Cohen (2024). *Copyright Claims Against GitHub, Microsoft, and OpenAI Largely Dismissed*. <https://www.pearlcohen.com/copyright-claims-against-github-microsoft-and-openai-largely-dismissed/> (accessed 2026-06-08). — Overall picture of the dismissed claims and the surviving claims. <a href="#a3-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="a4"></a>**A4.** Goldstein Patent Law. *Understanding the Copyright Merger Doctrine*. <https://www.goldsteinpatentlaw.com/copyright-merger-doctrine/> (accessed 2026-06-08). — The merger doctrine, which denies copyrightability of functional code. <a href="#a4-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="a5"></a>**A5.** NYU Journal of Intellectual Property & Entertainment Law. *Clarifying the De Minimis Doctrine in Copyright Law*. <https://jipel.law.nyu.edu/clarifying-the-de-minimis-doctrine-in-copyright-law/> (accessed 2026-06-08). — The de minimis doctrine, under which trivial copying is not actionable. <a href="#a5-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="a6"></a>**A6.** OpenChain Project. *OpenChain ISO/IEC 5230 — License Compliance*. <https://openchainproject.org/license-compliance> (accessed 2026-06-08). — The standard defines processes and roles but does not mandate any specific technique such as snippet scanning. <a href="#a6-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="a7"></a>**A7.** ISO. *ISO/IEC 5230:2020 — Information technology — OpenChain Specification*. <https://www.iso.org/standard/81039.html> (accessed 2026-06-08). — Bibliographic record of the standard. <a href="#a7-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="b1"></a>**B1.** Microsoft (2023-09-07). *Microsoft announces new Copilot Copyright Commitment for customers*. <https://blogs.microsoft.com/on-the-issues/2023/09/07/copilot-copyright-commitment-ai-legal-concerns/> (accessed 2026-06-08). — IP indemnity for paid commercial customers, conditioned on keeping the built-in filters on. <a href="#b1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="b2"></a>**B2.** GitHub. *GitHub Copilot* (product page). <https://github.com/features/copilot> (accessed 2026-06-08). — Existence and behavior of the public-code matching filter. <a href="#b2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="c1"></a>**C1.** TechTarget. *AI lawsuits explained: Who's getting sued?*. <https://www.techtarget.com/whatis/feature/AI-lawsuits-explained-Whos-getting-sued> (accessed 2026-06-08). — Indication that defendants are concentrated among vendors and that no adopter company has been reported as sued. <a href="#c1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="c2"></a>**C2.** Microsoft Community Hub. *Demystifying GitHub Copilot Security Controls*. <https://techcommunity.microsoft.com/blog/azuredevcommunityblog/demystifying-github-copilot-security-controls-easing-concerns-for-organizational/4468193> (accessed 2026-06-08). — The roughly 150-character match threshold of the public-code matching filter and the ~1% copying rate. <a href="#c2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="c3"></a>**C3.** Mend.io. *The SaaS Loophole In GPL Open Source Licenses*. <https://www.mend.io/blog/the-saas-loophole-in-gpl-open-source-licenses/> (accessed 2026-06-08). — Copyleft's distribution trigger, the non-applicability to internal and SaaS use, and the AGPL §13 exception. <a href="#c3-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="c4"></a>**C4.** Revenera. *Understanding the SaaS Loophole in GPL*. <https://www.revenera.com/blog/software-composition-analysis/understanding-the-saas-loophole-in-gpl/> (accessed 2026-06-08). — Supporting detail on the distribution trigger and the SaaS exception. <a href="#c4-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="c5"></a>**C5.** TechTarget. *Microsoft Copilot Copyright Commitment explained*. <https://www.techtarget.com/searchenterprisedesktop/tip/Microsoft-Copilot-Copyright-Commitment-explained> (accessed 2026-06-08). — Supporting detail on the scope and conditions of the indemnity. <a href="#c5-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="c6"></a>**C6.** Baltes, S. & Diehl, S. (2019). *Usage and Attribution of Stack Overflow Code Snippets in GitHub Projects*. Empirical Software Engineering, arXiv:1802.02938. <https://arxiv.org/abs/1802.02938> (accessed 2026-06-08). — Empirical study finding that at most 1.8% of GitHub projects used Stack Overflow code (CC BY-SA) in a license-compliant way. <a href="#c6-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="d1"></a>**D1.** Cycode. *What Is Software Composition Analysis (SCA)?*. <https://cycode.com/blog/what-is-software-composition-analysis-sca/> (accessed 2026-06-08). — How SCA finds vulnerabilities by matching components and versions against CVE/NVD. <a href="#d1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="d2"></a>**D2.** Pearce, H., Ahmad, B., Tan, B., Dolan-Gavitt, B., & Karri, R. (2022). *Asleep at the Keyboard? Assessing the Security of GitHub Copilot's Code Contributions*. IEEE S&P 2022, arXiv:2108.09293. <https://arxiv.org/abs/2108.09293> (accessed 2026-06-08). — About 40% of 1,689 generated programs across 89 scenarios contained vulnerabilities. <a href="#d2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>

<a id="d3"></a>**D3.** Kim, S., Woo, S., Lee, H., & Oh, H. (2017). *VUDDY: A Scalable Approach for Vulnerable Code Clone Discovery*. IEEE S&P 2017. <https://seulbae-security.github.io/pubs/vuddy-sp17.pdf> (accessed 2026-06-08). — How vulnerabilities propagate through copied code and remain unpatched after the upstream fix, and how to detect them. <a href="#d3-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="Back to text">↩</a>
