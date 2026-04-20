---
title: "교육 슬라이드"
linkTitle: "교육 슬라이드"
weight: 500
type: docs
categories: ["guide"]
tags: ["교육자료", "슬라이드", "오픈소스 거버넌스", "ISO 5230", "ISO 18974"]
description: >
  기업 오픈소스 거버넌스 담당자를 위한 4시간 교육 슬라이드입니다.
  ISO/IEC 5230, ISO/IEC 18974, AI 컴플라이언스를 다룹니다.
---

## 교육 슬라이드

이 페이지에서는 기업 오픈소스 거버넌스 전 과정을 담은 교육 슬라이드를 제공합니다.
[기업 오픈소스 관리 가이드](/guide/opensource_for_enterprise/) 내용을 4시간 교육용으로 구성한 자료입니다.

<!-- <div class="mx-auto" style="margin: 24px 0;">
  <a class="btn btn-lg btn-primary mr-3 mb-4" href="../../slides/enterprise-oss-governance.html" target="_blank">
    슬라이드 보기 →
  </a>
</div> -->


<a href="../../slides/enterprise-oss-governance.html" target="_blank" rel="noopener">전체 화면으로 보기 →</a>

<div style="margin-top: 16px;">
<iframe
  src="../../slides/enterprise-oss-governance.html"
  width="100%"
  height="560"
  style="border: 1px solid #E0E0E0; border-radius: 4px;"
  allowfullscreen>
</iframe>
</div>


## 강의 구성

| 파트 | 제목 | 주요 내용 |
|------|------|-----------|
| Part 1 | 오픈소스 컴플라이언스 기초 | 오픈소스 라이선스, 컴플라이언스 프로세스, ISO/IEC 5230 |
| Part 2 | 보안 보증 | 취약점 관리, ISO/IEC 18974 |
| Part 3 | AI 컴플라이언스 | AI 모델 라이선스, 학습 데이터 관리, AI-BOM |

- **슬라이드 수**: 약 93장
- **예상 교육 시간**: 4시간
- **대상**: 기업 오픈소스 컴플라이언스 담당자, 법무팀, OSPO

## 라이선스

이 슬라이드는 [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) 라이선스로 공개됩니다.
기업 내부 교육 자료로 자유롭게 활용할 수 있습니다.

---

## 슬라이드 제작 및 업데이트 가이드

슬라이드를 수정하거나 재제작할 때 참고하세요.

### 소스 파일

슬라이드 원본은 [Marp](https://marp.app/) 형식의 Markdown 파일입니다.

```
.claude/work/slides-v5.md
```

### 사용 도구

| 도구 | 용도 | 설치 |
|------|------|------|
| [Marp CLI](https://github.com/marp-team/marp-cli) | HTML/PDF 빌드 | `npm install -g @marp-team/marp-cli` |
| VS Code [Marp 확장](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) | 실시간 미리보기 | VS Code 확장 마켓플레이스 |

### 빌드 방법

```bash
# HTML 빌드 (웹 게시용) — static/slides/ 덮어쓰기
npx @marp-team/marp-cli .claude/work/slides-v5.md --html \
  -o static/slides/enterprise-oss-governance.html

# PDF 빌드 (배포·인쇄용)
npx @marp-team/marp-cli .claude/work/slides-v5.md --pdf \
  -o enterprise-oss-governance.pdf
```

### 업데이트 절차

1. `.claude/work/slides-v5.md` 수정 (VS Code Marp 확장으로 미리보기 확인)
2. HTML 재빌드: 위 빌드 명령 실행
3. `static/slides/enterprise-oss-governance.html` 커밋
4. `master` 브랜치 push → GitHub Pages 자동 배포

### CSS 디자인 시스템

슬라이드 CSS는 `slides-v5.md` 상단 `style: |` 블록(1~580줄)에 정의되어 있습니다.

**디자인 토큰** (`section { }` 내 CSS 변수)

| 변수 | 값 | 용도 |
|------|----|------|
| `--c-blue` | `#1A73E8` | 주요 강조색, h2 테두리 |
| `--c-orange` | `#F4A020` | 경고·보조 강조 |
| `--c-green` | `#1E8E5A` | 긍정·완료 상태 |
| `--c-purple` | `#6C3FC5` | AI 파트 배지 |
| `--c-warn` | `#E8680A` | 경고 callout |
| `--r-card` | `12px` | 카드 border-radius |
| `--shadow` | `0 2px 8px rgba(0,0,0,0.07)` | 카드 그림자 |

**주요 컴포넌트 클래스**

| 클래스 | 용도 |
|--------|------|
| `.benefit-card` / `.benefit-row` | 가로형 카드 레이아웃 |
| `.summary-card` | 파트 요약 카드 (파란 왼쪽 테두리) |
| `.summary-card-orange` | 파트 요약 카드 (주황 왼쪽 테두리) |
| `.process-step` | 프로세스 단계 박스 |
| `.callout-green` / `.callout-orange` | 강조 callout 박스 |
| `.badge-ok` / `.badge-no` / `.badge-warn` | 상태 뱃지 (초록/빨강/주황) |
| `.url-link` | 참고 링크 (SVG 아이콘 자동 삽입) |
| `.tag-star` | 전용 항목 강조 텍스트 |
