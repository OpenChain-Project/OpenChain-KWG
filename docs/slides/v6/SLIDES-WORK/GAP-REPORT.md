# GAP-REPORT — v5 슬라이드 ↔ 현재(2026-05) 가이드 격차 분석

> Phase 2-a 산출물. v5 Marp 원본(`docs/slides/archive/v5-marp-2026-05-12.md`)을 현재 가이드(Source of Truth)와 대조해
> 슬라이드별 갱신 필요도를 분류한다.
> **근거 원칙**: 2026-04 이전 v5 본문은 "현재도 유효한지" 판단 대상일 뿐 사실 근거로 삼지 않는다. 유일 근거는 현재 가이드다.

---

## 분류 기준

- **변경없음**: 현재 가이드와 일치. 어휘·구조 그대로 차용 가능 (출처·링크만 v6 정책에 맞게 조정).
- **디테일추가**: 골격은 유효하나 2026 갱신 내용 보강 필요 (CVSS v4.0·VEX 4상태값·EPSS/KEV·EU CRA·OSV.dev/GHSA/KNVD·SCANOSS·cdxgen·OSAID 등).
- **재작성필수**: 내용이 낡았거나 현재 가이드와 어긋나 새로 써야 함.
- **신규 필요**(말미 별도 표기): 가이드엔 있으나 v5에 없는 주제.

> v5 원본의 슬라이드 주석 번호는 비순차적이다(편집 흔적). 아래 표의 `v5#`는 **원본 등장 순서**로 재부여한 일련번호이며, 괄호 안에 원본 주석 번호를 병기한다. 슬라이드 2(오늘 강의 포지셔닝)는 원본에서 주석 처리되어 비활성 상태이므로 표에 포함하되 비고에 명시한다.

---

## 파트 0 — 도입

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 1 | (표지) 기업 오픈소스 거버넌스 구축 실무 | ISO 표준부터 AI 컴플라이언스까지 | 변경없음 | — | 디자인은 v6 토큰으로 신규. 부제에 "AI" 유지 |
| 2 | 오늘 강의 포지셔닝 | 라이선스를 '아는 것'에서 '지키는 체계'로 | 디테일추가 | `opensource_for_enterprise/_index.md` | 원본 비활성(주석). 재활성 시 AI 코딩 도구 항목 추가 검토 |
| 3 | 왜 거버넌스 체계가 필요한가 | Busybox 소송·공급망 전체 리스크·ISO 프레임워크 | 변경없음 | `opensource_for_enterprise/0-openchain/_index.md` | 사례 유효 |
| 4 | 오늘 강의에서 얻어갈 것 | 표준 이해·체계 구축·첫 액션 | 변경없음 | — | |
| 5 | 강의 구성 로드맵 | 파트1~5 시간 배분 | 재작성필수 | `DECISIONS.md` #1·#9 | 시간 재배분 필수: Part 3 확장 + 다른 파트 압축(4h 유지). 본문 35/115/30/15/10 → 갱신 |

---

## 파트 1 — ISO 표준 이해

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 6 | (파트1 전환) ISO 표준 이해 | 세 표준 + 자가 인증 + 입증자료 | 변경없음 | — | 전환 슬라이드. 시간(30분) 표기 갱신 |
| 7 | OpenChain Project란? | LF 운영·공급망 철학·참여 기업 | 변경없음 | `opensource_for_enterprise/0-openchain/_index.md` | |
| 8 | ISO/IEC 5230 — 라이선스 컴플라이언스 | 2020 제정·유일 국제표준·25개 입증자료 | 변경없음 | `iso5230_guide/_index.md` | 입증자료 25개 정합 |
| 9 | ISO/IEC 5230의 6가지 핵심 요구사항 | 6대 영역 그리드 | 변경없음 | `iso5230_guide/_index.md` | |
| 10 | ISO/IEC 5230 요구사항 25개 | 입증자료 25개 표 | 변경없음 | `EVIDENCE-CHECK.md` | 번호·명칭 정합 확인 완료 |
| 11 | ISO/IEC 18974 — 보안 보증 | 2023·5230과 쌍·CVE 모니터링·추가 9개 | 디테일추가 | `iso18974_guide/_index.md` | "CVE 모니터링"을 OSV.dev·GHSA·KNVD·EPSS·KEV로 현행화 가능 |
| 12 | ISO/IEC 18974 추가 항목 9개 | 전용 9개 표 | 변경없음 | `iso18974_guide/_index.md` (전용 9개 목록) | 번호 정합 |
| 13 | ISO/IEC 42001 — AI 관리 시스템 | 2023·PDCA·OSS 교차 조항 | 디테일추가 | `iso42001_guide/_index.md` | §5.2·§6.1.2·§7.5·§8.5·§8.6·§8.8 6개 교차 조항으로 확장(v5는 3개만 언급) |
| 14 | 세 표준 비교 한눈에 | 제정연도·주체·초점·인증 비교표 | 디테일추가 | `iso42001_guide/compare/_index.md` | 42001 "체크포인트 방식·자가/제3자" 정밀화. `<StandardCompare>` 컴포넌트 활용 |
| 15 | 자가 인증이란? | 체크리스트→제출→선언 3단계 | 변경없음 | `iso5230_guide/6-conformance/` | |
| 16 | 자가 인증 결과 예시 | Yes/No 판정 표 | 변경없음 | `opensource_for_enterprise/6-conforming/_index.md` | |
| 17 | 인증 후 얻을 수 있는 것 | 공급망 신뢰·내부 체계·리스크 대응 | 변경없음 | `opensource_for_enterprise/6-conforming/_index.md` | 국내 인증 기업 목록 최신성만 점검 |
| 18 | 파트 1 요약 | 5230·18974·AI 확장 | 변경없음 | — | |

---

## 파트 2 — 6대 핵심 요소 구축

### 2-0 전체 구조

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 19 | (파트2 전환) 6대 핵심 요소 구축 | 6대 요소 단계별 구축 | 변경없음 | — | 시간(90분) 표기 갱신 |
| 20 | 6대 핵심 요소 전체 구조 | 조직·정책·프로세스·도구·교육·준수 | 변경없음 | `opensource_for_enterprise/_index.md` | `<HexCoreElements>` 후보 |

### 2-1 조직

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 21 | (조직 전환) 역할·책임·역량 정의 | 사람 배치 | 변경없음 | `opensource_for_enterprise/1-teams/_index.md` | |
| 22 | 오픈소스 관리 조직 (OSPO) | 전담 OSPO/겸직 담당자·핵심 역할 | 변경없음 | `opensource_for_enterprise/1-teams/_index.md` | OSPO 약어 풀이 1회 |
| 23 | 규모별 조직 구성 예시 | 소/중/대 규모별 구성·예산 | 변경없음 | `opensource_for_enterprise/1-teams/_index.md` | |
| 24 | 담당자 역할/책임 문서화 (RACI) | RACI 매트릭스 | 변경없음 | `opensource_for_enterprise/1-teams/_index.md` | |
| 25 | 역할별 역량 정의 및 평가 | 역할별 역량·평가 방법 | 변경없음 | `opensource_for_enterprise/1-teams/_index.md` | |
| 26 | 참여자 목록 및 역할 문서화 (★18974) | 실명 참여자 목록 | 변경없음 | `iso18974_guide/` §4.1.2.3 | 18974 전용 표기 유지 |

### 2-2 정책

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 27 | (정책 전환) 성문화된 판단 기준 | 공통 규칙서 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` | |
| 28 | 정책 — 판단 기준의 통일 | 담당자별 판단 차이 → 정책으로 통일 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` | |
| 29 | 정책에 담아야 할 핵심 항목 | 사용원칙·컴플라이언스·보안·기여·외부문의 | 디테일추가 | `templates/1-policy/_index.md` | "보안 보증" 행에 VEX·EPSS/KEV·KNVD 반영 가능 |
| 30 | 라이선스 컴플라이언스 정책 — 상세 | 식별·산출물·보관·SBOM 형식·호환성 | 디테일추가 | `opensource_for_enterprise/2-policy/_index.md` | SBOM 형식을 SPDX 3.0/CycloneDX 1.6으로 현행화(v5는 2.3/1.5) |
| 31 | 보안 보증 정책 — 상세 | 취약점 대응·CVSS 기한·모니터링·통보 | 재작성필수 | `opensource_for_enterprise/2-policy/_index.md` (L163 VEX) | CVSS v4.0 병기 + VEX 4상태값(not_affected/affected/fixed/under_investigation, CSAF 2.0·CycloneDX VEX) + EPSS/KEV 우선순위 보강. 가이드와 직접 어긋남 |
| 32 | 내부 책임 할당 절차 | 상황별 1차담당·승인·기록 표 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` §3.2.2.4 | |
| 33 | 미준수 사례 검토 및 시정 절차 | 접수→원인→시정→재발방지 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` §3.2.2.5 | |
| 34 | 역할 배치 및 예산 지원 | 담당자 지정·예산·백업 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` §3.2.2.1/2 | |
| 35 | 전문 자문 제공 방법 | 자문 절차·프로세스·소규모 대안 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` §3.2.2.3 | |
| 36 | 프로그램 적용 범위 정의 | 적용 대상·제외·재검토 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` §3.1.4.1 | |
| 37 | 성과 메트릭 정의 (★18974) | SBOM 완전성·조치율·응답시간 등 | 디테일추가 | `iso18974_guide/` §4.1.4.2 | EPSS 기반 우선순위·KEV 등재 조치율 메트릭 추가 가능 |
| 38 | 지속적 개선 원칙 (★18974) | 측정→갭→목표→기록 | 변경없음 | `iso18974_guide/` §4.1.4.3 | |
| 39 | 외부 문의 공개 채널 운영 | 채널 예시·공개 위치·구분 | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` §3.2.1.1 | |
| 40 | 오픈소스 기여 정책 | 허용범위·사전승인·IP보호·CLA | 변경없음 | `opensource_for_enterprise/2-policy/_index.md` §3.5.1.1 | |
| 41 | 오픈소스 정책 템플릿 | 11개 절 구성·CC BY 4.0 | 변경없음 | `templates/1-policy/_index.md` | 절 번호 정합 확인 |

### 2-3 프로세스

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 42 | (프로세스 전환) 정책이 작동하는 절차 | 흐름 설계 | 변경없음 | `opensource_for_enterprise/3-process/_index.md` | |
| 43 | 오픈소스 사용 흐름도 | 선택→검토→SBOM→승인→고지문→배포 | 변경없음 | `opensource_for_enterprise/3-process/_index.md` §1 | |
| 44 | 오픈소스 식별·검사·문제 해결 | 식별→검사→문제식별→해결 | 디테일추가 | `opensource_for_enterprise/3-process/_index.md` §1(1) | SCA 도구에 SCANOSS(스니펫 매칭) 명시 가능 |
| 45 | SBOM 수명주기 관리 절차 | 개발→빌드→배포→배포후 모니터링 | 디테일추가 | `opensource_for_enterprise/3-process/_index.md` §1(3) | "살아있는 보안 자산" 골격 유효. SPDX 3.0/CycloneDX 1.6·OSV.dev 대조로 현행화 |
| 46 | 컴플라이언스 산출물 준비·배포 | 고지문·소스패키지·SBOM 3종 | 변경없음 | `opensource_for_enterprise/3-process/_index.md` §1(4) | |
| 47 | 보안 취약점 대응 프로세스 | 탐지→분석→우선순위→조치→기록 + CVSS 기한표 | 재작성필수 | `opensource_for_enterprise/3-process/_index.md` §2 (L294·306·314) | CVSS 표가 "2.0/3.0"만 → 가이드는 "CVSS 3.1/4.0" 병기. CVSS v4.0 도입 권장 박스 + EPSS/KEV 우선순위 보강 반영 필수. `<CvssScoring>` 컴포넌트 활용 |
| 48 | 취약점 처리 8가지 방법 (★18974) | §4.1.5.1 8개 방법 | 변경없음 | `iso18974_guide/` §4.1.5.1 | |
| 49 | 취약점 및 조치 기록 | CVE 기록 표·"탐지 없음"도 기록 | 디테일추가 | `opensource_for_enterprise/3-process/_index.md` §2(2) | CVSS 점수·EPSS·KEV 열 추가 + VEX 상태 기록 가능 |
| 50 | 오픈소스 기여 프로세스 | 신고→검토→실행→기록 | 변경없음 | `opensource_for_enterprise/3-process/_index.md` §4 | |
| 51 | 외부 문의 내부 대응 절차 | 접수→배정→검토→회신·기록 | 변경없음 | `opensource_for_enterprise/3-process/_index.md` §3 | |
| 52 | 주기적 검토 및 변경 (★18974) | 정기 검토·변경 이력 문서화 | 변경없음 | `opensource_for_enterprise/3-process/_index.md` §5 | |
| 53 | 내부 모범 사례 일치 검증 (★18974) | NIST SSDF·OWASP 일치 검증 | 변경없음 | `opensource_for_enterprise/3-process/_index.md` §5 | |
| 54 | 프로세스 템플릿 | 6개 절차서·입증자료 매핑·CC BY 4.0 | 변경없음 | `templates/2-process-template/_index.md` | |

### 2-4 도구

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 55 | (도구 전환) 규모를 자동화로 해결 | 자동화 필요성 | 변경없음 | `opensource_for_enterprise/4-tool/_index.md` | |
| 56 | 도구 — 수작업의 한계 | Before/After 비교 | 변경없음 | `opensource_for_enterprise/4-tool/_index.md` | |
| 57 | 오픈소스 거버넌스 도구 생태계 | 카테고리별 도구 지도 | 디테일추가 | `tools/_index.md`, `opensource_for_enterprise/4-tool/_index.md` | 취약점 탐지에 OSV-SCALIBR(가이드 도구 페이지 존재) 정합. 도구명·라이선스 최신성 점검 |
| 58 | 소스코드 스캔: FOSSology & SCANOSS | 라이선스 식별·스니펫 매칭 | 변경없음 | `tools/1-fossology/`, `tools/9-scanoss/` | SCANOSS 도구 페이지 존재 |
| 59 | SBOM 생성 도구 (cdxgen·Syft·SKT) | 50+ 언어·CycloneDX/SPDX | 변경없음 | `tools/5-cdxgen/`, `tools/6-syft/` | |
| 60 | 거버넌스·SBOM 관리: FOSSLight & Dependency-Track | 통합 스캔·CVE 대조 | 변경없음 | `tools/3-fosslight/`, `tools/7-dependency-track/` | |
| 61 | 산출물 생성: onot | SPDX SBOM → 고지문 자동 변환 | 변경없음 | `tools/10-onot/` | |
| 62 | 산출물 공개·보관: 오픈소스 웹사이트 | GPL 3년 보관·GitHub Pages | 변경없음 | `opensource_for_enterprise/4-tool/_index.md` §6 | |
| 63 | CI/CD 파이프라인 연동 아키텍처 | 커밋→SBOM→대조→게이트→배포 | 디테일추가 | `opensource_for_enterprise/4-tool/_index.md` §7 | 정책 게이트에 EPSS/KEV·금지 라이선스 조건 명시 가능 |
| 64 | cdxgen + Dependency-Track 자동화 | 하루 만에 자동화 환경 | 변경없음 | `tools/8-cdxgen-dt/` | |

### 2-5 교육

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 65 | (교육 전환) 사람이 알아야 작동 | 체계의 마지막 퍼즐 | 변경없음 | `opensource_for_enterprise/5-training/_index.md` | |
| 66 | 교육 — 체계의 마지막 퍼즐 | 교육 대상·ISO 요구 3가지 | 변경없음 | `opensource_for_enterprise/5-training/_index.md` | |
| 67 | 정책 전파 절차 | 온보딩·위키·LMS 확인 | 변경없음 | `opensource_for_enterprise/5-training/_index.md` §1 | LMS 약어 풀이 1회 |
| 68 | 교육 효과 측정 및 인식 평가 | 인식·이해·역량·이력 측정 표 | 변경없음 | `opensource_for_enterprise/5-training/_index.md` §2 | |
| 69 | 교육 자료 — 무료로 시작하기 | NIPA·SKT 교육 슬라이드 | 변경없음 | `opensource_for_enterprise/5-training/_index.md` | 외부 링크 유효성만 점검 |
| 70 | SK텔레콤 오픈소스 가이드 | 사용·기여·공개·공급망 보안 | 변경없음 | (외부 사례) | 링크 유효성 점검 |

### 2-6 준수·개선

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 71 | (준수 전환) 공식 확인·지속 유지 | 살아있는 체계 | 변경없음 | `opensource_for_enterprise/6-conforming/_index.md` | |
| 72 | 준수 선언이란? | 입증자료 점검→확인서→신청/선언 | 변경없음 | `opensource_for_enterprise/6-conforming/_index.md` | |
| 73 | 자가 인증 절차 상세 | 점검→보완→제출→등재 | 변경없음 | `iso5230_guide/6-conformance/_index.md` | |
| 74 | 인증 후 18개월 유지 의무 | 18개월 재확인·연1회 감사 | 변경없음 | `opensource_for_enterprise/6-conforming/_index.md` §2 | |
| 75 | ISO 5230 + 18974 통합 준수 체크 | 입증자료별 5230/18974 매핑 | 변경없음 | `EVIDENCE-CHECK.md` | |
| 76 | 파트 2 요약 | 조직·정책 / 프로세스·도구 / 교육·준수 | 변경없음 | — | |

---

## 파트 3 — AI 컴플라이언스 (확장 대상)

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 77 | (파트3 전환) AI 컴플라이언스 | 기존 거버넌스의 AI 확장 | 디테일추가 | `opensource_for_enterprise/7-ai-compliance/_index.md` | 시간(30분) → 확장 후 갱신 |
| 78 | 기존 거버넌스로 충분한가? | 커버 영역 vs 미커버 영역 | 변경없음 | `opensource_for_enterprise/7-ai-compliance/_index.md` §1 | |
| 79 | AI 시스템 오픈소스 3대 영역 | 프레임워크·모델·데이터셋 | 변경없음 | `opensource_for_enterprise/7-ai-compliance/_index.md` §1 | |
| 80 | AI 프레임워크 라이선스 관리 | 기존 5230 프로세스 적용 | 변경없음 | `7-ai-compliance/_index.md` §2(1) | |
| 81 | AI 프레임워크 주요 라이선스 | PyTorch·TF·LangChain·HF | 변경없음 | `7-ai-compliance/_index.md` §2(1) | scikit-learn 추가 가능 |
| 82 | 오픈소스 AI 모델 라이선스 관리 | 커스텀 라이선스·개별 확인 | 디테일추가 | `7-ai-compliance/_index.md` §2(2) | OSAID 1.0 vs Open Weight 구분 추가 |
| 83 | AI 모델 라이선스 유형 비교 | Apache/MIT/Llama/CC-BY-NC 표 | 재작성필수 | `7-ai-compliance/_index.md` §2(2) (L83~98) | 가이드 표로 전면 교체: OSAID 1.0 열, Gemma ToU v3·Falcon 180B·Qwen·DeepSeek·Phi-4 등 2026 모델, Open Weight 표기. v5 표는 구형 |
| 84 | 학습 데이터셋 라이선스 관리 | CC0/BY/SA/NC 표 | 변경없음 | `7-ai-compliance/_index.md` §2(3) | NC 데이터→상업 배포 적법성 경고 유지 |
| 85 | AI-BOM이란? | SBOM의 AI 버전·SPDX 3.0 AI Profile | 디테일추가 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` | CycloneDX 1.6 ML-BOM 병기·소프트웨어 SBOM 대비표·EU CRA/AI Act 근거 추가. 용어 "AI-BOM"↔"AI SBOM" 통일 |
| 86 | AI-BOM 실제 예시 (SPDX 3.0) | YAML 모델/데이터셋/프레임워크 항목 | 디테일추가 | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §3.2 | 가이드의 정식 SPDX 3.0 예시 + relationships(TRAINED_ON)로 교체. CycloneDX 1.6 예시 슬라이드 추가 후보 |
| 87 | ISO 42001 오픈소스 교차 조항 & 체크포인트 | §5.2·6.1.2·7.5·8.5·8.6·8.8 표 | 변경없음 | `iso42001_guide/compare/_index.md` | 6개 조항 정합 |
| 88 | AI 코딩 도구 — 새로운 위험 | 라이선스 혼입·취약 패키지·SBOM 누락 | 변경없음 | `7-ai-compliance/_index.md` §5(1) | |
| 89 | AI 코딩 도구 — 보장 수준별 4단계 전략 | 프롬프트→규칙→CI/CD→모니터링 | 변경없음 | `7-ai-compliance/_index.md` §5(2) | 가이드와 4단계 정합 |
| 90 | 파트 3 요약 | 프레임워크·모델·데이터셋·AI코딩 | 디테일추가 | `7-ai-compliance/_index.md` §6 | 확장 후 신규 슬라이드 반영해 재구성 |

> 파트 3 표의 v5# 77~90은 원본 슬라이드 67~80에 대응한다(원본 주석 번호 기준).

---

## 파트 4 — 라이브 데모

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 91 | (파트4 전환) Trusted OSS 라이브 데모 | — | 변경없음 | — | |
| 92 | Trusted OSS란? | Agent와 대화하며 체계 구축하는 셀프스터디 | 변경없음 | (외부 trustedoss.github.io) | |
| 93 | 데모 시나리오 미리보기 | 조직/정책/프로세스 산출물 생성 3단계 | 변경없음 | `templates/` (산출물 기반) | 산출물 명칭 템플릿과 정합 점검 |
| 94 | (라이브 데모 placeholder) | 화면 데모 | 변경없음 | — | 실연 슬라이드 |
| 95 | 데모 후: 혼자서 따라가는 방법 | 접속→입력→안내→점검 4단계 | 변경없음 | (외부 trustedoss.github.io) | |

---

## 파트 5 — Review

| v5# | 제목 | 핵심 메시지 | 분류 | 근거 가이드 경로 | 비고 |
|---|---|---|---|---|---|
| 96 | (파트5 전환) Review | 첫 액션 정하기 | 변경없음 | — | 시간(20분→10분) 표기 갱신 |
| 97 | 오늘 배운 핵심 3가지 | 두 표준·6대 요소·AI 확장 | 변경없음 | — | |
| 98 | OpenChain KWG 소개 | 목적·멤버십·주요 산출물 | 변경없음 | (KWG 사이트) | 산출물 목록에 AI 컴플라이언스 가이드 포함됨 |

---

## 요약

### ① 분류별 집계

| 분류 | 장수 | 비율 |
|---|---|---|
| 변경없음 | 72 | 73% |
| 디테일추가 | 20 | 21% |
| 재작성필수 | 4 | 4% |
| **합계** | **98** | (라이브 데모 placeholder 포함 / 비활성 슬라이드 2 포함) |

> v5 원본은 표지~마무리까지 표에 매핑된 98개 논리 슬라이드(원본 주석 번호 최대 86 + 파트 전환 7 + 비활성 1 + placeholder 1)로 구성된다.
> **재작성필수 4장**: #5 강의 로드맵(시간 재배분), #31 보안 보증 정책(CVSS v4.0+VEX), #47 보안 취약점 대응 프로세스(CVSS 표 구형), #83 AI 모델 라이선스 비교표(구형 모델·OSAID 누락).
> **디테일추가 핵심 키워드**: CVSS v4.0 병기, VEX 4상태값(CSAF 2.0·CycloneDX VEX), EPSS·CISA KEV, OSV.dev·GHSA·KISA KNVD, SCANOSS, OSV-SCALIBR, SPDX 3.0/CycloneDX 1.6, OSAID 1.0 vs Open Weight, EU CRA·EU AI Act 근거.

### ② 신규 필요 주제 (가이드엔 있으나 v5에 없음) — 12개

| # | 신규 주제 | 근거 가이드 경로 | 배치 제안 |
|---|---|---|---|
| N1 | 글로벌 AI 규제·표준 매트릭스 (EU AI Act §53/§50/§40/§25/§11, 한국 AI 기본법, US Copyright Office) | `iso42001_guide/1-context-leadership/_index.md` (글로벌 AI 규제 매트릭스) | Part 3 도입부 |
| N2 | EU CRA(Cyber Resilience Act) — 취약점 보고 의무·AI 제품 투명성 | `iso42001_guide/4-operation/2-ai-sbom/_index.md`, `iso18974_guide/2-relevant-tasks/1-access/`, `iso18974_guide/3-content-review/1-sbom/` | Part 1(보안) 또는 Part 3 |
| N3 | OSAID 1.0(OSI 2024-10) 정의 + Open Weight 모델 구분 | `7-ai-compliance/_index.md` §2(2), `iso42001_guide/1-context-leadership/` | Part 3 모델 라이선스 |
| N4 | Llama 라이선스 의무 체크리스트 (MAU 7억·"Built with Llama"·접두어·AUP·405B 제한·버전차) | `7-ai-compliance/_index.md` §2(2) | Part 3 모델 라이선스 (`<LlamaChecklist>` 후보) |
| N5 | CycloneDX 1.6 ML-BOM (modelCard 4영역·environmentalConsiderations) | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §3.3~3.4 | Part 3 AI SBOM |
| N6 | AI SBOM 구성요소 5종 + Fact Sheet(AI 시스템 카드) | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §2 | Part 3 AI SBOM |
| N7 | AI 생성 코드 저작권 귀속 처리 (US Copyright Office 2024·인간 저작자성 3시나리오) | `7-ai-compliance/_index.md` §5(5) | Part 3 AI 코딩 도구 |
| N8 | 공급자 IP indemnification 비교 (MS/OpenAI/Anthropic/Google) | `7-ai-compliance/_index.md` §5(5-2), `iso42001_guide/4-operation/3-supply-chain/` §5.2 | Part 3 AI 코딩 도구 |
| N9 | 외부 AI 모델 조달 §8.8 검증 체크리스트 (라이선스·보안·공급망 리스크) | `iso42001_guide/4-operation/3-supply-chain/_index.md` §3 | Part 3 AI 공급망 |
| N10 | 모델 공급망 공격 방어 + OpenSSF Model Signing(Sigstore) + SLSA for AI 빌드 레벨 | `iso42001_guide/4-operation/3-supply-chain/_index.md` §6 | Part 3 AI 공급망 |
| N11 | ISO/IEC 42001 준수 확인 방법 3종(자체 갭분석·제2자·제3자, ISO 42003 동향) | `iso42001_guide/_index.md` | Part 1(42001 소개) |
| N12 | AI SBOM 생성 도구 실습 (cdxgen·Syft·Dependency-Track 명령) | `iso42001_guide/4-operation/2-ai-sbom/_index.md` §4 | Part 3 AI SBOM 또는 Part 4 데모 연계 |

> N3·N4·N7·N8·N9·N10은 모두 Part 3에 집중되며, "전문가용 깊이"(DECISIONS #10) 결정에 직접 부합한다.

### ③ Part별 분량 재배분 시사점 (4시간 = 240분 유지)

v5 시간 배분: Part1 35 / Part2 115 / Part3 30 / Part4 15 / Part5 10 (+ 도입 부대).
Part 3에 신규 12개 주제 + 재작성/디테일추가가 집중되므로 다음과 같이 재배분을 제안한다.

| 파트 | v5 시간 | v6 제안 | 증감 | 근거 |
|---|---|---|---|---|
| 도입(Part 0) | (≈10) | 10 | — | 로드맵 시간표만 갱신 |
| Part 1 표준 이해 | 35 | 30 | -5 | 변경없음 비율 높음. 42001 준수 방법(N11)·세 표준 비교 정밀화로 압축 운영 |
| Part 2 6대 요소 | 115 | 90 | -25 | 변경없음 대다수. 조직·교육·준수는 속도 내고, 보안(정책·프로세스 CVSS/VEX 재작성분)에 시간 집중 |
| **Part 3 AI** | **30** | **75** | **+45** | 신규 12주제 + 재작성 1 + 디테일추가 6. 규제 매트릭스·OSAID·Llama 체크리스트·ML-BOM·저작권/indemnification·공급망(Model Signing·SLSA) 추가 |
| Part 4 데모 | 15 | 20 | +5 | AI SBOM 도구 실습(N12) 연계 가능 |
| Part 5 마무리 | 10 | 10 | — | |
| 여유·Q&A | — | 5 | +5 | 전문가 청중 질의 |

**핵심 압축 전략**: Part 2의 "변경없음" 비율이 가장 높으므로(조직 6장·교육 6장·준수 6장 거의 전부 차용 가능) 이 구간을 빠르게 진행하고, 절약한 시간을 Part 3 AI 확장으로 이전한다. Part 1도 입증자료 표(25개/9개)는 정합되어 그대로 차용 가능해 설명 시간을 줄일 수 있다. 결과적으로 Part 3를 30분→75분(2.5배)으로 확장하면서 총 240분을 유지한다.

---

## 작업 메타

- 입력: `docs/slides/archive/v5-marp-2026-05-12.md` (3,422줄, CSS 프리앰블 598줄 + 슬라이드 본문)
- 대조 가이드: `opensource_for_enterprise/`, `iso5230_guide/`, `iso18974_guide/`, `iso42001_guide/`, `templates/`, `tools/`, `EVIDENCE-CHECK.md`, `CRITIC-REPORT.md`
- 작성일: 2026-05-22
- 다음 단계: 2-b CRITIC.md → 2-c EVIDENCE-MAP.md → 2-d PLAN.md
