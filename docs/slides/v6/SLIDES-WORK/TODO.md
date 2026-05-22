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
- [ ] `COMPONENTS.md` 작성 — 11종 컴포넌트별 props·slot·예시 명시

### 핵심 컴포넌트 (6종)
- [ ] `components/EvidenceCard.vue` — 입증자료 번호 + 요건 + 출처
- [ ] `components/StandardCompare.vue` — ISO 5230/18974/42001 비교 표
- [ ] `components/HexCoreElements.vue` — 6대 핵심요소 시각화 (인터랙티브)
- [ ] `components/Callout.vue` — 강조·주의·정보 박스 (variant: info|warn|success|critical)
- [ ] `components/CodeShowcase.vue` — Shiki 라인 하이라이트 + diff
- [ ] `components/TimelineEvent.vue` — 사례 연대기 (Busybox·VMware·Vizio 등)

### AI·보안 특화 컴포넌트 (5종)
- [ ] `components/RegulatoryMatrix.vue` — 글로벌 AI 규제 매트릭스 (가이드 AI-1)
- [ ] `components/LlamaChecklist.vue` — Llama 라이선스 의무 체크리스트 (가이드 AI-2)
- [ ] `components/VexStatus.vue` — VEX 4상태값 (affected / not_affected / fixed / under_investigation)
- [ ] `components/CvssScoring.vue` — CVSS 4.0 + EPSS + KEV 통합 점수
- [ ] `components/RegulatoryDeadline.vue` — EU CRA 24h 등 법규 시한 표

### 검증
- [ ] 각 컴포넌트별 demo 슬라이드 1장 → `slidev` 로컬에서 렌더링 확인

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

## Phase 3: 슬라이드 재작성 (파트별 묶음 승인)

각 파트는 diff 제시 → 사용자 승인 → `slides.md` 본문 누적.

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

- [ ] Mermaid 다이어그램 삽입 대상 슬라이드 식별 + 작성
- [ ] `<v-click>` 점진 표시 적용 (정보 밀도 높은 슬라이드)
- [ ] 강사 노트 작성 (모든 슬라이드, `<!-- speaker -->` 또는 Slidev 노트 영역)
- [ ] `PACING.md` 작성 — 슬라이드당 예상 시간 + 파트별 누적
- [ ] 4시간 ± 10분 분량 검증

---

## Phase 5: 빌드·시각 검증

- [ ] `npx slidev build --out ../../static/slides/enterprise-oss-governance/` 0 에러
- [ ] Hugo `hugo server -D` 후 `/guide/training-slides/` 페이지 iframe 정상
- [ ] 중요 슬라이드 10장 스크린샷 비교
- [ ] Chrome / Safari / Firefox 호환성
- [ ] 빌드 시간 측정 (CI 시간 영향 평가)

---

## Phase 6: 배포 전환

- [ ] `.github/workflows/deploy-github-pages.yml` 워크플로 갱신 (Marp 단계 → Slidev 빌드)
- [ ] `content/ko/guide/training-slides/_index.md` iframe `src` 경로 갱신 (`.html` → `/`) + 안내문(슬라이드 제작 가이드) 재작성
- [ ] 기존 `docs/slides/enterprise-oss-governance.md` 제거 (이미 archive에 보존됨)
- [ ] PR 생성 또는 master 직접 push
- [ ] GitHub Actions 빌드 통과 확인
- [ ] GitHub Pages에서 신규 슬라이드 노출 확인

---

## 부수 작업 (필요 시)

- [ ] 영어(en/) 동기화 — 별도 Phase 또는 후속 작업
- [ ] 슬라이드 작성 중 가이드 본문 보강이 필요하면 `content/ko/guide/TODO.md`에 즉시 등록
- [ ] 라이선스 표기(CC-BY-4.0) 유지
