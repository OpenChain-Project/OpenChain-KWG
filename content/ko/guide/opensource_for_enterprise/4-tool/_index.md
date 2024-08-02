---
title: "4. 도구"
linkTitle: "4. 도구"
weight: 40
type: docs
categories: ["guide"]
tags: ["도구"]
description: >
---

## 1. 소스 코드 스캔 도구

오픈소스 프로세스의 오픈소스 식별 및 검사 단계에서는 소스 코드 스캔 도구를 사용할 수 있습니다. 소스 코드 스캔 도구는 무료로 사용할 수 있는 오픈소스 기반 도구부터 상용 도구까지 다양합니다. 각 도구는 특장점이 있지만, 어떤 도구도 모든 문제를 해결할 수 있는 완벽한 기능을 제공하지 않습니다. 따라서 기업은 제품의 특성과 요구사항에 맞는 적합한 도구를 선택해야 합니다.

많은 기업이 이러한 자동화된 소스 코드 스캔 도구와 수동 검토를 병행하여 이용합니다. Linux Foundation의 [FOSSology](https://www.fossology.org/) 프로젝트는 오픈소스로 공개된 소스 코드 스캔 도구로서 기업들이 손쉽게 무료로 사용할 수 있습니다.


{{< imgproc fossology Fit "900x600" >}}
<center><i>https://www.fossology.org/</i></center>
{{< /imgproc >}}

FOSSology의 설치 및 사용 방법은 [FOSSology 가이드](https://openchain-project.github.io/OpenChain-KWG/guide/governance_iso5230/appendix/3-tools/fossology/)를 참조하시기 바랍니다.

## 2. Dependency 분석 도구

최근의 소프트웨어 개발 시에는 Gradle, Maven과 같은 패키지 관리자를 지원하는 빌드 환경을 사용합니다. 이러한 빌드 환경에서는 소스 코드가 없어도 빌드 타임에 필요한 Dependency 라이브러리를 원격의 공간으로부터 받아와서 배포용 소프트웨어를 구성합니다. 이때의 Dependency 라이브러리는 배포용 소프트웨어에는 포함되지만 소스 코드 스캔 도구로는 검출되지 않습니다. 따라서 Dependency 분석을 위한 도구를 활용하는 것도 중요합니다.

오픈소스인 OSS Review Toolkit은 Analyzer라는 Dependency 분석 도구를 제공합니다.


{{< imgproc ort Fit "900x600" >}}
<center><i>https://github.com/oss-review-toolkit/ort#analyzer</i></center>
{{< /imgproc >}}


또한 LG전자는 [FOSSLight Dependency Scanner](https://github.com/fosslight/fosslight_dependency_scanner)를 오픈소스로 공개했습니다. FOSSLight Dependency Scanner는 Gradle, Maven, NPM, PIP, Pub, Cocoapods와 같은 다양한 패키지 관리자를 지원합니다.

{{< imgproc fosslightdependency Fit "900x600" >}}
<center><i>https://fosslight.org/ko/scanner/</i></center>
{{< /imgproc >}}

## 3. SBOM 관리 도구

ISO/IEC 5230 규격의 3.3.1.2에서는 배포용 소프트웨어에 포함된 SBOM 목록은 문서화하여 보관할 것을 요구합니다. 

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.3.1.2 - Open source component records for the supplied software that demonstrates the documented procedure was properly followed.<br>`문서화된 절차가 적절히 준수되었음을 보여주는 배포용 소프트웨어에 대한 오픈소스 컴포넌트 기록`

{{% /alert %}}


{{% alert title="ISO/IEC 18974 - Security Assurance" color="warning" %}}

* 3.3.1.2: Open Source Software Component Records for the Supplied Software that demonstrates the documented procedure was properly followed.<br>`문서화된 절차가 적절히 준수되었음을 보여주는 배포용 소프트웨어에 대한 오픈소스 소프트웨어 컴포넌트 기록`

{{% /alert %}}

SBOM은 Excel과 같은 스프레드시트 프로그램으로도 관리할 수 있지만, 배포용 소프트웨어의 개수와 버전이 수백 개가 넘어갈 경우 수동으로 관리하는 것은 쉽지 않습니다. 따라서 이를 위한 오픈소스 자동화 도구를 도입하는 것이 좋습니다.

Eclipse 재단에서 후원하는 오픈소스 프로젝트인 [SW360](https://github.com/eclipse-sw360/sw360)은 배포용 소프트웨어별로 포함하고 있는 오픈소스 목록을 추적할 수 있는 기능을 제공합니다. 

![](sw360project.png)

SW360의 설치 및 사용 방법은 [SW360 가이드](https://openchain-project.github.io/OpenChain-KWG/guide/governance_iso5230/appendix/3-tools/sw360/)를 참고할 수 있습니다.

그리고 위에서 언급한 FOSSLight도 SBOM 관리를 위한 기능을 제공합니다.


{{< imgproc fosslightproject Fit "900x600" >}}
<center><i>https://fosslight.org/fosslight-guide/started/2_try/4_project.html</i></center>
{{< /imgproc >}}


LG전자는 FOSSLight를 자체 개발하여 지난 수년간 전체 사업부의 배포용 소프트웨어에 대한 SBOM을 관리해왔으며, 2021년 6월, 이를 누구나 사용할 수 있도록 오픈소스로 공개하였음을 발표하였습니다. 

자세한 설치 및 사용 방법을 한국어 가이드로 제공하고 있어서 국내 기업에게 큰 도움이 될 것으로 기대합니다. 


{{< imgproc fosslight Fit "900x600" >}}
<center><i>https://fosslight.org/</i></center>
{{< /imgproc >}}


## 4. 오픈소스 보안취약점 관리 도구

기업은 알려진 취약점이 포함된 제품/서비스를 추적하고 이를 해결해야 합니다. 이를 위해 기업은 이를 자동화하는 도구 환경을 구축해야 합니다.

SW360은 등록된 Release에 대해 보안 취약점이 있는지 자동으로 확인할 수 있습니다. 이를 위해 SW360은 CVE 정보를 주기적으로 수집하도록 24시간마다 스케줄링하는 기능을 제공합니다. 이렇게 스케줄링을 설정하면 SW360은 정해진 시간에 CVE Search 사이트(https://cve.circl.lu/)에서 CVE 정보를 수집합니다. 이렇게 Vulnerabilities 정보가 수집된 이후에는 생성한 Project에 보안 취약점이 있는지 조회할 수 있어서, 새로 공개된 취약점이 이미 출시한 제품에 존재하는지 여부도 추적이 가능합니다.

SW360으로 보안취약점 관리하는 방법은 [SW360 가이드](https://openchain-project.github.io/OpenChain-KWG/guide/governance_iso5230/appendix/3-tools/sw360/)를 참고할 수 있습니다.

[FOSSLight](https://fosslight.org/ko/)도 이와 유사하게 보안취약점 정보를 자동으로 취득하고, 보안취약점이 검출된 프로젝트 정보를 자동으로 확인하여 필요 시 메일 등 알림을 제공합니다.



## 5. 오픈소스 컴플라이언스 산출물 생성 도구

주요 오픈소스 컴플라이언스 산출물인 오픈소스 고지문은 배포용 소프트웨어어 포함된 오픈소스의 저작권과 라이선스 정보를 제공하기 위한 문서입니다. 오픈소스 고지문은 문서편집기 도구로 작성하는 방식으로 만들수도 있지만, 자동으로 생성하는 도구를 활용하는 것이 좋습니다. 

SK텔레콤은 사내에서 사용하는 오픈소스 고지문 자동 생성 도구를 오픈소스로 공개하였고(`onot` : https://github.com/sktelecom/onot), 카카오에서 주요 기능을 기여하는 방법으로 공동 개발에 참여하였습니다. 

![](onot.png)
<center><i>onot 설치방법</i></center><br>

`onot`은 SPDX 문서 형식으로 작성된 SBOM을 자동으로 오픈 소스 고지문 형식으로 변환하는 도구입니다. Python 프로그램으로 가볍고 간단하게 사용할 수 있습니다.

![](./noticesample.png)
<center><i>onot 생성 오픈소스 고지문 샘플</i></center><br>

FOSSLight도 취득한 SBOM을 기반으로 오픈소스 고지문을 자동으로 생성하는 기능을 제공합니다. 

{{< imgproc fosslightnotice Fit "900x600" >}}
<center><i>https://fosslight.org/fosslight-guide/started/2_try/4_project.html</i></center>
{{< /imgproc >}}


## 6. 오픈소스 컴플라이언스 산출물 보관

기업은 오픈소스 웹사이트를 구축하고, 오픈소스 컴플라이언스 산출물을 등록하여 외부 고객들이 배포용 소프트웨어에 대한 오픈소스 고지문과 공개할 소스 코드 패키지를 언제든지 다운로드할 수 있도록 편의를 제공하는 것이 좋습니다.

이를 위해 ISO/IEC 5230 표준은 다음과 같이 배포용 소프트웨어의 컴플라이언스 산출물 사본을 보관하기 위한 문서화된 절차를 요구합니다.

{{% alert title="ISO/IEC 5230 - License Compliance" color="success" %}}

* 3.4.1.2 - A documented procedure for archiving copies of the compliance artifacts of the supplied software - where the archive is planned to exist for a reasonable period of time (Determined by domain, legal jurisdiction and/or customer contracts) since the last offer of the supplied software; or as required by the identified licenses (whichever is longer). Records exist that demonstrate the procedure has been properly followed.<br>`배포용 소프트웨어의 컴플라이언스 산출물 사본을 보관하기 위한 문서화된 절차 - 산출물 사본은 배포용 소프트웨어의 마지막 배포 이후 합리적인 기간  동안 혹은 식별된 라이선스에서 요구하는 기간 동안 보관해야 한다(둘 중 더 긴 기간을 따름). 이러한 절차가 올바르게 수행되었음을 입증하는 기록이 존재해야 한다. `

{{% /alert %}}

이러한 도구 환경은 SK텔레콤의 오픈소스 웹사이트에서 참고하실 수 있습니다.

{{< imgproc sktcompliance Fit "900x600" >}}
<center><i>https://sktelecom.github.io/compliance/</i></center>
{{< /imgproc >}}

이 웹사이트는 오픈소스로 개발하였고, 소스 코드를 공개하고 있어서 다른 기업들도 쉽게 유사한 환경을 구축할 수 있습니다. 


{{< imgproc sktgithub Fit "900x600" >}}
<center><i>https://github.com/sktelecom/sktelecom.github.io</i></center>
{{< /imgproc >}}

## 7. Summary

여기까지 도구 환경까지 구축하게 되면 ISO 표준 규격 중 아래의 녹색으로 표시된 요구사항을 충족할 수 있다.

![](toolno.png)

