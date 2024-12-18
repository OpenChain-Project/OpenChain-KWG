---
title: "SBOM 가이드라인 업데이트 논의"
linkTitle: "SBOM Guidelines"
# weight: 10
date: 2024-12-06
type: docs
categories: ["Telco"]
tags: ["SBOM"]
description: 2024-12-06 OpenChain Telco Work Group Meetings
---

source: https://openchainproject.org/news/2024/12/12/telco-work-group-2024-12-06


## 목차
1. 인도 CERT-In SBOM 가이드라인 검토
2. OpenChain Telco SBOM 가이드 개선사항
3. SBOM 도구 관련 논의
4. 향후 계획

## 1. 웨비나 개요

### 발표자 소개
이번 웨비나는 [OpenChain Project](https://www.openchainproject.org)의 Telco Work Group에서 진행되었으며, [Nokia](https://www.nokia.com)의 Marc-Etienne Vargenau가 진행을 맡았습니다.

### 웨비나 목적
Telco Work Group의 정기 미팅으로, SBOM 관련 최신 동향을 공유하고 [OpenChain Telco SBOM Guide](https://github.com/OpenChain-Project/Telco-WG) 개선 방안을 논의하였습니다.

## 2. 인도 CERT-In SBOM 가이드라인 검토

### 가이드라인 개요
2023년 10월에 인도 [CERT-In](https://www.cert-in.org.in/)에서 발표한 SBOM 기술 가이드라인에 대해 논의했습니다. 이 가이드라인은 주로 공공 부문의 보안 관점에 초점을 맞추고 있습니다.

### 주요 특징
- 21개의 필수 요소를 정의하고 있으며, 이는 [NTIA](https://www.ntia.gov/) 최소 요구사항보다 더 많은 항목을 포함
- End-of-life date와 같은 현실적으로 구현이 어려운 필드들이 포함
- 공공 부문을 주요 대상으로 하며, 의무사항이 아닌 권고사항으로 제시

### (참고) 인도 정부 발간 SBOM 가이드라인 한국어 번역
- [인도 SBOM 가이드라인](https://openchain-project.github.io/OpenChain-KWG/guide/sbom_guide/)

## 3. OpenChain Telco SBOM 가이드 개선사항

### Package Hash 관련 개선
- [SPDX](https://spdx.dev/) Package Checksum과 Package Verification Code 모두 허용하도록 변경
- [CISA](https://www.cisa.gov/)의 Common SBOM Requirements와 일관성 유지
- Hash 필드의 필수 여부에 대한 재검토 진행 중

### 기타 개선사항
- File Analyzed 필드를 필수항목에서 제외
- Package License concluded와 declared 관련 SPDX 2.2와 2.3 버전 차이 반영
- [SBOM Merge 도구](https://github.com/interlynk-io/sbomasm) 관련 권장사항 업데이트

## 4. SBOM 도구 관련 논의

### Merge 도구 평가
- [Interlink](https://www.interlink.io/)의 SBOM ASM 도구에 대한 상세 테스트 결과 공유
- 중복 패키지 처리 등 개선 필요사항 식별
- [CycloneDX](https://cyclonedx.org/) 포맷에서는 이미 구현된 기능들이 SPDX에서도 구현될 예정

## 5. 향후 계획
- OpenChain Telco SBOM Guide 1.1 버전 준비
- 커뮤니티 피드백 수렴 후 업데이트 진행
- 1.0 버전과의 하위 호환성 유지

### 다음 미팅 일정
2024년 1월에 다음 정기 미팅이 예정되어 있으며, 추가적인 개선사항에 대한 논의를 이어갈 예정입니다.

---

## 요약 보고서

### 기업 오픈소스 관리자를 위한 시사점

1. SBOM 표준화 동향
- 글로벌 규제 환경이 강화되는 추세
- 인도의 사례처럼 지역별로 상이한 요구사항 출현
- 국제 표준과의 조화 필요성 증가

2. 실무적 고려사항
- SBOM 생성 도구의 선택과 검증 중요성 증가
- Hash 값 관리 등 기술적 요구사항 변화
- 보안 정보와 SBOM 연계 방안 고려 필요

### Action Items

1. 단기 조치사항
- 현재 사용 중인 SBOM 도구의 기능 검토
- SPDX 2.2/2.3 버전 지원 현황 확인
- Merge 도구 도입 검토

2. 중장기 계획
- SBOM 관련 규제 동향 모니터링
- 보안 정보 연계 방안 수립
- 글로벌 표준화 활동 참여 검토

3. 조직 내부 대응
- SBOM 관련 프로세스 개선
- 담당자 교육 및 역량 강화
- 공급망 관리 체계 재검토
