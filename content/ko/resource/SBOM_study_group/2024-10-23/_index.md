---
title: "Overview of various regulations and guidelines"
linkTitle: "Various regulations"
# weight: 10
date: 2024-10-29
type: docs
categories: ["study"]
tags: ["SBOM"]
description: 2024-10-29 SBOM (Software Bill of Materials)과 관련된 다양한 규정 및 가이드라인 개요 및 향후 회의 주제에 대한 논의
---

source: https://openchainproject.org/news/2024/10/29/openchain-sbom-study-group-october-2024-10-23-full-recording

## 소개

- 제목: OpenChain SBOM Study Group - 2024년 10월
- 발표자: Toshiba의 Ninjouji-san
- 웨비나 소개와 목적: SBOM (Software Bill of Materials)과 관련된 다양한 규정 및 가이드라인 개요 및 향후 회의 주제에 대한 논의

## 목차

1. 규정 및 가이드라인 개요
2. SBOM 속성 비교
3. CISA Framing 및 BSI 가이드라인
4. 성숙도 수준 및 요구사항
5. 라이선스 정보 및 해시 알고리즘
6. SBOM과 VEX 관계
7. 향후 논의 및 고려사항

## 1. 규정 및 가이드라인 개요

### 글로벌 SBOM 이니셔티브

세미나는 다양한 지역의 SBOM 관련 법률, 규정, 표준 및 가이드라인에 대한 개요로 시작되었습니다:

- 미국:
    - Executive Order 14028 (2021)
    - NIST SBOM 최소 요소
    - FDA 의료기기 가이드라인
- 유럽:
    - BSI (독일 연방 정보보안국) TR-03183 Part 2 (버전 2.0.0)
- 일본:
    - METI (경제산업성) SBOM 가이드라인 (버전 2)

### 국제 표준 및 산업 이니셔티브

- OpenChain Specification (라이선스 준수를 위한 ISO 5230, 보안 보증을 위한 ISO 18974)
- SBOM 형식으로서의 SPDX (ISO/IEC 5962) 및 CycloneDX (ECMA-424)
- 산업별 이니셔티브 (예: 의료기기, 결제카드 산업, 자동차)

## 2. SBOM 속성 비교

### NTIA 최소 요소 vs. CISA Framing

Ninjouji-san은 NTIA 최소 요소와 최근 발표된 CISA Framing 문서 간의 차이점을 강조했습니다:

- 해시, 라이선스 정보, 저작권 정보: NTIA에서는 권장, CISA에서는 필수
- 의존성 관계: CISA에서 주요 구성 요소와 종속 구성 요소 간의 관계 명확화

### 가이드라인 간 공통 속성

발표에서는 NTIA, CISA, BSI 가이드라인에 공통적인 속성을 비교했습니다:

- SBOM 유형
- 구성 요소 정보
- 관계 정보
- 라이선스 데이터
- 저작권 고지

## 3. CISA Framing 및 BSI 가이드라인

### CISA 성숙도 레이블

CISA 문서는 SBOM에 대한 성숙도 레이블을 소개합니다:

1. 최소 기대: 주요 구성 요소 및 포함된 구성 요소 포함
2. 권장 사례: 속성 데이터 추가 및 구성 요소 식별 보완
3. 목표 지향: 동적 및/또는 원격 의존성 포함

### BSI 상세 수준

BSI의 TR-03183 Part 2는 SBOM 상세 수준에 대해 5가지 카테고리를 정의합니다:

1. 최상위 SBOM
2. N 레벨 SBOM
3. 전이적 SBOM
4. 배포 항목 SBOM
5. 완전한 SBOM

## 4. 성숙도 수준 및 요구사항

세미나에서는 CISA와 BSI 문서 간의 성숙도 수준 및 요구사항 차이에 대해 논의했습니다:

- 의존성의 깊이와 폭
- 구성 요소 관계 해결
- 라이선스 정보 범위
- 해시 알고리즘 명세

## 5. 라이선스 정보 및 해시 알고리즘

### 라이선스 정보

- CISA: 성숙도 수준에 따라 범위 확장
- BSI: 관련, 선언, 결론 라이선스 요구
- OpenChain Telco SBOM Guide: 결론 및 선언된 라이선스 정보 모두 요구

### 해시 알고리즘

- CISA: SHA-256 이상 지정
- BSI: SHA-512 지정

## 6. SBOM과 VEX 관계

세미나에서는 VEX (Vulnerability Exploitability eXchange) 정보를 SBOM에 포함시킬지에 대한 진행 중인 논쟁을 다루었습니다:

- CISA: SBOM 자체에 포함될 것으로 예상되지 않음
- BSI: VEX 정보를 포함해서는 안 됨
- 취약점 정보에 대한 정적 vs. 동적 접근 방식 논의

## 7. 향후 논의 및 고려사항

Kabod-san은 향후 논의를 위한 주요 포인트를 제시했습니다:

- SBOM 내용은 상황, 수신 시기, 배포 시기에 따라 다름
- 상위 엔티티 성숙도 수준의 중요성
- 보안 및 라이선스 준수 관점에서의 다양한 정보 요구
- 하위 엔티티별 소프트웨어 사용 차이
- 최종 사용자 요구사항 및 우선순위

## 요약 보고서

### 주요 내용

1. SBOM 관련 글로벌 규정 및 가이드라인 현황 소개
2. NTIA, CISA, BSI 등 주요 기관의 SBOM 요구사항 비교 분석
3. SBOM 성숙도 수준 및 상세 정보 레벨에 대한 논의
4. 라이선스 정보 및 해시 알고리즘 요구사항 차이점 분석
5. SBOM과 VEX 정보 통합에 대한 논쟁 소개
6. 향후 SBOM 발전 방향 및 고려사항 제시

### 기업 오픈소스 관리 담당자를 위한 시사점

1. SBOM 관련 규정이 지역 및 산업별로 다양화되고 있어, 글로벌 표준 동향 모니터링 필요
2. SBOM 성숙도 수준에 따른 정보 요구사항 차이 인식 및 대응 전략 수립 필요
3. 라이선스 및 보안 정보 관리의 중요성 증대
4. SBOM과 취약점 정보(VEX) 관리 전략 수립 필요성 대두
5. 상위 및 하위 공급망 엔티티와의 SBOM 정보 교환 프로세스 정립 중요성 인식

### 기업 오픈소스 관리 담당자가 고려해야 할 Action Item

1. 자사 SBOM 생성 및 관리 프로세스의 현재 성숙도 수준 평가
2. 글로벌 SBOM 표준 및 규제 요구사항 준수를 위한 gap 분석 및 개선 계획 수립
3. SBOM 생성 및 관리 자동화 도구 검토 및 도입 고려
4. 라이선스 및 취약점 정보를 포함한 comprehensive SBOM 관리 체계 구축
5. 상위 공급업체 및 하위 고객사와의 SBOM 정보 교환 프로토콜 및 프로세스 정립
6. SBOM 품질 향상을 위한 내부 교육 및 가이드라인 개발
7. OpenChain 프로젝트 등 관련 커뮤니티 활동 참여를 통한 최신 동향 파악 및 best practice 공유