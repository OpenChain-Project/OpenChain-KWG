---
title: "§4.1.5 Standard Practice Implementation"
weight: 50
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "standard practice", "vulnerability response"]
description: >
---

## 1. Clause Overview

§4.1.5 is a new clause exclusive to 18974 that does not exist in ISO/IEC 5230. It requires establishing documented procedures for each of the **8 standard handling methods** for open source vulnerabilities. This clause goes beyond a simple declaration of "responding" to vulnerabilities, requiring the formalization of the entire vulnerability lifecycle into procedures — from threat identification, detection, follow-up, customer notification, post-deployment monitoring, continuous security testing, risk verification, to information export. This clause, together with §4.3.2 Security Assurance, forms the core of ISO/IEC 18974.

## 2. What to Do

Establish documented procedures for each of the 8 methods:

1. **Identification of structural and technical threats**: Define a method to identify threats affecting the supplied software.
2. **Detection of known vulnerabilities**: Define a method to detect the existence of known vulnerabilities (CVEs) in open source components.
3. **Follow-up on vulnerabilities**: Define a method to take follow-up actions such as patching, mitigation, or acceptance for identified vulnerabilities.
4. **Customer notification**: Define a method to communicate identified vulnerabilities to customers, where applicable.
5. **Post-deployment analysis for newly disclosed vulnerabilities**: Define a method to analyze already-deployed software for newly published CVEs.
6. **Continuous security testing**: Define a method to apply continuous and iterative security testing to all supplied software before release.
7. **Verification of risk resolution**: Define a method to verify that identified risks have been addressed before release.
8. **Export of risk information**: Define a method to export risk information to third parties, where appropriate.

## 3. Requirements and Verification Materials

| Clause | Requirement | Verification Material(s) |
|-----------|--------------|---------|
| §4.1.5 | A program shall demonstrate defined and implemented processes for sound and robust handling of known vulnerabilities and security software development, specifically by defining and implementing the following 8 methods: threat identification / vulnerability detection / follow-up / customer notification / post-deployment newly disclosed vulnerability analysis / continuous security testing / risk resolution verification / risk information export | **4.1.5.1** A documented procedure exists for each of the methods identified above |

> **§4.1.5 Standard Practice Implementation**
> A program shall demonstrate defined and implemented processes for sound and
> robust handling of known vulnerabilities and security software development,
> specifically by defining and implementing the following:
> - A method to identify structural and technical threats to the supplied
>   software;
> - A method to detect the existence of known vulnerabilities in the supplied
>   software;
> - A method to follow up on identified known vulnerabilities;
> - A method to communicate identified known vulnerabilities to customers,
>   where applicable;
> - A method to analyze the supplied software for newly disclosed known
>   vulnerabilities when they are published;
> - A method to apply continuous and iterative security testing to all
>   supplied software before release;
> - A method to verify that identified risks have been addressed before
>   release; and
> - A method to export information about identified risks to third parties,
>   where appropriate.
>
> **Verification Material(s):**
> 4.1.5.1 A documented procedure exists for each of the methods identified
> above.

## 4. How to Comply and Samples per Verification Material

### 4.1.5.1 Documented Procedures for the 8 Vulnerability Handling Methods

**How to Comply**

A procedure explaining "how" each of the 8 methods is performed must be documented. These procedures together constitute Verification Material 4.1.5.1. You can create 8 separate documents, or organize all 8 as sections within a single integrated vulnerability management procedure document. The latter approach is recommended as it reduces management burden and is easier to maintain consistency.

**Method 1 — Identification of Structural and Technical Threats**

Define a method to identify structural (architecture design, dependency structure) and technical (known vulnerable patterns, risky components) threats that may affect the supplied software. Using threat modeling (STRIDE, PASTA, etc.) or periodically analyzing the dependency tree to identify risky components is a common approach.

```
[Threat Identification Procedure Overview]
- Conduct threat modeling when designing a new software architecture.
- Analyze the dependency tree quarterly to identify EOL (End-of-Life) components,
  abandoned projects, and components with high dependency concentration.
- Register identified threats in the Risk Registry and assign a responsible party.
```

**Method 2 — Detection of Known Vulnerabilities**

Define a method to detect the existence of CVEs (Common Vulnerabilities and Exposures) in open source components based on the SBOM. Integrating automated tools (OSV-SCALIBR, Dependency-Track, Grype, etc.) into the CI/CD pipeline to scan for vulnerabilities at every build is an effective approach.

```
[Vulnerability Detection Procedure Overview]
- Integrate SCA (Software Composition Analysis) tools into the CI/CD pipeline.
- Automatically run SBOM-based vulnerability scans on every build.
- Reference multiple vulnerability databases such as OSV (Open Source Vulnerabilities),
  NVD (National Vulnerability Database), and GitHub Advisory Database.
- Automatically notify the security team of detected vulnerabilities along with their severity.
```

**Method 3 — Follow-up on Vulnerabilities**

Define a method to take follow-up actions on identified vulnerabilities, such as applying patches, implementing mitigations, replacing components, or accepting risk. Specify priority and remediation timelines based on CVSS scores in the procedure.

```
[Follow-up Procedure Overview]
- Determine remediation priority and timelines based on CVSS score:
  Critical (9.0+): within 7 days / High (7.0-8.9): within 30 days
  Medium (4.0-6.9): within 90 days / Low (0.1-3.9): at next release
- If no patch is available, implement mitigation measures (network isolation, WAF rule additions, etc.)
  and risk acceptance decisions require joint approval from the security team and open source PM.
- Record the remediation outcome in the vulnerability tracking system and verify completion.
```

**Method 4 — Customer Notification**

Define a method to communicate vulnerabilities to customers when they are discovered in supplied software and may affect customers. Specify the notification criteria (severity, customer impact scope), notification channels, and notification timelines in the procedure.

```
[Customer Notification Procedure Overview]
- Notify customers for Critical/High vulnerabilities that affect distributed products.
- Notification channels: Product security notice (website), customer security contact email,
  security advisory publication
- Notification timeline: Within 7 days of confirming patch or mitigation measures
- Notification content: Affected components, CVE ID, severity, recommended actions, patch delivery schedule
```

**Method 5 — Post-deployment Analysis for Newly Disclosed Vulnerabilities**

Define a method to analyze whether newly published CVEs affect already-deployed software. A monitoring system is needed that retains the SBOM for deployed software and automatically cross-references newly published CVEs against those SBOMs.

```
[Post-deployment Newly Disclosed Vulnerability Analysis Procedure Overview]
- Retain SBOMs for deployed software by version.
- Use tools such as Dependency-Track to automatically cross-reference newly published CVEs
  against deployed SBOMs and generate a list of affected software versions.
- When affected versions are confirmed, process them according to Method 3 (follow-up)
  and Method 4 (customer notification) procedures.
- Monitoring is performed automatically at all times, with weekly summary reports
  sent to the security team.
```

**Method 6 — Continuous Security Testing**

Define a method to apply continuous and iterative security testing to all supplied software before release. Integrating SAST (Static Application Security Testing), DAST (Dynamic Application Security Testing), and SCA into the CI/CD pipeline is the common approach.

```
[Continuous Security Testing Procedure Overview]
- Security testing by CI/CD pipeline stage:
  · On code commit: SAST (static analysis), SCA (open source vulnerability scan)
  · On PR merge: Verify passage of security gate (blocking if Critical/High unresolved)
  · On release candidate build: DAST (dynamic analysis), container image scan
- Automatically block release on security test failure and notify the security team.
- Continuously monitor test coverage and results on a dashboard.
```

**Method 7 — Verification of Risk Resolution**

Define a method to verify that identified risks have actually been resolved before release. After applying a patch, confirm via rescan that the vulnerability has been eliminated and record the result.

```
[Risk Resolution Verification Procedure Overview]
- Run a rescan using the same tool after patch or mitigation is complete.
- Confirm that the vulnerability has been eliminated in the rescan result and record
  it in the vulnerability tracking system.
- For Critical/High vulnerabilities, the security team approves the verification result.
- If releasing with unresolved risks, document management approval and a mitigation plan.
```

**Method 8 — Export of Risk Information**

Define a method to export identified risk information to third parties (supply chain partners, customers, vulnerability databases, etc.) where appropriate. This includes using the VEX (Vulnerability Exploitability eXchange) format, or procedures for reporting vulnerability information to upstream projects through CVD channels.

```
[Risk Information Export Procedure Overview]
- When a new vulnerability is independently discovered, report it to the upstream project
  or CERT following CVD procedures.
- Use VEX format when sharing vulnerability impact information with supply chain partners.
- Before sharing with third parties, conduct a legal review to ensure no trade secrets
  or undisclosed information are included.
- Record and retain a log of information exports (recipient, date, content summary).
```

## 5. References

- No corresponding ISO/IEC 5230 clause (new clause exclusive to 18974)
- Related guide: [Enterprise Open Source Management Guide — 3. Process](../../../opensource_for_enterprise/3-process/)
- Related tools: [OSV-SCALIBR](../../../tools/4-osvscalibr/), [Dependency-Track](../../../tools/7-dependency-track/)
