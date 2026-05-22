# PLAN — 슬라이드 v6 순차 재구성안

> Phase 2-d 산출물. 앞선 3개 분석(GAP-REPORT·CRITIC·EVIDENCE-MAP)과 DECISIONS·COMPONENTS를 종합해
> 슬라이드 1~N을 순차 번호로 재구성한다.
> **유일 근거**: 현재 가이드(`opensource_for_enterprise/`·`iso5230_guide/`·`iso18974_guide/`·`iso42001_guide/`·`templates/`·`tools/`·`EVIDENCE-CHECK.md`).
> 2026-04 이전 v5 본문은 "변경없음" 분류 슬라이드의 어휘·구조 차용만 허용.

---

## 재구성 원칙

- **시간**: 4시간(240분) 유지. GAP ③ 제안 반영 — Part 3 AI 30→75분 확장, Part 1·2 압축. 배분: Part 0=10 / Part 1=30 / Part 2=90 / Part 3=75 / Part 4=20 / Part 5=15(Q&A 포함).
- **슬라이드 수 현실화**: 240분에 맞춰 v5 98장(논리 슬라이드) → **v6 96장**으로 조정. Part 2의 "변경없음" 다수 슬라이드는 1장당 진행 속도를 높이고, 일부는 통합하여 압축. Part 3는 신규 12주제 + 재작성 1 + 디테일추가 6을 흡수해 슬라이드를 증설.
- **출처 표기**: `v5차용`(변경없음 어휘·구조 차용) / `디테일추가`(골격 유지 + 2026 보강) / `재작성`(가이드 기준 새로 작성) / `신규`(가이드엔 있으나 v5 부재).
- **컴포넌트 표기**: 구현 5종(Callout·EvidenceCard·VexStatus·CvssScoring·StandardCompare) + deferred 6종(CodeShowcase·RegulatoryDeadline·HexCoreElements·LlamaChecklist·RegulatoryMatrix·TimelineEvent) 명칭, 또는 `텍스트`·`레이아웃`·`Mermaid`·`표`.
- **시각 패턴 명칭**: 파트표지 / 좌우분할 / 카드그리드 / 풀스크린표 / 다이어그램 / 메트릭강조 / 인용박스.

---

## Part 0 — 도입 (10분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 1 | 강의 표지 — ISO 표준부터 AI 컴플라이언스까지 | 파트표지 / 텍스트(v6 토큰) | 1 | — | v5차용 |
| 2 | 오늘 강의 포지셔닝 — '아는 것'에서 '지키는 체계'로 | 좌우분할 / 텍스트 | 2 | `opensource_for_enterprise/_index.md` | 디테일추가 |
| 3 | 왜 거버넌스 체계가 필요한가 — 소송·공급망 리스크 | 다이어그램 / TimelineEvent | 3 | `opensource_for_enterprise/0-openchain/_index.md` | v5차용 |
| 4 | 오늘 얻어갈 것 — 표준 이해·체계 구축·첫 액션 | 카드그리드 / 텍스트 | 1 | — | v5차용 |
| 5 | 강의 구성 로드맵 — Part 0~5 시간 배분(10/30/90/75/20/15) | 풀스크린표 / 표 | 3 | `DECISIONS.md` #1·#9 | **재작성** (C-29 해소) |

> #5는 GAP 재작성필수 + CRITIC C-29 동시 해소: DECISIONS #1·#9 시간 재배분(Part 3 30→75)을 로드맵 표에 반영.

---

## Part 1 — ISO 표준 이해 (30분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 6 | (파트1 전환) ISO 표준 이해 — 30분 | 파트표지 / 텍스트 | 1 | — | v5차용 |
| 7 | OpenChain Project란? — LF 운영·공급망 철학 | 좌우분할 / 텍스트 | 2 | `opensource_for_enterprise/0-openchain/_index.md` | v5차용 |
| 8 | ISO/IEC 5230 — 라이선스 컴플라이언스 국제표준 | 좌우분할 / Callout(success: 5230 인용) | 2 | `iso5230_guide/_index.md` | v5차용 |
| 9 | 5230 6대 핵심 요구사항 | 카드그리드 / HexCoreElements(전체) | 2 | `iso5230_guide/_index.md` | v5차용 |
| 10 | 5230 입증자료 25개 한눈에 | 풀스크린표 / EvidenceCard 그리드 | 3 | `EVIDENCE-CHECK.md` | v5차용 |
| 11 | ISO/IEC 18974 — 보안 보증(5230과 쌍) | 좌우분할 / Callout(warn: 18974 인용) | 2 | `iso18974_guide/_index.md` | 디테일추가 (C-25 해소) |
| 12 | 18974 전용 9개 + "공통 16 파생·전용 9 강도" 정정 | 풀스크린표 / EvidenceCard + Callout(warn) | 3 | `iso18974_guide/_index.md` | 디테일추가 (**C-12 해소**) |
| 13 | ISO/IEC 42001 — AI 관리 시스템(PDCA·6 교차조항) | 좌우분할 / Callout(info) | 2 | `iso42001_guide/_index.md` | 디테일추가 (**C-22 해소**) |
| 14 | 세 표준 비교 한눈에 | 풀스크린표 / **StandardCompare** | 3 | `iso42001_guide/compare/_index.md` | 디테일추가 (C-21 해소) |
| 15 | 42001 준수 확인 3종(자체 갭분석·제2자·제3자) + ISO 42006 동향 | 카드그리드 / 텍스트 | 2 | `iso42001_guide/_index.md` | **신규 N11** (C-21 해소) |
| 16 | 자가 인증이란? — 체크리스트→제출→선언 3단계 | 다이어그램 / Mermaid(TD) | 3 | `iso5230_guide/6-conformance/` | v5차용 |
| 17 | 자가 인증 결과 예시 — ✓/△/✗ 3단 판정 | 풀스크린표 / 표 | 2 | `opensource_for_enterprise/6-conforming/_index.md` | 디테일추가 (C-33 해소) |
| 18 | 인증 후 얻는 것 — 공급망 신뢰·리스크 대응 | 카드그리드 / 텍스트 | 2 | `opensource_for_enterprise/6-conforming/_index.md` | v5차용 |
| 19 | 파트 1 요약 — 5230·18974·42001 + 입증자료 셈법 통일 | 풀스크린표 / 텍스트 | 1 | — | 디테일추가 (**C-13 해소**) |

> #12·#19는 입증자료 셈법(C-12·C-13) 단일화 정착 슬라이드. "각 25개, 합계 50개(공통 16 중복)" 표기로 전 덱 통일.

---

## Part 2 — 6대 핵심 요소 구축 (90분)

### 2-0 전체 구조 (3분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 20 | (파트2 전환) 6대 핵심 요소 구축 — 90분 | 파트표지 / 텍스트 | 1 | — | v5차용 |
| 21 | 6대 핵심 요소 전체 구조 | 다이어그램 / **HexCoreElements**(전체) | 2 | `opensource_for_enterprise/_index.md` | v5차용 |

### 2-1 조직 (13분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 22 | (조직 전환) 역할·책임·역량 정의 | 파트표지 / HexCoreElements(active=1) | 1 | `opensource_for_enterprise/1-teams/_index.md` | v5차용 |
| 23 | 오픈소스 관리 조직(OSPO) — 전담/겸직·핵심 역할 | 좌우분할 / 텍스트 | 3 | `opensource_for_enterprise/1-teams/_index.md` | v5차용 |
| 24 | 규모별 조직 구성 + 1인 다역 권한 분리 주의 | 카드그리드 / Callout(warn: 심사 주의) | 3 | `opensource_for_enterprise/1-teams/_index.md` | 디테일추가 (**C-14 해소**) |
| 25 | 담당자 역할/책임 문서화(RACI) | 풀스크린표 / 표 | 2 | `opensource_for_enterprise/1-teams/_index.md` | v5차용 |
| 26 | 역할별 역량 정의·평가 | 좌우분할 / EvidenceCard | 2 | `opensource_for_enterprise/1-teams/_index.md` | v5차용 |
| 27 | 참여자 목록 문서화(★18974) — 팀별 1인 챔피언+실명 부록 | 좌우분할 / EvidenceCard + Callout(warn: 이름 요건) | 2 | `iso18974_guide/` §4.1.2.3 | 디테일추가 (**C-15 해소**) |

### 2-2 정책 (16분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 28 | (정책 전환) 성문화된 판단 기준 | 파트표지 / HexCoreElements(active=2) | 1 | `opensource_for_enterprise/2-policy/_index.md` | v5차용 |
| 29 | 정책 — 판단 기준의 통일 | 좌우분할 / 텍스트 | 2 | `opensource_for_enterprise/2-policy/_index.md` | v5차용 |
| 30 | 정책 핵심 항목 — 사용·컴플라이언스·보안·기여·문의 | 카드그리드 / EvidenceCard | 2 | `templates/1-policy/_index.md` | 디테일추가 |
| 31 | 라이선스 컴플라이언스 정책 상세 — SBOM 형식 현행화 | 좌우분할 / Callout(success) | 2 | `opensource_for_enterprise/2-policy/_index.md` | 디테일추가 (**C-03 해소**) |
| 32 | 보안 보증 정책 상세 — CVSS v4.0 + EPSS/KEV 우선순위 | 메트릭강조 / **CvssScoring** | 3 | `opensource_for_enterprise/2-policy/_index.md` (L157·158) | **재작성** (**C-01·C-02·C-16 해소**) |
| 33 | 취약점 통보 — VEX 4상태값(CSAF 2.0·CycloneDX) | 카드그리드 / **VexStatus**(legend) | 2 | `opensource_for_enterprise/2-policy/_index.md` (L163) | **재작성** (**C-05 해소**) |
| 34 | 내부 책임 할당·미준수 시정 절차 | 풀스크린표 / 표 | 2 | `opensource_for_enterprise/2-policy/_index.md` §3.2.2.4·3.2.2.5 | v5차용 |
| 35 | 적용 범위·예산·자문·외부 문의 채널 | 카드그리드 / EvidenceCard | 1 | `opensource_for_enterprise/2-policy/_index.md` §3.1.4.1·3.2.2.1~3·3.2.1.1 | v5차용 |
| 36 | 성과 메트릭·지속 개선·기여 정책(★18974) + 정책 템플릿 | 좌우분할 / 텍스트 + Callout(info: CC BY 4.0) | 1 | `iso18974_guide/` §4.1.4.2·4.1.4.3 / `templates/1-policy/_index.md` | 디테일추가 |

> #32는 GAP 재작성필수 #31 해소: CVSS v4.0 병기 + EPSS/KEV 3축 + 정책·프로세스 SLA 단위 통일(C-16). #33은 VEX 통보 신설.

### 2-3 프로세스 (19분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 37 | (프로세스 전환) 정책이 작동하는 절차 | 파트표지 / HexCoreElements(active=3) | 1 | `opensource_for_enterprise/3-process/_index.md` | v5차용 |
| 38 | 오픈소스 사용 흐름도 | 다이어그램 / Mermaid(LR) | 2 | `opensource_for_enterprise/3-process/_index.md` §1 | v5차용 |
| 39 | 식별·검사·문제 해결 — SCANOSS 스니펫 매칭 | 좌우분할 / 텍스트 + Callout(info: 도구 링크) | 2 | `opensource_for_enterprise/3-process/_index.md` §1(1) | 디테일추가 (**C-17 해소**) |
| 40 | SBOM 수명주기 — 살아있는 보안 자산(OSV.dev 대조) | 다이어그램 / Mermaid(TD) | 2 | `opensource_for_enterprise/3-process/_index.md` §1(3) | 디테일추가 (**C-03·C-20 해소**) |
| 41 | 컴플라이언스 산출물 준비·배포 — 화면 없는 제품 전달 | 카드그리드 / Callout(info: 임베디드·CLI·SaaS) | 2 | `opensource_for_enterprise/3-process/_index.md` §1(4) | 디테일추가 (**C-27 해소**) |
| 42 | 보안 취약점 대응 프로세스 — 탐지→분석→우선순위→조치 | 다이어그램 / Mermaid + **CvssScoring** | 3 | `opensource_for_enterprise/3-process/_index.md` §2 | **재작성** (**C-01·C-04 해소**) |
| 43 | 다원 취약점 DB — NVD·OSV.dev·GHSA·KISA KNVD | 카드그리드 / 텍스트 | 2 | `opensource_for_enterprise/2-policy/_index.md` L151-155 | **신규** (**C-04 해소**) |
| 44 | 취약점 처리 8가지 방법(★18974) | 풀스크린표 / Mermaid(8방법) | 2 | `iso18974_guide/` §4.1.5.1 | v5차용 |
| 45 | 취약점·조치 기록 — CVSS·EPSS·KEV·VEX 컬럼 | 풀스크린표 / 표 + VexStatus | 2 | `opensource_for_enterprise/3-process/_index.md` §2(2) | 디테일추가 (**C-19 해소**) |
| 46 | 기여·외부 문의·주기 검토·모범 사례 검증(★18974) | 좌우분할 / 텍스트 + 프로세스 템플릿 안내 | 1 | `opensource_for_enterprise/3-process/_index.md` §3·4·5 / `templates/2-process-template/_index.md` | v5차용 (C-28 해소) |

> #42는 GAP 재작성필수 #47 해소: CVSS 표 구형 교체 + CVSS v4.0 권장 박스. #43은 다원 DB 신설(C-04). #45·#46에서 외부 문의 SLA 정합(C-28).

### 2-4 도구 (13분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 47 | (도구 전환) 규모를 자동화로 해결 | 파트표지 / HexCoreElements(active=4) | 1 | `opensource_for_enterprise/4-tool/_index.md` | v5차용 |
| 48 | 수작업의 한계 — Before/After | 좌우분할 / 텍스트 | 2 | `opensource_for_enterprise/4-tool/_index.md` | v5차용 |
| 49 | 거버넌스 도구 생태계 지도 — OSV-SCALIBR 포함 | 카드그리드 / 텍스트 | 2 | `tools/_index.md`, `opensource_for_enterprise/4-tool/_index.md` | 디테일추가 (C-18·C-32 해소) |
| 50 | 소스 스캔: FOSSology & SCANOSS | 좌우분할 / 텍스트(도구 카드) | 2 | `tools/1-fossology/`, `tools/9-scanoss/` | v5차용 |
| 51 | SBOM 생성·관리: cdxgen·Syft / FOSSLight·Dependency-Track | 카드그리드 / 텍스트(도구 카드) | 2 | `tools/5-cdxgen/`·`tools/6-syft/`·`tools/3-fosslight/`·`tools/7-dependency-track/` | v5차용 |
| 52 | 산출물 생성·공개: onot·오픈소스 웹사이트 | 좌우분할 / 텍스트 | 1 | `tools/10-onot/`, `opensource_for_enterprise/4-tool/_index.md` §6 | v5차용 |
| 53 | CI/CD 연동 — 정책 게이트(EPSS/KEV·금지 라이선스) | 다이어그램 / **CodeShowcase**(yaml) | 2 | `opensource_for_enterprise/4-tool/_index.md` §7 | 디테일추가 (**C-18 해소**) |
| 54 | cdxgen + Dependency-Track 자동화 실습 | 좌우분할 / **CodeShowcase**(bash) | 1 | `tools/8-cdxgen-dt/` | v5차용 |

### 2-5 교육 (12분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 55 | (교육 전환) 사람이 알아야 작동 | 파트표지 / HexCoreElements(active=5) | 2 | `opensource_for_enterprise/5-training/_index.md` | v5차용 |
| 56 | 교육 — 체계의 마지막 퍼즐 + 인식 평가 4요소 | 좌우분할 / EvidenceCard + Callout(info) | 3 | `opensource_for_enterprise/5-training/_index.md` | 디테일추가 (3.1.3.1 보강) |
| 57 | 정책 전파 절차 — 온보딩·위키·LMS | 다이어그램 / Mermaid | 2 | `opensource_for_enterprise/5-training/_index.md` §1 | v5차용 |
| 58 | 교육 효과 측정·인식 평가 | 풀스크린표 / 표 | 2 | `opensource_for_enterprise/5-training/_index.md` §2 | v5차용 |
| 59 | 교육 자료 무료로 시작 — NIPA·SKT 가이드 | 좌우분할 / 텍스트 | 3 | `opensource_for_enterprise/5-training/_index.md` | v5차용 (C-35 링크 점검) |

### 2-6 준수·개선 (14분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 60 | (준수 전환) 공식 확인·지속 유지 | 파트표지 / HexCoreElements(active=6) | 1 | `opensource_for_enterprise/6-conforming/_index.md` | v5차용 |
| 61 | 준수 선언이란? — 점검→확인서→신청/선언 | 다이어그램 / Mermaid(TD) | 2 | `opensource_for_enterprise/6-conforming/_index.md` | v5차용 |
| 62 | 자가 인증 절차 상세 — 점검→보완→제출→등재 | 다이어그램 / Callout(pageinfo 성격) | 2 | `iso5230_guide/6-conformance/_index.md` | v5차용 |
| 63 | 인증 후 18개월 유지 — "지난 18개월 충족해 왔음"(회고형) | 좌우분할 / Callout(critical: 시제 정정) | 3 | `opensource_for_enterprise/6-conforming/_index.md` §2 | **재작성** (**C-11 해소**) |
| 64 | 성과 메트릭·지속 개선·모범 사례 검증(★18974) | 메트릭강조 / 표(stat) | 2 | `iso18974_guide/` §4.1.4.2·4.1.4.3·4.1.2.6 | 디테일추가 |
| 65 | 5230+18974 통합 준수 체크 — 입증자료 매핑 | 풀스크린표 / EvidenceCard 그리드 | 2 | `EVIDENCE-CHECK.md` | v5차용 (C-36 매핑 점검) |
| 66 | 파트 2 요약 — 6대 요소 종합 | 다이어그램 / HexCoreElements(전체) | 2 | — | v5차용 |

> #63은 18개월 회고형 시제 정정(C-11) — Callout critical로 "미래형 보장 아님" 강조.

---

## Part 3 — AI 컴플라이언스 (75분, 확장)

### 3-0 도입·규제 (12분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 67 | (파트3 전환) AI 컴플라이언스 — 기존 거버넌스의 AI 확장(75분) | 파트표지 / 텍스트 | 1 | `opensource_for_enterprise/7-ai-compliance/_index.md` | 디테일추가 |
| 68 | 기존 거버넌스로 충분한가? — 커버 vs 미커버 | 좌우분할 / 텍스트 | 2 | `7-ai-compliance/_index.md` §1 | v5차용 |
| 69 | 글로벌 AI 규제·표준 매트릭스 (EU AI Act·CRA·한국 AI 기본법) | 풀스크린표 / **RegulatoryMatrix** | 4 | `iso42001_guide/1-context-leadership/_index.md` §4.1 | **신규 N1** (**C-10 해소**) |
| 70 | AI 시스템 오픈소스 3대 영역 — 프레임워크·모델·데이터셋 | 카드그리드 / 텍스트 | 2 | `7-ai-compliance/_index.md` §1 | v5차용 |
| 71 | EU CRA — 취약점 보고 의무·AI 제품 투명성 | 메트릭강조 / **RegulatoryDeadline** | 3 | `iso42001_guide/4-operation/2-ai-sbom/_index.md`, `iso18974_guide/2-relevant-tasks/1-access/` | **신규 N2** (C-10 해소) |

### 3-1 프레임워크·모델·데이터셋 (22분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 72 | AI 프레임워크 라이선스 관리 — 기존 5230 프로세스 적용 | 좌우분할 / 텍스트 | 2 | `7-ai-compliance/_index.md` §2(1) | v5차용 |
| 73 | AI 프레임워크 주요 라이선스 (PyTorch·TF·LangChain·HF·scikit-learn) | 풀스크린표 / 표 | 2 | `7-ai-compliance/_index.md` §2(1) | 디테일추가 (C-30 해소) |
| 74 | 오픈소스 AI 모델 관리 — OSAID 1.0 vs Open Weight 구분 | 좌우분할 / Callout(warn: Open Weight) | 3 | `7-ai-compliance/_index.md` §2(2) | 디테일추가 (C-06 일부) |
| 75 | OSAID 1.0 정의 (OSI 2024-10) + Open Weight 모델 구분 | 카드그리드 / 텍스트 | 3 | `7-ai-compliance/_index.md` §2(2), `iso42001_guide/1-context-leadership/` | **신규 N3** (**C-06 해소**) |
| 76 | AI 모델 라이선스 유형 비교표 (OSAID 열·2026 모델) | 풀스크린표 / 표 | 3 | `7-ai-compliance/_index.md` §2(2) L83-98 | **재작성** (**C-06 해소**) |
| 77 | Llama 라이선스 의무 체크리스트 (MAU 7억·표기·AUP·405B) | 카드그리드 / **LlamaChecklist** | 3 | `7-ai-compliance/_index.md` §2(2) L100-112 | **신규 N4** (**C-07 해소**) |
| 78 | 학습 데이터셋 라이선스 — NC 학습→상업 배포 리스크 격상 | 좌우분할 / Callout(critical: NC 경고) | 3 | `7-ai-compliance/_index.md` §2(3) | 디테일추가 (**C-23 해소**) |
| 79 | 외부 AI 모델 조달 §8.8 검증 체크리스트 | 카드그리드 / EvidenceCard(42001) | 3 | `iso42001_guide/4-operation/3-supply-chain/_index.md` §3 | **신규 N9** |

> #76은 GAP 재작성필수 #83 해소: 구형 표 전면 교체(OSAID 1.0 열·Open Weight·2026 모델). #75·#77이 C-06·C-07 직접 보강.

### 3-2 AI SBOM (15분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 80 | AI-BOM(AI SBOM)이란? — SBOM의 AI 버전(용어 통일) | 좌우분할 / 텍스트 | 2 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` | 디테일추가 (**C-08 해소**) |
| 81 | AI SBOM 구성요소 5종 + Fact Sheet(AI 시스템 카드) | 카드그리드 / 텍스트 | 3 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §2 | **신규 N6** |
| 82 | SPDX 3.0 AI Profile + CycloneDX 1.6 ML-BOM 병기 | 좌우분할 / 표 | 3 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` | 디테일추가 (**C-08 해소**) |
| 83 | AI-BOM 실제 예시 — SPDX 3.0(relationships TRAINED_ON) | 좌우분할 / **CodeShowcase**(yaml) | 3 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §3.2 | 디테일추가 (**C-09 해소**) |
| 84 | CycloneDX 1.6 ML-BOM 예시 (modelCard 4영역) | 좌우분할 / **CodeShowcase**(json) | 2 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §3.3~3.4 | **신규 N5** |
| 85 | AI SBOM 생성 도구 실습 (cdxgen·Syft·Dependency-Track) | 좌우분할 / **CodeShowcase**(bash) | 2 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §4 | **신규 N12** |

> #83은 Common Crawl CC0 오류 교체(C-09): 가이드 정식 SPDX 3.0 예시 + 데이터 라이선스 정확화.

### 3-3 ISO 42001 교차조항·AI 코딩·공급망 (26분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 86 | ISO 42001 오픈소스 교차 조항 6개 & 체크포인트 | 풀스크린표 / **StandardCompare** 또는 표 | 3 | `iso42001_guide/compare/_index.md` | v5차용 (C-22 정합) |
| 87 | AI 코딩 도구 — 새로운 위험(혼입·취약 패키지·SBOM 누락) | 좌우분할 / 텍스트 | 3 | `7-ai-compliance/_index.md` §5(1) | v5차용 |
| 88 | AI 코딩 도구 — 보장 수준별 4단계 전략 | 다이어그램 / Mermaid(TD) | 3 | `7-ai-compliance/_index.md` §5(2) | v5차용 |
| 89 | AI 생성 코드 저작권 귀속 (US Copyright Office 2024·3시나리오) | 카드그리드 / 텍스트 | 4 | `7-ai-compliance/_index.md` §5(5) | **신규 N7** (**C-24 해소**) |
| 90 | 공급자 IP indemnification 비교 (MS/OpenAI/Anthropic/Google) | 풀스크린표 / 표 | 4 | `7-ai-compliance/_index.md` §5(5-2), `iso42001_guide/4-operation/3-supply-chain/` §5.2 | **신규 N8** (**C-24 해소**) |
| 91 | 모델 공급망 공격 방어 + OpenSSF Model Signing(Sigstore)·SLSA for AI | 다이어그램 / Mermaid + Callout(warn) | 5 | `iso42001_guide/4-operation/3-supply-chain/_index.md` §6 | **신규 N10** (**C-26 해소**) |
| 92 | 파트 3 요약 — 규제·모델·SBOM·AI 코딩·공급망 | 카드그리드 / 텍스트 | 4 | `7-ai-compliance/_index.md` §6 | 디테일추가 |

> #89·#90이 C-24(저작권·indemnification·표기 의무) 해소, #91이 C-26(AI 공급망·Model Signing) 해소.

---

## Part 4 — 라이브 데모 (20분)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 93 | (파트4 전환) Trusted OSS 라이브 데모 | 파트표지 / 텍스트 | 1 | — | v5차용 |
| 94 | Trusted OSS란? — Agent와 대화하며 체계 구축 | 좌우분할 / 텍스트 | 3 | (외부 trustedoss.github.io) | v5차용 |
| 95 | 데모 시나리오 + 혼자 따라가는 방법 (접속→입력→점검) | 다이어그램 / Mermaid + 라이브 실연 | 16 | `templates/` (산출물 기반), 외부 trustedoss.github.io | v5차용 (산출물 명칭 정합) |

> #95는 라이브 실연(placeholder)을 흡수해 1장으로 통합. AI SBOM 도구 실습(#85)과 연계 가능.

---

## Part 5 — 마무리 (15분, Q&A 포함)

| # | 목적 | 시각/컴포넌트 | 분 | 근거 가이드 | 출처 |
|---|---|---|---|---|---|
| 96 | Review — 핵심 3가지·첫 액션·OpenChain KWG 소개·Q&A | 카드그리드 / 텍스트 + StandardCompare(요약) | 15 | — / (KWG 사이트) | 디테일추가 (**C-11·C-13 셈법·시제 통일 재확인**) |

> #96은 v5 #96~98(전환·핵심 3가지·KWG 소개)을 1장으로 통합 + Q&A 시간 흡수. 핵심 3가지에서 "50개 셈법(C-13)"·"18개월 회고형(C-11)" 최종 일관 표기.

---

## 말미 요약

### ① Part별 시간 합계 (= 240분 확인)

| 파트 | 슬라이드 # | 장수 | 시간(분) | v5 대비 |
|---|---|---|---|---|
| Part 0 도입 | 1–5 | 5 | 10 | — |
| Part 1 표준 이해 | 6–19 | 14 | 30 | -5 |
| Part 2 6대 요소 | 20–66 | 47 | 90 | -25 |
| Part 3 AI | 67–92 | 26 | 75 | +45 |
| Part 4 데모 | 93–95 | 3 | 20 | +5 |
| Part 5 마무리(+Q&A) | 96 | 1 | 15 | +5 |
| **합계** | **1–96** | **96** | **240** | **0** |

> Part 2 세부: 2-0 전체구조 3분(2장) · 2-1 조직 13분(6장) · 2-2 정책 16분(9장) · 2-3 프로세스 19분(10장) · 2-4 도구 13분(8장) · 2-5 교육 12분(5장) · 2-6 준수 14분(7장) = 90분 / 47장.
> Part 3 세부: 3-0 도입·규제 12분(5장) · 3-1 모델 22분(8장) · 3-2 AI SBOM 15분(6장) · 3-3 교차조항·AI코딩·공급망 26분(7장) = 75분 / 26장.
> GAP ③ 제안 시간표(10/30/90/75/20/10+5Q&A = 240)를 그대로 반영하되, 별도 "여유·Q&A 5분"을 Part 5에 흡수(10→15분)해 6개 파트 합계로 240분을 맞춘다(여유 행 없이 깔끔하게 닫힘). Part 2는 GAP 제안대로 90분 유지 — "변경없음" 비율이 가장 높은 구간이라 진행 속도로 흡수.

### ② 컴포넌트 빈도 집계표 + 5종 충분성 판정

빈도는 위 표의 "시각/컴포넌트" 열에서 명시적으로 호출된 슬라이드 수다(HexCoreElements는 파트 전환의 active 강조 반복 포함, Mermaid·표·텍스트 등 비컴포넌트는 별도).

| 컴포넌트 | 분류 | 사용 슬라이드 | 빈도 | 판정 |
|---|---|---|---|---|
| **Callout** | 구현 5종 | #8·11·12·13·24·27·31·36·39·41·63·74·78·91 | **14** | 핵심 — 충분 |
| **EvidenceCard** | 구현 5종 | #10·26·27·30·35·56·65·79 | **8** | 핵심 — 충분 |
| **HexCoreElements** | deferred | #9·21·22·28·37·47·55·60·66 | **9** | **추출 권고** (3회↑) |
| **CodeShowcase** | deferred | #53·54·83·84·85 | **5** | **추출 권고** (3회↑) |
| **StandardCompare** | 구현 5종 | #14·86·96 | **3** | 핵심 — 충분 |
| **CvssScoring** | 구현 5종 | #32·42 | **2** | 핵심 — 유지(보안 핵심) |
| **VexStatus** | 구현 5종 | #33·45 | **2** | 핵심 — 유지(보안 핵심) |
| **RegulatoryDeadline** | deferred | #71 | **1** | 직접 작성(추출 불요) |
| **RegulatoryMatrix** | deferred | #69 | **1** | 직접 작성(추출 불요) |
| **LlamaChecklist** | deferred | #77 | **1** | 직접 작성(추출 불요) |
| **TimelineEvent** | deferred | #3 | **1** | 직접 작성(추출 불요) |

**핵심 5종 충분성 판정**: 구현된 5종은 모두 실사용된다(Callout 14·EvidenceCard 8·StandardCompare 3·CvssScoring 2·VexStatus 2). Callout·EvidenceCard는 압도적 다빈도로 선제 구현 결정(DECISIONS #13)이 정확했음을 확인. CvssScoring·VexStatus는 빈도 2이나 보안 파트의 재작성 핵심(C-01·C-02·C-05)을 담당하므로 구현 유지가 타당. **5종 자체는 모두 정당하나, deferred 6종 중 2종(HexCoreElements·CodeShowcase)이 3회 이상 사용되어 "5종으로 충분"하지 않다 — 아래 ③에 따라 2종 추가 추출을 권고한다.**

### ③ 추가 추출 권고 컴포넌트 + 권고 레이아웃

DECISIONS #13 기준("Phase 3 중 3회 반복 시 추출")에 따라 3회 이상 사용되는 deferred 컴포넌트를 추출 권고한다.

| 컴포넌트 | 빈도 | 추출 권고 | 근거 | 권고 레이아웃 |
|---|---|---|---|---|
| **HexCoreElements** | 9 | **추출** | Part 2 전 구간의 파트 표지에서 `active` 강조로 반복(#22·28·37·47·55·60) + 전체 조망(#9·21·66). 파트 위치 표시 = 강한 일관성 요구 | **파트 표지 레이아웃**에 슬롯으로 내장 — 표지에서 현재 6대 요소 위치를 육각형으로 자동 강조 |
| **CodeShowcase** | 5 | **추출** | 도구·AI SBOM 코드 예시(#53·54·83·84·85). Slidev 내장 하이라이트로 우선 대체 가능하나(DECISIONS #13), 파일명 탭+라인 강조+다언어(yaml·json·bash) 5회 반복 → 표준 틀 필요 | **좌우분할 레이아웃** 우측 코드 영역 표준 컴포넌트 |

**추출 불요(직접 작성)**: RegulatoryMatrix(#69)·RegulatoryDeadline(#71)·LlamaChecklist(#77)·TimelineEvent(#3)은 각 1회 사용 → DECISIONS #13의 YAGNI 원칙대로 해당 슬라이드에 직접 작성. 단 RegulatoryMatrix·RegulatoryDeadline·LlamaChecklist는 Part 3 핵심 신규 콘텐츠(N1·N2·N4)이자 정보 밀도가 높으므로, 직접 작성 시 COMPONENTS.md 설계도(props 구조)를 그대로 인라인 마크업으로 따른다(향후 재사용 시 즉시 추출 가능하도록).

**권고 레이아웃 종합** (Slidev `layouts/`):
- **파트 표지**(`layout: part-cover`): Part 0~5 전환 슬라이드(#1·6·20·67·93 + 2-1~2-6 전환) — 제목·소요시간·HexCoreElements(Part 2 한정) 슬롯.
- **좌우분할**(`layout: two-cols`): 개념+예시/코드 병치 — Part 전반 최다 패턴(약 25장). CodeShowcase·EvidenceCard·Callout 우측 배치.
- **풀스크린표**(`layout: full-table`): 입증자료 25개·표준 비교·라이선스 비교·규제 매트릭스(#10·14·76·90 등) — 표·StandardCompare·RegulatoryMatrix 전용.
- **메트릭강조**(`layout: stat`): CVSS/EPSS·법규 시한 숫자 강조(#32·71) — CvssScoring·RegulatoryDeadline `--oc-text-stat` 활용.
- **카드그리드**(`layout: card-grid`): 6대 요소·정책 항목·요약(다수) — EvidenceCard·LlamaChecklist 그리드.

---

## 약점 해소 추적 (검증)

### GAP 재작성필수 4장 → v6 슬라이드

| GAP v5# | 주제 | v6 해소 슬라이드 |
|---|---|---|
| #5 | 강의 로드맵(시간 재배분) | **#5** |
| #31 | 보안 보증 정책(CVSS v4.0+VEX) | **#32**(CVSS v4.0+EPSS/KEV) + **#33**(VEX 4상태값) |
| #47 | 보안 취약점 대응 프로세스(CVSS 표 구형) | **#42**(프로세스 재작성) + **#43**(다원 DB) |
| #83 | AI 모델 라이선스 비교표(구형) | **#76**(OSAID 열·2026 모델 전면 교체) |

### CRITIC P1 13건 → v6 슬라이드

| ID | 약점 | 해소 슬라이드 |
|---|---|---|
| C-01 | CVSS 2.0/3.0만, v4.0 누락 | #32·#42 |
| C-02 | EPSS·CISA KEV 누락 | #32 |
| C-03 | SBOM 형식 SPDX 2.3/CycloneDX 1.5 구형 | #31·#40 |
| C-04 | 취약점 DB CVE 단일 의존 | #42·#43 |
| C-05 | VEX 4상태값 전무 | #33 |
| C-06 | AI 모델 비교표 구형(OSAID 누락) | #75·#76 |
| C-07 | Llama 의무 체크리스트 전무 | #77 |
| C-08 | SPDX 3.0만, CycloneDX 1.6 ML-BOM 누락 | #80·#82 |
| C-09 | AI-BOM 예시 Common Crawl CC0 오류 | #83 |
| C-10 | EU AI Act·CRA·한국 AI 기본법 전무 | #69·#71 |
| C-11 | 18개월 현재형 시제 오류 | #63·#96 |
| C-12 | "9개만 추가" 단순화(강도 차이 누락) | #12 |
| C-13 | 입증자료 셈법 "50" ↔ "25+9" 혼용 | #19·#96 |

> P1 13건 전부 v6 슬라이드에 매핑됨. P2 16건은 GAP·CRITIC 표에 따라 디테일추가 슬라이드 비고에 해소 위치를 병기(C-14→#24, C-15→#27, C-16→#32, C-17→#39, C-18→#49·53, C-19→#45, C-20→#40, C-21→#14·15, C-22→#13·86, C-23→#78, C-24→#89·90, C-25→#11, C-26→#91, C-27→#41, C-28→#46, C-29→#5).

---

## 작업 메타

- 입력: `GAP-REPORT.md`(v5 98장 분류 + 신규 12주제) · `CRITIC.md`(P1 13·P2 16·P3 7) · `EVIDENCE-MAP.md`(입증자료 50개 ↔ 파트) · `DECISIONS.md`(#1·9 시간·#13 컴포넌트) · `COMPONENTS.md`(구현 5종 + deferred 6종)
- 유일 근거: 현재 가이드. 2026-04 이전 v5 본문은 "변경없음" 슬라이드 어휘·구조 차용만.
- 총 96장 / 240분. 재작성필수 4장·CRITIC P1 13건 전부 해소 매핑 완료.
- 작성일: 2026-05-22
- 다음 단계: Phase 3 슬라이드 재작성 (파트 단위 묶음 승인) + HexCoreElements·CodeShowcase 2종 추출
