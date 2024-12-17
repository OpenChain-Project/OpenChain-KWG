---
title: "Enabling SBOMs Across The Linux Foundation"
linkTitle: "Enabling SBOMs"
# weight: 10
date: 2024-12-05
type: docs
categories: ["webinar"]
tags: ["SBOM"]
description: 2024-12-05, Enabling SBOMs Across The Linux Foundation
---

source: https://openchainproject.org/news/2024/12/04/webinar-enabling-sboms-across-the-linux-foundation


## 목차
1. 발표자 소개
2. 웨비나 소개와 목적
3. SBOM 개요
4. Linux Foundation의 SBOM 생성 프로세스
5. 현재 상황 및 과제
6. 향후 계획
7. Q&A

## 1. 발표자 소개

### Gary O'Neall
- [Software Package Data Exchange® (SPDX™)](https://spdx.dev/) 기여자
- 여러 오픈소스 도구 개발에 기여
- Source Auditor Inc.의 제품 개발 및 기술 책임자

### Jeff Shapiro
- Linux Foundation의 License Scanning 디렉터
- 소프트웨어 산업 30년 이상의 경력
- 소프트웨어 감사, 오픈소스 스캐닝, OSS 라이선스 컴플라이언스 교육 10년 경력

## 2. 웨비나 소개와 목적

Linux Foundation(LF)은 오랫동안 프로젝트에 대한 소스 레벨 라이선스 스캔을 수행해 왔으며, [SPDX](https://spdx.dev/) 형식의 파일을 생성해 왔습니다. 이제 LF는 기존의 스캐닝 기능을 활용하여 정부의 최소 사양을 충족(및 초과)하는 [SBOM](https://www.cisa.gov/sbom)을 생성하고 있습니다.

### 주요 목적:
- 오픈소스 도구를 사용하여 프로젝트 종속성 스캔
- 최소 사양을 충족하는 SBOM 생성
- 소스 레벨 스캔을 보완하는 종속성 레벨 라이선스 데이터 생성
- 향후 LF 최소 사양을 충족하는 통합 SBOM 생성

이 웨비나에서는 SBOM 생성 프로세스, 직면한 과제, 향후 계획, 그리고 이를 활용하는 방법에 대해 논의합니다.

## 3. SBOM 개요

### SBOM의 정의
[SBOM(Software Bill of Materials)](https://www.cisa.gov/sbom)은 소프트웨어를 구성하는 컴포넌트의 목록입니다. 이는 소프트웨어의 "재료 목록"과 유사한 개념입니다.

### SBOM의 용도
- 패키지와 컴포넌트의 취약점 및 라이선스 컴플라이언스 추적
- 다운스트림 사용자에게 컴포넌트 및 종속성 목록 제공
- 컴포넌트와 그 관계를 고유하고 명확하게 식별

### SBOM의 특징
- 기계 판독 가능
- 표준 형식 사용 (예: [SPDX](https://spdx.dev/))
- [NTIA](https://www.ntia.doc.gov/)의 최소 요구사항 충족

## 4. Linux Foundation의 SBOM 생성 프로세스

### 현재 프로세스 (Phase 1)
1. 소스 코드 분석
   - 부분적으로 자동화, 부분적으로 수동 감사
   - 도구: [Fossology](https://www.fossology.org/)
2. 종속성 분석
   - 주로 자동화
   - 도구: [Trivy](https://github.com/aquasecurity/trivy)
3. SBOM 생성
   - [SPDX](https://spdx.dev/) 형식 사용
   - 종속성의 라이선스 데이터 포함

### 사용 도구
- [Scaffold](https://github.com/lfscanning/scaffold): LF 프로젝트 스캐닝을 위한 오케스트레이션 도구
- [Fossology](https://www.fossology.org/): 소스 코드 라이선스 스캐닝
- [Trivy](https://github.com/aquasecurity/trivy): 종속성 분석
- [Parlay](https://github.com/snyk/parlay): SBOM 강화
- [SPDX Tools](https://github.com/spdx/tools): SBOM 검증

### 프로세스 단계
1. 생성 (Trivy 사용)
2. 증강 (Scaffold 사용)
3. 강화 (Parlay 사용)
4. 수정 (Scaffold 사용)
5. 검증 (SPDX Tools 사용)

## 5. 현재 상황 및 과제

### 현재 상황
- 약 250개의 LF 프로젝트에 대해 SBOM 생성 중
- 소스 레벨 및 종속성 레벨 라이선스 데이터 수집
- SBOM은 현재 종속성의 라이선스 데이터만 포함

### 직면한 과제
1. 유효하지 않은 라이선스 표현
2. 필드 사용 오류
3. 중복 식별자
4. 공급자 정보 누락
5. 정확한 버전 정보 부재

## 6. 향후 계획

### Phase 2 계획
1. LF 최소 SBOM 사양 정의 완료
2. 소스 및 종속성 데이터를 통합한 "통합 SBOM" 생성
3. 종속성 보고서에 누락된 데이터 추가
4. 최신 SPDX 3.x 표준 지원
5. LFX 플랫폼에 SBOM 게시
6. 모든 LF 프로젝트에 대한 자동화된 SBOM 생성

## 7. Q&A

Q: LF 최소 SBOM 사양 생성에 어떻게 기여할 수 있나요?
A: GitHub 이슈를 통해 기여하거나 직접 연락할 수 있습니다. 현재 CLA나 DCO는 필요하지 않지만, 향후 변경될 수 있습니다.

Q: 도구 체인을 소프트웨어 개발 수명 주기에 어떻게 매핑할 수 있나요?
A: 현재 도구 체인은 개발 단계에서 소스 코드의 정적 분석을 수행합니다. 이는 주요 릴리스 전 라이선스 컴플라이언스와 최소 요구사항 충족 여부를 확인하는 데 유용합니다.

---

## 요약 보고서

### 기업의 오픈소스 관리 담당자에게 의미

1. **컴플라이언스 향상**: SBOM을 통해 사용 중인 오픈소스 컴포넌트와 라이선스를 더 정확히 파악할 수 있어 컴플라이언스 리스크를 줄일 수 있습니다.

2. **보안 강화**: SBOM은 사용 중인 컴포넌트의 취약점을 추적하는 데 도움을 주어 보안 관리를 개선할 수 있습니다.

3. **정부 규제 대응**: 점점 더 많은 정부와 산업 분야에서 SBOM을 요구하고 있어, 이에 대한 준비가 가능합니다.

4. **오픈소스 생태계 기여**: LF의 SBOM 생성 노력에 참여함으로써 전체 오픈소스 생태계의 투명성과 보안 향상에 기여할 수 있습니다.

5. **자동화 및 효율성**: SBOM 생성 프로세스의 자동화를 통해 오픈소스 관리의 효율성을 높일 수 있습니다.

### 고려해야 할 Action Item

1. **SBOM 생성 도구 검토**: Trivy, Fossology 등 LF에서 사용하는 오픈소스 도구들을 검토하고 자사의 환경에 적용 가능한지 평가합니다.

2. **SPDX 표준 학습**: SPDX 형식에 대해 학습하고, 자사의 SBOM 생성 프로세스에 적용할 방법을 모색합니다.

3. **LF 프로젝트 참여**: LF의 SBOM 생성 프로젝트에 참여하거나 기여하여 최신 동향을 파악하고 경험을 쌓습니다.

4. **내부 프로세스 개선**: 소스 코드 및 종속성 분석, SBOM 생성, 검증 등의 프로세스를 자사 환경에 맞게 구축합니다.

5. **공급망 보안 강화**: SBOM을 활용하여 소프트웨어 공급망의 투명성을 높이고 보안을 강화하는 방안을 수립합니다.

6. **정부 규제 모니터링**: SBOM 관련 정부 규제 및 업계 표준의 변화를 지속적으로 모니터링하고 대응 전략을 수립합니다.

7. **교육 및 인식 제고**: 조직 내 SBOM의 중요성과 활용 방안에 대한 교육을 실시하여 전사적인 인식을 제고합니다.
