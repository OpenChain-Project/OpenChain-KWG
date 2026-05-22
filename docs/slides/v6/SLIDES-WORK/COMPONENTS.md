# 슬라이드 v6 컴포넌트 인벤토리

> Phase 1 산출물. 11종 컴포넌트의 *설계도* — props·slot·사용 예시·근거를 확정해 구현 일관성을 보장한다.
> 토큰 기준: `DESIGN-TOKENS.md` / `styles/tokens.css`. 구현체: `components/*.vue`.
> 최초 작성: 2026-05-22

---

## 공통 규칙

- **토큰만 참조**: 모든 색·크기·간격은 `var(--oc-*)`. 하드코딩 금지 → 다크/라이트 전환·테마 수정이 토큰에서 일괄 처리됨.
- **props 명명**: camelCase. enum은 문자열 리터럴 유니온.
- **데이터 vs 콘텐츠**: 정형 데이터는 `props`(배열/객체)로 주입, 자유 서술은 `<slot>`으로.
- **접근성**: 의미를 색에만 의존하지 않는다 — 상태/등급은 색 + 라벨/아이콘 병기(VEX·CVSS 등).
- **반응형**: 슬라이드 16:9(1280×720) 기준. 컨테이너 폭 100%, 폰트는 토큰 스케일.
- **점진 표시**: 정보 밀도 높은 컴포넌트는 `<v-click>` 호환(내부 항목 단계 노출 가능하도록 구조화).
- **근거(Source of Truth)**: 각 컴포넌트는 `DECISIONS.md`의 인용 우선순위(가이드 본문)를 따른다. 2026-04 이전 구 슬라이드 인용 금지.

---

## 핵심 6종

### 1. `EvidenceCard` — 입증자료 카드

- **목적**: ISO 입증자료(번호+요건+출처)를 일관된 카드로. 슬라이드 전반 최다 반복.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `number` | string | ✓ | 입증자료 번호 (예 `"3.1.1.1"`) |
| `title` | string | ✓ | 요건 제목 |
| `standard` | `"5230" \| "18974" \| "42001"` | | 표준 배지 (색 분기) |
| `clause` | string | | 조항 (예 `"§3.1.1"`) |
| `status` | `"full" \| "partial" \| "missing"` | | 충족도 배지 (EVIDENCE-CHECK 기반) |

- **slot**: `default` — 보충 설명(선택)
- **사용 예시**

```
<EvidenceCard number="3.1.1.1" title="오픈소스 정책 수립" standard="5230" clause="§3.1.1" status="full" />
```

- **시각 구조**: 좌상단 `number`(--oc-primary, 굵게) · 우상단 `standard` 배지 + `status` 점 · 본문 `title` · 하단 `clause`(--oc-ink-muted)
- **토큰**: `--oc-surface`, `--oc-border`, `--oc-primary`(번호), `--oc-cat-*`(status: full=green·partial=amber·missing=red), `--oc-radius-md`
- **근거**: `EVIDENCE-CHECK.md` (입증자료 50개), `iso5230_guide`/`iso18974_guide` 조항 페이지

---

### 2. `StandardCompare` — 표준 비교표

- **목적**: ISO/IEC 5230 / 18974 / 42001을 항목별로 비교. Part 1 표준 이해의 핵심.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `rows` | `{ aspect: string; v5230?: string; v18974?: string; v42001?: string }[]` | ✓ | 비교 행 |
| `highlight` | `"5230" \| "18974" \| "42001"` | | 강조 열 |

- **slot**: 없음 (데이터 주입형)
- **사용 예시**

```
<StandardCompare :rows="[
  { aspect: '대상', v5230: '라이선스 컴플라이언스', v18974: '보안 취약점', v42001: 'AI 관리 시스템' },
  { aspect: '입증자료', v5230: '25개', v18974: '25개', v42001: '체크포인트' },
]" highlight="18974" />
```

- **시각 구조**: 첫 열 `aspect`(--oc-ink-muted) · 표준 헤더는 각 파트색(5230=teal·18974=warn 톤·42001=purple) · `highlight` 열 배경 강조
- **토큰**: `--oc-surface`, `--oc-line`, `--oc-primary`/`--oc-warn`/`--oc-cat-purple`(헤더), `--oc-primary-soft`(highlight)
- **근거**: `iso42001_guide/compare`, `iso5230_guide/_index`·`iso18974_guide/_index` "다른 표준과의 관계"

---

### 3. `HexCoreElements` — OpenChain 6대 핵심요소

- **목적**: ISO/IEC 5230 §3.1~3.6 여섯 영역을 육각형으로 시각화. 한 영역을 강조해 현재 다루는 주제를 표시(인터랙티브).
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `active` | number (1–6) | | 강조할 영역(없으면 전체 균등) |
| `elements` | `{ id: number; label: string }[]` | | 기본 6개(§3.1~3.6) 오버라이드용 |

- **slot**: 없음
- **사용 예시**

```
<HexCoreElements :active="3" />   <!-- 3.3 콘텐츠 검토·승인 강조 -->
```

- **기본 6영역**: ①프로그램 기반(§3.1) ②관련 업무(§3.2) ③콘텐츠 검토·승인(§3.3) ④컴플라이언스 산출물(§3.4) ⑤커뮤니티 참여(§3.5) ⑥규격 준수(§3.6)
- **시각 구조**: 육각형 6셀 배치. `active`는 --oc-primary 채움, 나머지 --oc-surface + 보더
- **토큰**: `--oc-primary`(active), `--oc-surface`, `--oc-line`, `--oc-ink`
- **근거**: `iso5230_guide/_index` 구조(§3.1~3.6), `opensource_for_enterprise/0-openchain`

---

### 4. `Callout` — 강조/주의/정보 박스

- **목적**: 가이드 본문 `{{% alert %}}`를 슬라이드로. 두 번째로 많이 쓰임.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `variant` | `"info" \| "success" \| "warn" \| "critical"` | ✓ | 색·의미(가이드 매핑) |
| `title` | string | | 박스 제목 |

- **slot**: `default` — 박스 내용
- **사용 예시**

```
<Callout variant="warn" title="ISO/IEC 18974 §4.3.2.1">
  보안 취약점 대응 기록은 최종 배포일로부터 3년 이상 보관한다.
</Callout>
```

- **매핑(DESIGN-TOKENS §5)**: info=구축·참고 · success=권장·ISO 5230 인용 · warn=주의·ISO 18974 인용 · critical=중요·법규 시한
- **토큰**: `--oc-{variant}`, `--oc-{variant}-bg`, `--oc-{variant}-border`, 좌측 4px 컬러바
- **근거**: `.claude/rules/guide-writing.md` (alert color 규칙)

---

### 5. `CodeShowcase` — 코드 + 라인 강조

- **목적**: 코드 예시를 파일명·라인 강조·diff와 함께 표준 틀로. 도구·CI/CD 슬라이드용.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `lang` | string | ✓ | 언어 (`bash`·`yaml`·`groovy`·`json`·`diff`) |
| `filename` | string | | 상단 파일명 탭 |
| `highlight` | string | | 강조 줄 (`"2,5-7"`) |

- **slot**: `default` — 코드 본문 (Shiki 하이라이트)
- **사용 예시**

````
<CodeShowcase lang="yaml" filename=".github/workflows/sca.yml" highlight="3-4">

```yaml
- uses: scanoss/scanoss-action@v1
  with:
    api-url: https://...
    sbom: true
```

</CodeShowcase>
````

- **시각 구조**: 상단 `filename` 탭 + `lang` 라벨 · 본문 Shiki(dual theme) · `highlight` 줄 --oc-primary-soft 배경
- **토큰**: `--oc-surface-2`, `--oc-font-mono`, `--oc-border`, `--oc-primary-soft`(강조줄)
- **근거**: `tools/` 페이지, `opensource_for_enterprise/4-tool` CI/CD 코드

---

### 6. `TimelineEvent` — 사례 연대기

- **목적**: 오픈소스 라이선스 소송·사건을 시간순으로. Part 1·도입의 동기 부여.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `events` | `{ year: string; title: string; desc?: string; tag?: string }[]` | ✓ | 사건 목록(시간순) |

- **slot**: 없음
- **사용 예시**

```
<TimelineEvent :events="[
  { year: '2007', title: 'BusyBox 소송', desc: 'GPL 최초의 미국 소송', tag: 'GPL' },
  { year: '2021', title: 'Vizio (SFC)', desc: '제3자 수혜자 권리 쟁점', tag: 'GPLv2' },
]" />
```

- **시각 구조**: 세로/가로 축(--oc-line) + 노드(--oc-primary) · `year` 굵게 · `tag` 칩
- **토큰**: `--oc-line`(축), `--oc-primary`(노드), `--oc-surface`(카드), `--oc-cat-*`(tag)
- **근거**: `opensource_for_enterprise/0-openchain`(BusyBox·Vizio), 블로그 사례 포스트

---

## AI·보안 특화 5종

### 7. `RegulatoryMatrix` — 글로벌 AI 규제 매트릭스

- **목적**: EU AI Act·한국 AI 기본법 등 글로벌 AI 규제·표준을 매트릭스로. Part 3 AI의 도입.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `rows` | `{ name: string; region: string; scope?: string; status?: string; effective?: string }[]` | ✓ | 규제 행 |
| `groupBy` | `"region" \| "status"` | | 그룹 색상 기준 |

- **slot**: 없음
- **사용 예시**

```
<RegulatoryMatrix :rows="[
  { name: 'EU AI Act', region: 'EU', scope: 'GPAI §53', status: '시행', effective: '2025' },
  { name: 'AI 기본법', region: '한국', scope: '고영향 AI', status: '제정', effective: '2026' },
]" />
```

- **시각 구조**: 표/카드 그리드 · `region`별 색 · `status`(시행/제정/예정) 배지
- **토큰**: `--oc-cat-purple`(AI 강조), `--oc-surface`, `--oc-cat-*`(status), `--oc-line`
- **근거**: `iso42001_guide/1-context-leadership §4.1` (14개 규제·표준 매트릭스)

---

### 8. `LlamaChecklist` — Llama 라이선스 의무 체크리스트

- **목적**: Llama Community License 7개 의무를 체크리스트로. AI 모델 라이선스 슬라이드.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `items` | `{ text: string; required?: boolean }[]` | | 의무 항목(기본 Llama 7개) |
| `model` | string | | 헤더 모델명(기본 `"Llama"`) |

- **slot**: 없음
- **사용 예시**

```
<LlamaChecklist model="Llama 3.x" />   <!-- 기본 7개 의무 렌더 -->
```

- **시각 구조**: 체크 아이콘 + 항목 · `required`는 강조, 선택 의무는 muted
- **토큰**: `--oc-success`(체크), `--oc-ink`, `--oc-cat-amber`(필수 강조), `--oc-surface`
- **근거**: `opensource_for_enterprise/7-ai-compliance` (Llama 의무 7개 체크리스트)

---

### 9. `VexStatus` — VEX 4상태값

- **목적**: VEX(취약점 영향 교환) 4상태값을 배지/범례로. 보안 대응 슬라이드.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `status` | `"not_affected" \| "affected" \| "fixed" \| "under_investigation"` | | 단일 상태 배지 |
| `legend` | boolean | | true면 4상태 범례 전체 표시 |
| `justification` | string | | `not_affected` 사유 |

- **slot**: 없음
- **사용 예시**

```
<VexStatus legend />                          <!-- 4상태 범례 -->
<VexStatus status="not_affected" justification="vulnerable_code_not_in_execute_path" />
```

- **상태색**: not_affected=green · affected=red · fixed=teal · under_investigation=amber (색+라벨 병기)
- **토큰**: `--oc-cat-green/red/teal/amber`, `--oc-surface`, `--oc-radius-sm`
- **근거**: HZ-3 (VEX CSAF 2.0/CycloneDX 4상태값), `iso18974` 보안 가이드·`2-policy`/`3-process`

---

### 10. `CvssScoring` — CVSS + EPSS + KEV 통합 점수

- **목적**: 취약점 우선순위 3차원(CVSS·EPSS·KEV)을 한 눈에. 심각도 평가 슬라이드.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `cvss` | number (0–10) | ✓ | CVSS 점수 |
| `version` | `"3.1" \| "4.0"` | | CVSS 버전(기본 `"4.0"`) |
| `epss` | number (0–1) | | EPSS 확률 |
| `kev` | boolean | | CISA KEV 등재 여부 |
| `vector` | string | | CVSS 벡터 문자열 |

- **slot**: 없음
- **사용 예시**

```
<CvssScoring :cvss="9.8" version="4.0" :epss="0.74" kev />
```

- **시각 구조**: `cvss` 게이지(순서형 색) + 등급 라벨(Critical/High/…) · `epss` 막대 · `kev` 경고 배지
- **토큰**: `--oc-scale-1~4`(severity 계조), `--oc-critical`(Critical·KEV), `--oc-text-stat`(점수 숫자)
- **근거**: HZ-1(CVSS 4.0)·HZ-2(EPSS/KEV), `iso18974`·`2-policy`/`3-process`

---

### 11. `RegulatoryDeadline` — 법규별 보고 시한

- **목적**: EU CRA 24h 등 법규별 취약점 보고 시한을 강조. 보안·규제 슬라이드.
- **props**

| prop | 타입 | 필수 | 설명 |
|------|------|:----:|------|
| `deadlines` | `{ regulation: string; window: string; note?: string }[]` | ✓ | 법규별 시한 |
| `emphasis` | string | | 강조할 regulation(예 `"EU CRA"`) |

- **slot**: 없음
- **사용 예시**

```
<RegulatoryDeadline emphasis="EU CRA" :deadlines="[
  { regulation: 'EU CRA', window: '24h', note: '인지 후 조기 경보' },
  { regulation: 'EU NIS 2', window: '24h', note: '조기 경보' },
  { regulation: 'US EO 14028', window: '—', note: '연방 조달 SBOM' },
]" />
```

- **시각 구조**: `window`를 `--oc-text-stat`로 크게(24h) · `emphasis` 행 critical 강조 · 나머지 표
- **토큰**: `--oc-text-stat`(시한 숫자), `--oc-critical`(emphasis), `--oc-surface`, `--oc-line`
- **근거**: HZ-6 (법규별 보고 시한), `iso18974/2-relevant-tasks/1-access`, 블로그 EU CRA 포스트

---

## 구현 전략 (2026-05-22 결정: 핵심 5종 우선)

재사용성 검증 원칙(*"먼저 쓰고, 세 번째 중복될 때 추출하라"*)에 따라 **핵심 5종만 Phase 1에서 선제 구현**한다. 나머지 6종은 *deferred* — Phase 3 콘텐츠 작성 중 동일 패턴이 반복되면 그때 추출한다(추측 기반 과설계·검증 지연 회피).

### Phase 1 구현 (핵심 5종 — 재사용성 높음·중간)
1. **`Callout`** — 최다 재사용. variant 토큰 검증 겸 1순위.
2. **`EvidenceCard`** — 입증자료 빈출.
3. **`VexStatus`** — 보안 파트 반복 (cat 색 검증).
4. **`CvssScoring`** — 보안 파트 반복 (scale·stat 토큰 검증).
5. **`StandardCompare`** — 표준 비교 반복.

### Deferred (Phase 3 중 필요 시 추출)
- **`CodeShowcase`** — Slidev 내장 코드 하이라이트(`{2,5-7}`·파일명)로 우선 대체. 부족함이 드러나면 추출.
- **`RegulatoryDeadline`·`HexCoreElements`·`LlamaChecklist`·`RegulatoryMatrix`·`TimelineEvent`** — 1~2회용 성격 → 해당 슬라이드에 직접 작성. 3회 이상 반복되면 그때 컴포넌트로 추출.

각 컴포넌트 구현 직후 demo 1장 → `slidev build` 렌더 확인. **핵심 5종 + demo 검증 시 Phase 1 종료**(나머지는 Phase 3에서 자연 발생). 위 11종 인벤토리는 추출 시 참조할 설계 카탈로그로 유지한다.

---

## 변경 이력

- 2026-05-22: 최초 작성 (11종 props·slot·근거 확정).
