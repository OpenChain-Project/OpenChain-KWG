---
title: "교육 슬라이드"
linkTitle: "교육 슬라이드"
weight: 500
type: docs
categories: ["guide"]
tags: ["교육자료", "슬라이드", "오픈소스 거버넌스", "ISO 5230", "ISO 18974", "ISO 42001", "AI 컴플라이언스"]
description: >
  기업 오픈소스 거버넌스 담당자를 위한 4시간 교육 슬라이드입니다.
  ISO/IEC 5230, ISO/IEC 18974, ISO/IEC 42001(AI) 컴플라이언스를 다룹니다.
---

## 교육 슬라이드

이 페이지에서는 기업 오픈소스 거버넌스 전 과정을 담은 교육 슬라이드를 제공합니다.
[기업 오픈소스 관리 가이드](/guide/opensource_for_enterprise/) 내용을 4시간 교육용으로 구성한 자료입니다.

<a href="../../slides/enterprise-oss-governance/" target="_blank" rel="noopener">전체 화면으로 보기 →</a>

<div style="margin-top: 16px;">
<iframe
  src="../../slides/enterprise-oss-governance/"
  width="100%"
  height="560"
  style="border: 1px solid #E0E0E0; border-radius: 4px;"
  allowfullscreen>
</iframe>
</div>

## 강의 구성

| 파트 | 제목 | 주요 내용 |
|------|------|-----------|
| Part 0 | 도입 | 강의 목적·4시간 로드맵 |
| Part 1 | 표준 이해 | ISO/IEC 5230·18974·42001 + OpenChain |
| Part 2 | 6대 핵심 요소 | 조직·정책·프로세스·도구·교육·준수 |
| Part 3 | AI 컴플라이언스 | 글로벌 AI 규제·모델 라이선스·AI SBOM·공급망 보안 |
| Part 4 | 라이브 데모 | SBOM 생성 → Dependency-Track → VEX Triage |
| Part 5 | 마무리 | 회고·다음 단계·Q&A |

- **슬라이드 수**: 약 99장
- **예상 교육 시간**: 4시간 (Part 3 AI 75분 확장)
- **대상**: 기업 오픈소스 컴플라이언스 담당자, 법무팀, OSPO

## 라이선스

이 슬라이드는 [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) 라이선스로 공개됩니다.
기업 내부 교육 자료로 자유롭게 활용할 수 있습니다.

---

## 슬라이드 제작 및 업데이트 가이드

슬라이드를 수정하거나 재제작할 때 참고하세요.

### 소스 파일

슬라이드 원본은 [Slidev](https://sli.dev/) 기반이며, 본문은 파트별로 분할되어 있습니다.

```
docs/slides/v6/slides.md           # 표지 + 파트 src include
docs/slides/v6/pages/*.md          # 파트별 본문 (part01·part2a·part2b·part3·part45)
docs/slides/v6/components/*.vue     # 재사용 컴포넌트 7종
docs/slides/v6/styles/tokens.css    # 디자인 토큰 (다크 위주 + 라이트 export)
```

### 사용 도구

| 도구 | 용도 | 설치 |
|------|------|------|
| [Slidev](https://sli.dev/) | 슬라이드 빌드·미리보기 | `docs/slides/v6`에서 `npm install` |

### 빌드·미리보기

```bash
cd docs/slides/v6
npm install          # 최초 1회
npm run dev          # 로컬 미리보기 (http://localhost:3030)
npm run build        # 정적 빌드 → static/slides/enterprise-oss-governance/
```

`master` 브랜치 push 시 GitHub Actions가 Slidev 빌드 + Hugo 배포를 자동 수행하므로, 별도 수동 빌드·커밋은 필요하지 않습니다(빌드 산출물은 `.gitignore` 대상).

### 업데이트 절차

1. `docs/slides/v6/pages/*.md` 수정 (`npm run dev`로 미리보기 확인)
2. `npm run build`로 로컬 빌드 통과 확인
3. `master` 브랜치 push → GitHub Actions 자동 빌드·배포

### 디자인 시스템

디자인 토큰·컴포넌트·페이싱 규칙은 작업 문서를 참고하세요.

| 문서 | 내용 |
|------|------|
| `docs/slides/v6/SLIDES-WORK/DESIGN-TOKENS.md` | 컬러·타이포·간격 토큰 (다크 위주 + 라이트 export, 브랜드 틸 계승) |
| `docs/slides/v6/SLIDES-WORK/COMPONENTS.md` | 재사용 컴포넌트 7종 props·사용법 |
| `docs/slides/v6/SLIDES-WORK/PACING.md` | 4시간(240분) 시간 배분·휴식·압축 전략 |

> 이전 Marp 기반 v5 자료는 `docs/slides/archive/v5-marp-2026-05-12.md`에 보존되어 있습니다.
