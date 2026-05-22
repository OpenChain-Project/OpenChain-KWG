---
title: "Training Slides"
linkTitle: "Training Slides"
weight: 500
type: docs
categories: ["guide"]
tags: ["training materials", "slides", "open source governance", "ISO 5230", "ISO 18974"]
description: >
  A 4-hour training slide deck for those responsible for enterprise open source governance.
  It covers ISO/IEC 5230, ISO/IEC 18974, and AI compliance.
---

## Training Slides

This page provides a training slide deck covering the entire process of enterprise open source governance.
It is material that organizes the content of the [Enterprise Open Source Management Guide](/guide/opensource_for_enterprise/) into a 4-hour training format.

<!-- <div class="mx-auto" style="margin: 24px 0;">
  <a class="btn btn-lg btn-primary mr-3 mb-4" href="../../slides/enterprise-oss-governance.html" target="_blank">
    슬라이드 보기 →
  </a>
</div> -->


<a href="../../slides/enterprise-oss-governance.html" target="_blank" rel="noopener">View in full screen →</a>

<div style="margin-top: 16px;">
<iframe
  src="../../slides/enterprise-oss-governance.html"
  width="100%"
  height="560"
  style="border: 1px solid #E0E0E0; border-radius: 4px;"
  allowfullscreen>
</iframe>
</div>


## Course structure

| Part | Title | Key topics |
|------|------|-----------|
| Part 1 | Open source compliance fundamentals | Open source licenses, the compliance process, ISO/IEC 5230 |
| Part 2 | Security assurance | Vulnerability management, ISO/IEC 18974 |
| Part 3 | AI compliance | AI model licenses, training data management, AI-BOM |

- **Number of slides**: about 93
- **Estimated training time**: 4 hours
- **Audience**: Enterprise open source compliance personnel, legal teams, OSPO

## License

These slides are published under the [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) license.
You are free to use them as internal corporate training material.

---

## Guide to producing and updating the slides

Refer to this when modifying or re-producing the slides.

### Source file

The slide source is a [Marp](https://marp.app/)-format Markdown file.

```
docs/slides/enterprise-oss-governance.md
```

### Tools used

| Tool | Purpose | Installation |
|------|------|------|
| [Marp CLI](https://github.com/marp-team/marp-cli) | HTML/PDF build | `npm install -g @marp-team/marp-cli` |
| VS Code [Marp extension](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) | Live preview | VS Code extension marketplace |

### How to build

```bash
# Build HTML (for web publishing) — overwrites static/slides/
npx @marp-team/marp-cli docs/slides/enterprise-oss-governance.md --html \
  -o static/slides/enterprise-oss-governance.html

# Build PDF (for distribution and printing)
npx @marp-team/marp-cli docs/slides/enterprise-oss-governance.md --pdf \
  -o enterprise-oss-governance.pdf
```

### Update procedure

1. Edit `docs/slides/enterprise-oss-governance.md` (check the preview with the VS Code Marp extension)
2. Rebuild the HTML: run the build command above
3. Commit `static/slides/enterprise-oss-governance.html`
4. Push to the `master` branch → GitHub Pages deploys automatically

### CSS design system

The slide CSS is defined in the `style: |` block (lines 1–580) at the top of `docs/slides/enterprise-oss-governance.md`.

**Design tokens** (CSS variables inside `section { }`)

| Variable | Value | Purpose |
|------|----|------|
| `--c-blue` | `#1A73E8` | Primary accent color, h2 border |
| `--c-orange` | `#F4A020` | Warning / secondary accent |
| `--c-green` | `#1E8E5A` | Positive / completed status |
| `--c-purple` | `#6C3FC5` | AI part badge |
| `--c-warn` | `#E8680A` | Warning callout |
| `--r-card` | `12px` | Card border-radius |
| `--shadow` | `0 2px 8px rgba(0,0,0,0.07)` | Card shadow |

**Main component classes**

| Class | Purpose |
|--------|------|
| `.benefit-card` / `.benefit-row` | Horizontal card layout |
| `.summary-card` | Part summary card (blue left border) |
| `.summary-card-orange` | Part summary card (orange left border) |
| `.process-step` | Process step box |
| `.callout-green` / `.callout-orange` | Emphasis callout box |
| `.badge-ok` / `.badge-no` / `.badge-warn` | Status badges (green/red/orange) |
| `.url-link` | Reference link (auto-inserts SVG icon) |
| `.tag-star` | Emphasis text for dedicated items |
