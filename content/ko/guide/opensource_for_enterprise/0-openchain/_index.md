---
title: "0. OpenChain 살펴보기"
linkTitle: "0. OpenChain"
weight: 10
type: docs
categories: ["guide"]
tags: ["OpenChain", "ISO/IEC 5230", "ISO/IEC 18974"]
description: >
---

## 1. OpenChain Project란?

오늘날 소프트웨어는 갈수록 그 규모와 복잡도가 커지고 있습니다. 하나의 소프트웨어를 개발하기 위해서는 자체 개발한 소프트웨어뿐 아니라 오픈소스, 타사 소프트웨어<sub>3rd party software</sub>, 벤더의 SDK 등 소프트웨어 공급망에 걸친 다양한 소프트웨어가 사용될 수 있습니다.

이러한 복잡한 소프트웨어 공급망의 여러 조직 중 한 곳이라도 오픈소스 라이선스 의무를 준수하지 않거나 올바른 오픈소스 사용 정보를 제공하지 않으면 최종 소프트웨어를 배포하는 기업은 오픈소스 라이선스 의무 준수에 실패할 수밖에 없습니다. 이로 인해 소송을 제기당해 제품 판매가 중단되는 상황이 발생할 수도 있습니다.

{{< imgproc supplychain Fit "900x600" >}}
<center>[OpenChain Open Source Software License Compliance General Public Guide]</center>
{{< /imgproc >}}

2009년 12월, [Busybox](https://busybox.net/)라는 오픈소스 관련된 소송이 있었습니다. Busybox는 임베디드 시스템에 광범위하게 사용되고 있는 GPL-2.0 라이선스가 적용된 오픈소스인데, 국내 회사 두 곳을 포함하여 14개 회사가 소송 대상이 되었습니다. 이 사례에서 주목할만한 점은 이 중에는 제품을 직접 개발하지 않고 배포만 한 회사도 소송을 당하였다는 점입니다.

이와 같은 복잡한 소프트웨어 공급망 환경에서는 어느 한 기업이 아무리 훌륭한 프로세스를 갖추고 있다고 해도 자체적으로 완벽한 오픈소스 컴플라이언스를 달성하는 건 매우 어렵습니다. 결국 한 기업이 오픈소스 컴플라이언스를 제대로 이행하기 위해서는 소프트웨어 공급망의 모든 구성원이 라이선스 의무를 준수하고 올바른 오픈소스 정보를 제공해야 합니다. 공급망 전체에 걸쳐 이런 신뢰가 구축되어야 합니다.

[Linux Foundation](https://www.linuxfoundation.org/)의 [OpenChain](https://www.openchainproject.org/) 프로젝트는 기업이 오픈소스 컴플라이언스를 위해 준수해야 할 핵심 사항을 간결하고 일관성 있게 정의하고, 이를 모두가 준수한다면 소프트웨어 공급망 전체에 걸쳐 오픈소스 라이선스 측면의 신뢰를 구축할 수 있다는 믿음으로 설립되었습니다. 

{{< imgproc openchainlogo Fit "600x450" >}}
<center>[OpenChain Project Logo]</center>
{{< /imgproc >}}

2016년 유럽에서의 한 오픈소스 콘퍼런스에서 퀄컴의 오픈소스 변호사인 데이브 머<sub>Dave Marr</sub>는 바로 이 점을 강조하였습니다. 한 기업의 오픈소스 컴플라이언스 수준을 높이기 위해서는 소프트웨어 공급망 내 모든 구성원의 오픈소스 컴플라이언스 수준을 높여야 합니다. 아울러 이를 위해서는 오픈소스를 충분히 이해하고, 정책 및 프로세스를 이미 구축하고 있는 선진 기업이 자신의 자산과 노하우를 공개하여 누구나 이를 참고할 수 있게 하면 어떻겠냐는 의견을 제시하였습니다. 콘퍼런스 참석자들은 "오픈소스 컴플라이언스는 기업의 이익을 차별화할 수 있는 분야가 아니다. 기업은 적은 리소스를 투입하면서도 적정한 수준의 리스크 관리를 원한다. 그렇기 때문에 기업이 가진 자산을 서로 공유하면 할수록 적은 리소스로 모두 함께 컴플라이언스를 달성 할 수 있게 된다"는 아이디어에 공감하였습니다. 그렇게 OpenChain 프로젝트(당시에는 Work Group)는 시작되었고, [퀄컴](https://www.qualcomm.com/), [지멘스](https://www.siemens.com/), [윈드리버](https://www.windriver.com/), [ARM](https://www.arm.com/), [어도비](https://www.adobe.com/) 등 다수 글로벌 기업들이 참여하였습니다.

OpenChain 프로젝트는 기업들이 오픈소스 컴플라이언스를 더욱 쉽게 달성 할 수 있도록 크게 다음 세 가지를 제공합니다. 

1. [OpenChain 규격](https://www.openchainproject.org/get-started/conformance)
2. [OpenChain 적합성 인증](https://certification.openchainproject.org/)
3. [문서 자료](https://www.openchainproject.org/resources)

기업이 어떻게 이들을 활용할 수 있을지 하나씩 알아보겠습니다.

## 2. OpenChain 규격과 ISO/IEC 표준

OpenChain 규격은 오픈소스 컴플라이언스를 위한 핵심 요구사항을 정의한 10페이지 분량의 문서입니다. 2016년 OpenChain 규격 버전 1.0이 발표되었습니다. OpenChain 규격은 기업의 규모나 업종과 관계없이 모든 기업에 적합하도록 설계되었습니다.

2020년에는 버전 2.1의 규격이 배포됐으며, 기업이 오픈소스 컴플라이언스 달성을 위해 꼭 수행해야 할 여섯 가지 핵심 요구사항과 이를 입증하기 위해 필요한 자료 목록을 정의하고 있습니다.

1. 프로그램 설립
2. 관련 업무 정의 및 지원
3. 오픈소스 콘텐츠 검토 및 승인
4. 컴플라이언스 산출물 생성 및 전달
5. 오픈소스 커뮤니티 참여에 대한 이해
6. 규격 요구사항 준수

오픈소스 컴플라이언스를 처음 시작하는 기업이라면 이러한 OpenChain 규격의 요구사항을 하나씩 충족해가면서 수준을 향상시키는 것이 좋은 전략입니다.

{{< imgproc spec Fit "1200x900" >}}
<center>< 출처 : https://github.com/OpenChain-Project/Specification/blob/master/Official/en/2.1/openchainspec-2.1.pdf></center>
{{< /imgproc >}}

이 OpenChain 규격은 2020년 12월 오픈소스 컴플라이언스에 대한 국제 표준인 [ISO/IEC 5230:2020](https://www.iso.org/standard/81039.html)으로 정식 등록되었습니다.

{{< imgproc iso Fit "900x600" >}}
<center>< 출처 : https://www.iso.org/standard/81039.html></center>
{{< /imgproc >}}

지난 4년간 사실상의 표준이었던 OpenChain 규격이 ISO/IEC 5230:2020이라는 정식 국제 표준으로 전환되었고, 이는 오픈소스 컴플라이언스 및 프로세스 관리를 정의한 최초의 국제 표준입니다. 이로써 글로벌 IT기업의 ISO/IEC 5230 준수에 관한 관심이 높아지고 있고, 소프트웨어 공급망에서 공급자들에게 ISO/IEC 5230 준수를 요구하는 기업이 늘어날 것으로 예상됩니다.

2023년에는 오픈소스 보안 보증을 위한 새로운 표준인 [ISO/IEC 18974](https://www.iso.org/standard/81039.html)가 발표되었습니다. 이 표준은 OpenChain 보안 보증 규격을 기반으로 하며, 오픈소스 소프트웨어의 알려진 보안 취약점을 관리하기 위한 핵심 요구사항을 정의합니다. ISO/IEC 18974는 다음과 같은 주요 영역을 다룹니다:

1. 보안 프로세스가 필요한 핵심 영역 식별
2. 역할과 책임 할당 방법
3. 프로세스의 지속 가능성 보장 방법

ISO/IEC 18974는 ISO/IEC 5230과 마찬가지로 간결하고 이해하기 쉬우며, 글로벌 커뮤니티의 지원을 받아 무료 참조 자료와 적합성 리소스를 제공합니다.

이 두 표준은 함께 작동하여 조직이 오픈소스 소프트웨어의 라이선스 컴플라이언스와 보안 보증을 효과적으로 관리할 수 있도록 지원합니다. ISO/IEC 5230이 라이선스 컴플라이언스에 중점을 둔다면, ISO/IEC 18974는 보안 취약점 관리에 초점을 맞추고 있어 상호 보완적인 역할을 합니다.



## 3. ISO/IEC 표준 인증 방법

ISO/IEC 5230과 ISO/IEC 18974의 요구사항을 모두 준수한다면 이 표준들에 적합한 오픈소스 프로그램을 보유했음을 인증받을 수 있습니다. 오픈소스 프로그램이란 정책, 프로세스, 인원 등 기업이 오픈소스 컴플라이언스와 보안 보증 활동을 수행하기 위한 일련의 관리 체계를 의미합니다.

아래의 이미지는 ISO/IEC 5230이 요구하는 항목 번호를 나열한 그림입니다. 이 항목을 모두 충족하는 기업은 소프트웨어 공급망에서 투명하고 신뢰할 수 있는 오픈소스 거버넌스 체계를 구축하였다고 인정받을 수 있습니다.

{{< imgproc spec3111 Fit "900x600" >}}
{{< /imgproc >}}

[OpenChain 프로젝트](https://www.openchainproject.org/)에서 제안하는 인증 방법은 세 가지입니다:

* 자체 인증
* 독립 평가
* 타사 인증

{{< imgproc certify Fit "900x600" >}}
<center><i> https://www.openchainproject.org/get-started/conformance </i></center>
{{< /imgproc >}}

각각의 방법을 알아보겠습니다.

### (1) 자체 인증

자체 인증은 OpenChain 프로젝트에서 가장 권장하는 방법이며, 비용이 발생하지 않는다는 장점이 있습니다. OpenChain Project는 기업이 OpenChain 규격을 준수하는지 자체적으로 확인할 수 있도록 [ISO/IEC 5230 자체 인증 웹사이트](https://openchainproject.org/checklist-iso-5230-2020)를 제공합니다. 기업의 오픈소스 담당자는 이 웹사이트에 가입해 온라인 자체 인증을 시작할 수 있습니다. 자체 인증은 아래와 같이 Yes/No 질문에 답변하는 방식으로 진행됩니다.

{{< imgproc question Fit "900x600" >}}
<center>< 출처 : https://certification.openchainproject.org/></center>
{{< /imgproc >}}

오픈소스 컴플라이언스 체계를 잘 구축하여 OpenChain 자체 인증의 모든 질문에 Yes로 대답할 수 있다면 이 결과를 웹사이트상에 제출할 수 있습니다(Conforming Submission). 그러면 [Linux Foundation](https://www.linuxfoundation.org/)의 간단한 문답식의 확인 절차를 거친 후 ISO/IEC 5230 인증을 선언할 수 있게 됩니다.

{{< imgproc sktannounce Fit "900x600" >}}
<center><예: SK텔레콤 인증 선언 - 출처: https://www.openchainproject.org/featured/2021/09/08/sk-telecom></center>
{{< /imgproc >}}

이렇게 인증 선언을 하게 되면, Global Software Supply Chain에서 ISO/IEC 5230을 준수하는 오픈소스 프로그램을 가진 기업으로 인정받게 됩니다.

{{< imgproc announcelogo Fit "900x600" >}}
<center>< ISO/IEC 5230 적합 프로그램 보유 선언 기업, 출처 - https://www.openchainproject.org/  ></center>
{{< /imgproc >}}

OpenChain 프로젝트는 자체 인증 방식을 권장합니다. 참고로, OpenChain 적합성을 선언한 대부분의 기업도 자체 인증 방식을 채택하였습니다.

또한, 기업은 자체 인증 과정을 통해 부족한 부분이 무엇인지, 추가로 필요한 활동이 무엇인지 판단할 수 있습니다. 이 가이드에서는 조직, 정책, 프로세스 등 주요 구성 요소별로 ISO/IEC 5230과 ISO/IEC 18974 요구사항을 준수할 수 있는 방법을 설명합니다.

가이드만으로 자체적으로 보완할 수 있는 역량이 부족한 기업인 경우 독립 평가 방법을 고려할 수 있습니다.

### (2) 독립 평가

독립 평가는 기업 외부의 독립 기관이 공정한 관점에서 기업의 오픈소스 컴플라이언스와 보안 보증 상태를 점검하고 평가합니다. 독립 평가의 특징은 평가 보고서를 생성하는 것에 그치지 않고 도출된 미비점을 보완하기 위한 컨설팅을 제공한다는 것입니다. (단, 공인 인증서를 발급하지는 않습니다.)

기업은 독립 기관으로부터의 공정한 평가와 컨설팅을 받아 컴플라이언스와 보안 보증 수준을 높이고, 다시 독립 평가를 수행하는 반복적인 과정을 통해 정책을 세분화하고 프로세스를 구축할 수 있습니다.

{{< imgproc independent2 Fit "900x1200" >}}
<center>< Independent Compliance Assessment, 출처 - https://youtu.be/DEBd-g0Ab8E ></center>
{{< /imgproc >}}

결국 기업은 ISO/IEC 5230과 ISO/IEC 18974 인증을 받을 수 있는 수준에 도달하게 되고, 그때 자체 인증, 혹은 타사 인증을 획득하는 절차에 돌입할 수 있습니다. 독립 평가는 이렇게 기업의 오픈소스 컴플라이언스와 보안 보증 수준을 높이기 위한 평가와 컨설팅을 제공하여 기업이 ISO/IEC 5230과 ISO/IEC 18974 적합 프로그램을 보유하고 인증을 획득할 수 있게 지원합니다.

독립 평가를 제공하는 업체는 [AlektoMetis](https://alektometis.com/), [Source Code Control](https://sourcecodecontrol.co/) 등이 있습니다.

국내에서는 OpenChain Korea Work Group의 Subgroup인 [Conformance Group](https://openchain-project.github.io/OpenChain-KWG/subgroup/conformance/)에서 기업간에 자체적으로 ISO/IEC 5230과 ISO/IEC 18974 준수를 위한 방법을 논의하고 공유하는 커뮤니티가 있습니다. OpenChain Korea Work Group 멤버라면 누구나 참여하여 도움을 받을 수 있습니다.

### (3) 타사 인증

소프트웨어 공급망에서 구매자에게 보다 신뢰성 있고 투명한 오픈소스 컴플라이언스와 보안 보증 수준을 나타내고자 한다면 타사 인증 기관으로부터 인증서를 발급받고 이를 홍보에 활용할 수 있습니다. 또한, 오픈소스 컴플라이언스와 보안 보증의 보다 견고한 신뢰성을 요구하는 일부 구매자는 공급자(Supplier)에게 타사 인증을 의무화할 수도 있을 것으로 예상됩니다.

2024년 기준, OpenChain의 공인 타사 인증 기관은 [ORCRO](https://orcro.co.uk/), [PWC](https://www.pwc.de/en/opensource), [TÜV SÜD](https://www.tuvsud.com/), [Synopsys](https://www.synopsys.com/), [Bureau Veritas](https://group.bureauveritas.com/)입니다.

{{< imgproc 3rdpartycertifiers Fit "900x600" >}}
<center>< Third-Party Certifiers, 출처 - https://www.openchainproject.org/partners ></center>
{{< /imgproc >}}

이들은 ISO/IEC 5230과 ISO/IEC 18974 적합 프로그램 확인을 위한 평가를 제공하고 통과한 기업에 인증서를 발급합니다.

{{< imgproc pwc Fit "900x600" >}}
<center>< PWC certification, 출처 - https://youtu.be/HslvXCM-4pQ ></center>
{{< /imgproc >}}

2024년 현재, 아직은 타사 인증을 의무적으로 요구하는 구매자나 기관은 많지 않습니다. 하지만 유럽의 자동차 업계에서는 ISO/IEC 5230과 ISO/IEC 18974가 [ASPICE](http://www.automotivespice.com/)(Automotive SPICE, 자동차 소프트웨어 개발을 위한 국제 표준 프로세스 모델)와 같이 자동차 소프트웨어 공급자에게 의무화될 날이 머지않을 것이라고 예견하는 전문가도 있습니다.

또한, 자세한 자체 인증 방법은 다음 슬라이드를 참고할 수 있습니다:

* [OpenChain Korea 9th Meeting - How to Self Certify](https://openchain-project.github.io/OpenChain-KWG/meeting/9th/OpenChain_Korea_20210311_howto.pptx)



## 4. OpenChain Resources

[OpenChain 프로젝트](https://www.openchainproject.org/)에서는 기업이 컴플라이언스 프로그램을 구축하는 데 필요한 정책 문서 템플릿, 교육 자료 등 다양한 문서 자료를 제공합니다. 이 자료는 OpenChain 규격을 준수하고 일반적인 오픈소스 컴플라이언스 활동을 지원하기 위해 고안됐으며, 누구나 자유롭게 사용할 수 있도록 CC-0 라이선스로 제공됩니다.

{{< imgproc resource Fit "900x600" >}}
<center>< OpenChain Curriculum, 출처 - https://www.openchainproject.org/resources ></center>
{{< /imgproc >}}

이 가이드의 많은 내용도 OpenChain에서 공개한 자료를 기반으로 작성하였습니다. 각 기업의 오픈소스 담당자는 정책, 프로세스, 교육자료가 필요하다면 OpenChain Resources를 먼저 찾아보기 바랍니다. 또한 이 자료는 한국어로도 번역되어 공개되고 있습니다. [OpenChain Korea Work Group](https://openchain-project.github.io/OpenChain-KWG/)에서 이러한 번역 작업을 주도하고 있습니다. 한국어 번역은 관심 있는 누구나 [참여](https://openchain-project.github.io/OpenChain-KWG/resource/)할 수 있습니다.

OpenChain 프로젝트는 또한 다양한 웨비나와 스터디 그룹을 운영하여 추가적인 리소스를 제공하고 있습니다:

1. 웨비나: OpenChain 프로젝트는 정기적으로 웨비나를 개최하여 오픈소스 컴플라이언스와 보안 관련 최신 동향과 모범 사례를 공유합니다. 이 웨비나는 [OpenChain 웹사이트](https://openchainproject.org/webinars)에서 확인할 수 있으며, 녹화본도 제공됩니다.

2. 교육 자료: OpenChain 프로젝트는 [종합적인 교육 커리큘럼](https://github.com/OpenChain-Project/Reference-Material)을 제공하여 기업이 내부 교육 프로그램을 개발하는 데 도움을 줍니다. 이 자료는 오픈소스 소프트웨어의 기본 개념부터 라이선스 컴플라이언스, 보안 보증까지 다양한 주제를 다룹니다.

이러한 다양한 리소스를 활용함으로써, 기업은 ISO/IEC 5230과 ISO/IEC 18974 표준을 준수하는 강력한 오픈소스 프로그램을 구축하고 유지할 수 있습니다.


## 5. ISO/IEC 표준 적용 추세

ISO/IEC 5230과 ISO/IEC 18974 표준의 적용은 글로벌 소프트웨어 공급망에서 점차 확대되는 추세를 보이고 있습니다.

2021년 초, 독일의 자동차 제조사가 부품 공급업체에게 ISO/IEC 5230 준수 계획을 요구하기 시작했다는 소식이 전해졌습니다. 이에 대해 유럽의 한 오픈소스 분야 교수는 "앞으로 소프트웨어 공급망의 구매자는 공급자에게 ISO/IEC 5230 준수를 요구할 것이 명백하다"며, "자동차 업계에서는 ASPICE와 같은 위치를 차지하게 될 것"이라고 전망했습니다.

이러한 전망을 반영하듯 2021년 5월, 폭스바겐 그룹의 [Scania](https://www.scania.com/)는 공급업체가 따라야 하는 자체 기업 표준(STD 4589)에 ISO/IEC 5230 준수를 요구하는 내용을 포함시켰습니다.

{{< imgproc scania Fit "900x600" >}}
<center><i>linkedin, May 2021</i></center>
{{< /imgproc >}}

또한, 2021년 7월, 자동차 및 산업 기술 기업인 [Bosch](https://www.bosch.com/)는 연말까지 모든 그룹사가 ISO/IEC 5230을 준수하는 프로그램을 갖추겠다고 선언하였습니다. 업계에서는 모든 자동차 제조사나 다른 산업에서도 소프트웨어 공급망 내에서 ISO/IEC 5230을 요구하기 시작하는 것은 시간 문제라는 전망을 내놓고 있습니다.

{{< imgproc bosch Fit "900x600" >}}
<center><i>linkedin, July 2021</i></center>
{{< /imgproc >}}

2023년에는 오픈소스 보안 보증을 위한 새로운 표준인 ISO/IEC 18974가 발표되었습니다. 이 표준은 오픈소스 소프트웨어의 알려진 보안 취약점을 관리하기 위한 핵심 요구사항을 정의합니다. ISO/IEC 18974는 ISO/IEC 5230과 함께 조직이 오픈소스 소프트웨어의 라이선스 컴플라이언스와 보안 보증을 효과적으로 관리할 수 있도록 지원합니다.

2024년 현재, 이러한 추세는 더욱 가속화되고 있습니다. 예를 들어, [KT](https://www.kt.com/)는 2024년 10월에 ISO/IEC 18974 인증을 획득했다고 발표했습니다. 이는 국내 기업들도 오픈소스 보안 관리에 대한 국제 표준을 적극적으로 도입하고 있음을 보여줍니다.

또한, [OpenChain Korea Work Group](https://openchain-project.github.io/OpenChain-KWG/)의 활동도 활발해지고 있습니다. 2024년 6월에 열린 제22차 정기 모임에서는 ISO/IEC 18974 오픈소스 보안 표준 준비 현황과 SBOM 기반 SW공급망 관리 가이드라인에 대한 논의가 이루어졌습니다. 이는 국내 기업들이 ISO/IEC 5230과 ISO/IEC 18974 표준을 적극적으로 수용하고 있음을 보여줍니다.

이러한 추세는 앞으로도 계속될 것으로 예상됩니다. 소프트웨어 공급망의 복잡성이 증가하고 보안 위협이 늘어남에 따라, ISO/IEC 5230과 ISO/IEC 18974와 같은 국제 표준의 중요성은 더욱 커질 것으로 보입니다. 기업들은 이러한 표준을 준수함으로써 오픈소스 사용의 투명성을 높이고, 보안 리스크를 효과적으로 관리할 수 있을 것입니다.