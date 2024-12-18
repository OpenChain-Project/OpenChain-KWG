---
title: "리눅스 재단에서 SBOM을 활성화하는 과정"
linkTitle: "SBOM 활성화 과정"
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
3. SBOM의 개념과 중요성
4. 리눅스 재단의 SBOM 생성 과정
5. 주요 도구와 프로세스
6. SBOM 통합과 향후 계획
7. 청중 질의응답

---

## 1. 발표자 소개

### **Gary O’Neall**  
Gary O’Neall은 [SPDX](https://spdx.dev/about/overview) 표준에 기여한 전문가로, 오픈소스 소프트웨어의 구성요소, 라이선스, 저작권, 보안 참조 정보를 전달하는 데 중점을 둔 표준을 개발해왔습니다. 그는 Source Auditor Inc.에서 제품 개발 및 기술을 담당하며, 오픈소스 소프트웨어의 기술적 및 법적 위험 관리를 돕는 도구를 개발하고 있습니다.

### **Jeff Shapiro**  
Jeff Shapiro는 [리눅스 재단](https://www.linuxfoundation.org)의 라이선스 스캐닝 디렉터로, 30년 이상의 소프트웨어 산업 경험을 보유하고 있습니다. 그는 오픈소스 스캐닝 및 OSS(오픈소스 소프트웨어) 라이선스 준수 교육에 전문성을 가지고 있으며, 현재 리눅스 재단에서 중요한 프로젝트들의 코드 관리와 SBOM 생성에 기여하고 있습니다.

---

## 2. 웨비나 소개와 목적

이번 웨비나는 리눅스 재단(Linux Foundation)에서 **SBOM(Software Bill of Materials)**을 활성화하는 과정을 설명하고, 이를 통해 오픈소스 프로젝트의 라이선스 준수 및 보안 관리 방안을 제시하는 것을 목표로 합니다.

리눅스 재단은 기존의 소스 코드 레벨 라이선스 스캐닝 경험을 바탕으로 SBOM을 생성하며, 정부 규제 기준([CISA NTIA Minimum Specification](https://www.ntia.gov/report/2021/minimum-elements-software-bill-materials-sbom))을 충족하거나 초과하는 SBOM을 제공하고자 합니다.  
SBOM은 소프트웨어 구성요소와 의존성을 추적하여 보안 취약점과 라이선스를 관리하는 데 필수적인 도구로, 이번 웨비나는 다음과 같은 내용을 다룹니다:
- SBOM 생성 과정과 사용 도구
- 직면한 도전 과제와 해결 방안
- 향후 계획 및 커뮤니티 참여 방법

---

## 3. SBOM의 개념과 중요성

SBOM은 소프트웨어 구성요소를 추적하여 **보안 취약점**과 **라이선스 준수**를 관리하는 데 사용됩니다. 이는 소프트웨어의 "재료 목록"으로 비유되며, 다음과 같은 특징을 가집니다:
- **구성요소와 관계를 명확히 식별**: 각 구성요소 간의 관계를 명확히 정의.
- **기계 판독 가능**: 표준 형식([SPDX](https://spdx.dev/about/overview) 등)을 사용하여 자동화 가능.
- **보안 및 라이선스 관리**: 다운스트림 사용자에게 구성요소 정보 제공.

리눅스 재단은 1,000개 이상의 프로젝트를 호스팅하며, 이들 프로젝트가 중요한 인프라를 지원하기 때문에 SBOM은 특히 중요합니다.

---

## 4. 리눅스 재단의 SBOM 생성 과정

리눅스 재단은 개발 단계에서 "Source-level SBOM"을 생성합니다. 이는 빌드 단계에서 생성되는 "Build-level SBOM"과는 차이가 있지만, 다음과 같은 장점이 있습니다:
- 소스 코드와 메타데이터를 기반으로 구성요소 정보를 수집.
- 의존성 분석을 통해 라이선스 정보와 보안 취약점 데이터를 통합.

리눅스 재단은 [Trivy](https://trivy.dev), [Scaffold](https://github.com/jkrasnay/scaffold), [Parlay](https://github.com/snyk/parlay) 등의 오픈소스 도구를 활용하여 자동화된 SBOM 생성을 진행하며, 이를 통해 정부 규제 기준을 충족하는 결과물을 제공합니다.

---

## 5. 주요 도구와 프로세스

### 주요 도구
1. **[Trivy](https://trivy.dev)**: 의존성 분석 및 SPDX 파일 생성.
2. **[Scaffold](https://github.com/jkrasnay/scaffold)**: 스캔 작업 자동화 및 메타데이터 통합.
3. **[Parlay](https://github.com/snyk/parlay)**: 외부 메타데이터 추가(예: 보안 정보).
4. **[SPDX Tools](https://spdx.dev/use/spdx-tools/)**: 최종 검증 및 표준 준수 확인.

### 프로세스 단계
1. **생성(Generation)**: Trivy로 초기 SPDX 파일 생성.
2. **증강(Augmentation)**: Scaffold로 프로젝트 메타데이터 추가.
3. **강화(Enrichment)**: Parlay로 외부 데이터 추가.
4. **검증(Validation)**: SPDX Tools로 표준 준수 확인.

---

## 6. SBOM 통합과 향후 계획

리눅스 재단은 현재 소스 코드와 의존성 데이터를 통합하여 "Unified SBOM"을 개발 중입니다. 이는 다음 단계를 포함합니다:
- **파일 수준 정보 추가**: 파일 체크섬, 선언/결론된 라이선스, 저작권 텍스트 등.
- **SPDX 3.x 지원**: 최신 표준 적용.
- **[LFX 플랫폼](https://lfx.linuxfoundation.org) 통합**: GitHub 외에도 LFX 플랫폼에서 SBOM 제공.

향후 모든 리눅스 재단 프로젝트에 대해 자동화된 SBOM 생성을 목표로 하고 있습니다.

---

## 7. 청중 질의응답

### 주요 질문과 답변
1. **LF Minimum SBOM Spec에 기여하려면?**
   - GitHub 이슈 또는 PR 제출 가능.
   - 직접 이메일로 의견 전달도 환영.

2. **SPDX 3.x 전환 계획?**
   - 현재 SPDX 2.3 사용 중이며, 도구가 업데이트되면 즉시 전환 예정.

3. **도구 체인을 SDLC에 어떻게 매핑하나요?**
   - 리눅스 재단의 도구 체인은 개발 단계에서 정적 분석을 수행하며, 빌드 단계 이전에 라이선스 및 보안 상태를 사전 점검하는 역할을 합니다.

---

## 요약 보고서

### 기업 오픈소스 관리 담당자에게 주는 의미
1. **라이선스 준수 강화**: SBOM은 오픈소스를 사용하는 기업이 법적 위험을 줄이고 규정을 준수하도록 돕습니다.
2. **보안 취약점 관리**: 의존성 정보를 통해 잠재적 보안 위협을 사전에 식별 가능.
3. **정부 규제 대응**: CISA NTIA Minimum Specification 등 글로벌 규제를 충족할 수 있는 기반 마련.

### 고려해야 할 Action Items
1. **SBOM 도입 계획 수립**:
   - 내부 소프트웨어 개발 프로세스를 분석하고 적절한 도구 선택.
   - Trivy, Scaffold 등 오픈소스를 활용한 초기 테스트 권장.

2. **빌드 단계 통합 검토**:
   - Build-level SBOM 생성을 위한 CI/CD 시스템 연계 방안 마련.

3. **커뮤니티 참여**:
   - LF Minimum Spec 개선 작업에 기여하거나 관련 논의를 적극적으로 모니터링.

4. **규제 변화 모니터링**:
   - 미국 CISA 외에도 EU 및 일본 등 글로벌 규제를 지속적으로 추적하여 대응 전략 수립.

SBOM은 단순한 기술 트렌드를 넘어 기업의 법적/보안적 안정성을 강화하는 핵심 요소로 자리잡고 있습니다.
