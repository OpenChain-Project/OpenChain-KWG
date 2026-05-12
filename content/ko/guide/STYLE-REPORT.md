---
title: "Style Report"
draft: true
_build:
  render: never
  list: never
  publishResources: false
---

# 가이드 통일성 검토 결과 (STYLE-REPORT)

## 개요

이 파일은 `content/ko/guide/` 하위 가이드의 **단락 구성·문장 스타일·표현·markdown 사용·mermaid·이미지 캡션** 6개 차원의 통일성 검토 결과를 누적 기록한다.

- **검토 커맨드**: `/guide-improve style {파일|target}`
- **검토 에이전트**: `.claude/agents/guide-style-checker.md` (Opus 4.7)
- **콘텐츠 깊이 검토(CRITIC-REPORT)와 역할 분리**: 깊이=의미·정확성 / 통일성=형식·표현·시각

이 파일은 `draft: true`로 사이트에 노출되지 않는다.

## 등급 정의

| 등급 | 의미 | 조치 |
|------|------|------|
| C1 | 같은 페이지·그룹 내 일관성 부족, 사용자 혼선 유발 | 우선 보강 |
| C2 | 그룹 간 차이 (5230 vs 18974 등) | 권장 보강 |
| C3 | 사소한 표현 차이 | 묶음 처리 가능 |

## 검토 이력

| 검토일 | 대상 | C1/C2/C3 | 보강 진행 | 비고 |
|--------|------|---------|----------|------|
| 2026-05-12 | iso5230_guide (14 files, 2,431줄) | 9 / 9 / 4 | 미진행 | 종결체 혼재·5섹션 구조 2건 깨짐·규격 버전 표기 혼용·alert color 규칙 미명문화·mermaid/이미지 미사용 |
| 2026-05-12 | templates (2 files + 부록, 1,170줄) | ~14 / 18 / 18+ | 미진행 | **마크다운 렌더링 오류 4건**·OSPM 약어 혼용·"사업 부서" vs "프로그램 참여자" 혼재·Jira 5가지 표기·1-policy `### N.N` vs 2-process `### (N)` 헤딩 체계 차이·실제 SK 도메인 URL 노출 |
| 2026-05-12 | iso42001_guide (10 files, 1,400줄) | 8 / 18 / 9 | 미진행 | 4-operation/_index 헤딩 번호 부재·약어 풀이 광범위 부재(SBOM·MAU·CVE·CRA·GPAI·ML-BOM)·라이선스명 4가지 표기·alert 색상 매핑 충돌·체크포인트 vs 입증자료 번호 그룹 간 형식 차이 |
| 2026-05-12 | opensource_for_enterprise (9 files, 2,960줄) | 13 / 18 / 5+ | 미진행 | **7-ai-compliance 형식 단독 이탈**(어조·H3 번호·도입 alert·Summary·교차링크 모두 격차)·2-policy H2 번호 비순차(1·2·4·5·9·7·3)·imgproc 사용 빈도 0~30회 분산·"보안취약점" vs "보안 취약점" |
| 2026-05-12 | iso18974_guide (13 files, 2,075줄) | 2 / 16 / 9 | 미진행 | "Documented Evidence" 한국어 번역 혼용(증거/절차/문서/기록)·"초점" vs "강조점"·5-standard-practice 8가지 방법 `**방법 N**` 굵게 vs H3 격상 필요·5230 그룹과 5단 골격 강하게 정렬됨(좋음) |
| **합계** | **5 그룹 / 48 files / ~10K줄** | **46 / 79 / 45+** | **미진행** | **170+ 통일성 약점** |

---

## 그룹별 검토 결과

### 통일성 검토 — iso5230_guide (2026-05-12)

#### 그룹 내 확립된 표준 (관찰)
- **단락 구성**: frontmatter + 구축 단계 info alert + **5섹션 구조** (`## 1. 조항 개요` / `## 2. 해야 할 활동` / `## 3. 요구사항 및 입증자료` / `## 4. 입증자료별 준수 방법 및 샘플` / `## 5. 참고`). 입증자료별 `### N.N.N.N 제목` + 준수 방법/고려사항/샘플 서브섹션.
- **문장 스타일**: 본문 평서체("~한다"). 단, frontmatter 직하 구축 단계 alert만 경어체.
- **표현 통일**: `§3.X.X` 조항 표기, `3.X.X.N` 입증자료 평문, 약어 첫 등장 풀이.
- **markdown**: 5종 alert color(`info` 구축 단계, `success` 권장/팁, `pageinfo` 긴 절차) + `<details><summary>영문 원문 보기</summary>` + 무태그 코드 블록.
- **mermaid**: **해당 없음** (그룹 내 0건). ASCII 다이어그램 1건 (license-compliance).
- **이미지·캡션**: **해당 없음** (14개 파일 모두 이미지 미사용).

#### 핵심 약점 (C1 9건 — 우선 보강)

| # | 위치 | 약점 | 보강 |
|---|------|------|------|
| 1 | `2-license-compliance/_index.md:132-167` | "## 5. 자동화 도구 활용" 추가로 "참고"가 §6로 밀림. 14개 중 유일 6섹션 | §4 하위로 흡수하여 표준 5섹션 회복 |
| 2 | `1-conformance/_index.md:106-143` | "## 5. 인증 방법 선택 가이드" 추가로 동일 5섹션 깨짐. 루트 `_index.md`와 중복 | 루트로 통합 또는 §3.6.1 본문으로 흡수 |
| 3 | 14개 자식 _index.md L8 | description이 `description: >` 빈 값 — 루트만 채워짐 | 모두 채우거나 모두 비우기 결정 |
| 4 | `1-policy/_index.md:99-122`, `_index.md:188-214` | 정책 샘플·인증 절차 본문에서 경어체 vs 평서체 혼재 | 본문 평서체 통일, 정책 샘플은 자리표시자 그대로 |
| 5 | 14개 파일 구축 단계 alert | 경어체("구축합니다") — 본문 평서체와 불일치 | alert 평서체 통일 또는 규칙 명문화 |
| 6 | `1-policy:99-122` 정책 샘플 vs `1-contributions:92-116` 정책 샘플 | 경어체+수동태 vs 평서체+능동태 — 두 샘플 종결체 다름 | 정책 샘플 종결체 일관성 (templates/1-policy와 맞추기) |
| 7 | `1-conformance:20`, `_index.md:118` | "ISO/IEC 5230:2020 버전 2.1" vs "ISO/IEC 5230(OpenChain License Compliance)" vs "ISO/IEC 5230" 혼재 | 첫 등장 `ISO/IEC 5230:2020 (버전 2.1)`, 이후 `ISO/IEC 5230` |
| 8 | `1-contributions:108-115` vs `1-policy:99-122` | "회사"/"당사"/"[회사명]" 혼용 | `[회사명]` 자리표시자로 통일 |
| 9 | 모든 샘플 코드 블록 50+건 | 언어 태그 없는 ```` ``` ```` 일관 사용 — 의도 명시 부재 | 작성 규칙에 명문화 또는 표 샘플은 마크다운 표로 |

#### C2 9건 (그룹 간 차이·정보 중복·기준 부재)

- 6개 그룹 인덱스 페이지 본문 0줄 (frontmatter만)
- 구축 단계 alert 길이 천차만별·추가 안내 형식 불일치
- 인증 기관 목록 중복 (`_index.md` + `1-conformance`) + 2024 기준 outdated
- SPDX 라이선스 ID 일관성 부분적 (Apache-2.0 vs "GPL 계열")
- alert color 의미 규칙 미명문화
- pageinfo vs alert 구분 기준 모호
- mermaid 0건이라 ASCII 다이어그램 처리 방침 부재

#### C3 4건
- 정책 샘플의 "수립한다" vs "수립하도록 요구한다" 미세 차이
- §3.2.2의 5개 입증자료 표 비대화 (`<br>` 4건)
- description 정책
- 시각 자료 부재 (선택적 — mermaid 추가 검토)

#### 보강 권장 (일괄)
1. **[C1 일괄, 2건]** 5섹션 구조 표준 회복 (`2-license-compliance`·`1-conformance`)
2. **[C1 일괄, 1건]** 종결체 규칙 명문화 (`.claude/rules/guide-writing.md`) + 본문 평서체 통일
3. **[C1 일괄, 1건]** 규격 버전 표기 통일 (14 파일 grep)
4. **[C1 일괄, 1건]** 정책 샘플 자기 호칭 `[회사명]` 통일
5. **[C1 단건, 1건]** alert color 의미 규칙 문서화
6. **[C2 일괄, 1건]** 6개 그룹 인덱스 페이지 본문 추가
7. **[C2 단건, 1건]** 인증 기관 목록 중복 제거 + 2026 기준 갱신

#### 검토 메타
- 검토 모델: claude-opus-4-7
- 본문 정독: 2,431줄 (14개 파일)
- 미점검: 콘텐츠 깊이(guide-critic 역할)·en/ 동기화

---

### 통일성 검토 — templates (2026-05-12)

#### 그룹 내 확립된 표준 (관찰)
- **파일 헤더**: `{{% alert title="Note:" %}}` 출처·저자·CC BY 4.0 명시
- **저자 표기**: `**Author : OpenChain Korea Work Group Authors / [CC BY 4.0](...)**`
- **섹션 번호**: `## 1. 제목` → `### 1.1` 또는 `### (1)` → `1. **항목**:` 3단 구조
- **ISO 인용**: 본문 끝 괄호 `(ISO/IEC 5230 §3.4.1.2)`
- **보관 기간**: 최소 3년 일관 / **CVSS SLA**: Critical 1주 · High 4주 일관
- **역할명**: OSPM, OSPO, OSRB 첫 등장 시 풀네임 병기

#### 핵심 약점 — C1 (즉시 수정 권장, 마크다운 렌더링·구조 오류)

| # | 위치 | 약점 | 보강 |
|---|------|------|------|
| 1 | 1-policy §3.4 L189 | `[[부록 A: 담당자 현황]]` 이중 대괄호 — Hugo 렌더링 깨짐 | `[부록 A: 담당자 현황]` 정상 마크다운 링크로 |
| 2 | 1-policy §7.3 L429-431 | `\`textCopyright (c) [Year] [Company Name]` — `text` 언어 태그가 백틱 안에 잘못 들어감. 인라인 코드와 펜스드 코드 블록 혼동 | 정상 fenced code block(```` ```text ``` ````) |
| 3 | 2-process §1-(11) L152·L163 | `[2. 외부 문의 대응 프로세스]`·`[2. 보안 취약점 관리 프로세스]` — 대괄호만 있고 URL 없음 | 정상 fragment 링크 `(../#2-외부-문의...)` |
| 4 | 1-policy §4.1-2·§6.1-2·§1.1 | `[오픈소스 라이선스 가이드]`·`[Learning Portal]`·`[정책]` — URL 없는 빈 링크 다수 | 플레이스홀더 표기 정책 결정 (`{회사 자산 URL}` 또는 정상 링크) |
| 5 | 1-policy OSPM 사용 vs 2-process 풀네임 | 1-policy는 약어 사용, 2-process는 풀네임 30회+ — 약어 도입 후 일관 사용 부재 | 양쪽 통일 (OSPM 약어 사용) |
| 6 | "사업 부서" (2-process) vs "프로그램 참여자" (1-policy) | 동일 주체 그룹을 다르게 지칭 | 한쪽으로 통일 또는 관계 정의 |
| 7 | Jira 표기 5가지 (Jira Ticket / Jira / Jira Issue Tracker / Jira Tracker / 이슈 추적 시스템) | 동일 시스템을 5종 표기 | 단일 표기 결정 |
| 8 | 1-policy §3.3 `1) 2) 3)` vs §3.2 `1. 2. 3.` | 같은 파일 내 번호 체계 혼용 | `1. 2. 3.` 단일 체계 |
| 9 | 1-policy §3.1 `**책임**:` (굵게) vs §3.2 평문 | 항목 라벨 강조 기준 불일치 | 굵게 정책 결정 |
| 10 | 1-policy `### N.N` vs 2-process `### (N)` | 두 템플릿이 다른 헤딩 체계 — 의도된 구분이라면 그룹 표준 명문화 부재 | 통일 또는 상단 주석으로 명시 |
| 11 | 1-policy "회사" 일관 vs 2-process L19·L23 "OO 회사(이하 '회사')" 정의 도입 | 정책(母 문서)에서 회사 정의 없는데 프로세스에서 정의 — 위치 뒤바뀜 | 정책에 회사 정의 도입 |
| 12 | 2-process L40 `sktelecom.github.io` 실제 SK 도메인 URL | 템플릿이라면 회사 식별 정보가 플레이스홀더여야 함 | `{회사 라이선스 가이드 URL}` 플레이스홀더 |
| 13 | 1-policy `Apache-2.0` SPDX ID vs `4-artifacts` "GPL 계열" | SPDX ID와 일반 명칭 혼용 | 첫 등장 SPDX ID, 이후 일반 명칭 |
| 14 | 1-policy §1.1 "설계되었습니다" vs §11.1 "준수함을 선언합니다" | 도입과 결언의 어조 강도 불일치 | 어조 통일 |

#### C2 18건 — 핵심
- 1-policy §1 L19·L23 중복 문장 ("소프트웨어"·"공급 소프트웨어"만 다름)
- 1-policy §3.1 역할 정의에 ISO §3.3.1·§3.3.2 인용 부재
- ISO 인용 정합성: SBOM §4.3.1.2·CVSS SLA §4.3.2.1이 양 템플릿 중 한쪽만
- 1-policy → 2-process 역방향 링크 부재 (비대칭)
- 외부 자료 URL 처리 패턴 차이
- 부록 처리 방식 차이 (1-policy는 부록, 2-process는 인라인)
- frontmatter 메타데이터(common tag·iso-id) 부재
- "공급 소프트웨어" vs "제품" 혼재
- 굵게 강조 밀도 차이 (1-policy 빈번 vs 2-process 희박)

#### 두 템플릿 간 일관성 격차 (별도)
- 하위 헤딩 체계 (`### N.N` vs `### (N)`) — C1
- 회사 식별자 처리 — C1
- 실제 회사 도메인 URL 노출 — C1
- 굵게 강조 밀도 — C2
- OSPM 약어 사용 — C2
- CVSS SLA 명시 위치 (문장 vs 표) — C2
- SBOM 표준 형식 명시 (동사·검증 절차 표현 차이) — C2

#### 보강 권장 (우선순위)
1. **[C1 4건] 마크다운 렌더링 오류** 즉시 수정 — 인증 심사 즉시 발각 가능
2. **[C1 5건] 용어·약어·도메인** 통일 — OSPM·Jira·"사업 부서"·"회사" 정의·SK URL
3. **[C1 3건] 번호·헤딩·강조 정책** 명문화 — `.claude/rules/guide-writing.md`에 추가
4. **[C2 일괄] ISO 인용 정합성** — 양 템플릿에 동일 ISO 조항 인용 추가
5. **[C2 일괄] 역방향 링크** — 1-policy → 2-process 링크 추가

#### 검토 메타
- 검토 모델: claude-opus-4-7
- 본문 정독: 1,170줄 (1-policy 645 + 2-process 506 + appendix 20)
- 미점검: 콘텐츠 깊이·en/ 동기화

---

### 통일성 검토 — iso42001_guide (2026-05-12)

#### 그룹 내 확립된 표준 (관찰)
- frontmatter 6필드(`title`·`weight`·`type: docs`·`categories: ["guide"]`·`tags`·`description`) 일관
- 모든 페이지 `## 1. 개요` 시작 + `## N. 참고` 종료
- **체크포인트** 형식 (`- [ ]` 항목) — 입증자료 번호 없음 (42001 특성)
- 별표(★) 접미사 — 오픈소스 교차 핵심 조항
- ISO 인용 `ISO/IEC 42001 §X.X`
- mermaid 다이어그램 3건 사용 (그룹 중 유일)

#### 핵심 약점 — C1 8건

| # | 위치 | 약점 | 보강 |
|---|------|------|------|
| 1 | 4-operation/_index.md | `## 개요` (번호 없음) vs 다른 9개 `## 1. 개요` | `## 1. 개요`·`## 2. 세부 페이지`·`## N. 참고`로 정비 |
| 2 | description 패턴 분기 | 6 페이지 "ISO/IEC 42001 §X 요구사항 중..." vs 3 페이지 "§X.Y와 §X.Z에 따라" | 단일 패턴 결정 |
| 3 | 1-oss-in-ai 표 정렬 | 4컬럼 가운데 vs 2컬럼만 가운데 vs 좌측 — 비교 표 정렬 규칙 부재 | 일관 규칙 |
| 4 | 2-planning alert color | "ISO/IEC 18974와의 연계"만 `warning`(다른 통합 alert는 모두 `success`) | `success`로 변경 |
| 5 | 약어 풀이 광범위 부재 | SBOM·MAU·CVE·CRA·GPAI·ML-BOM·LLM 첫 등장 시 풀이 부재 | 루트 _index.md 또는 별도 glossary에 약어 표 |
| 6 | GPAI 미언급 | EU AI Act 여러 곳 인용에도 GPAI 분류 누락 | 본문에 GPAI 정의 추가 |
| 7 | ML-BOM 미언급 | AI SBOM과 CycloneDX의 ML-BOM 명칭 관계 누락 | 비교 표 추가 |
| 8 | "참고" 섹션 구성 표준 부재 | 3~6개 항목으로 들쭉날쭉, 명명 규칙 없음 | 4종 기본 세트(홈·대응 5230/18974·OSS 섹션·AIWG) |

#### C2 18건 / C3 9건 핵심
- 별표(★) 부착 기준 불명 (3-support는 §7.2·§7.5에 ★, §7.3 미부착)
- 라이선스명 4가지 표기 (Meta Llama Community License / Llama Community License / LicenseRef-Llama-Community / LicenseRef-Meta-Llama-Community-License)
- "오픈소스" vs "OSS" 본문 vs 표 안 혼재
- AI SBOM 정의 3-support와 4-operation/2-ai-sbom 두 곳에 중복
- 상위 디렉토리 참조 깊이 표기 페이지마다 다름

#### 다른 ISO 가이드(5230/18974)와의 일관성 격차
- **입증자료 번호 vs 체크포인트 형식 차이** — 사용자 혼선 잠재. compare 페이지 + 루트 _index.md 두 곳에 중복 설명 → 한 곳에만 집중
- TOC/네비게이션 부재 (긴 페이지 247줄·155줄에 앵커 링크 없음)
- "✅/⚠️/❌ 3단계" vs `- [ ]` 단순 체크 차이
- 샘플 문서를 본문 inline에 둠 (5230/18974는 templates/ 활용) — 재사용성 낮음
- mermaid 사용 빈도 5230/18974는 거의 0건

#### 보강 권장 (우선순위)
1. **약어 표 도입** — 루트 _index.md 또는 별도 glossary
2. 4-operation/_index.md 헤딩 번호 정비
3. 2-planning alert color `warning` → `success` 정정
4. 라이선스명 표기 통일 (`Meta Llama Community License`)
5. AI SBOM 정의 중복 정리 (2-ai-sbom에 집중)
6. 긴 페이지(100줄+)에 TOC 박스 추가
7. mermaid 사용 정책 명문화

#### 검토 메타
- 검토 모델: claude-opus-4-7
- 본문 정독: 1,400줄 (10개 파일)

---

### 통일성 검토 — opensource_for_enterprise (2026-05-12)

#### 그룹 내 확립된 표준 (관찰)
- frontmatter 7필드 일관 (1·7만 description 채움)
- 섹션 도입부 `{{% alert "이 섹션이 다루는 요구사항" %}}` (1·2·3·4·5·6 통일, 0·7 미적용)
- ISO 5230 alert color `success` + ISO 18974 alert color `warning` 짝짓기
- H3 번호 `### (N) 제목` (0·2·3·4·5·6 공통, 1·7 미사용)
- Summary 패턴 `## N. Summary` + `![](xxxno.png)` 이미지 (1·2·3·4·5 적용, 0·6·7 누락)
- 하단 교차 링크 blockquote `> **ISO/IEC 5230 / 18974 준수 가이드** —` (1·2·3·4·5·6 적용, 0·7 누락)
- 문체: "~합니다" 통일 (7-ai-compliance만 "~한다"체 단독 이탈)

#### 핵심 약점 — C1 13건

| # | 위치 | 약점 | 보강 |
|---|------|------|------|
| 1 | 7-ai-compliance 단독 이탈 | "~한다"체(18회) · H3 번호 미사용 · 도입 alert 부재 · Summary 부재 · 하단 교차 링크 부재 — **신설 섹션이 기존 6 섹션 표준에서 5가지 격차** | 7-ai-compliance를 기존 형식으로 리포밍(최우선) |
| 2 | 2-policy H2 번호 비순차 | `1·2·4·5·9·7·3 Summary` — 본문 H2가 코드 블록 내부 정책 템플릿 번호와 충돌 | H2 번호 재정렬 또는 (1)~(9) H3 그루핑 정리 |
| 3 | 0-openchain 형식 격차 | 도입 alert 부재 · ISO 인용 alert 부재 · Summary 부재 · 하단 교차 링크 부재 — 텍스트형 vs 조항 매핑형 장르 분기 | 3종 세트(도입 alert·Summary·교차링크) 추가 |
| 4 | 메인 _index.md categories/tags 부재 | 하위 8 섹션은 보유. 인덱스 역할이라도 검색·태그 시스템 누락 | 추가 |
| 5 | description 단독 채움 | 7-ai-compliance만 채움, 다른 8개 빈 값 — 카드 미리보기 렌더링 단독 다름 | 일괄 결정 (모두 채우거나 모두 비우기) |
| 6 | imgproc 사용 빈도 분산 | 0-openchain 30회 vs 2-policy·6-conforming·7-ai 0회 — 시각 자료 비중 0배~30배 | 정책 명문화 |
| 7 | 이미지 표기 두 방식 혼용 | `&#123;&#123;< imgproc Fit ... >&#125;&#125;` vs raw `![](./xxx.png)` 같은 파일 내 혼용 | imgproc 단일 패턴 |
| 8 | 메인 _index 본문 문체 혼재 | L84 "~합니다" 다음 줄 L120 "~준용한다" | 본문 "~합니다" 통일 |
| 9 | 7-ai success 의미 혼용 | success가 ISO 인용 vs "체크포인트"용으로 두 의도 혼재 | 색상 의미 명문화 |
| 10 | H3 번호 표기 이원화 | `### (N) 제목` vs `### 제목` | 통일 |
| 11 | 4-tool §4 "보안취약점" | 다른 섹션 모두 "보안 취약점" 띄어쓰기 | 띄어쓰기 통일 |
| 12 | 6-conforming H2 부재 | 다른 섹션 H2→H3 계층 위계 위반 | H2 도입 |
| 13 | Summary 헤딩 누락 3건 | 0·6·7 섹션 Summary 없음 | 추가 |

#### C2 18건 / C3 5+건 핵심
- tags 작명 규칙 부재 (단어 1개 vs 4개 키워드)
- alert 내부 공백·줄바꿈 표류
- 캡션 4가지 형식 공존 (`<center>...`·`<center><i>...`·`<center>< 출처 : URL >`·`<center>< 제목, 출처 - URL >`)
- imgproc Fit 크기 무작위 (`900x600`/`600x300`/`600x450`/`900x1200`/`1200x900`)
- "Supplied Software" 원문 vs "공급 소프트웨어" 번역 혼재
- ISO 표준명 연도 표기 비일관 (`ISO/IEC 5230:2020` vs `ISO/IEC 5230`)
- 자기참조 호칭 "기업"/"회사"/"조직"/"프로그램 참여자" 혼용
- 2-policy vs 3-process 본문 구성 방식 차이

#### 보강 권장 (우선순위)
1. **7-ai-compliance 기존 형식 리포밍**(최우선) — 도입 alert + H3 (N) 번호 + 어조 + Summary + 교차링크
2. **2-policy H2 번호 재정렬** — `1·2·4·5·9·7·3` → 순차
3. **0-openchain 3종 세트** 추가 (도입 alert·Summary·교차링크)
4. alert color·용도 정의 명문화 (`.claude/rules/guide-writing.md`)
5. 이미지·캡션 표기 단일화
6. tags 표준화 (`ISO/IEC 5230`·`ISO/IEC 18974` + 섹션 고유 키워드)
7. 메인 _index.md categories/tags 추가

#### 검토 메타
- 검토 모델: claude-opus-4-7
- 본문 정독: 2,960줄 (9개 파일)

---

### 통일성 검토 — iso18974_guide (2026-05-12)

#### 그룹 내 확립된 표준 (관찰)
- 5단 골격 (개요·활동·요구사항·준수 방법·참고) — iso5230_guide와 동일
- 모든 13개 파일 `구축 단계` info alert + Phase 1~5 매핑
- ★ 마커 일관 (전용 9개 항목)
- 5230 준용 항목 단축 패턴 ("ISO/IEC 5230 §3.x.y.z와 동일하다 + 링크")
- ★ 전용 항목 본문 패턴 (준수 방법 → 고려사항 → 샘플)
- `<details><summary>영문 원문 보기</summary>` blockquote 통일
- mermaid 1건 (2-security-assurance flowchart) — 그룹 내 유일

#### 핵심 약점 — C1 2건

| # | 위치 | 약점 | 보강 |
|---|------|------|------|
| 1 | 전체 13개 파일 | **"Documented Evidence" 한국어 번역 혼용** — "문서화된 증거"/"문서화된 절차"/"문서화"/"문서 형태로 보관"/"기록을 유지" 혼재. 4.1.2.5는 "문서화된 증거"(L38), 4.1.4.3은 "문서화된 증거"(L38)·"기록"(L106)·"문서화"(L32) 동시 사용 | "Documented Evidence → 문서화된 증거" 통일 + 가이드 작성 규칙에 명시 |
| 2 | 전체 | **"documented procedure" 번역 혼용** — "문서화된 절차" vs "절차" vs "문서화한 절차" 혼용 | "documented procedure → 문서화된 절차" 통일 |

#### C2 16건 핵심
- "초점" vs "강조점" 혼용 (1-sbom·1-policy·2-access·3-awareness)
- "이 X가 입증자료 N.N.N이다" 마침 문장 위치 혼재
- 1-completeness·5-standard-practice만 `## 6. 참고` (예외 2건, iso5230과 동일 패턴)
- 5-standard-practice "방법 1~8" `**방법 N — 제목**` 굵게 처리 → `### 방법 N` H3 격상 권장
- 5-standard-practice 코드 블록 길이 편차 (4줄~7줄, 30~70% 차이)
- "취약점" vs "보안 취약점" 본문 혼용
- CVD·CVSS 페이지마다 재정의 (첫 등장 시 1회 권장)
- 2-security-assurance "플로우차트" vs "흐름도" (외래어 표기)
- mermaid 1건만 사용, 5-standard-practice 8가지 방법 시각화 부재

#### iso5230_guide와의 그룹 간 일관성 격차
- **공통 정형 강하게 정렬** ✅ — 5단 골격·구축 단계 alert·`<details>`·★ 마커·`<br>` 표 안 입증자료 나열
- 부분 격차:
  - Phase 단계 의미 다름 (5230 Phase 4 "산출물·기여" vs 18974 "운영 체계 수립") — `_index.md`에 차이 명시 필요
  - "이 X가 입증자료 N.N.N이다" 위치 정합 부족
  - mermaid는 18974에만 1건 (그룹 간 비대칭)
  - compare 페이지가 18974에만 (5230 _index.md에 양방향 링크 추가)

#### C3 9건
- 준용 항목 단락 길이 편차 (1~2문장 vs 부연 포함 다양)
- ★ 안내 문구 변형 ("추가 항목" vs "다름 — 보안 전문성으로 초점 전환")
- 체크박스 글리프 혼용 (☐ U+2610 vs □ U+25A1)
- 조항 개요 도입 패턴 변형
- "그룹 또는 기능" 어색한 직역 (영문 직역)
- mermaid 노드 범례 부재

#### 보강 권장 (우선순위)
1. **용어집 정립** — Documented Evidence·documented procedure·CVD·CVSS·NVD·OSV 약어 정책 명문화
2. 준수 방법 정형 명문화 (★ 항목 3블록 vs 준용 항목 2~3문장)
3. 결론 문장 "이 X가 입증자료 N.N.N이다" 위치 통일
4. 5-standard-practice "방법 1~8" H3 격상 + 8가지 방법 mermaid 흐름도
5. compare 페이지 양방향 링크 (iso5230_guide _index.md)
6. Phase 단계 의미 차이 _index.md에 명시

#### 검토 메타
- 검토 모델: claude-opus-4-7
- 본문 정독: 2,075줄 (13개 파일)

---

## 🎯 5개 그룹 통일성 검토 종합 (2026-05-12)

### 총 통일성 약점: 170+건 (C1 46 / C2 79 / C3 45+)

### 가로축 패턴 (다수 그룹 공통)

**P0 — 즉시 수정 가능 (단순 정정, 30분 내)**:
1. templates 마크다운 렌더링 오류 4건 — `[[...]]`·`textCopyright`·URL 없는 링크 (단, §7.3 코드 블록은 URG-3에서 일부 처리됨)
2. iso42001 `4-operation/_index.md` 헤딩 번호 부재 (`## 개요` → `## 1. 개요`)
3. iso42001 `2-planning` alert color `warning` → `success` 오기
4. opensource_for_enterprise `4-tool` "보안취약점" → "보안 취약점" 띄어쓰기

**P1 — 규칙·표준 명문화 (가이드 작성 규칙 갱신)**:
1. **종결체 규칙** — 본문 평서체("~한다") / alert 경어체 / 정책 샘플은 자리표시자 (`.claude/rules/guide-writing.md`)
2. **alert color 의미** — `info`(구축 단계·연결 안내) / `success`(권장·ISO 인용) / `warning`(주의·18974 인용) / `pageinfo`(긴 절차)
3. **헤딩 번호 체계** — `## N. 제목` 일관 / H3는 `### (N) 제목` 또는 `### N.N` 그룹별 정책
4. **약어 풀이 정책** — 첫 등장 시 1회 풀어쓰기 (SBOM·MAU·CVE·CRA·GPAI·ML-BOM·OSPM·CVSS·CVD·NVD·OSV·LLM)
5. **이미지·캡션 표기** — `&#123;&#123;< imgproc Fit "900x600" >&#125;&#125;` + `<center><i>출처: URL</i></center>` 단일 패턴
6. **ISO 조항 인용 형식** — `ISO/IEC 5230 §3.4.1.2` 표준
7. **용어 통일** — "Documented Evidence → 문서화된 증거" / "documented procedure → 문서화된 절차" / "공급 소프트웨어"(번역) / "회사" 자기 호칭 / "보안 취약점" 띄어쓰기

**P2 — 구조적 보강 (수시간~며칠)**:
1. **7-ai-compliance 형식 리포밍** (opensource_for_enterprise) — 도입 alert · H3 (N) 번호 · 어조 · Summary · 교차링크 5종 추가
2. **2-policy H2 번호 재정렬** — `1·2·4·5·9·7·3 Summary` → 순차
3. **0-openchain 3종 세트** — 도입 alert · Summary · 교차링크 blockquote
4. **iso5230 5섹션 구조 회복** — `2-license-compliance`·`1-conformance` `## 5.`를 §4 하위로
5. **templates 두 템플릿 헤딩 체계 통일** — `### N.N` vs `### (N)` 결정
6. **iso42001 약어 표** — 루트 _index.md 또는 별도 glossary 페이지
7. **iso18974 §4.1.5 "방법 1~8" H3 격상** + 8가지 방법 mermaid 흐름도
8. **iso42001 AI SBOM 정의 중복 정리** (3-support와 4-operation/2-ai-sbom)

**P3 — 그룹 간 정합 (장기)**:
1. compare 페이지 양방향 링크 (iso5230 ↔ iso18974)
2. Phase 단계 의미 차이 명시 (5230 Phase 4 vs 18974 Phase 4)
3. 입증자료 번호 체계(5230/18974) vs 체크포인트(42001) 차이 안내
4. 샘플 문서 외부화 (iso42001 inline → templates/)
5. en/ 동기화 (별도 Phase 6)

### 그룹별 약점 밀도

| 그룹 | 총 약점 | 줄당 약점율 | 핵심 영역 |
|------|---------|------------|----------|
| templates | 50+ | 4.3% | 마크다운 렌더링·용어·헤딩 체계 |
| opensource_for_enterprise | 36+ | 1.2% | 7-ai-compliance 단독 이탈·H2 번호 |
| iso42001_guide | 35 | 2.5% | 약어 부재·라이선스명 4가지 |
| iso18974_guide | 27 | 1.3% | Documented Evidence 번역 |
| iso5230_guide | 22 | 0.9% | 5섹션 구조·종결체 |

**가장 시급한 영역**: templates (인증 심사 제출 실물) > opensource_for_enterprise (메인 가이드, 다른 그룹에서 인용) > iso42001_guide (신설·미성숙)

---
