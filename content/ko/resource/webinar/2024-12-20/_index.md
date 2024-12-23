---
title: "DeviceCode - 크라우드소싱 기반 디바이스 데이터 파서"
linkTitle: "DeviceCode"
# weight: 10
date: 2024-12-20
type: docs
categories: ["webinar"]
tags: ["DeviceCode"]
description: 2024-12-20 DeviceCode - A Crowdsourced Device Data Parser
---

source: https://openchainproject.org/news/2024/12/20/openchain-webinar-devicecode-a-crowdsourced-device-data-parser


## 목차
1. 발표자 소개
2. 웨비나 소개와 목적
3. DeviceCode 프로젝트 배경
4. DeviceCode의 구현 및 기능
5. 데이터 수집 및 처리 방법
6. 현재의 한계점과 향후 과제
7. 질의응답

## 1. 발표자 소개

이번 웨비나의 발표자는 [Armijn Hemel](https://www.linkedin.com/in/armijn/)입니다. 그는 [Tjaldur Software Governance Solutions](https://www.tjaldur.nl/)의 소유주로, 오픈소스 라이선스 컴플라이언스 엔지니어링과 출처 연구 분야의 전문 컨설팅 회사를 운영하고 있습니다. Hemel은 오픈소스 라이선스 컴플라이언스 분야에서 오랜 경험을 가지고 있으며, [GPL-violations.org](https://gpl-violations.org/) 프로젝트와 [Binary Analysis Tool](https://github.com/armijnhemel/binaryanalysis) 및 [Binary Analysis Next Generation](https://github.com/armijnhemel/binaryanalysis-ng) 도구 개발에 참여한 바 있습니다.

## 2. 웨비나 소개와 목적

이번 웨비나는 [OpenChain Project](https://www.openchainproject.org/)의 14번째 웨비나로, 지난 4년간 90회 이상의 웨비나를 진행해왔습니다. 이번 세션에서는 Armijn Hemel이 개발 중인 'DeviceCode'라는 프로젝트에 대해 소개합니다. DeviceCode는 다양한 위키에서 크라우드소싱된 디바이스 데이터를 파싱하고 정리하는 도구입니다.

## 3. DeviceCode 프로젝트 배경

### 3.1 시장의 현실

전자제품 시장에서 많은 소비자들은 브랜드에 따라 제품의 품질이 다르다고 생각합니다. 하지만 실제로는 여러 브랜드의 제품들이 동일한 ODM(Original Design Manufacturer)에서 생산되거나 같은 칩셋 제조업체의 소프트웨어를 사용하는 경우가 많습니다. 이는 마치 주유소에서 판매하는 휘발유가 실제로는 같은 정제소에서 생산된 것과 비슷한 상황입니다.

### 3.2 취약점 보고의 문제점

현재 CVE(Common Vulnerabilities and Exposures)는 개별 디바이스에 초점을 맞추고 있어, 동일한 취약점을 가진 다른 제품들이 간과되는 경우가 많습니다. 예를 들어, CVE-2006-2560과 CVE-2006-2561은 서로 다른 벤더의 제품에 대한 동일한 취약점을 설명하고 있지만, 실제로는 같은 ODM에서 생산된 제품일 가능성이 높습니다.

### 3.3 정보 접근의 어려움

디바이스의 하드웨어 정보, 특히 사용된 ODM이나 칩셋에 대한 정보는 쉽게 접근할 수 없습니다. 기업들은 이러한 정보를 공개하지 않는 경향이 있어, 제품의 실제 내부 구성을 파악하기 어렵습니다.

## 4. DeviceCode의 구현 및 기능

### 4.1 데이터 소스

DeviceCode는 다음과 같은 다양한 소스에서 데이터를 수집합니다:

- [Tech Info Depot](https://techinfodepot.fandom.com/wiki/TechInfoDepot_Wiki)
- [OpenWrt Table of Hardware](https://openwrt.org/toh/start)
- [FCC](https://www.fcc.gov/) 문서

### 4.2 주요 기능

DeviceCode는 다음과 같은 기능을 제공합니다:

- 위키 데이터 파싱 및 정리
- FCC 문서 분석
- 데이터 통합 및 JSON 형식으로 출력
- 텍스트 기반 UI를 통한 데이터 브라우징
- 브랜드, ODM, 칩셋, 설치된 소프트웨어 등으로 검색 가능

## 5. 데이터 수집 및 처리 방법

### 5.1 위키 데이터 처리

Hemel은 위키의 덤프 파일을 다운로드하여 파이썬 스크립트로 처리합니다. 이 과정에서 데이터 정리와 통합 작업이 이루어집니다. 위키 사용자들이 데이터를 일관성 없이 입력하는 경우가 많아 이를 정리하는 작업이 필요합니다.

### 5.2 FCC 문서 분석

FCC 웹사이트에서 제공하는 문서들을 다운로드하여 분석합니다. 이 문서들에는 사용자 매뉴얼 등이 포함되어 있어, GPL 라이선스 제안 등의 정보를 추출할 수 있습니다.

### 5.3 데이터 통합

위키 데이터와 FCC 문서에서 얻은 정보를 통합하여 하나의 JSON 파일로 출력합니다. 이 과정에서 서로 다른 소스의 정보를 비교하고 통합하는 작업이 이루어집니다.

## 6. 현재의 한계점과 향후 과제

### 6.1 데이터의 완전성

현재 DeviceCode의 데이터는 주로 위키와 FCC 문서에 의존하고 있어 완전하지 않습니다. 향후 더 많은 데이터 소스를 통합하고, 기업들이 자발적으로 정보를 제공할 수 있도록 하는 것이 과제입니다.

### 6.2 상업화 가능성

Hemel은 현재 이 프로젝트의 상업적 가치에 대해 확신하지 못하고 있습니다. 하지만 [inlets foundation](https://inlets.dev/)의 지원을 받아 개발을 진행 중이며, 향후 더 많은 투자를 유치할 방안을 모색 중입니다.

### 6.3 통합 및 확장

DeviceCode는 [AboutCode](https://aboutcode.org/) 프로젝트의 일부로 통합될 예정입니다. 이를 통해 [ScanCode](https://scancode-toolkit.readthedocs.io/en/latest/), [VulnerableCode](https://github.com/nexB/vulnerablecode) 등 다른 오픈소스 도구들과의 연계가 가능해질 것으로 기대됩니다.

## 7. 질의응답

Q: 위키에 정보를 입력하는 사람들의 동기는 무엇인가요?
A: 일부 사람들은 데이터 수집에 대한 강박적인 취미를 가지고 있습니다. 또한 자신의 디바이스 내부를 알고 싶어 하거나, 대체 펌웨어를 만들고자 하는 사람들도 있습니다.

Q: 이 데이터를 상업적으로 활용할 수 있는 방안이 있나요?
A: 현재로서는 상업적 가치에 대해 확신하지 못하고 있습니다. 하지만 수리 업체들이 이러한 정보에 관심을 가질 수 있을 것 같습니다.

Q: JSON 형식의 데이터 구조는 문서화되어 있나요?
A: GitHub 저장소에 문서화가 되어 있어 쉽게 통합할 수 있을 것입니다. 또한 데이터셋도 제공하고 있어 바로 사용해볼 수 있습니다.

---

## 요약 보고서

### 기업의 오픈소스 관리 담당자에게 주는 의미

1. **공급망 투명성 향상**: DeviceCode는 기업이 사용하는 디바이스의 실제 구성 요소와 소프트웨어를 더 잘 이해할 수 있게 해줍니다. 이는 [SBOM(Software Bill of Materials)](https://www.ntia.gov/page/software-bill-materials) 관리에 도움이 될 수 있습니다.

2. **취약점 관리 개선**: 특정 디바이스의 취약점이 발견되었을 때, 유사한 다른 디바이스들도 같은 취약점을 가지고 있을 가능성을 쉽게 파악할 수 있습니다. 이는 보안 관리를 더욱 효과적으로 만들어줍니다.

3. **규제 준수 지원**: [EU의 CRA(Cyber Resilience Act)](https://digital-strategy.ec.europa.eu/en/library/cyber-resilience-act)나 [제품 책임 지침](https://ec.europa.eu/info/business-economy-euro/doing-business-eu/contract-rules/product-liability_en) 등의 규제 준수를 위한 기초 자료로 활용될 수 있습니다.

4. **비용 절감**: 동일한 하드웨어나 소프트웨어를 사용하는 디바이스들을 파악함으로써, 중복 투자를 줄이고 효율적인 관리가 가능해집니다.

### 고려해야 할 Action Item

1. **DeviceCode 프로젝트 모니터링**: 이 프로젝트의 발전 상황을 지속적으로 모니터링하고, 기업에 적용 가능한 시점을 파악합니다.

2. **데이터 기여 검토**: 기업이 보유한 디바이스 정보를 DeviceCode 프로젝트에 기여할 수 있는지 검토합니다. 이는 전체 생태계의 발전에 도움이 될 수 있습니다.

3. **내부 디바이스 인벤토리 구축**: DeviceCode의 접근 방식을 참고하여, 기업 내부에서 사용 중인 디바이스들의 상세 정보를 체계적으로 관리하는 시스템을 구축합니다.

4. **보안 팀과의 협력**: DeviceCode에서 제공하는 정보를 활용하여, 보안 팀과 협력하여 잠재적 취약점을 사전에 파악하고 대응 방안을 마련합니다.

5. **공급업체 관리 강화**: DeviceCode를 통해 얻은 정보를 바탕으로, 공급업체들에게 더 상세한 디바이스 정보를 요구하고, 이를 계약 조건에 반영하는 것을 고려합니다.

6. **오픈소스 컴플라이언스 프로세스 개선**: DeviceCode가 제공하는 정보를 활용하여, 사용 중인 디바이스들의 오픈소스 소프트웨어 현황을 더 정확히 파악하고, 이에 따른 컴플라이언스 프로세스를 개선합니다.

7. **정책 입안자들과의 소통**: DeviceCode와 같은 프로젝트의 중요성을 정책 입안자들에게 알리고, 디바이스 정보의 투명성을 높이기 위한 정책적 지원을 요청합니다.
