---
title: "India CERT-In SBOM Guidelines"
linkTitle: "SBOM Guidelines"
# weight: 10
date: 2024-12-06
type: docs
categories: ["Telco"]
tags: ["SBOM"]
description: 2024-12-06 India CERT-In SBOM Guidelines 및 OpenChain Telco SBOM Guide 개선사항 논의
---

source: https://openchainproject.org/news/2024/12/12/telco-work-group-2024-12-06

## 목차

1. India CERT-In SBOM Guidelines 논의
2. OpenChain Telco SBOM Guide 개선사항
3. 기타 논의사항

## 1. India CERT-In SBOM Guidelines 논의

### 주요 내용

- 2023년 10월 India Computer Emergency Response Team이 발행한 SBOM 기술 가이드라인 검토
- 주요 대상: 공공부문, 정부 필수 서비스, 소프트웨어 산업
- 법적 강제성은 없으나 SBOM 생성 및 제공을 권장

### 주요 이슈

- Mandatory Fields가 21개로 NTIA minimum elements보다 광범위
- End of Life date 등 현실적으로 제공이 어려운 필드 존재
- Medical 산업의 경우 FDA 요구사항과 연계되어 있음
- SPDX, CycloneDX 등 현존 표준과 일부 불일치

## 2. OpenChain Telco SBOM Guide 개선사항

### Component Hash 관련

- Package Checksum과 Package Verification Code 모두 허용하는 방향으로 변경
- CISA Common SBOM Requirements 3rd Edition과 일관성 유지
- Hash 제공이 불가능한 경우 처리방안 논의 필요

### 필수 필드 완화

- File Analyzed 필드를 필수에서 제외 (default: true)
- Package License (concluded/declared) - SPDX 2.2/2.3 버전 차이 반영
- External Ref와 PURL 관련 요구사항 일관성 개선

### 도구 관련

- SBOM 병합 도구로 Interlynk의 SBOM-ASEM 추천
- 중복 패키지 처리 등 일부 개선사항 존재

## 3. 기타 논의사항

### 일본 SBOM 그룹 제안

- Industry-neutral, format-neutral SBOM 가이드 개발 제안
- 보안 정보의 SBOM 포함 여부 논의 필요
- German BSI 가이드는 보안정보 분리 권장

---

# 요약 보고서

## 기업 오픈소스 관리 담당자에게 주는 의미

1. **SBOM 표준화 동향**
- 국가별 SBOM 가이드라인 제정 확산
- 산업별 요구사항 차이 인식 필요
- 글로벌 표준과의 정합성 고려 필요
1. **구현 현실성**
- 도구 지원 현황 파악 중요
- 필수 필드의 현실적 구현 가능성 검토
- 보안정보 통합 여부에 대한 전략 수립 필요

## 주요 Action Items

1. **SBOM 도구 검토**
- SBOM-ASEM 등 새로운 도구 평가
- 현재 사용 중인 도구의 표준 준수 여부 확인
1. **가이드라인 대응**
- 국가별/산업별 요구사항 매핑
- 필수 필드 제공 가능성 검토
- 미제공 필드에 대한 대응 방안 수립
1. **보안정보 전략**
- SBOM 내 보안정보 포함 여부 결정
- 별도 문서화 전략 검토
- 업데이트 주기 및 방식 결정