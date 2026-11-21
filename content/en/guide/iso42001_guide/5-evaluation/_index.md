---
title: "5. Performance Evaluation and Improvement"
weight: 50
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "Performance Evaluation", "Improvement", "Monitoring"]
description: >
  Explains the requirements of ISO/IEC 42001 §9 (Performance evaluation) and §10 (Improvement) that intersect with open source management.
  It describes how to integrate open source compliance metrics with the performance indicators of the AI management system.
---

## 1. Overview

ISO/IEC 42001 §9 and §10 cover the cycle of confirming whether the AI management system is achieving its intended results
and improving where it falls short. From an open source perspective,
<strong>§9.1 (Monitoring and measurement)</strong> is linked with open source compliance metrics.

---

## 2. §9.1 Monitoring and Measurement: Open Source Compliance Metrics ★

ISO/IEC 42001 requires monitoring and measuring the performance of the AI management system.
Integrate existing open source compliance metrics into the performance indicators of the AI management system.

### Examples of Open Source-Related AI Performance Indicators

| Indicator | Measurement method | Target | Measurement frequency |
|------|---------|------|---------|
| **AI SBOM currency rate** | Rate of AI SBOM updates completed relative to AI deployments | 100% | At every deployment |
| **Model license review rate** | Rate of license reviews completed relative to newly adopted models | 100% | Quarterly |
| **Critical CVE patch rate** | Rate of Critical CVEs patched within 14 days of discovery | 95% or more | Monthly |
| **Dataset license recording rate** | Rate of dataset licenses recorded in the AI SBOM | 100% | Quarterly |
| **Number of OSS license violations** | Number of license violations found and time taken to resolve them | Target of 0 | Monthly |
| **AI supply chain verification rate** | Rate of supply chain verification completed when procuring external models | 100% | At every procurement |

{{% alert title="Integrating with ISO/IEC 5230 and 18974 metrics" color="success" %}}
If you already operate open source compliance metrics based on ISO/IEC 5230 or 18974,
manage them in an integrated way by **adding AI-related metrics to the existing open source dashboard**.
There is no need to build a separate AI-only measurement framework.
{{% /alert %}}

**Checkpoints**:
- [ ] Are performance indicators related to open source compliance of AI systems defined?
- [ ] Are the indicators measured and recorded at the defined frequency?
- [ ] Are improvement actions established when targets are not met?

---

## 3. §9.2 Internal Audit

Conduct regular internal audits to check whether the AI management system meets the ISO 42001 requirements.
Include open source compliance items in the internal audit checklist.

### AI Open Source Internal Audit Checklist

```markdown
## Internal Audit Checklist for Open Source Compliance of AI Systems
### Audit target: [AI system name]  / Audit date: YYYY-MM-DD

#### AI SBOM
- [ ] Does the AI SBOM reflect the latest deployed version?
- [ ] Are all frameworks, models, and datasets included in the AI SBOM?
- [ ] Is the license information of each component recorded accurately?

#### License compliance
- [ ] Have the license terms of all open source AI components been reviewed?
- [ ] Have the license obligations (copyright notices, change notices, and so on) been fulfilled?
- [ ] Are models with commercial use restrictions not being used in commercial services?

#### Security vulnerability management
- [ ] Has an SCA scan been performed within the last quarter?
- [ ] Have identified Critical/High CVEs been patched in a timely manner?
- [ ] Is the vulnerability handling history recorded?

#### AI supply chain
- [ ] Has license verification of externally procured AI models been completed?
- [ ] Are license changes of external models being monitored?
```

---

## 4. §9.3 Management Review

When top management reviews the AI management system, include the status of open source compliance in the reported items.

**Examples of management review report items**:
- Status of AI SBOM management (currency rate, coverage)
- Occurrences of open source license violations and actions taken
- Status of AI system security vulnerabilities and patch rate
- Status of open source risks in the AI supply chain

---

## 5. §10.1 Nonconformity and Corrective Action

When an open source compliance violation is found, follow this procedure:

1. **Immediate action**: Isolate the violation or take a temporary measure (for example, suspend the affected feature)
2. **Cause analysis**: Identify the root cause of why the violation occurred
3. **Corrective action**: Resolve the violation (license compliance, replacing the component, and so on)
4. **Preventing recurrence**: Improve the process (strengthening review procedures, training, and so on)
5. **Record keeping**: Document the violation, the actions, and the results

---

## 6. §10.2 Continual Improvement

Directions for continually improving the open source management framework for AI systems:

- Update review criteria for new types of AI model licenses
- Adopt tools that automate AI SBOM generation (using cdxgen, Syft, and others)
- Reflect the latest guides from the AI Work Group

---

## 7. References

- [ISO/IEC 42001 Guide home](../)
- [Enterprise Open Source Management Guide: 6. Declaring Conformance](../../opensource_for_enterprise/6-conforming/)
- [ISO/IEC 5230: §3.6 Conformance](../../iso5230_guide/6-conformance/)
- [Tools: cdxgen (AI SBOM generation)](../../tools/5-cdxgen/)
- [Tools: Syft (container image analysis)](../../tools/6-syft/)
- [Tools: Dependency-Track (vulnerability tracking)](../../tools/7-dependency-track/)
