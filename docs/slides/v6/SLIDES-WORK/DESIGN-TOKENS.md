# 슬라이드 v6 디자인 토큰

> Phase 1 산출물. 모든 컴포넌트·슬라이드 스타일의 단일 기준(Single Source of Truth).
> 실제 구현은 `docs/slides/v6/styles/tokens.css` (CSS variables). 이 문서는 *왜*와 *값*을 정의하고, tokens.css는 그것을 *코드화*한다.
> 최초 작성: 2026-05-22 · 재설계: 2026-05-22 (디자인 기준·화면 모드 결정 반영)

---

## 1. 디자인 철학

> **1차 기준: 명확성(Clarity) · 집중 유지(Focus) · 전문 신뢰감(Trust).**
> "AI 냄새 회피"는 목적이 아니라, 위 기준을 지키면 따라오는 *부수 효과*다.

도구는 **Slidev 유지**(순수 HTML 바이브코딩 기각, 2026-05-22). v6는 4시간·80~120장·데이터 밀도 높은 전문가용 기업 교육이다. 따라서 디자인은 *마케팅 슬라이드의 감성 미니멀리즘*이 아니라 **"복잡한 ISO/AI 컴플라이언스를 4시간 동안 명확히 전달하고 집중을 유지하는"** 정보 설계를 지향한다.

미니멀리즘과 일관성은 **수단**으로 유지한다(대규모 유지보수·전문 신뢰감에 기여). 단, 정보 전달과 집중 유지를 해치는 지점에서는 미니멀 원칙보다 명확성을 우선한다.

### 채택 원칙

| 원칙 | 적용 |
|------|------|
| **여백 중심 단순 레이아웃** | 슬라이드당 1메시지. 넉넉한 여백. 장식보다 타이포·여백·1px 선으로 위계 |
| **그라데이션·과효과 절제** | 큰 면적 그라데이션·글로우·과한 트랜지션 금지. 단 다크 모드의 미묘한 elevation은 허용 |
| **데이터 의미색 자유** ★ | VEX 상태·CVSS 등급·규제 매트릭스 등 *색이 곧 의미*인 데이터에는 의미색을 자유롭게 사용(Callout 전용 제한 해제) |
| **파트 길찾기(wayfinding)** ★ | 7개 파트에 은은한 accent 색조 부여 — 진행 인디케이터·파트 표지에만, 본문은 틸 통일 |
| **절제된 강조·시각 리듬** ★ | 핵심 숫자 크게, 강조 밑줄(틸), 파트 전환 리듬으로 4시간 집중 유지. 단 손글씨 폰트·낙서 일러스트는 여전히 배제(전문 신뢰감) |

★ = 2026-05-22 "명확성·집중 우선" 결정으로 강화된 항목.

### 배제 원칙

- **손글씨 폰트·낙서 일러스트**: 전문가용 ISO 기업 교육 톤과 불일치 → 절제된 산세리프 + 데이터 시각화/다이어그램으로 정보 전달.

> 출처: 사용자 공유 "AI 냄새 안 나는 슬라이드 만들기" 글(2026-05-22)의 미니멀 감각을 *기반*으로 삼되, 우리 맥락(데이터 밀도·4시간·전문 교육)에 맞게 "명확성·집중" 프레임으로 재정의.

---

## 2. 컬러

### 2.1 모드 전략 — 다크 위주 + 라이트 export

- **기본(발표용): 다크.** 어두운 강의장·빔프로젝터에서 눈부심 최소화, 코드 가독성 우선.
- **export(배포·인쇄용): 라이트.** PDF·인쇄 시 잉크 절약·가독성. Slidev `--theme` / print 미디어로 전환.
- 모든 토큰은 **다크 값을 `:root`에 정의**하고, **라이트 값을 `.light`(또는 print 미디어)에서 오버라이드**한다. 컴포넌트는 항상 `var(--oc-*)`만 참조하므로 모드 분기가 토큰에 캡슐화된다.

브랜드 색은 사이트 `assets/scss/_variables_project.scss`(틸 `#01819a`/`#02abb8`)를 계승하되, 다크 배경 대비를 위해 다크 모드에선 밝게 조정한 변형을 쓴다.

### 2.2 브랜드 (틸 계열)

| 토큰 | 다크 | 라이트(export) | 용도 |
|------|------|----------------|------|
| `--oc-primary` | `#16b3c9` | `#01819a` | 핵심 강조·제목 강조선·키 컬러 |
| `--oc-primary-strong` | `#3cc8db` | `#016072` | hover·고대비 강조 |
| `--oc-secondary` | `#02abb8` | `#02abb8` | 보조 강조·링크·viz 1차 |
| `--oc-primary-soft` | `rgba(22,179,201,0.14)` | `#e8f4f6` | 연한 강조 배경·키워드 하이라이트 |

### 2.3 표면·잉크 (배경 계층)

| 토큰 | 다크 | 라이트(export) | 용도 |
|------|------|----------------|------|
| `--oc-bg` | `#0e1619` | `#ffffff` | 슬라이드 기본 배경 |
| `--oc-surface` | `#152126` | `#f6f9fa` | 카드·패널(1단계 elevation) |
| `--oc-surface-2` | `#1c2a30` | `#eef3f5` | 중첩 카드·코드 외 박스(2단계) |
| `--oc-ink` | `#e9eef0` | `#14181a` | 본문 텍스트 |
| `--oc-ink-muted` | `#94a6ac` | `#5a6b70` | 보조·캡션·출처 |
| `--oc-line` | `#2a373d` | `#e2e8ea` | 1px 구분선·카드 보더 |

### 2.4 시맨틱 (Callout + 상태 표시)

| variant | 다크 text | 라이트 text | 의미 (가이드 규칙 계승) |
|---------|-----------|-------------|------------------------|
| `info` | `#3cc5db` | `#01708a` | 구축 단계·연결·참고 |
| `success` | `#5fd08a` | `#2f7d4f` | 권장·팁·ISO/IEC 5230 인용·표준 통합 |
| `warn` | `#f0b552` | `#9a6b00` | 주의·ISO/IEC 18974 인용(보안 강조) |
| `critical` | `#f0726a` | `#b3382f` | 중요 경고·법규 시한·위험 |

- 배경/보더는 각 text 색의 저채도 변형(다크: `rgba(text, 0.12)` 배경 + `rgba(text, 0.4)` 보더 / 라이트: 연색 배경 + 중채도 보더). tokens.css에서 파생.

### 2.5 데이터 시각화 (자유 사용) ★

`색 = 의미`인 데이터에 제약 없이 사용. 두 종류로 구분.

**순서형(severity·계조)** — 틸 단색 계조:
| 토큰 | 다크 | 용도 |
|------|------|------|
| `--oc-scale-1` | `#0a6b7a` | 최저 |
| `--oc-scale-2` | `#118ca0` | |
| `--oc-scale-3` | `#16b3c9` | |
| `--oc-scale-4` | `#5fd5e3` | 최고 |

**범주형(VEX 상태·도구 분류 등)** — 구분 가능한 의미색:
| 토큰 | 다크 | 매핑 예 |
|------|------|---------|
| `--oc-cat-teal` | `#16b3c9` | VEX `fixed` / 정상 |
| `--oc-cat-amber` | `#f0b552` | VEX `under_investigation` / 주의 |
| `--oc-cat-red` | `#f0726a` | VEX `affected` / 위험 (CVSS Critical) |
| `--oc-cat-green` | `#5fd08a` | VEX `not_affected` / 안전 |
| `--oc-cat-purple` | `#a78bfa` | AI·규제 강조 |
| `--oc-cat-gray` | `#94a6ac` | 미분류·N/A |

> CVSS 등급은 순서형(green→amber→red), VEX 4상태값은 범주형 매핑을 사용한다.

### 2.6 파트 길찾기 (wayfinding) ★

진행 인디케이터·파트 표지·헤더 막대에만 은은하게. 본문 색은 틸 통일.

| 파트 | accent | 비고 |
|------|--------|------|
| Part 0 도입 | `--oc-ink-muted` | 중립 |
| Part 1 표준 이해 | `--oc-primary` (틸) | |
| Part 2 실무 (조직~준수) | `--oc-secondary` (시안) | 서브파트는 명도 변화 |
| Part 3 AI 컴플라이언스 | `--oc-cat-purple` | AI 시각 차별(콘텐츠 중요도 반영) |
| Part 4 라이브 데모 | `--oc-cat-green` | |
| Part 5 마무리 | `--oc-cat-amber` | |

---

## 3. 타이포그래피

### 3.1 폰트 스택

손글씨·장식 폰트 없음. 한글·영문 모두 절제된 산세리프 + 코드용 모노스페이스.

| 토큰 | 스택 |
|------|------|
| `--oc-font-sans` | `"Pretendard", -apple-system, "Apple SD Gothic Neo", "Noto Sans KR", system-ui, sans-serif` |
| `--oc-font-mono` | `"JetBrains Mono", "D2Coding", ui-monospace, "SFMono-Regular", monospace` |

> 제목·본문 모두 `--oc-font-sans` 단일. 폰트 종류가 아니라 크기·굵기·여백·색으로 위계를 만든다.

### 3.2 타입 스케일 (16:9 / 1280×720 기준)

| 토큰 | 크기 | 굵기 | line-height | 용도 |
|------|------|------|-------------|------|
| `--oc-text-display` | `3.5rem` | 700 | 1.1 | 표지·파트 전환 대제목 |
| `--oc-text-h1` | `2.25rem` | 600 | 1.2 | 슬라이드 제목 |
| `--oc-text-h2` | `1.75rem` | 600 | 1.25 | 섹션 제목 |
| `--oc-text-h3` | `1.375rem` | 600 | 1.3 | 소제목 |
| `--oc-text-body` | `1.125rem` | 400 | 1.6 | 본문 |
| `--oc-text-small` | `0.875rem` | 400 | 1.5 | 보조·표 셀 |
| `--oc-text-caption` | `0.75rem` | 400 | 1.4 | 캡션·출처·각주 |
| `--oc-text-stat` | `4.5rem` | 700 | 1.0 | **핵심 숫자 강조**(절제된 강조 — 24h·CVSS 점수 등) |

- 강조 굵기 `--oc-weight-bold: 700`. 강조 밑줄은 `--oc-primary` 2px.

---

## 4. 간격·레이아웃

### 4.1 Spacing scale (0.25rem = 4px 베이스)

| 토큰 | 값 | px |
|------|-----|-----|
| `--oc-space-xs` | `0.25rem` | 4 |
| `--oc-space-sm` | `0.5rem` | 8 |
| `--oc-space-md` | `1rem` | 16 |
| `--oc-space-lg` | `1.5rem` | 24 |
| `--oc-space-xl` | `2.5rem` | 40 |
| `--oc-space-2xl` | `4rem` | 64 |
| `--oc-space-3xl` | `6rem` | 96 |

### 4.2 레이아웃·집중 원칙

- 슬라이드 외곽 패딩 `--oc-space-2xl`(64px) 이상 — 가장자리까지 채우지 않는다.
- 슬라이드당 핵심 메시지 1개. 요소 5개 초과 시 분할 또는 `<v-click>` 점진 표시.
- 구분은 여백 우선, 부족할 때만 `--oc-line` 1px. 박스 남발 금지.
- **시각 리듬**: 파트 전환마다 표지 슬라이드로 호흡. 데이터 밀도 높은 슬라이드 뒤엔 여백 많은 요약 슬라이드 배치.

### 4.3 형태 토큰

| 토큰 | 값 | 비고 |
|------|-----|------|
| `--oc-radius-sm` | `4px` | 칩·인라인 코드 |
| `--oc-radius-md` | `8px` | 카드·Callout |
| `--oc-radius-lg` | `12px` | 큰 패널 |
| `--oc-border` | `1px solid var(--oc-line)` | 카드 기본 |
| `--oc-elevation` | 다크: `0 1px 0 rgba(255,255,255,0.04) inset, 0 8px 24px rgba(0,0,0,0.35)` / 라이트: `none` | 다크에서만 미묘한 깊이, 라이트는 보더로 |

---

## 5. Callout / alert 매핑

가이드 작성 규칙(`.claude/rules/guide-writing.md`)의 alert color 의미를 슬라이드 `<Callout variant>`에 1:1 계승.

| 가이드 alert | 슬라이드 Callout | 색(2.4) | 대표 용도 |
|--------------|------------------|---------|-----------|
| `color="info"` | `<Callout variant="info">` | info | 구축 단계·연결·참고 |
| `color="success"` | `<Callout variant="success">` | success | 권장·팁·ISO 5230 인용·통합 |
| `color="warning"` | `<Callout variant="warn">` | warn | 주의·ISO 18974 인용(보안) |
| `pageinfo`/중요 박스 | `<Callout variant="critical">` | critical | 중요 절차·법규 시한 강조 |

- **ISO 인용 박스**: ISO/IEC 5230 = `success`, ISO/IEC 18974 = `warn`. 영문 원문 + 한글 번역 병기.

---

## 6. 코드 블록

- highlighter: **Shiki** (dual theme).
  - 다크(기본): `vitesse-dark` — 저채도·고가독, 다크 배경과 조화.
  - 라이트(export): `github-light`.
  - slides.md frontmatter: `highlighter: shiki` + `themes: { dark: 'vitesse-dark', light: 'github-light' }`
- 폰트 `--oc-font-mono`, 크기 `0.95rem`, line-height 1.5.
- 배경 `--oc-surface-2`, 보더 `--oc-border`, radius `--oc-radius-md`.
- 언어 라벨 명시(`bash`·`yaml`·`json`·`groovy`·`diff`·`text`) — 가이드 규칙 계승.
- 라인 하이라이트·diff는 `<CodeShowcase>` 컴포넌트로 표준화.

---

## 7. CSS 변수 ↔ tokens.css 구현 지침

- 모든 토큰은 `--oc-*` prefix(UnoCSS·Slidev 기본 변수와 충돌 회피).
- **다크 값을 `:root`에 선언**, **라이트 값을 `html.light` + `@media print`에서 오버라이드**.
- Slidev `default` 테마 위에 `styles/tokens.css`를 덮어쓰고, 테마 기본 변수(`--slidev-theme-primary` 등)도 `--oc-primary`로 매핑.
- 컴포넌트(.vue)는 하드코딩 색·크기 금지, 반드시 `var(--oc-*)` 참조.
- Slidev 다크모드 토글(`UnoCSS dark:`)과 정합: 기본 다크, export 시 `--theme light` 또는 print 미디어로 라이트.

---

## 변경 이력

- 2026-05-22 (재설계): 디자인 기준을 "AI 냄새 회피 미니멀" → **"명확성·집중·신뢰"**로 재정의. 데이터 의미색 자유(2.5)·파트 길찾기(2.6)·핵심 숫자 강조(`--oc-text-stat`) 추가. 화면 모드 **다크 위주 + 라이트 export** 듀얼 토큰 구조로 전환.
- 2026-05-22 (최초): 브랜드 색 사이트 계승, 미니멀 단일 라이트 안.
