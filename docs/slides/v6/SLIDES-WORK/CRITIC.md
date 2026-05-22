# CRITIC — v5 슬라이드 7차원 비판 평가

> Phase 2-b 산출물. v5 Marp 원본(`docs/slides/archive/v5-marp-2026-05-12.md`, ~88장)을
> **현재 가이드(유일 근거)**와 대조해 7차원으로 비판한다.
> **근거 원칙**: 2026-04 이전 v5 본문은 평가 대상일 뿐 사실 근거가 아니다. 유일 근거는 현재 가이드
> (`opensource_for_enterprise/`·`iso5230_guide/`·`iso18974_guide/`·`iso42001_guide/`·`templates/`·
> `EVIDENCE-CHECK.md`·`CRITIC-REPORT.md`)다.
> 슬라이드 번호(v5#)는 GAP-REPORT(2-a)의 일련번호 체계를 따른다.

## 7차원

1. **모호성** — 개념·용어가 흐릿한가
2. **누락 예외** — 예외 케이스·반례가 빠졌나
3. **샘플 현실성** — 예시가 실무에서 통하나
4. **심사 함정** — ISO 인증 심사관 관점에서 오해·허점
5. **실무 적용성** — 청중이 바로 적용 가능한가
6. **표준 정합성** — ISO 5230/18974/42001 조항과 정확히 맞나
7. **최신성** — 2026 기준(CVSS 4.0·VEX·EPSS/KEV·EU CRA·AI 규제 등) 반영됐나

## 우선순위 정의

- **P1 (필수 수정)**: 가이드와 직접 어긋나거나 심사 시 즉시 발각될 사실 오류·자체 모순. v6에서 반드시 교정.
- **P2 (권장)**: 골격은 유효하나 2026 현행화·예외 보강이 필요. 전문가 청중 신뢰도에 영향.
- **P3 (선택)**: 표현·정합 다듬기. 시간 여유 시 반영.

---

## P1 — 필수 수정

| ID | 슬라이드/주제 | 차원 | 약점 | 보강 방향 | 근거 가이드 |
|---|---|---|---|---|---|
| C-01 | #47 보안 취약점 대응 프로세스 — CVSS 기한표 | 최신성·표준정합성 | CVSS **2.0/3.0 열만** 존재. CVSS v4.0(2023-11) 누락. 2026 시점 outdated | "v3.1 또는 v4.0" 병기, 신규 평가는 v4.0 권장 박스 | `2-policy/_index.md` L157 "CVSS v3.1 또는 v4.0"; CRITIC-REPORT HZ-1·3-process P2(L134) |
| C-02 | #47 / #31 보안 정책 — 우선순위 결정 | 최신성·표준정합성 | CVSS 점수 단독으로 우선순위 결정. **EPSS(익스플로잇 예측)·CISA KEV(실제 악용 목록)** 보조 지표 누락 | 우선순위 = CVSS + EPSS + KEV 등재 여부 3축으로 보강 | `2-policy/_index.md` L158 (EPSS·CISA KEV); CRITIC-REPORT 핵심발견 D |
| C-03 | #45 SBOM 수명주기 / #30 라이선스 정책 상세 — SBOM 형식 | 최신성·표준정합성 | SBOM 형식을 **SPDX 2.3 / CycloneDX 1.5**로 명시. 가이드는 SPDX 3.0·CycloneDX 1.6 기준 | SPDX 3.0 / CycloneDX 1.6으로 현행화 | `3-content-review/1-sbom/`; CRITIC-REPORT 3-process P1(L122) SBOM 형식 |
| C-04 | #47 탐지 / #31 보안 정책 — 취약점 DB | 최신성·누락예외 | 취약점 탐지를 **CVE 피드(사실상 NVD)** 단일 의존. NVD 2024-25 백로그 이슈 미반영 | **NVD + OSV.dev + GHSA + KISA KNVD** 다원화 명시 | `2-policy/_index.md` L151-155(4개 DB 병행); CRITIC-REPORT HZ-2 |
| C-05 | #47/#49 취약점 대응·기록 — 고객 통보 | 최신성·표준정합성 | 고객 통보 시 **VEX(CSAF 2.0·CycloneDX VEX) 4상태값**(not_affected/affected/fixed/under_investigation) 전무 | VEX 발행 + 4상태값 명시 슬라이드/박스 추가 | `2-policy/_index.md` L163(VEX 4상태값); CRITIC-REPORT HZ-3 |
| C-06 | #83 AI 모델 라이선스 유형 비교표 | 최신성·표준정합성 | 표 전체가 구형: **OSAID 1.0(OSI 2024-10) 열 없음**, "Llama Community License"를 오픈소스로 암시(가이드는 **Open Weight** 분류), Gemma ToU v3·Falcon 180B·Qwen·DeepSeek·Phi-4 등 2026 모델 부재 | 가이드 표로 전면 교체: OSAID 1.0/Open Weight 구분 열 + 2026 모델 | `7-ai-compliance/_index.md` L83-98(OSAID 표·Open Weight 박스); CRITIC-REPORT iso42001 P1#1 |
| C-07 | #82 오픈소스 AI 모델 관리 — Llama 의무 | 누락예외·심사함정 | "모델별 개별 확인"만 언급. **Llama 의무 체크리스트**(MAU 7억·"Built with Llama" 표기·파생 모델명 접두어·AUP 동의·군사 등 금지·405B 재배포 제한·버전별 차이) 전무 | Llama 라이선스 의무 체크리스트 슬라이드 신설 | `7-ai-compliance/_index.md` L100-112; CRITIC-REPORT AI-2·GAP N4 |
| C-08 | #74 AI-BOM이란 / #85·86 AI SBOM | 최신성·표준정합성 | **SPDX 3.0 AI Profile만** 언급. CycloneDX 1.6 ML-BOM 병기 누락, "AI-BOM"↔"AI SBOM" 용어 혼용 | SPDX 3.0 + CycloneDX 1.6 ML-BOM 양 표준 병기 + 용어 통일 | `7-ai-compliance/_index.md` L128-130; `iso42001_guide/4-operation/2-ai-sbom/`; CRITIC-REPORT iso42001 P1#3 |
| C-09 | #74 AI-BOM 예시 (CC0 데이터) | 샘플현실성·표준정합성 | YAML 예시에 `CommonCrawl ... license: CC0-1.0`. Common Crawl은 CC0가 아님(원저작물 라이선스 혼재) — 심사·전문가 청중에 사실 오류 | 가이드 정식 SPDX 3.0 예시로 교체(relationships TRAINED_ON 포함), 데이터 라이선스 정확화 | `iso42001_guide/4-operation/2-ai-sbom/` §3.2 정식 예시; CRITIC-REPORT iso42001 2-ai-sbom P1 |
| C-10 | #74 파트3 — AI 규제 근거 | 최신성·누락예외 | AI-BOM 근거를 ISO 42001 §7.5로만 제시. **EU AI Act(§53 GPAI·§50 투명성)·EU CRA·한국 AI 기본법(2026-01 시행)** 전무 | 글로벌 AI 규제 매트릭스 슬라이드 신설(Part 3 도입부) | `iso42001_guide/1-context-leadership/`; `7-ai-compliance/_index.md` §5-3·5-5; CRITIC-REPORT iso42001 P1#2·AI-1·GAP N1 |
| C-11 | #74 인증후 18개월 → #97 핵심 3가지 / #75 통합 체크 | 표준정합성·심사함정 | "18개월 이내에 여전히 충족하고 있음을 재확인"·"충족하고 있음" **현재형**. ISO 원문 `within the past 18 months`는 **회고형(충족해 왔음)** | "지난 18개월 동안 충족해 왔음" 회고형으로 정정, "미래형 보장 아님" 주의 | `6-conforming/_index.md` L55·L72(회고형); CRITIC-REPORT 핵심발견 D·URG-7 |
| C-12 | #12 18974 추가 9개 / #14 세 표준 비교 / #97 핵심 3가지 | 표준정합성·심사함정 | "5230 인증 보유 시 **9개만 추가**하면 18974 취득" 반복. 가이드: 18974는 **25개(공통 16 + 전용 9)**이고 공통 16개는 **"파생"이며 9개 전용은 더 강한 "Documented Evidence"** 요구 — "9개만 추가"는 강도 차이 누락 | "공통 16개는 5230 기반 파생, 전용 9개는 Documented Evidence 강도" 명시. "추가만 하면" 단순화 제거 | `iso18974_guide/_index.md` L38-40·L55·L271; CRITIC-REPORT iso18974 4-conformance P1 |
| C-13 | #97 핵심 3가지 — 입증자료 수 vs #12·#41·#60 "25+9" | 표준정합성·모호성 | 한 덱 안에서 **"50개"(#97)** ↔ **"25+9개"·"25개(+9개)"(#41·#60·#74)** 혼용. 9는 18974 전용, 16은 공통이므로 "5230 25 + 18974 추가 9" 셈법과 "각 25개=50개" 셈법이 충돌 | 단일 셈법으로 통일: 가이드 표기 "각 25개, 합계 50개(공통 16 중복)" 또는 "고유 34개" 중 택1, 전 슬라이드 일관 적용 | `opensource_for_enterprise/_index.md` L61(각 25개=50개); `iso18974_guide/_index.md` L39 |

---

## P2 — 권장

| ID | 슬라이드/주제 | 차원 | 약점 | 보강 방향 | 근거 가이드 |
|---|---|---|---|---|---|
| C-14 | #23 규모별 조직 / #22 OSPO | 심사함정·누락예외 | "겸직 담당자 1인"·"PM 겸 법무"를 무조건 가능으로 제시. 가이드는 **1인 다역 시 권한 분리 원칙 충돌(§3.2.2.4)** 심사 주의를 경고 | "1인 운영 시 의사결정·승인·집행 권한 분리(외부 OSRB 자문 등)" 주의 박스 추가 | `1-teams/_index.md` L64-70 "1인 다역 인증 심사 주의" |
| C-15 | #66 교육 대상 "모든 직원" / #26 참여자 목록 | 심사함정 | "모든 직원"·"전원 문서화"가 §3.2.2.1 **"이름" 요건**과 충돌 가능 — "전원" 표기는 이름 요건 미충족 | "팀별 1인 챔피언 모델 + 별도 부록 실명 명단" 권장으로 보강 | `1-teams/_index.md` L94·L167 "전원 표기 → 팀별 1인 챔피언" |
| C-16 | #31 보안 정책 — CVSS 조치 기한 | 최신성·자체모순 | "9.0+ 7일/7.0-8.9 30일" 고정 SLA. #47 프로세스 표("Critical 1주/High 4주")와 **수치 단위·표현 불일치**. 가이드는 EPSS/KEV로 SLA 보정 권고 | 정책·프로세스 SLA 단위 통일 + EPSS/KEV 기반 우선순위 보정 한 줄 | `2-policy/_index.md` §5.1; CRITIC-REPORT 핵심발견 D(2-policy SLA 모순) |
| C-17 | #44 식별·검사 — SCA 도구 | 최신성 | SCA를 일반 언급. **SCANOSS 스니펫 매칭**(파일 단위) 등 가이드 도구 미연결 | "SCANOSS(스니펫 매칭)" 명시 + 도구 페이지 링크 | `tools/9-scanoss/`; GAP #44 |
| C-18 | #57 도구 생태계 / #63 CI/CD 게이트 | 최신성 | 정책 게이트 조건이 "Critical 발견 시 차단"만. **EPSS/KEV·금지 라이선스 게이트 조건** 미명시. OSV-SCALIBR 등 가이드 신규 도구 점검 필요 | 게이트 조건에 EPSS/KEV·금지 라이선스 추가, 도구명·라이선스 최신성 점검 | `4-tool/_index.md` §7; `tools/`; GAP #57·#63 |
| C-19 | #49 취약점 및 조치 기록 표 | 최신성·심사함정 | 기록 표에 **CVE/CVSS/완료일만**. EPSS·KEV·VEX 상태 열 부재. "탐지 없음도 기록"은 좋으나 메타데이터 빈약 | EPSS·KEV·VEX 상태 열 추가 | `2-policy/_index.md` §5.1; CRITIC-REPORT HZ-3·3-process P2 |
| C-20 | #45 SBOM 수명주기 — DB 대조 | 최신성 | "신규 CVE 발행 시 SBOM 자동 대조"의 대조 대상 DB 미명시 | OSV.dev·GHSA 대조 명시 | `3-content-review/1-sbom/`; GAP #45 |
| C-21 | #14 세 표준 비교 — 42001 행 | 표준정합성·모호성 | 42001 인증 "자가/제3자"로만 표기. **ISO 42006(인정 인증)·자체 갭분석/제2자/제3자 3종** 구분 부정확. "체크포인트 방식"도 정밀화 필요 | 42001 준수 확인 3종 + ISO 42006 동향 반영. `compare` 가이드 정합 | `iso42001_guide/compare/_index.md`; `iso42001_guide/_index.md`; CRITIC-REPORT iso42001 compare P1 |
| C-22 | #13 42001 소개 — 교차 조항 | 최신성·누락예외 | 교차 조항을 **§5.2·6.1.2·8.5 3개만** 언급. 가이드는 **§5.2·6.1.2·7.5·8.5·8.6·8.8 6개** | 6개 교차 조항으로 확장(#87 표와 정합) | `iso42001_guide/_index.md` L14; `7-ai-compliance/_index.md` L14 |
| C-23 | #84 학습 데이터셋 — NC 데이터 경고 | 표준정합성·심사함정 | CC-BY-NC 경고는 있으나, **NC 데이터로 학습한 모델의 상업 배포 적법성 불명확** 메시지가 박스 하단에 약하게 처리 | NC 학습 데이터 → 상업 배포 리스크를 핵심 메시지로 격상 | `7-ai-compliance/_index.md` L165(CC-BY-SA 법무 협의); GAP #84 |
| C-24 | #88·89 AI 코딩 도구 | 최신성·누락예외 | 4단계 전략은 가이드와 정합하나, **AI 생성 코드 저작권 귀속(US Copyright Office 2024)·공급자 IP indemnification(MS/OpenAI/Anthropic/Google)·EU AI Act §50 표기 의무** 전무 | 저작권 귀속·indemnification·표기 의무 슬라이드 신설 | `7-ai-compliance/_index.md` §5-1·5-2·5-3; CRITIC-REPORT AI-4·GAP N7·N8 |
| C-25 | #11 18974 소개 — "CVE 모니터링" | 최신성 | "CVE 모니터링"을 일반 표현으로 서술. 2026 현행 용어(OSV.dev·GHSA·KNVD·EPSS·KEV) 미반영 | 현행 DB·지표로 한 줄 현행화 | `iso18974_guide/_index.md`; `2-policy/_index.md` L151-158; GAP #11 |
| C-26 | (신규 부재) AI 공급망 보안 | 최신성·누락예외 | v5에 **모델 공급망 공격(pickle RCE·backdoor·typo-squatting)·OpenSSF Model Signing(Sigstore)·SLSA for AI** 슬라이드 전무. §8.8 본질 | Part 3에 AI 공급망 검증·모델 서명 슬라이드 신설 | `iso42001_guide/4-operation/3-supply-chain/` §6; CRITIC-REPORT iso42001 P1#4·GAP N9·N10 |
| C-27 | #46/#62 산출물 보관 — GPL 3년 | 표준정합성·누락예외 | "GPL written offer 3년"만 일반화. 화면 없는 제품(임베디드·CLI·SaaS) 고지문/소스 전달 방법 미수록 | 제품 유형별 전달 방법 한 줄(임베디드·CLI·SaaS) | CRITIC-REPORT 3-process P2(L129) 화면 없는 제품 고지 |
| C-28 | #51 외부 문의 / #39 채널 — 응답 SLA | 모호성 | "24시간 이내 접수"·"30일 이내 회신" 수치가 가이드 메트릭과 정합 미검증(가이드는 14영업일 SLA 언급 사례) | 가이드 정책 §1.4.1 SLA와 수치 정합 확인 후 통일 | CRITIC-REPORT 3-process P1(L126) 외부 문의 SLA 정합 |
| C-29 | #5 강의 로드맵 — 시간 배분 | 실무적용성 | 35/115/30/15/10 배분은 Part 3 AI 확장 대상 분량과 불일치(2-a 결정: Part 3 30→75분) | DECISIONS #1·#9 시간 재배분 반영 | `DECISIONS.md`; GAP #5 |

---

## P3 — 선택

| ID | 슬라이드/주제 | 차원 | 약점 | 보강 방향 | 근거 가이드 |
|---|---|---|---|---|---|
| C-30 | #81 AI 프레임워크 라이선스 표 | 최신성 | scikit-learn 등 가이드 표 항목 누락 | scikit-learn 행 추가(가이드 표와 정합) | `7-ai-compliance/_index.md` L61 |
| C-31 | 약어 풀이(OSPO·SCA·CVSS·LMS·MAU 등) | 모호성 | 첫 등장 약어 풀이 누락 다수(전문가 청중이라도 1회 풀이 권장) | 그룹 내 첫 등장 1회 풀이 | `.claude/rules/guide-writing.md` 약어 풀이 규칙 |
| C-32 | #58·#59·#60 도구 카드 — 라이선스 표기 | 최신성 | FOSSLight AGPL-3.0 등 라이선스 표기는 정확하나 도구 버전/상태 점검 필요 | 도구 페이지와 라이선스·상태 정합 점검 | `tools/` 각 페이지 |
| C-33 | #16 자가 인증 결과 예시 — 판정 마크 | 심사함정 | O/! 2단 판정. EVIDENCE-CHECK는 충족/부분/누락 3단 | ✓/△/✗ 3단으로 정합 | `EVIDENCE-CHECK.md` 3단 판정; CRITIC-REPORT 18974 completeness P3 |
| C-34 | #17 인증 선언 기업 목록 | 최신성 | "LG·삼성·Kakao·SKT·현대차" 목록 최신성 미검증 | OpenChain Community of Conformance 최신 확인 | `6-conforming/_index.md` |
| C-35 | #69·70 교육 자료 외부 링크 | 최신성 | NIPA·SKT 외부 링크 유효성 미검증 | 링크 유효성 점검 | GAP #69·#70 |
| C-36 | #75 통합 준수 체크 — 산출물 매핑 | 표준정합성 | "3.4.1.1/3.4.1.2 → 18974 —" 표기. 18974 §4.x 대응 매핑 일관성 점검 | EVIDENCE-CHECK 매핑과 교차 검증 | `EVIDENCE-CHECK.md` |

---

## 요약

### 차원별 P1 분포

| 차원 | P1 건수 | 대표 ID |
|---|---|---|
| 최신성 | 9 | C-01·02·03·04·05·06·08·10·25 |
| 표준 정합성 | 8 | C-03·05·06·08·09·11·12·13 |
| 누락 예외 | 3 | C-04·07·10 |
| 심사 함정 | 3 | C-07·11·12 |
| 샘플 현실성 | 1 | C-09 |
| 모호성 | 1 | C-13 |
| 실무 적용성 | — | (P2 C-29·P3) |

> P1은 **최신성·표준 정합성**에 집중된다. v5와 가이드가 동일 컷오프로 작성됐으나, 가이드는 이후
> 보안(CVSS v4.0·VEX·EPSS/KEV·다원 DB)·AI(OSAID·Llama 의무·CycloneDX 1.6·규제 매트릭스)·
> 회고형 18개월 표기까지 현행화됐고, **v5는 그 보강 이전 상태에 멈춰 있다.**

### 집계

| 우선순위 | 건수 |
|---|---|
| **P1 (필수 수정)** | **13** |
| **P2 (권장)** | **16** |
| **P3 (선택)** | **7** |
| **합계** | **36** |

### 가장 시급한 약점 5가지

1. **C-01·C-02 보안 취약점 우선순위 체계 전면 노후** — CVSS 2.0/3.0 단독 + CVSS만으로 우선순위.
   가이드는 CVSS v4.0 + EPSS + CISA KEV 3축. ISO 18974 강의의 핵심 슬라이드가 outdated. (#47·#31)
2. **C-06·C-07 AI 모델 라이선스 표·Llama 의무 노후** — OSAID 1.0/Open Weight 구분 부재, 구형 모델,
   Llama 의무 체크리스트 전무. 전문가 청중 대상 Part 3의 신뢰도 직결. (#82·#83)
3. **C-13·C-12 입증자료 셈법 자체 모순** — 한 덱에서 "50개" ↔ "25+9개" 혼용 + "9개만 추가하면 18974"
   단순화(공통 16 파생·전용 9 Documented Evidence 강도 누락). 심사관·청중이 즉시 헷갈린다. (#97·#12·#41·#60)
4. **C-11 18개월 유지 시제 오류** — "여전히 충족하고 있음"(현재형). ISO 원문은 회고형
   "지난 18개월 동안 충족해 왔음". 가이드 CRITIC-REPORT가 자체 모순으로 명시한 동일 패턴. (#74·#97)
5. **C-10·C-05 2026 규제·VEX 미반영** — EU AI Act·EU CRA·한국 AI 기본법(2026-01 시행) 근거 전무,
   VEX 4상태값 통보 체계 전무. 한국 가이드 기반 강의로서 가장 큰 현실 격차. (#74·#47·#49)

---

## 작업 메타

- 입력: `docs/slides/archive/v5-marp-2026-05-12.md` (3,421줄, CSS 프리앰블 598줄 + 슬라이드 본문 ~88장)
- 유일 근거: `opensource_for_enterprise/`(특히 2-policy·3-process·7-ai-compliance), `iso5230_guide/6-conformance`,
  `iso18974_guide/_index`, `iso42001_guide/`(1-context-leadership·4-operation/2-ai-sbom·3-supply-chain·compare),
  `EVIDENCE-CHECK.md`, `CRITIC-REPORT.md`(가이드 자체 약점 카탈로그)
- 연계: GAP-REPORT(2-a) 슬라이드 분류와 정합 — "재작성필수 4장"(#5·#31·#47·#83)이 본 비판 P1과 일치
- 작성일: 2026-05-22
- 다음 단계: 2-c EVIDENCE-MAP.md → 2-d PLAN.md
