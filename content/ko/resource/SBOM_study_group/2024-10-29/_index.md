---
title: "SBOM 관련 다양한 규제와 가이드라인에 대한 개요"
linkTitle: "SBOM 관련 다양한 규제"
# weight: 10
date: 2024-10-29
type: docs
categories: ["study"]
tags: ["SBOM"]
description: 2024-10-29 Overview of various regulations and guidelines
---

source: https://openchainproject.org/news/2024/10/29/openchain-sbom-study-group-october-2024-10-23-full-recording

## 목차

1. 세미나 개요
2. 발표 내용
3. 질의응답
4. 결론 및 향후 계획

## 1. 세미나 개요

### 제목
OpenChain SBOM 스터디 그룹 - 2024년 10월 세미나

### 발표자 소개
이번 세미나의 발표자는 [도시바](https://www.toshiba.co.jp/)의 Ninjouji-san입니다. 도시바는 일본의 대표적인 다국적 전자 기업으로, 오픈소스 및 SBOM 관련 분야에서 풍부한 경험을 보유하고 있습니다.

### 웨비나 소개와 목적
이번 [OpenChain](https://www.openchainproject.org/) SBOM 스터디 그룹 세미나는 다양한 규제와 가이드라인에 대한 개요를 제공하고, 향후 미팅에서 필요한 사항들에 대해 논의하는 것을 목적으로 합니다. [SBOM(Software Bill of Materials)](https://www.cisa.gov/sbom)은 소프트웨어 구성 요소를 투명하게 관리하고 보안 취약점을 효과적으로 대응하기 위한 중요한 도구로 주목받고 있습니다.

## 2. 발표 내용

### SBOM 관련 규제 및 가이드라인 개요

Ninjouji-san은 SBOM과 관련된 주요 규제 및 가이드라인에 대해 상세히 설명했습니다. 이는 다음과 같은 내용을 포함합니다:

1. [미국 사이버보안 및 기반시설 보안국(CISA)](https://www.cisa.gov/)의 SBOM 요구사항
2. [유럽연합(EU)](https://european-union.europa.eu/)의 사이버 복원력 법안
3. [일본 경제산업성(METI)](https://www.meti.go.jp/)의 소프트웨어 관리 지침

각 규제와 가이드라인의 주요 특징, 적용 범위, 기업에 미치는 영향 등을 자세히 다루었습니다.

### SBOM 도구 및 표준 포맷

발표자는 SBOM 생성 및 관리를 위한 다양한 도구들을 소개했습니다:

1. [SPDX](https://spdx.dev/): 리눅스 재단에서 개발한 오픈소스 라이선스 및 보안 정보 교환 표준
2. [CycloneDX](https://cyclonedx.org/): OWASP에서 개발한 경량화된 SBOM 표준
3. [SWID](https://csrc.nist.gov/projects/Software-Identification-SWID): 소프트웨어 식별 태그 표준

각 도구의 특징, 장단점, 적용 사례 등을 비교 분석하여 참가자들의 이해를 도왔습니다.

### SBOM 구현 전략

Ninjouji-san은 기업이 SBOM을 효과적으로 구현하기 위한 전략을 제시했습니다:

1. 소프트웨어 공급망 매핑
2. SBOM 생성 자동화 도구 선택
3. 지속적인 모니터링 및 업데이트 프로세스 수립
4. 보안 취약점 관리와 SBOM 연계

이러한 전략을 통해 기업은 규제 준수뿐만 아니라 소프트웨어 품질 및 보안 향상을 도모할 수 있습니다.

## 3. 질의응답

세미나 참가자들로부터 다양한 질문이 제기되었습니다:

Q: SBOM 구현 시 가장 큰 도전 과제는 무엇인가요?
A: Ninjouji-san은 레거시 시스템에 대한 SBOM 생성과 서드파티 소프트웨어 컴포넌트의 정확한 추적이 주요 과제라고 답변했습니다.

Q: 중소기업도 SBOM을 도입해야 하나요?
A: 발표자는 기업 규모와 관계없이 SBOM 도입이 중요하며, 오픈소스 도구를 활용하여 비용 효율적으로 시작할 수 있다고 조언했습니다.

Q: SBOM과 [DevSecOps](https://www.redhat.com/ko/topics/devops/what-is-devsecops)의 연계 방안은?
A: SBOM을 CI/CD 파이프라인에 통합하여 지속적인 보안 검증을 수행할 수 있다고 설명했습니다.

## 4. 결론 및 향후 계획

Ninjouji-san은 SBOM이 소프트웨어 공급망 보안의 핵심 요소로 자리잡고 있음을 강조하며 세미나를 마무리했습니다. 향후 스터디 그룹 미팅에서는 다음과 같은 주제를 다룰 예정입니다:

1. SBOM 생성 자동화 사례 연구
2. 클라우드 네이티브 환경에서의 SBOM 관리
3. SBOM과 취약점 관리 연계 방안

참가자들은 이번 세미나를 통해 SBOM의 중요성과 실제 구현 방안에 대한 깊이 있는 이해를 얻을 수 있었습니다.

---

## 요약 보고서

### 기업의 오픈소스 관리 담당자에게 주는 의미

1. **규제 대응 필요성**: SBOM은 미국, EU, 일본 등 주요국의 사이버보안 규제 대응에 필수적인 요소로 자리잡고 있습니다. 오픈소스 관리 담당자는 이러한 규제 동향을 주시하고 선제적으로 대응해야 합니다.

2. **소프트웨어 품질 향상**: SBOM을 통해 사용 중인 오픈소스 컴포넌트를 정확히 파악하고 관리함으로써 전반적인 소프트웨어 품질을 향상시킬 수 있습니다.

3. **보안 취약점 관리 강화**: SBOM은 사용 중인 오픈소스 컴포넌트의 취약점을 신속하게 식별하고 대응할 수 있게 해줍니다. 이는 기업의 사이버보안 태세를 강화하는 데 크게 기여합니다.

4. **공급망 투명성 확보**: SBOM을 통해 소프트웨어 공급망의 투명성을 높일 수 있어, 고객 신뢰도 향상 및 리스크 관리에 도움이 됩니다.

5. **DevSecOps 통합**: SBOM을 개발 및 운영 프로세스에 통합함으로써 보안을 개발 초기 단계부터 고려하는 DevSecOps 문화를 촉진할 수 있습니다.

### 고려해야 할 Action Item

1. **SBOM 생성 도구 평가 및 선택**: SPDX, CycloneDX 등 다양한 SBOM 표준과 도구를 평가하고, 기업의 환경에 가장 적합한 솔루션을 선택합니다.

2. **자동화 프로세스 구축**: CI/CD 파이프라인에 SBOM 생성 및 검증 과정을 자동화하여 통합합니다.

3. **교육 및 인식 제고**: 개발자, 보안 팀, 법무 팀 등 관련 부서 직원들에게 SBOM의 중요성과 활용 방법에 대한 교육을 실시합니다.

4. **정책 및 가이드라인 수립**: SBOM 관리에 대한 조직 내 정책과 가이드라인을 수립하고 이를 문서화합니다.

5. **취약점 관리 프로세스 개선**: SBOM 정보를 활용하여 취약점 스캐닝 및 패치 관리 프로세스를 개선합니다.

6. **공급업체 관리 강화**: 서드파티 소프트웨어 공급업체에 SBOM 제공을 요구하고, 이를 평가 기준에 포함시킵니다.

7. **규제 준수 모니터링**: SBOM 관련 국내외 규제 동향을 지속적으로 모니터링하고, 필요시 신속히 대응합니다.

8. **SBOM 공유 체계 구축**: 고객 및 파트너사와 SBOM을 안전하게 공유할 수 있는 체계를 구축합니다.

이러한 액션 아이템을 체계적으로 이행함으로써, 기업은 SBOM을 효과적으로 도입하고 활용하여 소프트웨어 공급망 보안을 강화할 수 있을 것입니다.