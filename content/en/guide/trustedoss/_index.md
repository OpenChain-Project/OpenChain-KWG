---
title: "Trusted OSS"
linkTitle: "Trusted OSS"
weight: 50
type: docs
categories: ["guide"]
tags: ["Trusted OSS", "TRUSCA", "self-certification", "DevSecOps", "AI coding"]
description: >
  A community resource that helps you turn the management framework described in this guide into actual deliverables.
---

{{% pageinfo %}}

Trusted OSS grew out of KWG community work and was published by the author of this guide.
Its documentation is released under CC BY 4.0 and its code under MIT and Apache 2.0.

**Site: [https://trustedoss.github.io/en/](https://trustedoss.github.io/en/)**

{{% /pageinfo %}}

Trusted OSS covers four areas.

## Generating self-certification deliverables

It produces the documents required for ISO/IEC 5230 and ISO/IEC 18974 self-certification
through a conversation with an AI agent: organizational setup, policy, processes, SBOM
analysis, vulnerability reports, training curricula, and a draft conformance statement.
It follows the same six steps described in the
[open source management guide](../opensource_for_enterprise/).

## DevSecOps pipeline

It covers how to add security checks to a CI/CD pipeline, walking through SAST, DAST, SCA,
secret detection, container security, and IaC security, and mapping each one to the
corresponding ISO/IEC 18974 clauses.

## AI coding governance

It covers the rules an organization needs when its developers use AI coding tools: agent
permissions, security review of AI-generated code, licensing and legal questions, and the
connection to ISO/IEC 42001. It also provides rule file examples for Claude Code, GitHub
Copilot, Cursor, and other tools.

## TRUSCA

A self-hosted open source SCA portal that brings vulnerabilities (CVE), license compliance,
and SBOM management into a single screen. Installation and usage are covered on the
[TRUSCA tool page](../tools/11-trusca/).
