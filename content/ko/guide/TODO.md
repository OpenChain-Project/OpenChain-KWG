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
