# 슬라이드 v6 작업 단계 추적

> 새 세션에서 작업을 이어갈 때 이 파일을 가장 먼저 읽는다.
> 재개 진입점: `/slides-resume`

---

## 현재 상태

- **Phase**: 0 (기반 준비) — **완료**
- **상태**: Phase 1 진입 대기
- **마지막 갱신**: 2026-05-12
- **다음 작업**: 사용자 승인("Phase 1 진행해줘") 후 Phase 1 진입 — 디자인 토큰 + 컴포넌트 라이브러리

---

## 전체 Phase 흐름

| # | Phase | 목표 | 산출물 | 상태 |
|---|---|---|---|---|
| 0 | 기반 준비 | Slidev 골격 + 빌드 통과 | `docs/slides/v6/{slides.md, package.json, components/, styles/, public/}` + `archive/v5-marp-<날짜>.md` | ✅ |
| 1 | 디자인 토큰 + 컴포넌트 라이브러리 | "공장" 완성 | `styles/tokens.css`, `components/*.vue` 11종, `DESIGN-TOKENS.md`, `COMPONENTS.md` | ☐ |
| 2 | 콘텐츠 기획 | 슬라이드 작업 큐 확정 | `GAP-REPORT.md`, `CRITIC.md`, `EVIDENCE-MAP.md`, `PLAN.md` | ☐ |
| 3 | 슬라이드 재작성 (파트별 묶음) | 본문 + 강사 노트 완성 | `slides.md` 누적 | ☐ |
| 4 | 페이싱·다이어그램·강사 노트 | 4시간 분량 일관 보강 | `PACING.md`, 보강된 `slides.md` | ☐ |
| 5 | 빌드·시각 검증 | 실서비스 환경 회귀 0 | 빌드 산출물, 스크린샷 비교 메모 | ☐ |
| 6 | 배포 전환 | 사이트에 신규 슬라이드 노출 | 갱신된 워크플로 + training-slides 페이지 | ☐ |

---

## Phase별 종료 조건

### Phase 0 — 기반 준비
- [ ] `docs/slides/v6/`에 Slidev 스캐폴드 생성
- [ ] `package.json`에 `@slidev/cli` 의존성 추가
- [ ] 기존 `docs/slides/enterprise-oss-governance.md`를 `docs/slides/archive/v5-marp-<날짜>.md`로 보존
- [ ] `slidev build` 로컬 성공 (Hello World 슬라이드 수준)
- [ ] Hugo iframe 임베드 미리보기 OK

**진입 명령**: "Phase 0 진행해줘"

### Phase 1 — 디자인 토큰 + 컴포넌트 라이브러리
- [ ] `DESIGN-TOKENS.md` 작성 (컬러·여백·타이포·alert·코드 블록)
- [ ] `styles/tokens.css` 구현
- [ ] `COMPONENTS.md`에 11종 컴포넌트 인벤토리·시그니처 정의
- [ ] 핵심 컴포넌트 6종 구현 (`<EvidenceCard>`, `<StandardCompare>`, `<HexCoreElements>`, `<Callout>`, `<CodeShowcase>`, `<TimelineEvent>`)
- [ ] AI·보안 특화 컴포넌트 5종 구현 (`<RegulatoryMatrix>`, `<LlamaChecklist>`, `<VexStatus>`, `<CvssScoring>`, `<RegulatoryDeadline>`)
- [ ] 컴포넌트별 demo 슬라이드 1장씩 렌더링 통과

**진입 명령**: "Phase 1 진행해줘"

### Phase 2 — 콘텐츠 기획
- [ ] 2-a 격차 분석 — `GAP-REPORT.md`: 기존 88장 × {변경없음 / 디테일추가 / 재작성필수} 분류
- [ ] 2-b 7차원 비판 — `CRITIC.md`: 기존 자료의 모호성·누락 예외·샘플 현실성·심사 함정·실무성·표준 정합성·최신성
- [ ] 2-c 입증자료 매핑 — `EVIDENCE-MAP.md`: 입증자료 50개 ↔ 슬라이드 번호
- [ ] 2-d 슬라이드 재구성안 — `PLAN.md`: 슬라이드 1~N 순차 번호 + 목적 한 줄 + 시각 패턴 + 예상 시간

**진입 명령**: "Phase 2 진행해줘"

### Phase 3 — 슬라이드 재작성 (파트별 묶음 승인)
파트별로 diff 제시 → 사용자 승인 → 본문 갱신 → TODO.md 체크.

- [ ] Part 0 도입
- [ ] Part 1 표준 이해
- [ ] Part 2-1 조직
- [ ] Part 2-2 정책
- [ ] Part 2-3 프로세스
- [ ] Part 2-4 도구
- [ ] Part 2-5 교육
- [ ] Part 2-6 준수
- [ ] **Part 3 AI 컴플라이언스 (분량 확장 — 전문가용 깊이)**
- [ ] Part 4 라이브 데모
- [ ] Part 5 마무리

**진입 명령**: "Phase 3 진행해줘" 또는 "Part X 진행해줘"

### Phase 4 — 페이싱·다이어그램·강사 노트
- [ ] Mermaid 다이어그램 삽입 (해당 슬라이드 식별)
- [ ] `<v-click>` 점진 표시 적용 (정보 밀도 높은 슬라이드)
- [ ] 강사 노트 작성 (모든 슬라이드)
- [ ] `PACING.md` 작성 (슬라이드당 예상 시간 표)
- [ ] 4h ± 10분 페이싱 확인

**진입 명령**: "Phase 4 진행해줘"

### Phase 5 — 빌드·시각 검증
- [ ] `slidev build` 0 에러
- [ ] Hugo iframe 임베드 로컬 미리보기 OK
- [ ] 중요 10장 스크린샷 비교 (Part 전환·데모·표지)
- [ ] 브라우저 호환성 (Chrome / Safari / Firefox)

**진입 명령**: "Phase 5 진행해줘"

### Phase 6 — 배포 전환
- [ ] `.github/workflows/deploy-github-pages.yml` 갱신 (Marp → Slidev)
- [ ] `content/ko/guide/training-slides/_index.md` iframe `src` + 안내문 갱신
- [ ] 기존 Marp 자료를 `docs/slides/archive/`로 이동
- [ ] master push → GitHub Pages 배포 → 신규 슬라이드 노출 확인

**진입 명령**: "Phase 6 진행해줘"

---

## 마지막 완료 작업

- [2026-05-12] **Phase 0 완료** — Slidev 스캐폴드, archive 보존, npm install·build 통과, .gitignore 갱신.
  - 빌드 산출물: `static/slides/enterprise-oss-governance/index.html` (gitignore됨)
  - 빌드 시간: 7.24s / 의존성 684개

## 차단 사항

- Phase 0의 "Hugo iframe 임베드 미리보기" 단계는 Phase 5로 이관 (training-slides `_index.md`의 iframe `src`가 `.html`이라 v6 SPA를 가리킬 수 없음 — Phase 6 경로 갱신과 함께 검증).
