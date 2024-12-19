---
title: "킥오프 웨비나: SBOM의 실제 활용 방안 모색"
linkTitle: "SBOM의 실제 활용 방안 모색"
# weight: 10
date: 2024-07-30
type: docs
categories: ["study"]
tags: ["SBOM"]
description: 2024-07-30 OpenChain SBOM Study Group Kickoff Meeting
---

source: https://www.slideshare.net/slideshow/openchain-sbom-study-group-kick-off-call-2024-07-30/270623321

## 목차
1. 웨비나 소개
2. SBOM의 중요성과 OpenChain 프로젝트의 역할
3. SBOM 활용의 실제적 고려사항
4. SPDX Lite: SBOM 생성을 위한 간소화된 접근
5. 향후 계획 및 참여 방법

## 1. 웨비나 소개

### 제목
OpenChain SBOM Study Group 킥오프 웨비나

### 발표자 소개
- Shane Coughlan: OpenChain 프로젝트 총괄 매니저
- Kate Stewart: Linux Foundation의 오픈소스 기술 부사장
- Kobota San: Sony에서 근무하며, 2024년 SBOM Study Group의 의장

### 웨비나 소개와 목적
이 웨비나는 OpenChain 프로젝트의 새로운 SBOM Study Group의 킥오프 미팅입니다. 주요 목적은 대규모 및 복잡한 공급망에서 SBOM(Software Bill of Materials)을 실제로 어떻게 활용할 수 있는지에 대한 논의를 시작하는 것입니다. 이를 통해 SBOM의 실용적인 적용 방안과 공급망 내에서의 신뢰 구축 방법을 모색하고자 합니다.

## 2. SBOM의 중요성과 OpenChain 프로젝트의 역할

[OpenChain 프로젝트](https://www.openchainproject.org/)는 2026년 설립 이후 지속적으로 컴플라이언스 및 보안 표준의 일환으로 SBOM을 요구해왔습니다. 프로젝트는 SBOM 분야에 다양한 방식으로 기여해왔으며, 특히 공급업체를 위한 간단한 SBOM 형식인 [SPDX Lite](https://spdx.dev/learn/areas-of-interest/lite/)의 개발과 SBOM 품질 평가 가이드 제작 등을 수행했습니다.

Shane Coughlan은 SBOM의 중요성을 강조하며, 이는 단순한 기술적 도구가 아닌 비즈니스 프로세스의 핵심 요소라고 설명합니다. SBOM은 소프트웨어 구성 요소의 투명성을 제공하여 보안, 라이선스 준수, 품질 관리 등 다양한 영역에서 중요한 역할을 합니다.

## 3. SBOM 활용의 실제적 고려사항

Kate Stewart는 SBOM 활용에 있어 실제적인 고려사항들을 제시합니다:

### SBOM 생성 및 소비의 주체
- 소프트웨어 개발자
- 제품 관리자
- 보안 전문가
- 법무 및 컴플라이언스 팀
- 구매 담당자
- 고객

### SBOM의 주요 활용 사례
- 취약점 관리
- 라이선스 컴플라이언스
- 소프트웨어 구성 요소 추적
- 공급망 리스크 관리

### SBOM 구현 시 고려사항
- 데이터 형식 (예: [SPDX](https://spdx.dev/), [CycloneDX](https://cyclonedx.org/))
- 생성 도구 및 프로세스
- 저장 및 배포 방식
- 업데이트 주기 및 버전 관리

## 4. SPDX Lite: SBOM 생성을 위한 간소화된 접근

Kate Stewart는 SPDX Lite에 대해 상세히 설명합니다. SPDX Lite는 전체 [SPDX](https://spdx.dev/) 규격의 간소화된 버전으로, SBOM 생성의 진입 장벽을 낮추고자 개발되었습니다.

### SPDX Lite의 주요 특징
- 필수 필드 수를 줄여 간편한 SBOM 생성 가능
- 기본적인 소프트웨어 구성 요소 정보 제공
- 확장 가능성을 통해 필요에 따라 더 상세한 정보 추가 가능

### SPDX Lite 활용 사례
- 소규모 프로젝트나 간단한 소프트웨어 패키지에 적합
- 대규모 SBOM 구현의 첫 단계로 활용 가능
- 공급업체와 고객 간의 기본적인 소프트웨어 구성 정보 교환에 유용

## 5. 향후 계획 및 참여 방법

Shane Coughlan은 SBOM Study Group의 향후 계획과 참여 방법에 대해 안내합니다:

- 정기적인 미팅을 통해 SBOM 관련 실제 사례와 도전 과제 논의
- 다양한 산업 분야의 전문가들과 협력하여 SBOM 활용 방안 개발
- OpenChain 커뮤니티를 통한 지식 공유 및 네트워킹 기회 제공

SBOM, 공급망에서의 SBOM 활용, 그리고 공급망 신뢰 증진에 관심 있는 모든 분들의 참여를 환영합니다. 특히 Sony의 Kobota San이 2024년 study group의 의장을 맡아 활동을 이끌어갈 예정입니다.

---

## 요약 보고서

### 기업의 오픈소스 관리 담당자에게 주는 의미

1. **SBOM의 전략적 중요성 인식**: SBOM은 단순한 기술적 도구를 넘어 비즈니스 프로세스의 핵심 요소로 자리잡고 있습니다. 오픈소스 관리 담당자는 SBOM을 통해 소프트웨어 공급망의 투명성을 확보하고, 보안 및 컴플라이언스 리스크를 효과적으로 관리할 수 있습니다.

2. **다양한 이해관계자와의 협업**: SBOM은 개발자, 보안 전문가, 법무팀, 구매 담당자 등 다양한 부서와의 협업을 필요로 합니다. 오픈소스 관리자는 이러한 협업을 주도하여 조직 전체의 SBOM 활용을 촉진할 수 있습니다.

3. **SBOM 표준 및 도구에 대한 이해**: SPDX, CycloneDX 등 다양한 SBOM 표준과 관련 도구에 대한 이해가 필요합니다. 특히 SPDX Lite와 같은 간소화된 접근 방식은 SBOM 도입의 진입 장벽을 낮출 수 있습니다.

4. **공급망 관리 강화**: SBOM을 통해 소프트웨어 구성 요소의 출처와 라이선스 정보를 명확히 파악할 수 있어, 공급망 리스크 관리와 라이선스 컴플라이언스를 강화할 수 있습니다.

### 고려해야 할 Action Item

1. **SBOM 생성 및 관리 프로세스 수립**: 조직 내 SBOM 생성, 유지보수, 공유를 위한 표준화된 프로세스를 개발하고 구현합니다.

2. **SBOM 도구 선정 및 도입**: 조직의 needs에 맞는 SBOM 생성 및 분석 도구를 선정하고 도입합니다. SPDX Lite와 같은 간소화된 접근부터 시작할 수 있습니다.

3. **교육 및 인식 제고**: 개발자, 관리자, 법무팀 등 관련 부서 직원들을 대상으로 SBOM의 중요성과 활용 방법에 대한 교육을 실시합니다.

4. **공급업체 관리 정책 수립**: 외부 공급업체로부터 SBOM을 요구하고 평가하는 정책을 수립합니다. 이를 통해 전체 소프트웨어 공급망의 투명성을 확보합니다.

5. **SBOM 데이터 통합 및 분석**: SBOM 데이터를 기존의 보안 및 컴플라이언스 도구와 통합하여 종합적인 리스크 분석을 수행합니다.

6. **지속적인 모니터링 및 개선**: SBOM 관련 기술과 표준의 발전을 지속적으로 모니터링하고, 조직의 SBOM 프로세스를 지속적으로 개선합니다.

7. **커뮤니티 참여**: OpenChain SBOM Study Group과 같은 커뮤니티에 참여하여 최신 동향을 파악하고 다른 조직의 best practices를 학습합니다.

이러한 action item들을 체계적으로 실행함으로써, 기업의 오픈소스 관리 담당자는 SBOM을 효과적으로 활용하여 조직의 소프트웨어 관리 및 보안 체계를 강화할 수 있을 것입니다.
