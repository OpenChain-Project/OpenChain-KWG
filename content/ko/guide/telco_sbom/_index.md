---
title: "통신 산업 소프트웨어 공급망 보안 가이드: OpenChain Telco SBOM 가이드 안내서"
linkTitle: "Telco SBOM 가이드 안내서"
weight: 70
type: docs
description: >
  Technical Guidelines on Software Bill of Materials (SBOM)
---

{{% pageinfo %}}

본 안내서는 통신(Telco) 산업의 기업들이 ‘[OpenChain Telco SBOM 가이드](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_KR.md)’를 실제 업무에 성공적으로 적용할 수 있도록, 단계별 실행 계획과 주체별 활용 시나리오 등 구체적인 세부 사항을 제시합니다. 

이 안내서를 통해 조직의 SBOM 관리 체계를 효율적으로 구축하고, 나아가 소프트웨어 공급망 보안을 한층 더 강화할 수 있습니다.

**Author : [OpenChain Korea Work Group](https://openchain-project.github.io/OpenChain-KWG/) / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

{{% /pageinfo %}}


## 1장: 왜 지금, 통신 (Telco) 산업에 SBOM이 필요한가?

### 1.1. 글로벌 소프트웨어 공급망의 변화와 새로운 위협

#### 1.1.1. 5G, 클라우드 네이티브 환경에서의 오픈소스 의존성 심화

[통신 산업](https://seo.goover.ai/report/202504/go-public-report-ko-808587ee-afb5-4b01-8dd2-0d5f3e4ee352-0-0.html)은 현재 전례 없는 디지털 혁신의 물결을 맞고 있습니다. 5G 네트워크 구축, 클라우드 네이티브 기술 도입, IoT 기기의 폭발적 증가로 인해 소프트웨어의 복잡성과 상호 의존성이 기하급수적으로 늘어나고 있습니다.

현재 90% 이상의 소프트웨어 개발 과정에서 오픈소스 소프트웨어가 활용되고 있으며, 특히 통신 인프라에서는 OPC UA, MQTT와 같은 오픈소스 [통신 프로토콜](https://www.thelec.kr/news/articleView.html?idxno=33454)이 실시간 데이터 교환의 핵심 역할을 담당하고 있습니다. 5G 네트워크의 복잡한 아키텍처는 수천 개의 소프트웨어 컴포넌트로 구성되며, 이들 간의 [의존성 관계](https://www.oss.kr/oss_guide/show/7d7d50dd-816f-410d-9bbb-682683a26181)는 더욱 복잡해지고 있습니다.

#### 1.1.2. Log4j 사태로 본 공급망 공격의 파급력과 교훈

2021년 12월 공개된 Log4Shell([Log4j 취약점](https://www.ibm.com/kr-ko/think/topics/log4j))은 통신 산업을 포함한 전 세계 소프트웨어 생태계에 엄청난 충격을 주었습니다. 이 취약점은 다음과 같은 심각한 문제점들을 드러냈습니다:

- **광범위한 영향력:** [Log4j](https://blog.cloudflare.com/ko-kr/inside-the-log4j2-vulnerability-cve-2021-44228/)는 전 세계에서 가장 널리 배포된 오픈소스 프로그램 중 하나로, 수백만 개의 시스템이 영향을 받았습니다. IBM의 [X-Force Threat Intelligence Index](https://www.ibm.com/kr-ko/reports/threat-intelligence)에 따르면, 2020년과 2021년 사이에 취약점이 34% 증가했으며, 이는 주로 [Log4Shell에 기인](https://www.ibm.com/kr-ko/think/topics/log4j)한 것으로 나타났습니다.
- **탐지와 대응의 어려움:** 많은 기업들이 자사 시스템에서 Log4j 프로그램을 사용하는 서드파티(3rd-party) 제품이 있는지 여부를 식별하는 것 자체에 많은 시간이 소요되었습니다. 취약점 공개 2년이 지난 시점에도 Log4j 사용 애플리케이션의 38%가 여전히 취약점을 갖고 있는 것으로 [파악되었습니다](https://www.epnc.co.kr/news/articleView.html?idxno=300506).
- **연쇄적 취약점 발견:** 최초 취약점(CVE-2021-44228) 발견 이후 [7건의 추가 취약점](https://m.boannews.com/html/detail.html?idx=105394)이 발견되어, 지속적인 모니터링과 업데이트의 중요성을 보여주었습니다.

#### 1.1.3. SBOM을 통한 소프트웨어 투명성 확보의 중요성 대두

Log4j 사태는 소프트웨어 구성요소에 대한 가시성 부족이 얼마나 위험한지를 명확히 보여주었습니다. 이를 계기로 전 세계 각국 정부와 산업계는 [소프트웨어 공급망의 투명성 확보를 위한 SBOM(Software Bill of Materials) 도입](https://www.igloo.co.kr/security-information/sbom%EC%9D%84-%EC%9D%B4%EC%9A%A9%ED%95%9C-%EA%B3%B5%EA%B8%89%EB%A7%9D-%EB%B3%B4%EC%95%88/)을 적극 검토하기 시작했습니다.

미국 바이든 행정부는 2021년 5월 사이버 보안 강화를 위한 행정명령을 통해 SW 공급망 보안 강화를 지시했으며, 우리나라 정부도 같은 해 2월 발표한 K-사이버 방역 추진 전략에서 SW 개발·공급망 보안 강화 계획을 밝혔습니다.

### 1.2. 통신 산업이 마주한 특수성과 당면 과제

#### 1.2.1. 복잡한 생태계: 장비-솔루션-서비스 간의 다층적 공급망 구조

통신 산업은 여러 층위로 구성된 복잡한 공급망 구조를 가지고 있습니다:

- **하드웨어 층:** 기지국, 라우터, 스위치 등 네트워크 장비 제조사들이 각각의 펌웨어와 내장 소프트웨어를 공급합니다.
- **소프트웨어 층:** SDN/NFV, 네트워크 관리, 보안 솔루션 등 다양한 네트워크 소프트웨어 공급사들이 솔루션을 제공합니다.
- **서비스 층:** 통신사들이 최종 사용자에게 5G, 클라우드, IoT 등의 서비스를 제공합니다.

이러한 다층적 구조에서 하나의 취약점이 전체 네트워크에 미치는 파급효과는 매우 클 수 있습니다.

#### 1.2.2. 높은 수준의 안정성 및 보안 요구사항

통신 인프라는 국가 핵심 인프라로 분류되어 매우 높은 수준의 보안과 안정성이 [요구됩니다](https://www.dt.co.kr/article/10590709). 특히 5G 네트워크는 다음과 같은 새로운 보안 도전에 직면하고 있습니다:

- **IoT 기기의 대규모 연결:** 5G 환경에서는 수십억 개의 IoT 기기가 연결되어, 각각이 잠재적인 공격 진입점이 될 수 있습니다.
- **엣지 컴퓨팅의 분산된 특성:** 네트워크 엣지에서 데이터 처리가 이루어지면서, 중앙 집중식 보안 관리가 어려워졌습니다.
- **네트워크 슬라이싱의 격리 문제:** 하나의 슬라이스에서 발생한 보안 문제가 다른 슬라이스로 확산될 위험이 있습니다.

#### 1.2.3. 국내외 규제 및 고객사의 SBOM 요구 증대

최근 국내외에서 SBOM 제공을 요구하는 사례가 급격히 증가하고 있습니다:

- **정부 및 공공기관:** 기상청 등 공공기관에서 인프라 도입사업 공고 시 [SBOM 제출을 요구](https://kisia.or.kr/bucket/uploads/2025/03/11/%5Bkisia%5D%20sbom%20%EB%8F%84%EA%B5%AC%20%EC%8B%A4%EC%A6%9D%20%EA%B2%B0%EA%B3%BC%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf)하는 경우가 생겨나고 있습니다.
- **글로벌 규제 동향:**
    - 미국: 연방 정부에 납품되는 모든 소프트웨어에 대해 SBOM 제공을 [의무화했습니다](https://seo.goover.ai/report/202409/go-public-report-ko-d69ad755-7cc7-441a-9899-de0ddd66ea3b-0-0.html).
    - EU: [사이버복원력법(CRA)을 통해 SBOM 의무화를 추진](https://www.oss.kr/oss_guide/show/f02cd419-df61-4f00-9149-e50c901ce06e)하고 있습니다.
    - 일본, 한국 등 주요국들도 유사한 정책을 검토 중입니다.
- **고객사 요구:** 대형 통신사, 장비사, 네트워크 솔루션 기업들이 소프트웨어 납품 시 SBOM 제공을 계약 조건으로 명시하는 경우가 증가하고 있습니다.
- **산업 동향(Industry Momentum):** **OpenChain 프로젝트**와 같은 산업 주도 이니셔티브는 이러한 증가하는 요구를 현장에서부터 해결하기 위해 합의를 형성하고, 통신 산업 특화의 실용적인 SBOM 가이드를 제안하고 있습니다.  
- **향후 표준화(Future Standardization):** ETSI와 같은 공식 **표준 개발 기구(SDO)**들이 향후 이 주제를 보다 공식적으로 다룰 것으로 예상되며, 이는 EU의 사이버 복원력 법안(CRA)과 같은 규제에 대응하여 산업계 그룹들이 수행한 작업을 기반으로 할 수 있습니다.


이러한 변화는 단순한 추세가 아니라, 통신 산업의 소프트웨어 공급망 보안을 근본적으로 혁신해야 할 필요성을 보여주는 명확한 신호입니다. 더 이상 SBOM은 선택사항이 아니라, 통신 산업에서 생존하고 경쟁력을 유지하기 위한 필수 요건이 되었습니다.

## 2장: OpenChain Telco SBOM 가이드란?

* 영문(원본): [OpenChain Telco SBOM Guide 1.1](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)
* 국문: [OpenChain Telco SBOM 가이드 1.1](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_KR.md)

### 2.1. 가이드의 탄생 배경과 핵심 목적

#### 2.1.1. 통신 산업의 SBOM 파편화 문제 해결

통신 산업은 전 세계적으로 가장 복잡하고 상호 연결된 소프트웨어 생태계 중 하나입니다. 5G 인프라, 클라우드 네이티브 솔루션, 네트워크 가상화 기술 등이 융합되면서, [각 조직마다 서로 다른 SBOM 작성 방식과 요구사항을 적용](https://openchainproject.org/news/2024/07/30/openchain-telco-sbom-guide-general-availability)하게 되었습니다.

이러한 파편화는 다음과 같은 심각한 문제들을 야기했습니다:

- **호환성 부족:** 통신사 A에서 요구하는 SBOM 포맷이 장비사 B에서 제공하는 포맷과 일치하지 않아, 추가적인 변환 작업과 비용이 발생했습니다.
- **중복 투자:** 각 조직이 서로 다른 도구와 프로세스를 개발하면서, 업계 전체적으로 비효율적인 중복 투자가 이루어졌습니다.
- **리스크 관리 한계:** 표준화되지 않은 SBOM으로 인해 공급망 전반에 걸친 취약점 추적과 신속한 대응이 어려워졌습니다.

OpenChain 프로젝트는 이러한 문제를 해결하기 위해 2023년 Telco 워킹 그룹을 구성하고, [통신 산업 특화 SBOM 가이드 개발](https://www.scanoss.com/post/the-openchain-telco-sbom)에 착수했습니다.

#### 2.1.2. 상호운용성, 반복성, 효율성 확보를 위한 표준 제시

OpenChain Telco SBOM 가이드는 통신 산업의 특수성을 반영하면서도 글로벌 표준과의 호환성을 보장하는 실용적 접근방식을 제시합니다. 가이드의 핵심 목적은 다음과 같습니다:

- **반복성(Repeatability) 확보:** 동일한 소프트웨어에 대해 언제, 어디서, 누가 작성하더라도 일관된 품질의 SBOM을 생성할 수 있도록 명확한 기준을 제시합니다.
- **도구 및 프로세스 효율화:** 다양한 SBOM 생성 도구들이 가이드에 따라 표준화된 결과물을 생성할 수 있도록 지원하여, 조직 간 호환성을 보장합니다.
- **공급망 투명성 강화:** SBOM을 생산하고 소비하는 모든 주체가 동일한 기준으로 소프트웨어 구성요소 정보를 교환할 수 있도록 합니다.

### 2.2. 가이드의 3대 핵심 원칙

#### 2.2.1. **표준성:** 국제 표준(SPDX) 기반의 데이터 포맷 및 구조

[OpenChain Telco SBOM 가이드](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_EN.md)는 [ISO/IEC 5962:2021](https://www.iso.org/standard/81870.html)로 공식 인증받은 [SPDX(Software Package Data Exchange)](https://www.iso.org/standard/81870.html)표준을 데이터 포맷의 기반으로 채택했습니다 이는 다음과 같은 전략적 이유에서 비롯됩니다:

- **국제 표준 준수:** SPDX는 2021년 9월 국제표준화기구(ISO)와 국제전기기술위원회(IEC)에 의해 공식 채택된 유일한 SBOM 국제 표준입니다.
- **기술적 우위성:** SPDX는 라이선스 컴플라이언스 측면에서 CycloneDX보다 더 많은 기능을 제공하며, 사람이 읽을 수 있는(human-readable) 포맷을 지원합니다.
- **산업계 검증:** Intel, Microsoft, Siemens, Sony, Nokia 등 글로벌 기업들이 SPDX를 활용하여 소프트웨어 공급망 관리를 수행하고 있어, 실무적 검증이 완료된 표준입니다.

가이드는 **SPDX 2.2 또는 2.3 버전**을 준수하도록 요구하며, **Tag:Value 또는 JSON 포맷**으로 SBOM을 제공할 것을 명시합니다.

#### 2.2.2. **명확성:** 실무 중심의 필수 필드 및 제공 방식 정의

OpenChain Telco SBOM 가이드는 [NTIA(미국 통신정보관리청)의 최소 요구사항](https://www.ntia.gov/blog/2021/ntia-releases-minimum-elements-software-bill-materials)을 기반으로 하되, 통신 산업의 실무 요구를 반영한 명확한 기준을 제시합니다:

**필수 SPDX 요소 명시:**

- 문서 생성 정보: SPDXVersion, DataLicense, Creator, Created 등
- 패키지 정보: PackageName, PackageVersion, PackageSupplier, PURL 등
- 관계 정보: DESCRIBES, CONTAINS 등 의존성 관계

**제공 시점과 방식 구체화:**

- **제공 시점:** 소프트웨어 제공 시점과 동시에 SBOM 제공 필수
- **제공 방식:** 소프트웨어 패키지 내 임베딩 원칙, 기술적 불가능 시 웹 호스팅 허용(최소 18개월 접근 보장)

**SBOM 생성 정보 의무화:**

- Creator 필드에 조직명과 도구명/버전 명시 필수
- CreatorComment 필드에 CISA 정의 SBOM Type(Design, Source, Build 등) 포함 필수

#### 2.2.3. **포괄성:** 간접 의존성(Transitive Dependencies)까지 포함하는 완전성 추구

현대 소프트웨어는 수많은 간접 의존성을 가지며, 이는 보안 취약점의 주요 경로가 됩니다. Log4j 사태에서 볼 수 있듯이, 간접 의존성을 통한 취약점 전파는 예측하기 어렵고 광범위한 피해를 야기할 수 있습니다.

OpenChain Telco SBOM 가이드는 이러한 현실을 반영하여 **포괄적 범위**를 요구합니다:

- **오픈소스 전체 포함:** 제품과 함께 제공되는 모든 오픈소스 소프트웨어와 그 간접 의존성(transitive dependencies) 필수 포함
- **상용 컴포넌트 권장:** 모든 상용(Commercial) 컴포넌트도 포함할 것을 권장하며, 미포함 시 "known unknowns"(알려진 미포함 항목)로 명시
- **컨테이너 환경 지원:** 컨테이너에 설치된 패키지, 복사/다운로드된 컴포넌트, 빌드 의존성까지 모두 포함

### 2.3. 한눈에 보는 가이드 주요 요구사항 요약

다음 표는 OpenChain Telco SBOM 가이드의 핵심 요구사항을 요약한 것입니다:

| 구분 | 요구사항 | 세부 내용 |
| --- | --- | --- |
| **데이터 포맷** | SPDX 2.2/2.3 필수 | Tag:Value 또는 JSON 포맷 |
| **필수 요소** | NTIA 최소 요구사항 + α | 문서생성정보, 패키지정보, 관계정보 |
| **제공 시점** | 소프트웨어 제공과 동시 | 늦어도 소프트웨어 제공 시점까지 |
| **제공 방식** | 패키지 내 임베딩 원칙 | 불가능 시 웹호스팅(18개월 보장) |
| **SBOM 범위** | 오픈소스 + 간접의존성 | 상용 컴포넌트 권장, 미포함시 known unknowns 명시 |
| **생성 정보** | 조직명, 도구명/버전 | CISA SBOM Type 포함 |
| **검증** | 디지털 서명 권장 | Sigstore 등 활용 |

이러한 체계적이고 실무 중심적인 접근방식을 통해 OpenChain Telco SBOM 가이드는 통신 산업의 소프트웨어 공급망 관리 수준을 한 단계 끌어올리는 든든한 기반을 제공합니다. Nokia와 같은 글로벌 통신 장비사가 이미 이 가이드를 내부 프레임워크의 기초로 채택한 것은, 가이드의 실용성과 효과성을 입증하는 사례라 할 수 있습니다.

## 3장: 가이드 준수가 가져오는 비즈니스 가치와 기대 효과

### 3.1. 공급망 리스크 관리 강화

#### 3.1.1. 사전 취약점 분석 및 신속한 보안 패치 대응

OpenChain Telco SBOM 가이드를 준수하면 취약점 대응 시간을 획기적으로 단축할 수 있습니다. 최근 연구에 따르면, SBOM을 활용한 성숙한 취약점 관리 체계를 갖춘 조직은 취약점 대응 시간을 30% 단축하는 것으로 [나타났습니다](https://www.cybeats.com/blog/pci-dss-4-0-sboms-a-2025-readiness-guide).

Log4j 사태가 발생했을 때, SBOM을 보유한 조직은 영향받는 시스템을 수십 분 내에 식별할 수 [있었던](https://www.pivotpointsecurity.com/a-software-bill-of-materials-sbom-benefits-both-vendors-and-users/) 반면, SBOM이 없던 조직은 수주에서 수개월이 [소요되었습니다](https://www.fortressinfosec.com/blog/cost-of-cyber-attacks-on-supply-chains). 한 소프트웨어 벤더는 "SBOM 기능만으로도 240시간을 쉽게 절약할 수 있었을 것"이라고 [증언했습니다](https://pure.tudelft.nl/ws/portalfiles/portal/217100048/3634737.3637659.pdf).

일본 METI의 실증 연구에서는 의료기기 부문에서 SBOM을 활용한 취약점 관리가 수동 관리 대비 약 70%의 관리 업무량을 절감했다고 [보고했습니다](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf).

#### 3.1.2. 오픈소스 라이선스 컴플라이언스 자동화 및 리스크 최소화

표준화된 SPDX 포맷을 통해 각 컴포넌트의 라이선스 정보를 명확히 관리함으로써, 라이선스 위반으로 인한 **소송 및 과징금 리스크를 선제적으로 차단**할 수 있습니다.

[SBOM 도구를 활용](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf)하면 **라이선스 관리의 효율성**이 크게 향상됩니다. 각 라이선스의 내용 표시, 주의가 필요한 라이선스에 대한 경고 등 컴플라이언스 기능을 자동화하여 관리 비용을 대폭 줄일 수 있습니다.

### 3.2. 비즈니스 경쟁력 및 신뢰도 향상

#### 3.2.1. 고객사 및 파트너사의 SBOM 요구에 선제적 대응

현재 많은 SI(System Integrator) 및 SV(Software Vendor) 기업이 'SBOM 도입을 통한 규제·산업표준 준수'와 '신뢰 향상'을 [주요 인센티브로 인식](https://runsafesecurity.com/blog/sbom-requirements-global-guide/)하고 있습니다.

SBOM 제공 역량을 갖춘 조직은 다음과 같**은 명확한 경쟁 우위를 확보할 수 있습니다:**

- **보안 중시 고객과의 계약에서 차별화된 포지션 [확보](https://anchore.com/blog/how-to-respond-when-your-customers-require-an-sbom/)**
- **정부 기관 및 대형 기업 계약에서 필수 조건 [충족](https://www.opswat.com/resources/guides/sbom-in-2025-a-strategic-asset-not-just-a-list)**
- **EU CRA, 미국 행정명령 14028 등 글로벌 규제 대응 역량** [입증](https://cycode.com/blog/software-bill-of-materials/)

#### 3.2.2. RFP, 계약, 공공 입찰 시 수주 경쟁력 확보

이미 다수의 통신사와 공공기관이 SBOM 제출을 입찰 필수 조건으로 명시하고 있습니다. 한 API 관리 벤더 CEO는 "대화 초기에 SBOM을 제시할 수 있다는 것은 완전히 다른 차원의 대화를 가능하게 하며, CISO들이 '이것을 시도해보자'고 말할 수 있게 해준다"고 증언했습니다.

표준화된 SBOM 제공 능력은 가시적인 가산점 요소가 되어, 보안과 투명성을 중시하는 고객들과의 판매 주기를 단축시키는 효과를 가져옵니다.

#### 3.2.3. 글로벌 시장 진출을 위한 표준 준수 역량 입증

OpenChain Telco SBOM 가이드는 ISO/IEC 5962:2021(SPDX) 기반으로 작성되어, 국제 조달 및 수출 시 별도 형식 변환 없이 그대로 제출 [가능합니다](https://www.slideshare.net/slideshow/openchain-telco-sbom-guide-overview-2024-09-25/272051639). 이는 글로벌 벤더 및 고객사와의 비즈니스에서 호환성과 신뢰성을 동시에 확보하는 중요한 자산이 됩니다.

### 3.3. 개발 및 운영 효율성 증대

#### 3.3.1. SBOM 생성 및 관리 프로세스 표준화

표준화된 포맷(SPDX 2.2/2.3)과 명확한 필수 항목 정의로 인해 SBOM 생성·검증·제공 프로세스의 [자동화와 반복성을 확보](https://www.ntia.doc.gov/sites/default/files/publications/copado_-_2021.06.17_0.pdf)할 수 있습니다.

[구체적인 시간 절약 효과](https://noux.cloud/save-5-hours-weekly-cra-machine-builder-software-bill-of-materials-automation-solution/):

- 컴포넌트 문서화 및 검증: 주당 2.5시간 절약
- 버전 관리 및 변경 사항 관리: 주당 1.5시간 절약
- 컴플라이언스 문서화: 주당 1.2시간 절약
- 팀 간 협업 및 인계: 주당 0.8시간 절약

총 주당 5시간 이상의 엔지니어링 시간을 절약하여, 이를 핵심 개발 업무에 재투자할 수 있습니다.

#### 3.3.2. 명확한 가이드라인을 통한 내부 개발팀의 혼선 방지

일관된 SBOM 작성 기준을 통해 조직 내 모든 부서가 동일한 컴포넌트 정보를 공유함으로써, 중복 스캔과 수작업 관리의 [비효율을 제거](https://pure.tudelft.nl/ws/portalfiles/portal/217100048/3634737.3637659.pdf)할 수 있습니다. 이는 반복 업무의 자동화와 CI/CD 파이프라인과의 연동을 통해 더욱 [가속화됩니다](https://soos.io/https-soos-io-sbom-adoption-guide-part-1-burden-or-opportunity).

### 3.4. 비용 절감 및 경제적 효과

#### 3.4.1. 공급망 공격 방지를 통한 직접적 손실 절감

소프트웨어 공급망 공격의 평균 비용은 사고당 435만 달러에 달하며, 2026년에는 연간 806억 달러 규모로 확대될 것으로 [예측됩니다](https://bluesoft.com/service/consulting/software-supply-chain-security). OpenChain Telco SBOM 가이드를 통한 체계적 관리는 이러한 수백만 달러 규모의 잠재적 손실을 사전에 방지할 수 있습니다.

#### 3.4.2. 운영 비용 절감 및 자동화 효과

취약점 분석과 패치 검증에 투입되는 수백 시간을 SBOM으로 절감할 수 있다는 [실제 사례가 다수 보고](https://www.meti.go.jp/english/policy/safety_security/cybersecurity/downloadfiles/sbom_tebiki02_en.pdf)되고 있습니다. 한 조직은 "취약점 검토 시간을 하루에서 1시간 미만으로 단축했으며, 오픈소스 프로젝트당 약 500시간의 취약점 분석 및 우선순위 결정 시간을 절약했다"고 보고했습니다.

### 3.5. 글로벌 규제 및 표준 대응력 강화

#### 3.5.1. 국제 표준 부합을 통한 규제 대응 역량

OpenChain Telco SBOM 가이드는 NTIA, CISA, ISO 등 글로벌 컴플라이언스 요구사항에 효과적으로 대응할 수 있는 실질적 기반을 제공합니다.

현재 진행 중인 주요 규제들:

- **미국**: 연방정부 납품 시 SBOM 제공 [의무화](https://security.cms.gov/learn/software-bill-materials-sbom)
- **EU**: 사이버복원력법(CRA)을 통한 SBOM 의무화 [추진](https://runsafesecurity.com/blog/sbom-requirements-global-guide/)
- **일본, 한국**: 유사한 정책 검토 및 도입 준비

#### 3.5.2. 다국적 파트너십 및 공급망 협업 강화

[표준화된 SBOM 교환](https://www.cisa.gov/sbom)은 주요 글로벌 과제로 부상하고 있으며, 가이드를 준수하면 타사 SBOM과의 호환성이 보장되어 협업 장벽이 [사라집니다](https://www.scanoss.com/post/the-openchain-telco-sbom).

Nokia와 같은 글로벌 통신 장비사가 이미 이 가이드를 내부 프레임워크의 기초로 채택한 것은, 가이드의 실용성과 비즈니스 가치를 입증하는 대표적 [사례입니다](https://openchainproject.org/news/2025/05/09/expanded-support-for-the-telco-guide).


## 4장: 주체별 활용 방안 및 맞춤형 시나리오

OpenChain Telco SBOM 가이드는 통신 산업 생태계를 구성하는 각 주체의 역할과 필요에 따라 다르게 활용될 수 있습니다. 본 장에서는 **이동통신사(소비자), 통신장비 제조사(생산자), 네트워크 솔루션 공급사(생산자)**, 그리고 **실무 담당자**의 입장에서 가이드를 어떻게 전략적으로 활용할 수 있는지 구체적인 시나리오와 함께 제시합니다.

### 4.1. 이동통신사 (소프트웨어 소비자 관점)

이동통신사는 수많은 공급업체로부터 장비와 솔루션을 도입하여 최종 서비스를 제공하는 **공급망의 최종 책임자**이자, **SBOM의 핵심 소비자**입니다. 이들의 주된 관심사는 도입하는 소프트웨어의 **보안 리스크를 사전에 식별하고, 공급망 전체의 투명성을 확보**하는 데 있습니다.

#### 4.1.1. 시나리오: 외부 솔루션 도입 시 SBOM을 통한 공급망 검증

##### **상황:**
한 이동통신사가 5G 네트워크 슬라이싱 관리를 위한 새로운 Orchestration 솔루션을 도입하고자 합니다. 여러 글로벌 벤더로부터 제안서를 받았지만, 일부는 SBOM을 제공하지 않거나, 제공하더라도 포맷과 내용이 제각각이라 객관적인 리스크 평가가 어려운 상황입니다.

#####  **OpenChain Telco SBOM 가이드 적용:**

###### **1단계: 요구사항 명확화 (Requirement Clarification)**
*   **RFP(제안요청서)에 가이드 준수 명시:** 모든 벤더에게 **SPDX 2.2 또는 2.3 포맷**의 SBOM 제출을 필수 평가 항목으로 포함합니다. 이는 벤더들에게 통일된 기준을 제시하여, 제출된 SBOM의 품질과 형식을 표준화하는 첫걸음입니다.
 *   **완전성 요구:** 가이드에 따라, 직접 의존성뿐만 아니라 **모든 간접 의존성(transitive dependencies)** 까지 포함된 완전한 SBOM을 요구합니다. 이를 통해 숨겨진 보안 위협이나 라이선스 리스크를 사전에 파악할 수 있습니다.

###### **2단계: 리스크의 정량적 평가 (Quantitative Risk Assessment)**
  *   **자동화된 분석:** 제출받은 표준화된 SBOM을 내부 SCA(Software Composition Analysis) 도구에 입력하여, 알려진 보안 취약점(CVE) 목록과 심각도를 자동으로 스캔하고 정량화합니다.
  *   **라이선스 컴플라이언스 검증:** 각 컴포넌트의 라이선스(`PackageLicenseConcluded`, `PackageLicenseDeclared`)를 분석하여, 내부 정책과 충돌하거나 상업적 이용에 제약이 있는 라이선스가 포함되었는지 자동으로 검증합니다.
  *   **투명성 평가:** `known unknowns` 항목을 검토하여, 벤더가 자사의 소프트웨어 구성요소를 얼마나 투명하게 파악하고 있는지를 평가 지표로 활용합니다.

###### **3단계: 지속적인 공급망 관리 (Continuous Supply Chain Management)**
  *   **계약 조건화:** 최종 선정된 벤더와의 계약서에 "소프트웨어 패치 및 버전 업데이트 시, 갱신된 SBOM을 48시간 내에 동시 제공해야 한다"는 조항을 명시합니다.
  *   **접근성 보장:** 가이드에 따라 SBOM의 웹 호스팅 접근을 최소 18개월 이상 보장하도록 하여, 장기적인 보안 관리 및 감사에 대비합니다.

##### **기대 효과:**
  *   **신속한 위협 대응:** Log4j와 같은 제로데이 취약점 발생 시, 전체 공급망에서 영향받는 시스템을 수십 분 내에 식별하고 대응 우선순위를 결정할 수 있습니다.
  *   **데이터 기반의 공급업체 선정:** '감'이나 '영업적 관계'가 아닌, 표준화된 SBOM 데이터를 기반으로 공급업체의 보안 수준을 객관적으로 비교·평가할 수 있습니다.
  *   **강화된 보안 거버넌스:** 공급망 전체의 소프트웨어 자산을 투명하게 가시화하여, 규제 기관의 감사나 내부 보안 정책 준수를 효과적으로 증명할 수 있습니다.

#### 4.1.2. 활용 Tip: RFP 및 계약서에 SBOM 요구사항 명시하기

SBOM 요구를 명문화하는 것은 공급업체의 책임감 있는 참여를 유도하는 가장 효과적인 방법입니다.

#####  **RFP(제안요청서) 표준 문구 예시:**

  > "제안하는 모든 소프트웨어 제품에 대해, 'OpenChain Telco SBOM Guide v1.1'을 준수하는 SBOM을 반드시 제출해야 합니다. SBOM은 SPDX 2.2 또는 2.3 버전의 Tag:Value 또는 JSON 형식이어야 하며, 제품에 포함된 모든 오픈소스 및 상용 컴포넌트, 그리고 모든 간접 의존성을 포함해야 합니다. SBOM 제출 여부 및 품질은 제안 평가의 주요 항목으로 고려됩니다."

#####  **계약서 핵심 조항:**
  *   **SBOM 제공 의무 및 시점:** "을(공급사)은 소프트웨어 납품 시, 본 계약의 부록 X에 명시된 'OpenChain Telco SBOM 가이드'를 준수하는 SBOM을 함께 제공해야 한다."
  *   **정확성 보증:** "을은 제공된 SBOM의 정보가 실질적으로 정확하고 완전함을 보증한다."
  *   **갱신 의무:** "을은 소프트웨어의 주요 업데이트 또는 보안 패치 제공 시, 7일 이내에 해당 변경사항이 반영된 SBOM을 '갑(통신사)'에게 제공해야 한다."
  *   **위반 시 조치:** "본 SBOM 제공 의무를 위반할 경우, '갑'은 계약의 일부 또는 전부를 해지할 수 있으며, 이에 따른 손해배상을 청구할 수 있다."

### 4.2. 통신장비 제조사 (소프트웨어 생산자 관점 - 하드웨어 결합)

통신장비 제조사는 펌웨어, 임베디드 OS 등 하드웨어와 깊게 결합된 소프트웨어를 개발하며, **SBOM의 핵심 생산자**입니다. 이들의 목표는 **고객사(이동통신사)의 다양한 요구사항을 효율적으로 충족**시키고, 제품의 **신뢰성과 글로벌 경쟁력을 입증**하는 것입니다.

#### 4.2.1. 시나리오: 네트워크 장비 납품 시 SBOM 동시 제공 프로세스 구축

#####   **상황:**
한 통신장비 제조사가 국내외 여러 통신사에 5G 라우터를 납품하고 있습니다. 하지만 각 통신사마다 요구하는 SBOM의 형식과 내용이 달라, 제품 출시 때마다 수작업으로 SBOM을 변환하고 검증하는 데 많은 시간과 비용이 소모되고 있습니다.

#####  **OpenChain Telco SBOM 가이드 적용:**

######   **내부 프로세스 표준화: 'SBOM 팩토리' 구축**
  *   **빌드 파이프라인 통합:** 펌웨어를 빌드하는 **CI/CD 파이프라인**에 SBOM 자동 생성 및 검증 단계를 의무적으로 포함합니다. 빌드 성공의 조건으로 '가이드 준수 SBOM 생성'을 추가합니다.
  *   **메타데이터 자동화:** `Creator` 필드에 조직명, 사용된 SCA 도구명과 버전을 자동으로 기록하고, 빌드 시점에 맞춰 `SBOM Type: Build`를 명시합니다. 이를 통해 SBOM 생성의 추적성과 일관성을 확보합니다.

######   **제품 중심의 SBOM 관리**
  *   **버전 관리:** Git과 같은 버전 관리 시스템과 연동하여, 펌웨어 버전별로 SBOM을 자동으로 생성하고 매칭하여 관리합니다. 이를 통해 특정 버전의 취약점 분석이 용이해집니다.
  *   **접근성 설계:** 제품의 저장 공간 제약을 고려하여, 제품 박스나 매뉴얼에 **SBOM 다운로드 링크가 포함된 QR 코드**를 인쇄하거나, 패키지 내에 압축된 형태로 SBOM을 **임베딩**합니다.
  *   **무결성 보장:** 생성된 SBOM 파일에 **디지털 서명(예: Sigstore 사용)** 을 적용하여, 전송 과정에서의 위변조를 방지하고 고객의 신뢰를 높입니다.

###### **효율적인 고객 대응 체계**
  *   **단일 표준 제공:** 모든 고객사에게 **OpenChain Telco SBOM 가이드 기반의 표준 SBOM**을 기본으로 제공합니다.
  *   **유연한 변환:** 고객사가 특정 포맷(예: CycloneDX)을 추가로 요구할 경우, 표준 SPDX SBOM을 소스로 하여 **변환 도구**를 통해 신속하게 대응합니다.
  *   **기술 지원 연계:** 기술 지원팀이 고객 문의 시 해당 제품 버전의 SBOM을 즉시 조회하여, 취약점 및 라이선스 관련 질문에 정확하고 신속하게 답변할 수 있도록 교육합니다.

##### **기대 효과:**
  *   **생산성 향상:** '한 번 생성하여, 모든 곳에 활용(Create Once, Use Many)' 원칙을 통해, 고객별 맞춤형 SBOM 작업에 소요되던 시간을 80% 이상 단축할 수 있습니다.
  *   **고객 신뢰 및 경쟁력 강화:** 표준화되고 검증된 SBOM을 선제적으로 제공함으로써, 제품의 투명성과 보안 수준을 입증하고 납품 계약에서 경쟁 우위를 확보합니다.
  *   **글로벌 스탠다드 준수:** ISO 표준 기반의 가이드를 따름으로써, 미국, EU 등 규제가 까다로운 글로벌 시장에 진출할 때 필요한 SBOM 요구사항에 손쉽게 대응할 수 있습니다.

#### 4.2.2. 활용 Tip: 제품 펌웨어 및 임베디드 OS의 SBOM 관리 방안

임베디드 환경의 특수성을 고려한 SBOM 관리가 중요합니다.

##### **기술적 구현 방법:**
  *   **빌드 시스템 통합:** **Yocto, Buildroot**와 같은 임베디드 리눅스 빌드 시스템에 SBOM 생성을 위한 메타데이터 레이어나 플러그인을 통합하여, 빌드 과정에서 자동으로 컴포넌트 정보를 추출합니다.
  *   **바이너리 분석 활용:** 소스 코드 접근이 어려운 서드파티 바이너리나 드라이버의 경우, 바이너리 분석 기능을 갖춘 SCA 도구를 활용하여 컴포넌트를 식별하고 SBOM에 포함합니다.

##### **관리 프로세스:**
  *   **제품 라이프사이클 연계:** 제품의 기획-개발-출시-단종에 이르는 전체 라이프사이클과 연동하여 SBOM을 생성, 갱신, 보관, 폐기하는 정책을 수립합니다.
  *   **보안 패치와 동기화:** 보안 패치가 적용된 펌웨어 신규 버전 배포 시, 해당 패치 정보가 반영된 SBOM도 반드시 함께 업데이트하고 고객에게 통지합니다.
  *   **레거시 제품 관리:** 단종되었지만 아직 현장에서 사용 중인 레거시 제품에 대해서도, SBOM을 소급하여 생성하고 알려진 취약점 정보를 제공하여 고객 리스크를 최소화합니다.


### 4.3. 네트워크 솔루션/서비스 공급사 (소프트웨어 생산자 관점 - 순수 소프트웨어)

네트워크 솔루션/서비스 공급사는 **클라우드 네이티브, SaaS, 컨테이너** 등 현대적인 소프트웨어 배포 방식에 가장 밀접하게 연관된 **SBOM의 핵심 생산자**입니다. 이들의 목표는 **빠르게 변화하는 기술 환경에 맞춰 유연한 SBOM 제공 전략을 수립**하고, 이를 **차별화된 서비스 경쟁력**으로 전환하는 데 있습니다.

#### 4.3.1. 시나리오: SaaS 및 온프레미스 솔루션의 SBOM 제공 전략

##### **상황:**
국내 한 네트워크 보안 솔루션 기업이 클라우드 기반의 DDoS 방어 솔루션(SaaS)과 데이터센터용 방화벽 솔루션(온프레미스)을 함께 제공하고 있습니다. 최근 대형 통신사 고객으로부터 두 솔루션 모두에 대해 상세한 SBOM을 요구받았으며, 특히 지속적으로 업데이트되는 SaaS 환경의 SBOM 관리에 어려움을 겪고 있습니다.

##### **OpenChain Telco SBOM 가이드 적용:**

###### **솔루션별 차별화된 제공 전략 수립**
각 솔루션의 배포 방식과 고객의 요구 수준에 맞춰 SBOM 제공 전략을 다르게 설계합니다.

  *   **온프레미스 솔루션 (설치형 소프트웨어):**
      *   **패키지 내 임베딩:** 가이드의 원칙에 따라, 소프트웨어 설치 패키지(예: RPM, DEB, MSI) 내에 SBOM 파일을 직접 **포함하여 배포**합니다.
      *   **설치 시점 검증:** 설치 과정에서 SBOM 파일의 유효성을 검증하고, 관리자에게 해당 SBOM의 위치와 접근 방법을 안내합니다.
      *   **컨테이너 배포:** Docker/Kubernetes 환경으로 배포하는 경우, 컨테이너 이미지 레이어에 SBOM을 포함하거나, OCI(Open Container Initiative) 표준에 따라 이미지 레지스트리에 이미지와 함께 SBOM을 저장하고 관리합니다.

  *   **SaaS 솔루션 (서비스형 소프트웨어):**
      *   **서비스 티어링(Tiering):** 가이드에서 SaaS가 선택 적용 사항임을 활용하여, SBOM 제공을 **프리미엄 서비스**로 구성합니다. 기본 고객에게는 요약 정보를, 보안에 민감한 엔터프라이즈 고객에게는 상세 SBOM을 유료로 제공하여 새로운 수익 모델을 창출합니다.
      *   **보안 포털 제공:** 엔터프라이즈 고객 전용 보안 포털을 통해, 실시간으로 업데이트되는 서비스의 최신 SBOM을 안전하게 조회하고 다운로드할 수 있도록 합니다.
      *   **API 기반 접근:** 고객의 자동화된 보안 관리 시스템(SOAR 등)과 연동할 수 있도록, **API를 통해 SBOM 데이터를 제공**하는 서비스를 구성합니다.

###### **DevSecOps 파이프라인과의 완벽한 통합**
  *   **마이크로서비스별 SBOM 생성:** 솔루션이 마이크로서비스 아키텍처(MSA)로 구성된 경우, 각 서비스(예: 인증 서비스, 분석 서비스 등)의 빌드 파이프라인에서 개별 SBOM을 생성합니다.
  *   **통합 및 관계 정의:** 전체 솔루션 배포 시, 개별 마이크로서비스의 SBOM들을 **SPDX의 관계 정의 기능(DESCRIBES, CONTAINS 등)** 을 활용하여 하나의 통합된 SBOM으로 병합합니다. 이를 통해 전체 솔루션의 구조와 의존성을 명확히 표현할 수 있습니다.
  *   **지속적 배포(CD)와 연동:** 새로운 버전의 마이크로서비스가 배포될 때마다, 해당 서비스의 SBOM이 자동으로 업데이트되고, 통합 SBOM에도 이 변경사항이 실시간으로 반영되는 체계를 구축합니다.

##### **기대 효과:**
  *   **새로운 비즈니스 기회 창출:** SBOM 제공을 단순한 비용이 아닌, 프리미엄 보안 서비스로 포지셔닝하여 **추가적인 매출을 창출**할 수 있습니다.
  *   **고객 락인(Lock-in) 효과:** API 기반의 SBOM 연동 등 깊이 있는 보안 서비스를 제공함으로써, **보안에 민감한 대형 고객과의 장기적인 파트너십**을 강화할 수 있습니다.
  *   **기술 리더십 입증:** 클라우드 네이티브 환경에서 복잡한 SBOM을 체계적으로 관리하는 역량을 보여줌으로써, **기술 선도 기업으로서의 브랜드 이미지**를 구축할 수 있습니다.

#### 4.3.2. 활용 Tip: 고객 기술 지원 및 유지보수 시 SBOM 활용하기

SBOM은 제품 판매 이후의 고객 지원과 유지보수 단계에서 더욱 강력한 가치를 발휘합니다.

##### **프로액티브(Proactive) 취약점 관리 서비스:**
*   새로운 CVE가 공개되면, 자사의 모든 제품 SBOM을 자동으로 스캔하여 **영향받는 고객 목록을 즉시 식별**합니다.
*   고객이 문의하기 전에, "귀사가 사용 중인 OOO 솔루션 v2.1의 OOO 컴포넌트가 이번 CVE-2025-XXXX에 영향을 받습니다. 현재 패치 개발 중이며, 임시 완화 방안은 다음과 같습니다." 와 같은 **선제적인 알림 서비스**를 제공합니다.

##### **투명한 라이선스 컴플라이언스 지원:**
*   고객이 내부 감사를 받을 때, 요청 즉시 해당 시점의 정확한 SBOM을 제공하여 **라이선스 현황 보고를 지원**합니다.
*   솔루션에 사용된 오픈소스의 라이선스가 변경될 경우, 이를 사전에 고객에게 고지하고 비즈니스 영향 여부를 함께 검토합니다.

##### **효율적인 유지보수 및 업데이트:**
  *   솔루션 업데이트 전, 이전 버전과 새 버전의 SBOM을 비교 분석하여 **변경된 컴포넌트와 잠재적 충돌 가능성을 사전 식별**합니다.
  *   이를 통해 업데이트로 인한 장애 발생 가능성을 줄이고, 문제 발생 시 롤백 계획을 수립하는 데 활용합니다.

### 4.4. 오픈소스/컴플라이언스 담당자 (실무자 관점)

오픈소스 및 컴플라이언스 담당자는 조직의 SBOM 정책을 수립하고, 전사적으로 일관된 품질을 유지하도록 관리하는 **SBOM 거버넌스의 핵심 두뇌**입니다. 이들의 목표는 **명확하고 실행 가능한 정책을 수립**하고, 이를 통해 **개발팀의 업무 부담을 줄이면서도 조직의 리스크를 최소화**하는 것입니다.

#### 4.4.1. 시나리오: 본 가이드를 기반으로 사내 SBOM 정책 수립하기

##### **상황:**
한 통신사의 오픈소스 프로그램을 총괄하는 담당자가 전사 차원의 SBOM 정책 수립을 맡게 되었습니다. 개발, 보안, 조달, 법무 등 각 부서의 요구사항이 달라, 모두를 만족시키는 표준 정책을 만드는 데 어려움을 겪고 있습니다.

##### **OpenChain Telco SBOM 가이드 기반 정책 수립:**
객관적인 국제 표준 기반의 가이드를 정책의 근간으로 삼아, 부서 간의 이견을 조율하고 설득의 근거로 활용합니다.

######  **정책 프레임워크 구성:**
  가이드의 핵심 요구사항을 반영하여, 명확하고 간결한 정책 문서를 작성합니다.

  ```
  [사내 SBOM 관리 정책]

  제1조 (목적)
  본 정책은 'OpenChain Telco SBOM Guide v1.1'을 준수하여, 당사의 소프트웨어 공급망 투명성을 확보하고 관련 리스크를 체계적으로 관리하는 것을 목적으로 한다.

  제2조 (적용 대상)
  당사가 개발, 구매, 배포하는 모든 소프트웨어에 적용된다.
  1. 외부 구매 소프트웨어: 계약 시 가이드 준수 SBOM 제공을 필수 조건으로 한다.
  2. 내부 개발 소프트웨어: 외부 고객에게 배포 시, 가이드 준수 SBOM 생성을 의무화한다.

  제3조 (SBOM 품질 요구사항)
  모든 SBOM은 'OpenChain Telco SBOM 가이드' 제3장의 요구사항(데이터 포맷, 필수 필드, 제공 방식 등)을 충족해야 한다.
  ```

######  **부서별 역할과 책임(R&R) 명확화:**
  정책의 실행력을 높이기 위해, 각 부서의 역할을 구체적으로 정의합니다.
  *   **개발부서:** CI/CD 파이프라인 내에서 표준 도구를 사용하여 SPDX 포맷의 SBOM을 생성할 책임.
  *   **조달부서:** 모든 소프트웨어 구매 계약서에 SBOM 제공 관련 표준 조항을 포함할 책임.
  *   **보안부서:** SBOM을 기반으로 정기적인 취약점 모니터링 및 분석을 수행할 책임.
  *   **법무/컴플라이언스부서:** SBOM의 라이선스 정보를 검토하고, 컴플라이언스 위반 여부를 최종 확인할 책임.

######  **프로세스 및 도구 표준화:**
  전사적으로 일관된 품질을 유지하기 위한 표준을 제시합니다.
  *   **표준 SCA 도구 지정:** 조직에서 공식적으로 승인하고 지원하는 SCA 도구 목록을 정의합니다.
  *   **품질 검증 자동화:** SBOM 생성 시, Interlynk의 `sbomqs`와 같은 오픈소스 도구를 활용하여 품질 점수를 자동으로 측정하고, 일정 점수 이하일 경우 빌드를 실패시키는 정책을 도입합니다.
  *   **교육 및 지원:** 개발자들이 쉽게 정책을 이해하고 따를 수 있도록, 정기적인 교육과 온라인 가이드, 내부 커뮤니티를 운영합니다.

#### 4.4.2. 활용 Tip: SBOM 생성 도구(SCA Tool) 도입 및 선정 가이드

성공적인 SBOM 관리의 핵심은 조직에 맞는 올바른 도구를 선택하는 것입니다.

##### **단계별 도입 계획:**
  1.  **요구사항 정의:** 조직의 기술 스택, 예산, 보안 정책을 고려하여 필수 요구사항 목록을 작성합니다.
  2.  **시장 조사 및 후보군 선정:** Gartner, Forrester 등의 보고서와 오픈소스 커뮤니티의 평가를 참고하여 3~4개의 후보 도구를 선정합니다.
  3.  **PoC(Proof of Concept) 수행:** 실제 개발 프로젝트에 후보 도구들을 적용하여, 성능, 정확도, 사용자 편의성을 직접 비교 평가합니다.
  4.  **최종 선정 및 단계적 확산:** PoC 결과를 바탕으로 최적의 도구를 선정하고, 파일럿 팀부터 시작하여 전사적으로 점진적 확산을 추진합니다.

### 4.5. 주체별 협업 시나리오: 공급망 전체의 SBOM 연계

궁극적으로 SBOM의 가치는 개별 조직을 넘어, **공급망 생태계 전체가 연결될 때 극대화**됩니다.

##### **통합 시나리오:**
대한민국 5G 특화망 구축 프로젝트에서 이동통신사(소비자), 장비 제조사(1차 공급사), 솔루션 공급사(2차 공급사)가 OpenChain Telco SBOM 가이드를 공통의 언어(Common Language)로 사용하여 협업하는 사례입니다.

######  **프로젝트 초기 (계약 및 설계 단계):**
  *   프로젝트 참여 계약서에 모든 참여사가 'OpenChain Telco SBOM 가이드'를 준수할 것을 명시합니다.
  *   SPDX 포맷 기반의 SBOM을 교환하고, 이를 바탕으로 전체 시스템 아키텍처의 통합 보안 리스크를 공동으로 분석합니다.

######  **개발 및 구축 단계:**
  *   솔루션 공급사는 자사 솔루션의 SBOM을 장비 제조사에 제공합니다.
  *   장비 제조사는 제공받은 SBOM을 자사 펌웨어의 SBOM과 **SPDX 관계 정의 기능으로 병합**하여, 통합된 장비 SBOM을 생성한 후 이동통신사에 최종 제출합니다.

######  **운영 및 유지보수 단계:**
  *   이동통신사는 제출받은 통합 SBOM을 중앙 모니터링 시스템에 등록하여, 전체 네트워크의 소프트웨어 자산을 실시간으로 관리합니다.
  *   특정 오픈소스에서 제로데이 취약점이 발견될 경우, 이동통신사는 즉시 해당 컴포넌트가 포함된 장비와 솔루션을 식별하고, 책임 있는 공급사에 신속한 패치를 요구할 수 있습니다.

##### **기대 효과:**
  *   **공급망 전체의 실시간 가시성 확보:** 문제가 발생했을 때, 여러 공급사를 거치며 책임을 떠넘기거나 원인 파악에 시간을 허비하는 대신, 즉시 문제의 근원을 파악하고 해결할 수 있습니다.
  *   **협업 효율성 극대화:** 모든 참여자가 동일한 표준과 포맷을 사용하므로, 데이터 변환이나 재해석에 드는 불필요한 비용과 시간을 제거할 수 있습니다.
  *   **국가 핵심 인프라 보안 강화:** 개별 기업의 보안 노력을 넘어, 국가 차원의 핵심 통신 인프라에 대한 회복탄력성(Resilience)과 보안 수준을 획기적으로 향상시킬 수 있습니다.

## 5장: 시작하기 — 우리 회사에 가이드 도입하기 (단계별 실행 계획)

OpenChain Telco SBOM 가이드의 성공적인 도입은 일회성 프로젝트가 아닌, 조직의 문화와 프로세스에 내재화되는 지속적인 여정입니다. 본 장에서는 조직이 SBOM 관리 체계를 효과적으로 구축하고 운영할 수 있도록, **‘분석(Assess) → 실행(Implement) → 확산(Scale)’** 의 3단계로 구성된 실질적인 실행 계획을 제시합니다.

### 5.1. 1단계: 현황 분석 및 목표 설정 (Assess)

이 단계는 성공적인 SBOM 도입의 초석을 다지는 과정입니다. 정확한 현황 진단 없이 무작정 도구를 도입하거나 정책을 수립하면, 현장과 괴리된 비효율적인 결과를 낳을 수 있습니다. 조직의 현재 역량과 마주한 과제를 명확히 파악하는 것이 무엇보다 중요합니다.

#### 5.1.1. 조직 현황 진단 및 SBOM 성숙도 평가

우선, 조직의 소프트웨어 공급망 관리 현황을 객관적으로 파악해야 합니다. 이는 단순히 현재 상태를 기록하는 것을 넘어, 잠재적 리스크와 개선 기회를 발견하는 과정입니다.

*   **현재 소프트웨어 공급망 관리 현황 파악**
    *   **제품/서비스 인벤토리:** 현재 개발 및 운영 중인 모든 소프트웨어의 목록을 작성합니다. 이는 SBOM 관리의 대상을 명확히 하는 첫걸음입니다.
    *   **컴포넌트 관리 방식 조사:** 오픈소스 및 상용 소프트웨어의 도입, 사용, 폐기 프로세스를 점검합니다. 컴포넌트 목록을 수동(엑셀 등)으로 관리하는지, 아니면 자동화된 도구를 사용하는지 파악합니다.
    *   **리스크 관리 프로세스 검토:** 기존의 취약점 관리(Vulnerability Management) 및 라이선스 컴플라이언스 프로세스가 어떻게 운영되고 있는지 분석합니다.
    *   **과거 이력 분석:** 최근 2-3년간 발생했던 공급망 관련 보안 사고나 라이선스 위반 사례를 분석하여, 주요 취약점을 도출합니다.

*   **SBOM 성숙도 자가 진단**
    조직의 현재 위치를 파악하기 위해 아래 3단계 모델을 활용하여 성숙도를 진단합니다.

| 성숙도 단계 | 특징 | 주요 과제 |
| --- | --- | --- |
| **초보자 (Procrastinators)** | SBOM의 필요성은 인지하나, 구체적 계획이나 실행이 없음. 수동 관리 의존. | SBOM 도입의 필요성과 가치를 조직 내에 전파하고, 경영진의 지원 확보. |
| **초기 도입자 (Early Adopters)** | 일부 팀이나 프로젝트에서 SBOM을 시범적으로 도입. 표준화된 프로세스 부재. | 파일럿 프로젝트의 성공 사례를 기반으로 전사적 표준 프로세스 및 정책 수립. |
| **혁신자 (Innovators)** | 전사적으로 표준화된 SBOM 프로세스를 운영. CI/CD 파이프라인에 자동화 통합. | SBOM 데이터를 활용한 공급망 위협 예측 및 사전 대응 등 고도화 전략 추진. |

*   **갭 분석(Gap Analysis) 수행**
    자가 진단 결과를 바탕으로, OpenChain Telco SBOM 가이드의 요구사항과 조직의 현재 역량 간의 격차를 구체적으로 식별합니다.
    *   **데이터 포맷:** 현재 생성되는 SBOM이 SPDX 2.2/2.3을 준수하는가?
    *   **필수 필드:** 가이드에서 요구하는 필수 필드(PackageName, PURL 등)가 모두 포함되는가?
    *   **프로세스:** 소프트웨어 제공 시점에 맞춰 SBOM을 전달하는 프로세스가 있는가?
    *   **자원:** 필요한 도구, 인력, 예산은 확보되어 있는가?

#### 5.1.2. 이해관계자 식별 및 추진 조직 구성

SBOM 도입은 특정 부서의 과제가 아닌, 전사적 협력이 필요한 프로젝트입니다. 성공적인 추진을 위해 명확한 역할과 책임을 가진 전담 조직을 구성해야 합니다.

*   **핵심 이해관계자 참여 확보**
    *   **개발팀:** SBOM 생성 및 CI/CD 통합의 주체
    *   **보안팀:** 취약점 분석 및 보안 정책 검증
    *   **컴플라이언스/법무팀:** 라이선스 관리 및 법적 리스크 검토
    *   **조달팀:** 외부 공급업체 계약 시 SBOM 요구사항 반영
    *   **경영진:** 전략적 방향 제시 및 자원 배분

*   **SBOM 도입 TF(태스크포스) 구성**
    단순한 협의체가 아닌, 명확한 R&R(Role & Responsibility)을 가진 실행 조직을 구성합니다.
    *   **TF 리더:** 프로젝트 전반을 책임지고, 경영진에게 진행 상황을 보고합니다.
    *   **기술 전문가:** 도구 평가, 선정, 기술적 구현을 담당합니다.
    *   **프로세스 설계자:** SBOM 생성부터 폐기까지의 전사 워크플로우를 설계합니다.
    *   **변화 관리자:** 새로운 프로세스와 문화가 조직에 안착하도록 교육 및 소통을 담당합니다.

#### 5.1.3. 목표 설정 및 적용 범위 정의

진단 결과를 바탕으로, 현실적이고 측정 가능한 목표를 설정합니다. 이는 조직의 자원을 효율적으로 집중시키고, 프로젝트의 성공 여부를 객관적으로 판단하는 기준이 됩니다.

*   **SMART 목표 설정**
    막연한 목표 대신, SMART 원칙에 따라 구체적이고 실행 가능한 목표를 설정합니다.
    *   **(예시)** "2025년 4분기까지, 주력 통신장비 제품군 3종에 대해 OpenChain Telco SBOM 가이드를 100% 준수하는 SBOM 생성 및 제공 프로세스를 자동화한다."

*   **우선순위 기반 적용 범위 선정**
    모든 제품에 한 번에 적용하기보다는, 비즈니스 중요도와 리스크 수준을 고려하여 단계적으로 범위를 확대합니다.
    1.  **1순위 (전략적 중요도):** 외부 고객에게 제공되는 핵심 제품 또는 신규 주력 서비스
    2.  **2순위 (리스크 기반):** 규제 요구사항이 적용되거나, 오픈소스 의존성이 높은 제품군
    3.  **3순위 (내부 효율화):** 내부에서만 사용하는 개발 프로젝트

### 5.2. 2단계: 도구 선정 및 프로세스 정립 (Build & Implement)

이 단계에서는 1단계에서 수립한 계획을 바탕으로 실제 시스템과 프로세스를 구축합니다. 핵심은 일회성 작업이 아닌, 개발 라이프사이클에 자연스럽게 통합되어 지속적으로 운영될 수 있는 자동화된 체계를 만드는 것입니다.

#### 5.2.1. SBOM 생성 도구 평가 및 선정

조직의 기술 스택, 예산, 목표에 맞는 최적의 도구를 선정하는 과정입니다.

*   **도구 선정 기준 수립**
    평가 항목별로 조직의 상황에 맞게 가중치를 부여하여 객관적인 평가 모델을 만듭니다.

| 평가 항목 | 세부 내용 |
| --- | --- |
| **포맷 지원** | **SPDX 2.2/2.3** 포맷 생성 및 파싱 기능 지원 여부 |
| **언어/프레임워크 지원** | 조직 내에서 사용하는 주요 개발 언어 및 프레임워크 지원 범위 |
| **통합성** | Jenkins, GitHub Actions 등 **CI/CD 파이프라인**과의 연동 용이성 |
| **정확성** | 간접 의존성 탐지 정확도, 오탐(False Positive) 비율 |
| **확장성/성능** | 대규모 프로젝트 스캔 시 성능, 조직 성장에 따른 확장 가능성 |
| **비용 효율성** | 라이선스 비용, 유지보수 비용 대비 기능의 적절성 |

*   **주요 도구 비교 분석 및 PoC(Proof of Concept) 실시**
    선정된 2~3개의 후보 도구를 실제 개발 환경에서 테스트합니다.
    *   **파일럿 프로젝트**에 직접 적용하여 성능, 정확성, 사용 편의성을 비교합니다.
    *   **개발자 피드백**을 수렴하여 현업에서의 실제 활용 가능성을 평가합니다.
    *   비용 대비 효과(ROI) 분석을 통해 최종 도구를 선정합니다.

#### 5.2.2. 프로세스 설계 및 표준화

선정된 도구를 활용하여, 조직의 개발 문화에 맞는 표준화된 SBOM 관리 프로세스를 설계합니다.

*   **CI/CD 통합 워크플로우 설계**
    SBOM 생성을 개발자의 추가적인 업무가 아닌, 자동화된 프로세스의 일부로 만듭니다.
    1.  **코드 커밋 (Commit):** 개발자가 코드를 커밋하면 파이프라인이 트리거됩니다.
    2.  **빌드 및 의존성 분석 (Build & Scan):** 코드가 빌드되고, SCA 도구가 의존성을 스캔합니다.
    3.  **SBOM 생성 (Generate):** 스캔 결과를 바탕으로 SPDX 포맷의 SBOM이 자동 생성됩니다.
    4.  **품질 검증 (Validate):** 생성된 SBOM이 가이드의 필수 필드와 형식 요건을 충족하는지 자동 검증합니다.
    5.  **보안 및 정책 검사 (Secure & Check):** SBOM을 기반으로 알려진 취약점 및 라이선스 정책 위반 여부를 검사합니다. (정책 위반 시 빌드 실패 처리)
    6.  **서명 및 저장 (Sign & Store):** 검증을 통과한 SBOM에 디지털 서명을 적용하고, 중앙 저장소(Artifact Repository)에 저장합니다.
    7.  **배포 (Deploy):** 최종 배포 패키지에 SBOM을 포함하여 함께 배포합니다.

*   **정책 및 가이드라인 문서화**
    조직의 모든 구성원이 따를 수 있는 명확한 기준을 문서로 제공합니다.
    *   **전사 SBOM 정책:** SBOM 생성 및 관리의 원칙과 책임을 정의합니다.
    *   **도구 사용 가이드:** 개발자를 위한 단계별 도구 사용법 및 모범 사례를 제공합니다.
    *   **품질 체크리스트:** SBOM 제출 전, 가이드 준수 여부를 스스로 확인할 수 있는 체크리스트입니다.

#### 5.2.3. 내부 역량 강화 및 교육

새로운 도구와 프로세스는 충분한 교육과 지원 없이는 현장에 안착하기 어렵습니다.

*   **대상별 맞춤형 교육 프로그램**
    *   **경영진/리더:** SBOM의 전략적 가치와 비즈니스 영향에 대한 브리핑
    *   **개발자/엔지니어:** 도구 사용법, CI/CD 통합 방법, SBOM 오류 해결 등 실무 중심의 핸즈온 교육
    *   **보안/컴플라이언스팀:** SBOM 기반의 취약점 분석, 라이선스 감사 등 심화 교육

### 5.3. 3단계: 파일럿 프로젝트 및 점진적 확산 (Pilot & Scale)

이 단계에서는 실제 프로젝트에 SBOM 프로세스를 적용하여 그 효과를 검증하고, 이를 바탕으로 전사적인 도입을 추진합니다.

#### 5.3.1. 파일럿 프로젝트 실행

'작게 시작해서, 빠르게 성공하고, 널리 전파한다'는 원칙으로 파일럿을 진행합니다.

*   **파일럿 프로젝트 선정 기준**
    *   **대표성:** 중간 규모의 복잡도를 가져 조직의 일반적인 프로젝트를 대표할 수 있는가?
    *   **협조성:** 변화에 긍정적이고 협조적인 개발팀이 참여하는가?
    *   **영향력:** 성공 시 다른 팀에 긍정적인 영향을 줄 수 있는 프로젝트인가?

*   **파일럿 실행 및 성과 측정**
    정의된 기간(예: 8주) 동안 파일럿을 실행하고, 사전에 정의한 성공 지표(KPI)를 통해 성과를 객관적으로 측정합니다.

| KPI 영역 | 측정 지표 | 목표값 (예시) |
| --- | --- | --- |
| **품질** | SBOM의 가이드 필수 필드 포함률 | 95% 이상 |
| **효율성** | SBOM 생성 및 검증 자동화율 | 90% 이상 |
| **보안** | 신규 취약점 식별 및 분석 소요 시간 | 기존 대비 50% 단축 |
| **만족도** | 참여 개발팀 만족도 설문 점수 | 5점 만점에 4점 이상 |

#### 5.3.2. 점진적 확산 전략

파일럿의 성공 경험과 교훈을 바탕으로, 전사 확산을 위한 체계적인 로드맵을 수립합니다.

*   **확산 로드맵 수립**
    "빅뱅" 방식이 아닌, 제품군별, 사업부별로 단계적으로 적용 범위를 넓혀갑니다.
    *   **(예시)** 1단계(3개월): 파일럿 완료 및 핵심 제품 3개 적용 → 2단계(6개월): 주요 제품군 50% 확대 적용 → 3단계(12개월): 전사 표준화 완료

*   **변화 관리 및 저항 극복**
    새로운 프로세스 도입에 따른 구성원의 저항을 최소화하고, 변화를 성공적으로 이끌기 위한 전략이 필요합니다.
    *   **소통:** 도입 배경과 기대효과를 투명하게 공유하고, 정기적으로 진행 상황을 전파합니다.
    *   **지원:** 전담 지원 채널(헬프데스크, 내부 커뮤니티 등)을 운영하여 어려움을 즉시 해결해줍니다.
    *   **참여:** 현장의 목소리를 경청하고, 피드백을 프로세스 개선에 적극 반영합니다.

#### 5.3.3. 거버넌스 체계 구축 및 고도화

SBOM 관리가 일회성으로 끝나지 않고, 조직의 핵심 역량으로 자리 잡기 위한 지속적인 관리 체계를 구축합니다.

*   **SBOM 관리 조직 운영 (SBOM CoE: Center of Excellence)**
    전사 SBOM 전략 수립, 품질 관리, 기술 지원, 교육 등을 총괄하는 전문가 조직을 운영합니다.
*   **지속적 개선 프로세스**
    분기별 성과 리뷰를 통해 개선 과제를 도출하고, 변화하는 외부 표준 및 기술 동향을 프로세스에 반영합니다.
*   **성과 측정 및 가치 입증**
    취약점 대응 시간 단축, 라이선스 위반 리스크 감소, RFP 수주율 향상 등 SBOM 도입의 ROI(투자 대비 수익률)를 정량적으로 분석하여 경영진에게 보고하고, 지속적인 투자와 지원을 확보합니다.

이러한 체계적인 3단계 접근을 통해 조직은 OpenChain Telco SBOM 가이드를 성공적으로 도입하고, 소프트웨어 공급망 보안을 비즈니스 경쟁력으로 전환시킬 수 있습니다.

## 6장: 결론 — 더 안전한 통신 생태계를 향한 첫걸음

### 6.1. OpenChain Telco SBOM 가이드의 의의와 미래

#### 가이드의 역사적 의의

[OpenChain Telco SBOM 가이드](https://github.com/OpenChain-Project/Telco-WG)는 통신 산업이 맞이한 소프트웨어 공급망 보안 혁명의 시발점입니다. Log4Shell과 SolarWinds 같은 대규모 공급망 공격이 전 세계 디지털 인프라를 위협한 현실에서, 이 가이드는 **통신 산업 특화 SBOM 표준화**라는 명확한 해답을 제시했습니다.

지난 18개월간 가이드의 개발과 Version 1.1 발표, 그리고 Nokia와 같은 글로벌 리더의 내부 프레임워크 채택은 이 가이드가 단순한 문서가 아니라 **실질적 변화를 이끄는 산업 표준**임을 입증했습니다.

#### 산업 생태계 전반의 변화 촉진

가이드의 가장 큰 의의는 **상호운용성과 표준화**를 통해 통신 산업 전반의 효율성을 극대화한다는 점입니다. Nokia의 Gergely Csatári가 [언급했듯이](https://www.scanoss.com/post/the-openchain-telco-sbom), "내부적으로나 외부 인터페이스에서 SBOM의 상호운용성을 보장하기 위해서는 완전성, 품질, 콘텐츠의 조화가 필요하다"는 현실을 이 가이드가 해결하고 있습니다.

특히 SCANOSS의 상용 도구 지원 [발표](https://www.linkedin.com/posts/openchain_the-openchain-telco-sbom-guide-activity-7326247571994087425-o6Q8/)는 가이드가 이론적 지침에서 **실무적 자동화 솔루션**으로 진화하고 있음을 보여주는 중요한 이정표입니다.

### 6.2. 지금 바로 시작해야 하는 이유

#### 규제 환경의 급격한 변화

2025-2026년은 SBOM 의무화의 결정적 [시점입니다](https://fossid.com/articles/2025-outlook-open-source-software-risk-management/). 주요 규제 동향을 살펴보면:

- **미국**: 연방정부 조달에서 SBOM 제공 의무화 완전 시행
- **EU**: 사이버복원력법(CRA)에 따른 SBOM 요구사항이 2026년 9월부터 본격 [시행](https://www.linkedin.com/pulse/sbom-requirements-european-unions-cyber-resilience-act-pscheidl-1m3hf/)
- **일본, 한국**: 정부 차원의 SBOM 도입 정책 추진 가속화

이미 많은 전문가들이 "[2026년이 진정한 SBOM 도입 시점](https://fossid.com/articles/2025-outlook-open-source-software-risk-management/)"이라고 전망하고 있으며, **늦은 대응은 곧 시장에서의 도태**를 의미합니다.

#### 공급망 공격의 기하급수적 증가

최신 보안 위협 데이터는 더 이상 대기할 수 없는 현실을 보여줍니다:

- **오픈소스 패키지 저장소 위협이 1,300% [증가](https://www.ibm.com/think/insights/4-trends-in-software-supply-chain-security)**
- **무기화된 취약점이 10% 증가**하여 0.91%의 취약점이 실제 공격에 [활용](https://www.lineaje.com/post/2025-cybersecurity-forecast-navigating-the-future-of-software-supply-chains)
- **소프트웨어 공급망 공격 한 건당 [평균 손실](https://www.marketreportanalytics.com/reports/software-bill-of-materials-sbom-52589)이 435만 달러**

Log4Shell 이후 2년이 지났지만 여전히 **38%의 애플리케이션이 취약점을 보유**하고 있다는 현실은 체계적인 SBOM 관리의 시급성을 보여줍니다.

#### 자동화와 도구 생태계의 성숙

2025년은 SBOM 관리가 **수동 작업에서 자동화 체계로 전환**되는 전환점입니다. OpenChain Telco SBOM 가이드를 지원하는 자동화 도구들이 속속 등장하고 있어:

- **검증 도구**: Nokia 기여 OpenChain Telco SBOM Guide [Validator](https://openchainproject.org/news/2025/05/09/recording-openchain-telco-work-group-meeting-2025-05-07)
- **상용 도구**: SCANOSS의 [네이티브 지원](https://www.linkedin.com/posts/openchain_the-openchain-telco-sbom-guide-activity-7326247571994087425-o6Q8/)
- **차세대 도구**: SIT 같은 AI 기반 정확성 향상 [솔루션](https://conf.researchr.org/details/icse-2025/icse-2025-demonstrations/5/SIT-An-accurate-compliant-SBOM-generator-with-incremental-construction)

우리는 소프트웨어 공급망 보안 역사에서 **결정적 전환점**에 서 있습니다. 

거창한 변화보다는 **작지만 확실한 첫걸음**이 중요합니다. OpenChain Telco SBOM 가이드와 함께 조직의 소프트웨어 공급망 관리 역량을 한 단계씩 발전시켜 나가시기 바랍니다.

## 부록

### 부록 A: OpenChain Telco SBOM 가이드 전문 (국문본 링크)

- 가이드 전문(국문 번역본) 다운로드 및 조회: [OpenChain-Telco-SBOM-Guide_KR.md](https://github.com/OpenChain-Project/Telco-WG/blob/main/OpenChain-Telco-SBOM-Guide_KR.md)
    

### 부록 B: 주요 용어집 (Glossary)

| 용어 | 정의 |
| --- | --- |
| SBOM | Software Bill of Materials. 소프트웨어를 구성하는 모든 컴포넌트와 그 관계를 기록한 문서. |
| SPDX | Software Package Data Exchange. ISO/IEC 5962:2021 표준 기반 SBOM 데이터 포맷. |
| PURL | Package URL. 소프트웨어 패키지를 고유하게 식별하기 위한 사실상의 표준 URL. |
| Transitive dependency | 간접 의존성. 직접 의존성이 아닌, 소프트웨어 실행에 필요한 모든 연쇄적 의존성. |
| NTIA minimum elements | 미국 통신정보관리청이 정의한 SBOM 최소 요소 집합. |
| CreatorComment | SPDX 필드 중 하나로, 도구 정보 또는 SBOM Type 등 추가 메타데이터를 기록하는 자유 텍스트 필드. |
| Known unknowns | SBOM 작성 시 미포함된 컴포넌트를 “알려진 미포함 항목”으로 명시하여, 실제 누락 여부를 투명하게 표기하는 방식. |
| Tag:Value | 사람이 읽을 수 있는 SPDX 데이터 포맷 형식 중 하나. “키:값” 형태의 텍스트 포맷. |
| JSON | 기계 판독 가능 형식 중 하나로, 구조화된 데이터 표현을 위한 JavaScript Object Notation. |
| Digital signature | SBOM 무결성 보장을 위해 SBOM 파일에 적용하는 디지털 서명. Sigstore 등 도구를 활용. |
| Container SBOM | 컨테이너 이미지에 포함된 패키지, 복사/다운로드된 컴포넌트, 빌드 의존성 등을 모두 문서화한 SBOM. |
| SaaS SBOM | 서비스형 소프트웨어(SaaS)에 적용하는 SBOM. 현 가이드에서는 선택 적용 가능. |

### 부록 C: 자주 묻는 질문 (FAQ)

**Q1. SBOM 작성에 특정 도구를 반드시 사용해야 하나요?**

A. 아니요. 가이드는 SPDX 2.2/2.3 포맷 요건만 정의하며, 이를 생성할 수 있는 모든 도구를 허용합니다. Syft, FOSSA, SCANOSS, Black Duck 등 다양한 SCA 도구를 평가해 조직 환경에 맞는 도구를 선택하세요.

**Q2. SaaS 제공에도 SBOM을 반드시 적용해야 하나요?**

A. 본 가이드는 SBOM 단위(specification) 적용을 전제로 하므로, SaaS에는 선택 적용(MAY)입니다. 필요 시 가이드 준수 SBOM을 SaaS 서비스 포털 또는 API를 통해 제공할 수 있습니다.

**Q3. 가이드 준수 여부는 어떻게 검증하나요?**

A. SBOM이 아래 요건을 충족하는지 확인합니다.

1. SPDX 2.2/2.3 포맷(Tag:Value 또는 JSON)
2. 필수 필드(문서 생성 정보, 패키지 정보, 관계 정보) 포함
3. Creator, Created 필드 등 생성 정보 기록
4. SBOM Type 및 간접 의존성 포함 여부
5. 디지털 서명(권장) 등 무결성 검증 절차

**Q4. 기존 SBOM을 가이드에 맞춰 업데이트하려면?**

A.

1. 현재 SBOM 포맷과 필드 목록을 확인
2. 가이드 필수 요소 목록을 대조하여 누락된 항목 추가
3. Tag:Value 또는 JSON 포맷으로 변환
4. Creator/CreatorComment 필드에 도구 정보 및 SBOM Type 기재
5. 디지털 서명 적용 및 검증

**Q5. 레거시(구형) 제품에도 SBOM을 어떻게 적용할 수 있나요?**

A.

- 소스 코드 또는 빌드 산출물에서 SCA 도구를 활용해 SBOM을 생성
- 저장 공간이 제한된 경우 웹 호스팅 방식으로 제공(18개월 보장)
- ‘known unknowns’로 처리할 컴포넌트를 명시하여 투명성 유지

**Q6. SBOM 파일 병합은 어떻게 하나요?**

A. SPDX의 Relationship 기능을 활용해 여러 개의 SBOM 파일을 통합할 수 있습니다. sbomasm 등의 도구를 활용해 자동 병합을 수행하세요.

이 부록을 통해 가이드 전문, 핵심 용어, 실무자가 자주 묻는 질문까지 한눈에 확인할 수 있습니다. 필요에 따라 조직 내부 안내 자료에 그대로 활용하십시오.