---
title: "SBOM 가이드라인 업데이트 논의"
linkTitle: "SBOM 가이드라인"
# weight: 10
date: 2024-12-06
type: docs
categories: ["Telco"]
tags: ["SBOM"]
description: 2024-12-06 OpenChain Telco Work Group Meetings
---

source: https://openchainproject.org/news/2024/12/12/telco-work-group-2024-12-06

## 목차
1. 인도의 SBOM 기술 가이드라인 검토
2. OpenChain Telco SBOM 가이드 개선 방안
3. SBOM 도구 관련 업데이트

## 1. 웨비나 개요
### 발표자 소개
이번 웨비나는 OpenChain Telco Work Group의 정기 미팅으로, Nokia의 오픈소스 전문가가 진행을 맡았습니다.

### 웨비나 목적
SBOM 관련 최신 기술 가이드라인을 검토하고 OpenChain Telco SBOM 가이드의 개선 방안을 논의하기 위해 개최되었습니다.

## 2. 인도의 SBOM 기술 가이드라인 검토
### 가이드라인 개요
Indian Computer Emergency Response Team (CERT-In)에서 2023년 10월에 발표한 SBOM 기술 가이드라인에 대해 논의했습니다. 이 가이드라인은 주로 공공 부문의 보안 관점에 초점을 맞추고 있습니다.

### 주요 특징
- 21개의 필수 요소를 정의하고 있으며, 이는 NTIA 최소 요구사항보다 더 많은 항목을 포함
- End-of-life date와 같은 현실적으로 구현이 어려운 필드들이 포함
- 공공 부문과 필수 서비스 영역을 주요 대상으로 함
- 강제성은 없으나 SBOM 생성과 제공을 권장


### (참고) 인도 정부 발간 SBOM 가이드라인 한국어 번역
- [인도 SBOM 가이드라인](https://openchain-project.github.io/OpenChain-KWG/guide/sbom_guide/)

## 3. OpenChain Telco SBOM 가이드 개선 방안
### 버전 1.1 업데이트 제안사항
- Component Hash 제공 방식 유연화
  - Package Checksum 외에도 Package Verification Code 허용
  - CISA의 Common SBOM Requirements와 일관성 유지

### 필수 필드 완화
- File Analyzed 필드를 필수에서 제외
- Package License (concluded/declared) 관련 SPDX 2.2와 2.3 버전 차이 반영
- External Ref 필드와 PURL 관련 요구사항 조정

### 도구 관련 업데이트
- SBOM 병합 도구로 Interlink의 ASML을 추천
- SPDX 유효성 검증 개선 사항 반영

## 4. 향후 계획
- 버전 1.1 초안에 대한 커뮤니티 피드백 수집
- 보안 정보의 SBOM 포함 여부에 대한 추가 논의 필요
- 일본 SBOM 그룹과의 협력 강화

## 요약 보고서

### 기업 오픈소스 관리자를 위한 시사점
1. SBOM 표준화가 전 세계적으로 진행 중이며, 특히 공공 부문을 중심으로 확산
2. 필수 요소에 대한 국가별/산업별 요구사항이 상이하므로 유연한 대응 필요
3. SBOM 도구 생태계가 지속적으로 발전 중이며, 도구 선택 시 표준 준수성 고려 필요

### 주요 Action Items
1. SBOM 생성 시 Component Hash 제공 방식 검토 및 개선
2. SPDX 2.2/2.3 버전 차이를 고려한 라이선스 정보 관리 체계 수립
3. SBOM 병합 도구 평가 및 도입 검토
4. 보안 정보 관리 방안 수립 (SBOM 포함 여부 결정)
5. 국가별 SBOM 가이드라인 모니터링 및 대응 체계 구축