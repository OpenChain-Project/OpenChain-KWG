# slides-v5.md CSS 디자인 개선 지시문

## 목적
`.claude/work/slides-v5.md` 의 CSS 블록(1~560줄)만 수정하여
디자인 품질을 높인다. 슬라이드 콘텐츠(561줄~)는 절대 건드리지 않는다.

## 실행 전 확인
```
Read slides-v5.md offset=1 limit=10   ← frontmatter 확인용 (필요 시)
```
CSS 블록은 이미 아래 분석에 기반하므로 전체를 다시 읽지 않아도 된다.

---

## 변경 1: CSS 변수 도입 (`section` 블록 상단에 추가)

`style: |` 블록의 `section { ... }` 안에 아래 변수를 **첫 줄로** 삽입한다.

```css
/* ===== 디자인 토큰 ===== */
--c-blue:   #1A73E8;
--c-orange: #F4A020;
--c-purple: #6C3FC5;
--c-green:  #1E8E5A;
--c-warn:   #E8680A;
--c-dark:   #0D47A1;
--c-text:   #1C1C1E;
--c-muted:  #444444;
--c-bg:     #F5F7FA;
--c-border: #E0E0E0;
--r-card:   12px;
--shadow:   0 2px 8px rgba(0,0,0,0.07);
```

이후 아래 색상 값들을 변수로 교체한다 (replace_all 사용):

| 하드코딩 값 | 교체 변수 |
|------------|---------|
| `#1A73E8` | `var(--c-blue)` |
| `#F4A020` | `var(--c-orange)` |
| `#6C3FC5` | `var(--c-purple)` |
| `#1E8E5A` | `var(--c-green)` |
| `#E8680A` | `var(--c-warn)` |
| `#0D47A1` | `var(--c-dark)` |
| `#1C1C1E` | `var(--c-text)` |
| `#444` 또는 `#444444` | `var(--c-muted)` |
| `#F5F7FA` | `var(--c-bg)` |
| `#E0E0E0` | `var(--c-border)` |

> 주의: `background: #1C1C1E` (어두운 헤더 배경)과 `color: #1C1C1E` (텍스트) 모두 `var(--c-text)` 로 교체해도 무방하다.

---

## 변경 2: 카드 쉐도우·radius 강화

아래 클래스에 `box-shadow`와 `border-radius` 를 교체/추가한다.

### `.benefit-card`
```css
/* 변경 전 */
border-radius: 10px;
/* 없음 (box-shadow) */

/* 변경 후 */
border-radius: var(--r-card);
box-shadow: var(--shadow);
```

### `.summary-card`
```css
/* 변경 전 */
border-radius: 10px;

/* 변경 후 */
border-radius: var(--r-card);
box-shadow: var(--shadow);
```

### `.process-step`
```css
/* 변경 전 */
border-radius: 8px;

/* 변경 후 */
border-radius: var(--r-card);
box-shadow: var(--shadow);
```

### `.card` (인포그래픽 그리드)
```css
/* 변경 전 */
border-radius: 8px;

/* 변경 후 */
border-radius: var(--r-card);
box-shadow: var(--shadow);
```

---

## 변경 3: h2 시각적 계층 강화

```css
/* 변경 전 */
h2 {
  font-size: 32px;
  font-weight: 700;
  color: #1C1C1E;
  margin-bottom: 16px;
}

/* 변경 후 */
h2 {
  font-size: 32px;
  font-weight: 700;
  color: var(--c-text);
  margin-bottom: 16px;
  padding-bottom: 10px;
  border-bottom: 3px solid var(--c-blue);
}
```

---

## 실행 순서

1. `Read slides-v5.md offset=1 limit=560` — CSS 블록 확인
2. `Edit` — `section { ... }` 안에 변수 블록 삽입
3. `Edit` — h2 블록 교체
4. `Edit` — `.benefit-card` / `.summary-card` / `.process-step` / `.card` 각각 수정
5. 색상 하드코딩 → 변수 치환 (신중하게, replace_all 시 범위 확인)
6. `hugo --minify` 빌드 확인 불필요 (Marp 파일, Hugo와 무관)
7. `git add .claude/work/slides-v5.md && git commit`

---

## 토큰 절약 원칙

- 변경 전 전체 파일을 읽지 말 것 — CSS 블록(1~560줄)만 읽으면 충분
- 각 Edit는 최소 범위로 — 하나의 클래스 블록 단위로 수행
- 색상 치환 시 `replace_all: true` 활용하되 헤더 배경(`background: var(--c-text)`)처럼 의미가 달라지는 경우는 개별 처리
- 빌드 검증은 Marp CLI(`npx @marp-team/marp-cli slides-v5.md --pdf`)로 확인하거나 VS Code Marp 확장으로 직접 확인
