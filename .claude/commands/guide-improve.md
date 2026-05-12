# /project:guide-improve
# 가이드 개선 오케스트레이터

## 사용법

```
/guide-improve audit [target]           # 가이드 완성도·일관성 감사 (형식·구조·교차링크)
/guide-improve critic {파일|target}     # 가이드 콘텐츠 비판적 재검토 (Opus 4.7, 본문 정독)
/guide-improve style {파일|target} [차원]  # 가이드 통일성 검토 (단락·문장·표현·markdown·mermaid·이미지)
/guide-improve section {표준} {조항}    # 특정 조항 개선
/guide-improve verify {파일} {약점ID}   # 보강 diff 정확성 검증 (4층 체계)
/guide-improve links [fix]              # 교차 참조 링크 점검 (fix: 수정 제안)
/guide-improve evidence {표준} [항목]   # 입증자료 충족 여부 점검
/guide-improve status                   # 현재 작업 현황 요약
```

### target 값 (audit 서브커맨드)
`5230` | `18974` | `enterprise` | `templates` | `tools` | `all` (기본값)

### 표준 값 (section / evidence 서브커맨드)
`5230` | `18974` | `enterprise`

---

## 서브커맨드별 실행 순서

### `audit [target]`
1. `guide-auditor` 에이전트를 호출한다. target을 전달한다.
2. 에이전트가 반환한 감사 결과를 그대로 출력한다.
3. "개선 우선순위" 목록을 바탕으로 다음 권장 명령을 제안한다.

### `critic {파일|target}`
1. 입력 해석:
   - 파일 경로(`content/ko/guide/...` 또는 절대 경로)면 단일 파일 검토.
   - target(`5230` | `18974` | `42001` | `enterprise` | `templates` | `tools`)이면 해당 그룹 일괄 검토. 그룹 검토는 파일 수가 많을 수 있으므로 시작 전 사용자 확인을 받는다.
2. `guide-critic` 에이전트를 호출한다(모델: opus 고정). 대상을 전달한다.
3. 에이전트가 반환한 리포트를 출력한다. 결과는 `content/ko/guide/CRITIC-REPORT.md`에 누적 기록된다.
4. P1 약점이 있으면 `/guide-improve section`으로 보강 diff 작성을 제안한다. 단, diff 작성·적용은 별도 단계이며, 이 서브커맨드는 어떤 파일도 수정하지 않는다.

### `verify {파일} {약점ID}`
1. 입력 해석:
   - 파일 경로: 보강이 적용된 파일
   - 약점 ID: CRITIC-REPORT.md의 약점 식별자 (예: URG-1, AI-2 등) 또는 약점 설명
2. 적용된 diff 추출: `git diff HEAD~1 <파일>` 또는 `git diff --staged <파일>`. 또는 사용자가 직접 제공.
3. `guide-fix-verifier` 에이전트를 호출한다(모델: opus). 파일·약점·diff를 전달.
4. 에이전트가 5개 항목(의도 적합성·완전성·사실 정확성·부수 효과·서식 무결성)을 점검하고 PASS/CONDITIONAL PASS/FAIL 판정.
5. PASS면 권고된 자동 검증(hugo 빌드·links·evidence) 실행 안내.
6. FAIL이면 revert 또는 재작업 권고.

이 서브커맨드는 **4층 검증 체계의 Layer A**에 해당한다. 보강 작업 1건당 다음 4층을 모두 거친다:

```
Layer A: guide-fix-verifier (이 서브커맨드)
Layer B: guide-critic 재실행 (회귀 검토)
Layer C: 자동 검증 (hugo --minify + /guide-improve links + /guide-improve evidence)
Layer D: Git commit (별도 commit으로 revert 단위 작게 유지)
```

### `style {파일|target} [차원]`
1. 입력 해석:
   - 파일 경로면 단일 파일 통일성 검토
   - target(`5230` | `18974` | `42001` | `enterprise` | `templates` | `tools` | `all`)이면 그룹 검토. `all`은 시작 전 사용자 확인 받는다 (~50개 파일·9,815줄).
   - 차원(`paragraph` | `sentence` | `expression` | `markdown` | `mermaid` | `image` | `all`) — 기본값 `all`
2. `guide-style-checker` 에이전트를 호출한다(모델: opus 고정). 대상·차원을 전달한다.
3. 에이전트가 반환한 리포트를 출력한다. 결과는 `content/ko/guide/STYLE-REPORT.md`에 누적 기록된다.
4. C1(높음) 약점이 있으면 `/guide-improve section`으로 보강 diff 작성을 제안한다.
5. `guide-critic`(콘텐츠 깊이)과 역할이 분리되어 있어 두 검토는 독립적으로 진행 가능하다.

### `section {표준} {조항}`
1. 조항 번호로 대상 파일 경로를 결정한다:
   - `5230` + `3.1.1` → `content/ko/guide/iso5230_guide/1-program-foundation/1-policy/_index.md`
   - `18974` + `4.1.1` → `content/ko/guide/iso18974_guide/1-program-foundation/1-policy/_index.md`
   - `enterprise` + `2` → `content/ko/guide/opensource_for_enterprise/2-policy/_index.md`
2. `guide-writer` 에이전트를 호출한다. standard, section, 파일 경로를 전달한다.
3. 에이전트가 제시한 diff 초안을 출력한다.
4. 사용자 승인을 기다린다. 승인 전 파일을 수정하지 않는다.

### `links [fix]`
1. `cross-link-checker` 에이전트를 호출한다.
2. 점검 결과 테이블을 출력한다.
3. `fix` 옵션이 있으면 각 수정 항목의 diff를 순서대로 제시한다.
   - 항목마다 사용자 승인 후 적용한다.

### `evidence {표준} [항목]`
1. `evidence-verifier` 에이전트를 호출한다. standard와 item을 전달한다.
2. 항목이 생략되면 `all`로 처리하고 배치 실행 전 확인을 요청한다:
   > ISO/IEC {표준} 25개 입증자료 전체를 점검합니다. 진행할까요?
3. 결과를 출력하고 `EVIDENCE-CHECK.md` 기록 완료 여부를 알린다.

### `status`
1. `content/ko/guide/TODO.md`를 읽는다.
2. `content/ko/guide/EVIDENCE-CHECK.md`를 읽는다.
3. 아래 형식으로 현황을 요약한다:

```
## 가이드 작업 현황 ({날짜})

### TODO 진행률
- 1차 작업: N/M 완료
- 정기 유지보수: N/M 완료

### 입증자료 점검 현황
- ISO 5230: ✅ N / ⚠️ N / ❌ N / 미점검 N
- ISO 18974: ✅ N / ⚠️ N / ❌ N / 미점검 N
- 최근 점검일: {날짜}

### 권장 다음 작업
1. {가장 우선순위 높은 작업}
2. {두 번째 작업}
```

---

## 워크플로우 예시

```
# 새 세션 시작
/guide-improve status

# 전체 감사 후 개선 계획 수립
/guide-improve audit all

# 특정 조항 개선
/guide-improve section 18974 4.1.2.3

# 교차 참조 일괄 점검
/guide-improve links

# 입증자료 배치 점검
/guide-improve evidence 5230
```
