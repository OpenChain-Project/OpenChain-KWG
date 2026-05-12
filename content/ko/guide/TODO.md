---
title: "TODO"
draft: true
---
# TODO.md — 2026 가이드 개선 작업 현황
최종 업데이트: 2026-03-26
작업 브랜치: guide/2026-enterprise-oss-guide

## 작업 범위 구분
- 1차: 높음 우선순위 + 핵심 오류 수정 (현재 브랜치)
- 2차: 중간 우선순위 신규 작성 (별도 브랜치 예정)

---
## 1차 작업

### [즉시 수정] 오류 수정
- [x] #1  OSV-SCALIBR 페이지 전면 재작성 (tools/4-osvscalibr/_index.md)
- [x] #36 2-policy L135 앵커 오타 수정 (## → #)
- [x] #19 4-tool FOSSology 링크 구버전→신버전 교체
- [x] #20 4-tool SW360 링크 구버전→신버전 교체

### [1-policy 보완] ISO 조항 누락 항목
- [x] #2  컴플라이언스 산출물 보관 기간 명시 (§4.3 / ISO 5230 §3.4.1.2)
- [x] #3  CVSS 기반 조치 기한 기준 정책 선언 추가 (§5.1 / ISO 18974 §3.3.2.1)
- [x] #5  외부 문의 대응 기록 보관 기간 선언 추가 (§9.3 / ISO 18974 §3.2.1.2)
- [x] #6  취약점 기록 보관 기간 선언 추가 (§5)
- [x] #7  SBOM 표준 형식(SPDX/CycloneDX) 채택 선언 추가 (§4.4)

### [2-process-template 보완] SBOM 절차 누락 항목
- [x] #8  SBOM 형식 지정 및 검증 절차 추가 ((6)등록 단계)
- [x] #9  SBOM 고객 배포 절차 추가 ((9)배포 단계)
- [x] #10 SBOM 갱신 트리거 추가 ((11)모니터링 단계)

### [링크 수정] 내부 링크 연결
- [x] #18 3-process 말미에 2-process-template 링크 추가
- [x] #25 4-tool에 FOSSLight tools/ 링크 추가

### [tools/ 신규 작성] SBOM 도구 3종
- [x] #33 cdxgen tools/ 페이지 신규 작성 (tools/5-cdxgen/_index.md)
- [x] #34 Syft tools/ 페이지 신규 작성 (tools/6-syft/_index.md)
- [x] #35 Dependency-Track tools/ 페이지 신규 작성 (tools/7-dependency-track/_index.md)

---
## 2차 작업 (별도 브랜치 예정 — 지금은 작업하지 않음)

- [x] #4  기여 정책 인식 절차 선언 추가
- [x] #11 라이선스 사용 사례별 처리 방침 선언
- [x] #12 인식 평가 증거 보관 절차 명시
- [x] #13 외부 문의 기록 보관 기간 추가 (2-process)
- [x] #14 CVD 공개 타이밍 절차 추가
- [x] #15 오픈소스 기여 프로세스 신규 작성
- [x] #16 사내 오픈소스 공개 프로세스 신규 작성
- [x] #17 교육·평가 실행 프로세스 신규 작성
- [x] #21 4-tool에 OSV-SCALIBR 소개 및 링크 추가
- [x] #22 4-tool에 Dependency-Track 소개 및 링크 추가
- [x] #23 4-tool에 cdxgen 소개 및 링크 추가
- [x] #24 4-tool에 Syft 소개 및 링크 추가

---
## 정기 유지보수

### ISO 입증자료 점검
- [ ] ISO/IEC 5230 전체 25개 입증자료 연 1회 정기 점검 (다음 예정: 2027-03)
- [ ] ISO/IEC 18974 전체 25개 입증자료 연 1회 정기 점검 (다음 예정: 2027-03)
- [ ] 가이드 대규모 수정 후 영향 범위 입증자료 선택적 재점검
- [ ] 점검 결과를 EVIDENCE-CHECK.md 점검 이력 표에 행 추가

### 표준 개정 모니터링
- [ ] ISO/IEC 5230 신규 버전 발행 여부 모니터링 (현재: 2020년판)
- [ ] ISO/IEC 18974 신규 버전 발행 여부 모니터링 (현재: 2023년판)
- [ ] 표준 개정 시: `.claude/reference/iso-5230.md` / `iso-18974.md` 갱신 후 영향 조항 가이드 수정

---
## iso5230_guide 작성 작업 (브랜치: guide/iso-compliance-guides)

### 루트
- [x] _index.md (가이드 소개 / 체크리스트 / 인증 절차)

### §3.1 프로그램 기반
- [x] 1-policy/_index.md (§3.1.1 정책)
- [x] 2-competence/_index.md (§3.1.2 역량)
- [x] 3-awareness/_index.md (§3.1.3 인식)
- [x] 4-scope/_index.md (§3.1.4 프로그램 범위)
- [x] 5-license-obligations/_index.md (§3.1.5 라이선스 의무)

### §3.2 관련 업무
- [x] 1-access/_index.md (§3.2.1 외부 문의 대응)
- [x] 2-resourced/_index.md (§3.2.2 효과적 리소스)

### §3.3 콘텐츠 검토 및 승인
- [x] 1-sbom/_index.md (§3.3.1 SBOM)
- [x] 2-license-compliance/_index.md (§3.3.2 라이선스 컴플라이언스)

### §3.4 컴플라이언스 산출물
- [x] 1-compliance-artifacts/_index.md (§3.4.1 산출물)

### §3.5 커뮤니티 참여
- [x] 1-contributions/_index.md (§3.5.1 기여)

### §3.6 규격 준수
- [x] 1-conformance/_index.md (§3.6.1 적합성)
- [x] 2-duration/_index.md (§3.6.2 지속 기간)
---

## 2026-05 비판적 재검토 (Opus 4.7) 후속 작업

검토 결과: `content/ko/guide/CRITIC-REPORT.md` (48개 파일·9,815줄·500건 약점, P1 200/P2 221/P3 79)
검토 일자: 2026-05-11 ~ 2026-05-12
검토 모델: claude-opus-4-7 (1M context)

### Phase 1 — 긴급 사실 오류 (1-2시간)
- [x] URG-1: "24개 입증자료" → "25개" 정정 (3개 파일·4개 위치) — Layer A PASS·Layer C(hugo·grep) PASS [2026-05-12]
- [x] URG-2: ISO 18974 `§3.x` → `§4.x` 번호 오기 정정 (ko 11건 + en 13건 = 24건, 7개 파일) — Layer A CONDITIONAL PASS(en 동기화 누락 발견 후 처리)·Layer C PASS [2026-05-12]
- [x] URG-3: `(insert_link)` placeholder 정정 (ko 2 + en 2 = 4건) — SPDX·REUSE 명세 권고로 일반화 [2026-05-12]
- [x] URG-4: 0-openchain L68 18974 ISO URL `81039` → `86450` (WebSearch로 확인, ko+en 2건) [2026-05-12]
- [x] URG-5: FOSSology·FOSSLight 번호 정정 + ORT 외부 링크 교체 (ko 2 + ko·en sbom 2 = 4건) [2026-05-12]
- [x] URG-6: 4-tool Jenkins/GitLab CI 코드 "개념도 예시" 라벨링 (ko 2건) + en 4-tool §3.3.1.2 → §4.3.1.2 추가 정정 [2026-05-12]
- [x] URG-7: "지난 18개월" 회고형 시제 정정 (ko 6-conforming 2 + ko duration 2 + en duration 2 + en 6-conforming 추가 §3.4.x→§4.4.x 2건 + 미래형 보장 1건 = 9건) [2026-05-12]

### Phase 2 — iso42001 + 7-ai-compliance 통합 보강 (1-2주)
- [x] AI-1: 글로벌 AI 규제 매트릭스 박스 — iso42001/1-context-leadership §4.1 안에 14개 규제·표준 매트릭스 신설 (EU AI Act §53·§50·§40·§25·§11+Annex IV / 한국 AI 기본법 / US Copyright Office AI 가이드 / US EO 14110 / NIST AI RMF 2.0 / OSAID 1.0 / ISO 42005·23894·5338·42003·42006) [2026-05-13]
- [x] AI-2: Llama 의무 체크리스트 + OSAID "Open Weight" 분류 컬럼 — 7-ai-compliance 모델 표에 OSAID 컬럼 추가, Llama 의무 7개 체크리스트 박스 신설 [2026-05-13]
- [x] AI-3: SPDX 3.0 AI Profile 12개 필드 + CycloneDX 1.6 ML-BOM 명세 — iso42001_guide/4-operation/2-ai-sbom §3 재구성(§3.1 SPDX 12필드 표·§3.2 SPDX 예시·§3.3 ML-BOM 4영역 16필드 명세·§3.4 ML-BOM JSON 예시·동시 발행 권장 alert), 7-ai-compliance §2.2 AI SBOM 부분 두 표준 동시 언급 [2026-05-12]
- [x] AI-4: AI 생성 코드 저작권 처리 절차 신설 — 7-ai-compliance §5에 (5) AI 생성 코드의 저작권 귀속 처리 5개 하위 섹션(5-1 귀속 기준·5-2 공급자 indemnification·5-3 표기 의무·5-4 사내 정책 문서화·5-5 매트릭스 cross-link) [2026-05-13]
- [x] AI-5: 상용 AI API §8.8 평가 + IP indemnification + 모델 공급망 공격 — iso42001_guide/4-operation/3-supply-chain에 §5(데이터 처리·IP indemnification 5사 비교 표·약관 모니터링) + §6(Pickle RCE·typo-squatting·model poisoning 5종 공격 표·방어 통제 + 2024 HF Hub 사고 alert) 신설, §3.2 보안 검증에 Safetensors·typo-squatting 항목 추가, 기존 §5·§6→§7·§8 [2026-05-12]
- [x] AI-6: OpenSSF Model Signing/Sigstore/SLSA for AI 통합 — 3-supply-chain §6.3(model-signing CLI 5단계: 설치·Sigstore 서명·검증·자체 키·SBOM 연계) + §6.4(SLSA L0~L3 매핑 표·ML provenance 핵심 항목·적용 권장 순서·통합 alert) 신설, 2-ai-sbom §5 체크포인트에 서명·provenance 검증 항목 + cross-link alert 추가 [2026-05-12]
- [x] AI-7: ISO 42005 기반 영향 평가 + SC 42 패밀리 매핑 — 2-planning §3 §6.1.4 영향 평가에 ISO/IEC 42005:2025 alert + 8개 평가 영역 표 + 영향 평가서 템플릿 추가, compare에 새 §3 SC 42 패밀리 매핑(11개 표준 + 인증 심사 조합 + OSS 결합 + 도입 우선순위 alert) 신설하고 §3~§7→§4~§8 번호 갱신, cross-link 추가 [2026-05-12]
- [x] AI-8: 2026 신규 모델 표 갱신 (Qwen 2.5/3·DeepSeek-V3/R1·Phi-4·Llama 3.3/4·Gemma 3·Falcon 7B/40B/180B 분리) — AI-2와 함께 7-ai-compliance에서 일괄 처리 [2026-05-13]

### Phase 3 — 가로축 일괄 보강 (3-5일)
- [x] HZ-1: CVSS 4.0 병기 ("v3.1 또는 v4.0") — 5개 파일 일괄 정정. 3-process L301 표 헤더 + alert 신설, 2-process-template L201 표 헤더 + 인용 박스, security-assurance §2단계 v3.1/v4.0 명시, 18974 1-policy §5.2 + 5-standard-practice 후속 조치 절차에 v3.1/v4.0 병기 [2026-05-12]
- [x] HZ-2: NVD 단독 → 다원화 (OSV.dev·GHSA·KVE) + EPSS·KEV — 6개 파일 일괄 보강. 2-policy §5.1·3-process L286/L384·templates/1-policy §5.1·security-assurance 1단계+2단계·5-standard-practice 방법 2 — NVD/OSV/GHSA/KISA KVE 4개 출처 + EPSS/KEV 보조 지표 도입 [2026-05-12]
- [x] HZ-3: VEX 발행 권장 + 4가지 상태값 — 4개 파일에 VEX(CSAF 2.0/CycloneDX VEX) 발행 권장 + 4가지 상태값(not_affected·affected·fixed·under_investigation) + justification 안내. 5-standard-practice §방법8·security-assurance §4단계+§5단계 fixed 갱신·2-policy/templates 1-policy 대응 조치 절차 [2026-05-12]
- [x] HZ-4: "본 가이드 권고" vs "ISO 표준 요구" 시각 분리 — iso5230_guide/_index.md + iso18974_guide/_index.md에 "표기 규칙 — [ISO 요구] vs [본 가이드 권고]" alert 신설. ISO shall/입증자료 번호 항목과 OSKWG 권고(자동화·도구·메트릭) 구분 기준 명문화 [2026-05-12]
- [x] HZ-5: "Documented Evidence" 강도 차이 안내 — 5-standard-practice에 강도 비교 표(약/중/강) 신설, 다른 4개 ★ 항목 페이지(2-competence·4-scope·2-resourced·security-assurance)에 짧은 cross-link alert 추가 [2026-05-12]
- [x] HZ-6: EU CRA 24시간 + EO 14028 등 법규 시한 분리 — iso18974/2-relevant-tasks/1-access §4.2.1.2 끝에 "법규별 취약점 보고 시한" alert 신설(EU CRA 24h/72h/14d, EU NIS 2, US EO 14028, 한국 정보통신망법, 개인정보보호법 5개 법규 보고 시한 표) [2026-05-12]
- [x] HZ-7: 깨진 도구 링크 일괄 점검 — 점검 결과: placeholder/insert_link 없음, ORT 외부 링크 정상. 누락된 SCANOSS(tools/9-scanoss)·onot(tools/10-onot) 내부 링크를 4-tool에 추가 [2026-05-12]
- [x] HZ-8: AI 컴플라이언스 교차 링크 일괄 추가 — opensource_for_enterprise 4개 섹션(2-policy·3-process·4-tool·5-training) 푸터 blockquote에 "AI 사용 시 추가 고려" 항목 신설. 7-ai-compliance + iso42001_guide(1-context-leadership·4-operation/2-ai-sbom·3-supply-chain·5.2 정책·7.2 역량·SC 42 매핑) cross-link 일괄 추가 [2026-05-12]

### Phase 4 — 그룹별 P1 잔여 보강 (1-3주)
- [x] enterprise 잔여 P1 — 핵심 P1 일괄 보강. 루트 _index.md(18974 16개 항목 정확 번호 명시·"재활용→파생" 표현 정정), 0-openchain("지난 4년→6년", 인증 3가지 방법 비교 표 신설, LF 검토 절차 단계화, 타사 인증 기관 2026 갱신 + Synopsys→Black Duck 분사 반영), 1-teams(역할 표 ISO 매핑 컬럼 + §4.2.2.3 보안 전문성·§4.1.2.6 검증 담당 7번 행 추가, 1인 다역 주의 alert, 샘플 표 가상 실명/팀별 챔피언) [2026-05-12]
- [x] iso5230_guide 잔여 P1 — 핵심 P1 3건 일괄 보강. 3-awareness §3.1.3 인식 4요소(정책 존재·위치 누락분 보강·평가 표 4요소 분리), 3-content-review/1-sbom NTIA Minimum Elements 7요소 표 + SPDX/CycloneDX 권장 형식 + VEX 발행 cross-link, 4-artifacts written offer GPLv2/v3 분리(2개 별도 약정서 + 차이 비교 alert) [2026-05-12]
- [x] iso18974_guide 잔여 P1 — 핵심 P1 일괄 보강. 18974/3-content-review/1-sbom 고려사항에 NTIA 7요소 cross-link + 모델 서명/SLSA + SBOM 적용 범위 확장(컨테이너·빌드 환경·AI 모델), 2-security-assurance 고려사항에 3차원 우선순위(CVSS/EPSS/KEV) + Reachability Analysis + 회귀 테스트 + VEX justification, 샘플 표에 CWE/EPSS/KEV/Reachable/VEX 상태 컬럼 추가 [2026-05-12]
- [x] templates 잔여 P1 — templates/1-policy §11.1 ISO 5230 §3.6.1.1·§3.6.2.1 + ISO 18974 §4.4.1.1·§4.4.2.1 4개 입증자료 매핑 명시 + 18개월 회고형 의미 정정. templates/2-process-template L19/L23 중복 문장 정리·외부 SK텔레콤 URL → 회사 내부 placeholder + 공개 참고 자료(SPDX/OpenChain) [2026-05-12]

### Phase 5 — 통일성 검토 (별도 페이즈, 신설)
- [x] guide-style-checker 에이전트 정의 (`.claude/agents/guide-style-checker.md`) [2026-05-12]
- [x] `/guide-improve style [target]` 서브커맨드 추가 [2026-05-12]
- [x] STYLE-REPORT.md 신설 — 통일성 검토 결과 누적 [2026-05-12]
- [x] 통일성 검토 실행 (6개 차원: 단락 구성·문장 스타일·표현 통일·markdown·mermaid·이미지 캡션) — 170+ 약점 식별 [2026-05-12]
  - [x] iso5230_guide 통일성 검토 (C1 9 / C2 9 / C3 4)
  - [x] iso18974_guide 통일성 검토 (C1 2 / C2 16 / C3 9)
  - [x] iso42001_guide 통일성 검토 (C1 8 / C2 18 / C3 9)
  - [x] opensource_for_enterprise 통일성 검토 (C1 13 / C2 18 / C3 5+)
  - [x] templates 통일성 검토 (C1 14 / C2 18 / C3 18+)
- [x] P0 단순 정정 (마크다운 렌더링·헤딩 번호·표기 통일) — 9 files [2026-05-12]
- [x] P1 규칙 명문화 — `.claude/rules/guide-writing.md`에 통일성 규칙 추가 (종결체·alert color·헤딩·약어·이미지·ISO 인용·용어 통일·코드 블록·링크·mermaid) [2026-05-12]
- [ ] P2 구조적 보강 (다음 단계 — 큰 작업, session 분할):
  - [x] opensource_for_enterprise/7-ai-compliance 형식 리포밍 (도입 alert·H3 (N)·어조·Summary·교차링크 5종 적용) — Layer A·C PASS [2026-05-13]
  - [x] opensource_for_enterprise/2-policy H2 번호 재정렬 — **변경 불필요** (sub-agent grep 분석 오류. 실제 본문 H2는 1·2·3 순차. ## 4·5·9·7은 코드 블록 안 정책 템플릿 인용으로 Hugo 파서가 H2로 처리하지 않음) [2026-05-13]
  - [x] opensource_for_enterprise/0-openchain 3종 세트 추가 (도입 alert + Summary + 하단 교차 링크 blockquote) — hugo 빌드 PASS [2026-05-13]
  - [x] iso5230_guide 5섹션 구조 — **변형 인정** (자동화 도구 활용·인증 방법 선택 등 부가 가이드 §5 허용). `.claude/rules/guide-writing.md`에 6섹션 변형 규칙 명문화 [2026-05-13]
  - [x] templates 두 템플릿 헤딩 체계·OSPM·Jira·플레이스홀더 통일 — 1-policy §3에 OSPO/OSPM/OSRB 용어 정의 alert 신설(혼용 패턴 해소). 헤딩 체계는 .claude/rules/guide-writing.md 명문화 (1-policy: ### N.N / 2-process-template: ### (N) — 의도적 디자인). placeholder는 Phase 4-4에서 처리 [2026-05-12]
  - [x] iso42001_guide 약어 표·라이선스명 통일 — iso42001_guide/_index.md에 약어 표(AIMS·AI SBOM·ML-BOM·GPAI·OSAID·MAU·CRA·NIS 2·EO 14028·DPO·EPSS·KEV 등 13개) + 라이선스 표기 통일 규칙 추가. AI SBOM 정의 중복 정리는 후속 작업 (현재 _index/2-ai-sbom 정의가 보완 관계로 존재) [2026-05-12]
  - [x] iso18974_guide §4.1.5 "방법 1~8" 굵게 → H4 격상 (### 4.1.5.1 입증자료 하위 H4로 위계 정합) [2026-05-13]
- [x] P3 그룹 간 정합 — iso5230_guide/_index.md + iso18974_guide/_index.md 끝에 "다른 표준과의 관계" alert 신설 — compare 페이지 양방향 cross-link 보강. Phase 단계 의미 차이·샘플 외부화는 후속 작업 [2026-05-12]

### Phase 6 — 영어(en/) 동기화
- [ ] ko/ 보강 후 en/ 대응 파일 일괄 동기화 (별도 PR 분리 권장 — 단일 세션에 비현실적)
  - en에 iso42001_guide 자체가 없음 — 본 세션 보강 ~30%는 동기화 대상 아님
  - 대상 파일 ~20개: iso5230_guide(_index·3-awareness·1-sbom·1-compliance-artifacts), iso18974_guide(_index 외 7개), opensource_for_enterprise(_index 외 6개), templates 2개
- [x] `/sync-check` 실행 — 격차 파악 완료. en에 iso42001_guide 디렉토리 자체가 없음(의도적 ko-only) [2026-05-12]

### 권장 진행 순서
1. Phase 1 (긴급, 1-2시간) → 즉시
2. Phase 5 인프라 (guide-style-checker 신설) → 즉시
3. Phase 5 통일성 검토 실행 (1-2일)
4. Phase 3 (가로축, 3-5일)
5. Phase 2 (iso42001+AI, 1-2주)
6. Phase 4 (잔여 P1, 1-3주)
7. Phase 6 (en/ 동기화, 1주)

총 예상 소요: 5-8주

### 세션 재개 시 컨텍스트 복구
1. `content/ko/guide/CRITIC-REPORT.md` 읽기 — 검토 결과 + 다음 단계 카탈로그
2. 이 파일(TODO.md) 읽기 — 작업 진행 상황
3. 사용자에게 어느 Phase부터 진행할지 확인

### 보강 작업 4층 검증 체계 (필수 워크플로)

모든 P1 보강은 다음 4층을 반드시 거친다:

```
① guide-critic이 약점 식별 (CRITIC-REPORT.md 기록)
② guide-writer가 diff 작성
③ 사용자 승인
④ Edit으로 적용
   ↓
Layer A: /guide-improve verify {파일} {약점ID}
   - guide-fix-verifier 에이전트로 diff 정확성 검증
   - 5개 항목: 의도·완전성·사실 정확성·부수 효과·서식 무결성
   - PASS / CONDITIONAL PASS / FAIL 판정
   ↓
Layer B: /guide-improve critic {파일}
   - 같은 파일 회귀 검토
   - 같은 P1 약점이 다시 나오면 안 됨
   ↓
Layer C: 자동 검증
   - hugo --minify (빌드 성공)
   - /guide-improve links (깨진 링크)
   - /guide-improve evidence {표준} {입증자료} (영향받은 입증자료만)
   ↓
Layer D: Git commit (별도 commit, revert 단위 작게)
```

- Layer A FAIL 시: revert 후 재작업
- Layer A CONDITIONAL PASS 시: 사용자 확인 후 진행
- Layer B에서 새 P1 발견 시: 별도 약점으로 CRITIC-REPORT에 추가
- Layer C 실패 시: 원인 파악 후 Layer A부터 재실행

### 인프라 (구축 완료)
- [x] `.claude/agents/guide-critic.md` (콘텐츠 깊이 검토)
- [x] `.claude/agents/guide-style-checker.md` (통일성 검토)
- [x] `.claude/agents/guide-fix-verifier.md` (보강 검증)
- [x] `.claude/commands/guide-improve.md` 갱신 (critic·style·verify 서브커맨드)
- [x] `content/ko/guide/CRITIC-REPORT.md` (검토 결과 영속화)

---
