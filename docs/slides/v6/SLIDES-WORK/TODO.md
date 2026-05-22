# 슬라이드 v6 작업 TODO

> 작업 단위 체크박스. 한 항목 완료 시 즉시 `[ ]` → `[x]` 변경.
> Phase 흐름·종료 조건은 `PHASE.md` 참조.

최종 업데이트: 2026-05-12

---

## Phase 0: 기반 준비

- [x] `docs/slides/v6/` 하위 디렉토리 생성 (`components/`, `styles/`, `public/`, `snippets/`) [2026-05-12]
- [x] `docs/slides/v6/package.json` 생성, `@slidev/cli` 의존성 추가 [2026-05-12]
- [x] `docs/slides/v6/slides.md` 스켈레톤 (frontmatter + 표지 1장) [2026-05-12]
- [x] `docs/slides/archive/` 디렉토리 생성 [2026-05-12]
- [x] 기존 `docs/slides/enterprise-oss-governance.md` → `docs/slides/archive/v5-marp-2026-05-12.md` 보존 [2026-05-12]
- [x] `npm install` 완료 (684 패키지) + `npm run build` 통과 (7.24s, 산출물 정상) [2026-05-12]
- [x] `.gitignore`에 `static/slides/enterprise-oss-governance/` 추가 [2026-05-12]
- [ ] Hugo `training-slides/_index.md`의 iframe 임베드 검증 → **Phase 5로 이관** (이유: 현재 iframe `src`가 `.html`이라 v6 SPA를 못 가리킴. Phase 6에서 경로 갱신과 함께 검증하는 것이 자연스러움)

---

## Phase 1: 디자인 토큰 + 컴포넌트 라이브러리

### 디자인 시스템
- [x] **`DESIGN-TOKENS.md` "디자인 철학"** (2026-05-22): 도구 **Slidev 유지**. 1차 기준 = **명확성·집중·신뢰**("AI 냄새 회피"는 부수 효과로 재정의). 미니멀·일관성은 수단으로 유지하되 ★ 데이터 의미색 자유 + 파트 길찾기 + 절제된 강조(핵심 숫자) 강화. 손글씨·낙서 일러스트는 배제 [2026-05-22]
- [x] `DESIGN-TOKENS.md` 작성 — 브랜드 색 사이트 계승(틸 #01819a/#02abb8), **다크 위주 + 라이트 export 듀얼 토큰**, 데이터 viz(순서형·범주형)·파트 길찾기·Callout 매핑·Shiki dual theme 정의 [2026-05-22]
- [x] `styles/tokens.css` 구현 (다크 `:root` + 라이트 `.light`/print 오버라이드, 61종 토큰) + `style.css` 진입점(Slidev 자동 로드, 토큰 기반 base 스타일). slidev build PASS·번들 토큰 반영 확인 [2026-05-22]
- [x] 가이드 통일성 규칙 반영 — DESIGN-TOKENS §5에 alert color 매핑(info/success/warn/critical) + ISO 인용 박스 규칙(5230=success·18974=warn) 계승 [2026-05-22]

### 컴포넌트 인벤토리
- [x] `COMPONENTS.md` 작성 — 11종 props·slot·사용 예시·사용 토큰·근거 가이드 + 공통 규칙 + 구현 순서 확정 [2026-05-22]

### Phase 1 구현 — 핵심 5종 (재사용성 높음·중간) [2026-05-22 결정: 핵심 우선]
- [x] `components/Callout.vue` — 강조·주의·정보 박스 (variant: info|success|warn|critical) [2026-05-22]
- [x] `components/EvidenceCard.vue` — 입증자료 번호 + 요건 + 출처 + 충족도 [2026-05-22]
- [x] `components/VexStatus.vue` — VEX 4상태값 (색+라벨 병기, legend/단일) [2026-05-22]
- [x] `components/CvssScoring.vue` — CVSS v3.1/4.0 + EPSS + KEV 통합 점수 [2026-05-22]
- [x] `components/StandardCompare.vue` — ISO 5230/18974/42001 비교 표 [2026-05-22]

### PLAN 판정 추가 구현 2종 [2026-05-22]
- [x] `components/HexCoreElements.vue` — PLAN 빈도 9회 → 추출 (6각형 clip-path, active 강조) [2026-05-22]
- [x] `components/CodeShowcase.vue` — PLAN 빈도 5회 → 추출 (파일명 탭 + 언어 라벨 + slot) [2026-05-22]

### Deferred — 4종 (Phase 3 중 3회 이상 반복 시 추출, 현재 각 1회 → 직접 작성)
- [ ] `components/TimelineEvent.vue` — 사례 연대기 (Busybox·Vizio 등)
- [ ] `components/RegulatoryMatrix.vue` — 글로벌 AI 규제 매트릭스 (가이드 AI-1)
- [ ] `components/LlamaChecklist.vue` — Llama 라이선스 의무 체크리스트 (가이드 AI-2)
- [ ] `components/RegulatoryDeadline.vue` — EU CRA 24h 등 법규 시한

### 검증
- [x] 핵심 5종 demo 슬라이드(slides.md) → `slidev build` 렌더 통과 (2.53s, 0 에러) [2026-05-22]

---

## Phase 2: 콘텐츠 기획

### 2-a 격차 분석
- [ ] `archive/v5-marp-<날짜>.md`의 슬라이드 88장을 추출 (제목 + 핵심 메시지)
- [ ] 현재 가이드 본문(2026-05 시점)과 비교
- [ ] `GAP-REPORT.md` 작성 — 슬라이드별 {변경없음 / 디테일추가 / 재작성필수} 분류

### 2-b 7차원 비판
- [ ] 기존 88장에 대해 모호성·누락 예외·샘플 현실성·심사 함정·실무성·표준 정합성·최신성 평가
- [ ] `CRITIC.md` 작성 — P1/P2/P3 분류 + 보강 방향

### 2-c 입증자료 매핑
- [ ] 입증자료 50개(ISO 5230 25 + ISO 18974 25) 추출
- [ ] `EVIDENCE-MAP.md` 작성 — 입증자료 ↔ 슬라이드 번호 매핑 표

### 2-d 슬라이드 재구성안
- [ ] `PLAN.md` 작성 — 슬라이드 1~N 순차 번호, 각 슬라이드의 *목적 한 줄* + *시각 패턴* + *예상 시간* + *근거 가이드 경로*
- [ ] 4h 페이싱 검증 — 파트별 시간 배분 확인 (Part 3 확장 + 다른 파트 압축)

---

## Phase 3: 슬라이드 재작성

> ✅ **본문 완료 [2026-05-22]** — 위임 자율 작성(파트별 5 에이전트 병렬). pages/ 5파일 약 105장, slides.md src include 재편 + setup/shiki.ts dual theme + colorSchema dark. slidev build PASS(905 modules). 컴포넌트 7종·Mermaid·v-click 활용, CRITIC 약점 매핑 반영. 강사노트는 Phase 4.

- [ ] Part 0 도입 (표지·강의 소개)
- [ ] Part 1 표준 이해 (ISO 5230 / 18974 / 42001 + OpenChain 3종 세트)
- [ ] Part 2-1 조직 (OSPO·RACI·역량)
- [ ] Part 2-2 정책 (§3.1.3.1 인식 4요소 + NTIA 7요소 + GPLv2/v3 written offer)
- [ ] Part 2-3 프로세스 (§4.1.5·4.3.2 + CVSS 4.0 + VEX 4상태값 + EU CRA 24h)
- [ ] Part 2-4 도구 (FOSSology·SW360·FOSSLight·OSV-Scalibr·cdxgen·Syft·DT·SCANOSS·onot·SKT SBOM Scanner)
- [ ] Part 2-5 교육
- [ ] Part 2-6 준수
- [ ] **Part 3 AI 컴플라이언스 (분량 확장 + 전문가용 깊이)**
  - 글로벌 AI 규제 매트릭스 (AI-1)
  - AI 프레임워크 라이선스 + Llama 의무 체크리스트 + OSAID 분류 (AI-2·8)
  - AI 모델 라이선스 유형 비교
  - 학습 데이터셋 관리 + AI-BOM
  - AI 생성 코드 저작권 처리 (AI-4)
  - AI 코딩 도구 위험 + 4단계 보장 전략
  - ISO 42001 오픈소스 교차 조항 + 체크포인트
- [ ] Part 4 라이브 데모
- [ ] Part 5 마무리

---

## Phase 4: 페이싱·다이어그램·강사 노트

- [x] Mermaid 다이어그램 — Part 2(SBOM 수명주기·대응 프로세스·8방법)·Part 3(4단계·공급망 방어)·Part 4(데모 흐름) 본문 작성 시 적용 [2026-05-22]
- [x] `<v-click>` 점진 표시 — 정보 밀도 높은 슬라이드에 본문 작성 시 적용 [2026-05-22]
- [x] 강사 노트 작성 — 99장 전 슬라이드(5 에이전트, 본문 무변경 확인) [2026-05-22]
- [x] `PACING.md` 작성 — Part별 240분 배분 + 휴식 2회 + 압축 전략 [2026-05-22]
- [x] 4시간 ± 10분 분량 검증 — PACING.md에 105장/240분(장당 2.3분) 검증 + 분량 조정 후보 명시 [2026-05-22]

---

## Phase 5: 빌드·시각 검증

- [x] `slidev build` 0 에러 — 905 modules, ~6초 [2026-05-22]
- [x] Hugo 빌드 후 `/guide/training-slides/` iframe 정상 — Slidev 산출물 public 복사 + iframe src 경로 검증 [2026-05-22]
- [~] 중요 슬라이드 10장 스크린샷 비교 — 환경 한계(브라우저 렌더 불가), 로컬 `npm run dev` 권장
- [~] Chrome / Safari / Firefox 호환성 — 환경 한계, 로컬 검증 권장
- [x] 빌드 시간 측정 — Slidev ~6초(CI 영향 경미) [2026-05-22]

---

## Phase 6: 배포 전환

- [x] `.github/workflows/deploy-github-pages.yml` 워크플로 갱신 (Marp 단계 → Slidev 빌드, working-directory docs/slides/v6) [2026-05-22]
- [x] `content/ko/guide/training-slides/_index.md` + en iframe `src` 경로 갱신 (`.html` → `/`) + 제작 가이드 Slidev 전환 [2026-05-22]
- [x] 기존 `docs/slides/enterprise-oss-governance.md` 제거 (archive/v5-marp-2026-05-12.md 보존) [2026-05-22]
- [ ] **master 직접 push** ← 사용자 승인 대기
- [ ] GitHub Actions 빌드 통과 확인 (push 후)
- [ ] GitHub Pages에서 신규 슬라이드 노출 확인 (push 후)

---

## 부수 작업 (필요 시)

- [ ] 영어(en/) 동기화 — 별도 Phase 또는 후속 작업
- [ ] 슬라이드 작성 중 가이드 본문 보강이 필요하면 `content/ko/guide/TODO.md`에 즉시 등록
- [ ] 라이선스 표기(CC-BY-4.0) 유지
