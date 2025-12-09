---
title: "취약점과 미래 - 다층적 소프트웨어 취약점과 대응 전략"
linkTitle: "취약점과 미래"
# weight: 10
date: 2024-11-27
type: docs
categories: ["study"]
tags: ["SBOM", "Vulnerability"]
description: 2024-11-27 Vulnerabilities and the Future – Multilayered Software Vulnerabilities and Response Tactics
---

source: https://openchainproject.org/news/2024/12/04/sbom-study-group-2024-11-27

## 목차

1. 소개
2. 발표자 소개
3. 웨비나 개요
4. Software Bill of Materials (SBOM)의 중요성
5. 공급망 위험과 취약점
6. 오픈소스 소프트웨어의 보안 성숙도
7. 취약점 해결 전략
8. Software Heritage 프로젝트 소개
9. CycloneDX의 도전과제
10. 질의응답
11. 결론

## 1. 소개

이 블로그 포스트는 [OpenChain Project](https://www.openchainproject.org/)의 SBOM Study Group 웨비나에서 발표된 "취약점과 미래 - 다층적 소프트웨어 취약점과 대응 전략"에 대한 내용을 다룹니다. 이 웨비나는 소프트웨어 공급망 보안과 취약점 관리의 중요성을 강조하며, 현재의 도전과제와 미래의 전략을 탐구합니다.

## 2. 발표자 소개

발표자인 Okada San은 [OWASP](https://owasp.org/) Japan의 전문가로, 일본 기업에서 애플리케이션 보안 강화와 소프트웨어 생산성 팀을 지원하는 보안 연구원입니다. OWASP 재단의 평생 회원으로, 20년 이상 다양한 문서 번역 작업에 참여해 왔습니다.

## 3. 웨비나 개요

이 웨비나는 소프트웨어 취약점의 다층적 특성과 이에 대한 효과적인 대응 전략을 다룹니다. 특히 [Software Bill of Materials (SBOM)](https://www.ntia.gov/page/software-bill-materials)의 중요성과 [CycloneDX](https://cyclonedx.org/)와 같은 표준의 역할에 초점을 맞춥니다. 또한 오픈소스 소프트웨어의 보안 성숙도와 공급망 위험에 대해 심도 있게 논의합니다.

## 4. Software Bill of Materials (SBOM)의 중요성

SBOM은 소프트웨어 구성 요소의 투명성을 제공하는 중요한 도구입니다. Okada San은 SBOM이 단순히 형식이 아닌 소프트웨어 구성과 투명성에 대한 정보를 교환하는 방법이라고 강조합니다. [CycloneDX](https://cyclonedx.org/)와 [SPDX](https://spdx.dev/)와 같은 표준은 이러한 정보 교환을 위한 프레임워크를 제공합니다.

## 5. 공급망 위험과 취약점

Okada San은 소프트웨어 공급망의 세 가지 주요 위험 지점을 설명합니다:

1. 공격 대상으로서의 오픈소스 소프트웨어
2. 오픈소스 의존성의 낮은 보안 성숙도
3. 업데이트를 맹목적으로 신뢰하는 사용자

이러한 위험은 [typosquatting](https://en.wikipedia.org/wiki/Typosquatting)과 같은 공격 기법을 통해 악용될 수 있으며, 이는 오픈소스 저장소의 보안 중요성을 강조합니다.

## 6. 오픈소스 소프트웨어의 보안 성숙도

[Open Source Security Foundation (OpenSSF)](https://openssf.org/)의 보고서에 따르면, 전문가의 약 3분의 1이 안전한 소프트웨어 개발 관행에 익숙하지 않다고 합니다. 이는 오픈소스 프로젝트의 보안 성숙도 향상이 시급함을 시사합니다.

## 7. 취약점 해결 전략

Okada San은 취약점 해결을 위한 여러 전략을 제시합니다:

1. 소프트웨어 구성 분석 (SCA) 수행
2. 프로젝트의 신뢰성 평가
3. 코드 품질과 업데이트 빈도 확인
4. [OWASP Dependency-Track](https://dependencytrack.org/)과 같은 도구 활용

## 8. Software Heritage 프로젝트 소개

[Software Heritage](https://www.softwareheritage.org/) 프로젝트는 다양한 저장소의 아카이브를 제공합니다. 이 프로젝트를 통해 개발자의 기여 이력과 패치의 품질을 추적할 수 있어, 프로젝트나 개발자의 신뢰성을 평가하는 데 유용합니다.

## 9. CycloneDX의 도전과제

Okada San은 [CycloneDX](https://cyclonedx.org/)의 주요 도전과제를 다음과 같이 설명합니다:

1. 공개 사례 연구의 부족
2. 호스팅된 250개 이상의 도구에 대한 재분류 필요
3. 하드웨어 제조업체의 제한적인 입력
4. 확장되는 생태계를 지원할 추가 유지 관리자 모집

## 10. 질의응답

Q: 일본 외 다른 지역의 OWASP 지부가 있나요?
A: 네, 전 세계에 많은 OWASP 지부가 있습니다. 월간 또는 분기별 모임을 통해 애플리케이션 보안 전문가들과 쉽게 교류할 수 있습니다.

Q: Software Heritage를 어떻게 활용하고 있나요?
A: 저는 주로 Protestware와 관련된 개발자를 추적하고, 그들이 다른 프로젝트에 기여하는지 확인하는 데 사용했습니다. 이를 통해 다른 위험 요소들도 발견할 수 있었습니다.

## 11. 결론

Okada San은 소프트웨어 투명성과 보안의 중요성을 강조하며 발표를 마무리합니다. 그는 모든 참가자들에게 [CycloneDX](https://cyclonedx.org/) 커뮤니티에 참여하고, 소프트웨어 투명성에 대한 논의에 기여할 것을 권장합니다.

## 요약 보고서

### 기업의 오픈소스 관리 담당자에게 주는 의미

1. **투명성의 중요성**: SBOM을 통한 소프트웨어 구성 요소의 투명성 확보가 필수적입니다.
2. **보안 성숙도 향상**: 오픈소스 프로젝트의 보안 성숙도를 평가하고 개선하는 노력이 필요합니다.
3. **공급망 위험 관리**: 오픈소스 의존성에 대한 지속적인 모니터링과 관리가 중요합니다.
4. **커뮤니티 참여**: CycloneDX와 같은 표준화 커뮤니티에 적극적으로 참여해야 합니다.
5. **도구 활용**: Software Heritage, OWASP Dependency-Track 등의 도구를 활용한 프로젝트 평가가 필요합니다.

### 고려해야 할 Action Item

1. SBOM 생성 및 관리 프로세스 구축
2. 오픈소스 의존성에 대한 정기적인 보안 감사 실시
3. 개발자 대상 보안 교육 프로그램 강화
4. CycloneDX나 SPDX와 같은 표준 채택 및 구현
5. Software Heritage를 활용한 프로젝트 및 개발자 신뢰성 평가 체계 수립
6. OWASP Dependency-Track 등의 도구를 CI/CD 파이프라인에 통합
7. 오픈소스 커뮤니티 활동 참여 및 기여 장려
8. 내부 취약점 관리 정책 및 프로세스 개선
9. 공급업체 관리 정책에 SBOM 요구사항 포함
10. 정기적인 위험 평가 및 대응 전략 수립

이러한 액션 아이템을 실행함으로써, 기업은 소프트웨어 공급망 보안을 강화하고 잠재적인 취약점에 대한 대응 능력을 향상시킬 수 있습니다.
