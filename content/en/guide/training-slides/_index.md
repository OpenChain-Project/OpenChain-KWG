---
title: "Training Slides"
linkTitle: "Training Slides"
weight: 500
type: docs
categories: ["guide"]
tags: ["training materials", "slides", "open source governance", "ISO 5230", "ISO 18974", "ISO 42001", "AI compliance"]
description: >
  A 4-hour training deck for enterprise open source governance practitioners,
  covering ISO/IEC 5230, ISO/IEC 18974, and ISO/IEC 42001 (AI) compliance.
---

## Training Slides

This page provides a training deck covering the full enterprise open source governance process.
It reorganizes the [Enterprise Open Source Management Guide](/guide/opensource_for_enterprise/) into a 4-hour training format.

<a href="../../slides/enterprise-oss-governance/" target="_blank" rel="noopener">Open in full screen →</a>

<div style="margin-top: 16px;">
<iframe
  src="../../slides/enterprise-oss-governance/"
  width="100%"
  height="560"
  style="border: 1px solid #E0E0E0; border-radius: 4px;"
  allowfullscreen>
</iframe>
</div>

## Course Structure

| Part | Title | Key Topics |
|------|-------|-----------|
| Part 0 | Introduction | Course objectives · 4-hour roadmap |
| Part 1 | Understanding the Standards | ISO/IEC 5230 · 18974 · 42001 + OpenChain |
| Part 2 | Six Core Elements | Organization · policy · process · tools · training · conformance |
| Part 3 | AI Compliance | Global AI regulations · model licensing · AI SBOM · supply chain security |
| Part 4 | Live Demo | SBOM generation → Dependency-Track → VEX triage |
| Part 5 | Closing | Recap · next steps · Q&A |

- **Slide count**: ~99 slides
- **Estimated duration**: 4 hours (Part 3 AI expanded to 75 minutes)
- **Audience**: Enterprise open source compliance officers, legal teams, OSPOs

## License

These slides are released under the [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) license.
You are free to use them as internal corporate training materials.

---

## Slide Authoring & Update Guide

Refer to this when editing or rebuilding the slides.

### Source Files

The slides are built with [Slidev](https://sli.dev/), with the body split per part.

```
docs/slides/v6/slides.md           # cover + per-part src include
docs/slides/v6/pages/*.md          # per-part body (part01·part2a·part2b·part3·part45)
docs/slides/v6/components/*.vue     # 7 reusable components
docs/slides/v6/styles/tokens.css    # design tokens (dark-first + light export)
```

### Tools

| Tool | Purpose | Install |
|------|---------|---------|
| [Slidev](https://sli.dev/) | Build & preview slides | `npm install` in `docs/slides/v6` |

### Build & Preview

```bash
cd docs/slides/v6
npm install          # first time only
npm run dev          # local preview (http://localhost:3030)
npm run build        # static build → static/slides/enterprise-oss-governance/
```

On `master` push, GitHub Actions automatically runs the Slidev build and Hugo deploy, so no manual build/commit of the output is needed (the build output is git-ignored).

### Update Procedure

1. Edit `docs/slides/v6/pages/*.md` (preview with `npm run dev`)
2. Confirm a clean local build with `npm run build`
3. Push to `master` → GitHub Actions builds and deploys automatically

### Design System

Refer to the working documents for design tokens, components, and pacing rules.

| Document | Content |
|----------|---------|
| `docs/slides/v6/SLIDES-WORK/DESIGN-TOKENS.md` | Color · typography · spacing tokens (dark-first + light export, inherits brand teal) |
| `docs/slides/v6/SLIDES-WORK/COMPONENTS.md` | 7 reusable components — props & usage |
| `docs/slides/v6/SLIDES-WORK/PACING.md` | 4-hour (240 min) time allocation · breaks · compression strategy |

> The previous Marp-based v5 deck is preserved at `docs/slides/archive/v5-marp-2026-05-12.md`.
