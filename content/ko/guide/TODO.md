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
- [ ] #36 2-policy L135 앵커 오타 수정 (## → #)
- [ ] #19 4-tool FOSSology 링크 구버전→신버전 교체
- [ ] #20 4-tool SW360 링크 구버전→신버전 교체

### [1-policy 보완] ISO 조항 누락 항목
- [ ] #2  컴플라이언스 산출물 보관 기간 명시 (§4.3 / ISO 5230 §3.4.1.2)
- [ ] #3  CVSS 기반 조치 기한 기준 정책 선언 추가 (§5.1 / ISO 18974 §3.3.2.1)
- [ ] #5  외부 문의 대응 기록 보관 기간 선언 추가 (§9.3 / ISO 18974 §3.2.1.2)
- [ ] #6  취약점 기록 보관 기간 선언 추가 (§5)
- [ ] #7  SBOM 표준 형식(SPDX/CycloneDX) 채택 선언 추가 (§4.4)

### [2-process-template 보완] SBOM 절차 누락 항목
- [ ] #8  SBOM 형식 지정 및 검증 절차 추가 ((6)등록 단계)
- [ ] #9  SBOM 고객 배포 절차 추가 ((9)배포 단계)
- [ ] #10 SBOM 갱신 트리거 추가 ((11)모니터링 단계)

### [링크 수정] 내부 링크 연결
- [ ] #18 3-process 말미에 2-process-template 링크 추가
- [ ] #25 4-tool에 FOSSLight tools/ 링크 추가

### [tools/ 신규 작성] SBOM 도구 3종
- [ ] #33 cdxgen tools/ 페이지 신규 작성 (tools/5-cdxgen/_index.md)
- [ ] #34 Syft tools/ 페이지 신규 작성 (tools/6-syft/_index.md)
- [ ] #35 Dependency-Track tools/ 페이지 신규 작성 (tools/7-dependency-track/_index.md)

---
## 2차 작업 (별도 브랜치 예정 — 지금은 작업하지 않음)

- [ ] #4  기여 정책 인식 절차 선언 추가
- [ ] #11 라이선스 사용 사례별 처리 방침 선언
- [ ] #12 인식 평가 증거 보관 절차 명시
- [ ] #13 외부 문의 기록 보관 기간 추가 (2-process)
- [ ] #14 CVD 공개 타이밍 절차 추가
- [ ] #15 오픈소스 기여 프로세스 신규 작성
- [ ] #16 사내 오픈소스 공개 프로세스 신규 작성
- [ ] #17 교육·평가 실행 프로세스 신규 작성
- [ ] #21 4-tool에 OSV-SCALIBR 소개 및 링크 추가
- [ ] #22 4-tool에 Dependency-Track 소개 및 링크 추가
- [ ] #23 4-tool에 cdxgen 소개 및 링크 추가
- [ ] #24 4-tool에 Syft 소개 및 링크 추가
---
