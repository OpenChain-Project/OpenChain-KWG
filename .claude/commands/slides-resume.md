# /project:slides-resume
# 슬라이드 v6 작업 세션 재개

새로운 세션에서 슬라이드 v6 작업을 끊김 없이 이어가기 위한 진입점.
가이드 본문 작업(`/guide-resume`)과는 별개의 작업 흐름이다.

---

## 실행 순서

1. `docs/slides/v6/SLIDES-WORK/PHASE.md`를 읽는다.
   - 현재 Phase 번호와 진입 상태를 파악한다.
   - "마지막 완료 작업" 항목을 확인한다.
   - "다음 작업" 항목을 확인한다.

2. `docs/slides/v6/SLIDES-WORK/TODO.md`를 읽는다.
   - 현재 Phase 섹션의 미완료 체크박스를 모두 추출한다.
   - 전체 진행률 (`[x]` / 전체)을 계산한다.

3. `docs/slides/v6/SLIDES-WORK/DECISIONS.md`를 읽는다.
   - "확정 결정" 표 11개 항목을 컨텍스트로 로드한다.
   - "핵심 작업 원칙"의 Source of Truth 우선순위를 인지한다.
   - "변경 이력"을 확인한다 (있을 경우).

4. 현재 Phase의 산출물 파일이 이미 존재하면 *제목과 첫 섹션만* 발췌하여 읽는다 (토큰 절약):
   - Phase 1 진행 중 → `DESIGN-TOKENS.md`, `COMPONENTS.md`
   - Phase 2 진행 중 → `GAP-REPORT.md`, `CRITIC.md`, `EVIDENCE-MAP.md`, `PLAN.md`
   - Phase 3 진행 중 → `slides.md` 의 frontmatter + 마지막 작성 슬라이드
   - Phase 4 진행 중 → `PACING.md`

5. 아래 형식으로 보고한다:

   ```
   ## 슬라이드 v6 작업 현황 ({YYYY-MM-DD})

   ### 현재 위치
   - Phase: N (Phase 이름)
   - 진행률: M/총 단계 (X%)
   - 마지막 완료: {항목}
   - 다음 작업: {항목}

   ### 컨텍스트 (DECISIONS.md 요약)
   - 분량: 4시간 / Part 3 확장 + 전문가용 깊이
   - 디자인: default 베이스 + 신규 디자인 토큰
   - 작업 단위: 파트별 묶음 승인
   - 빌드 출력: static/slides/enterprise-oss-governance/

   ### 다음 작업 상세
   - 작업 내용: {구체 설명}
   - 입력 자료: {참조 파일 목록}
   - 예상 산출물: {파일 또는 변경 영역}
   - 주의사항: {있을 경우}
   ```

6. "이어서 진행할까요?" 라고 묻는다.
   사용자 승인("진행해줘" / "ok" / "응") 전까지 어떤 파일도 수정·생성하지 않는다.

---

## 작업 중 메타 파일 갱신 규칙

작업이 진행되면 즉시 다음 갱신:

| 시점 | 갱신할 파일 |
|------|-------------|
| TODO 한 항목 완료 | `TODO.md` 체크박스 `[ ]` → `[x]` |
| Phase 전환 | `PHASE.md`의 "현재 상태" 갱신 + 해당 Phase 체크박스 표시 |
| 새 결정 사항 추가/변경 | `DECISIONS.md`의 "변경 이력"에 추가 |
| 산출물 작성 | 해당 Phase 디렉토리(`docs/slides/v6/SLIDES-WORK/`)에 신규 파일 생성 |

---

## 가이드 작업(`/guide-resume`)과의 분리

이 커맨드는 **슬라이드 v6** 작업 전용이다.
혼동을 피하기 위해:

- 가이드 본문 작업 재개 → `/guide-resume` (대상: `content/ko/guide/TODO.md`)
- 슬라이드 v6 작업 재개 → `/slides-resume` (대상: `docs/slides/v6/SLIDES-WORK/`)

슬라이드 작업 도중 가이드 본문 보강이 필요해지면, 사용자에게 알리고 가이드 작업으로 잠시 분기할 수 있다.
이 경우 가이드 작업 완료 후 다시 `/slides-resume`으로 복귀한다.

---

## 주의사항

- 새 세션에서 이 커맨드가 호출되면, 본문 작업을 시작하기 전 반드시 위 1~6단계를 완료한다.
- `DECISIONS.md`의 "Source of Truth" 우선순위를 어기지 않는다 (2026-04 이전 기존 슬라이드 본문 인용 금지).
- 사용자가 결정 사항 변경을 요청하면, 본문 작업 전에 `DECISIONS.md`를 먼저 갱신한다.
- Phase 전환 시 사용자 명시적 승인을 받는다 ("Phase N+1 진행해줘").
