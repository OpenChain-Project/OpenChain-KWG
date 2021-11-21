---
title: "1. ISO/IEC 5230 살펴보기"
linkTitle: "1. ISO/IEC 5230"
weight: 10
type: docs
description: >
---

## ISO/IEC 5230 이란?

ISO/IEC 5230은 Linux Foundation의 OpenChain Project에서 만든 규격으로 소프트웨어 공급망 내 신뢰할 수 있는 오픈소스 컴플라이언스를 보장하기 위한 최소한의 핵심 요구 사항을 정의하였다. 

오늘날 소프트웨어는 갈수록 그 규모와 복잡도가 커지고 있다. 하나의 소프트웨어를 개발하기 위해서는 자체 개발한 소프트웨어뿐 아니라 오픈소스, 타사 소프트웨어<sub>3rd party software</sub>, 벤더의 SDK 등 소프트웨어 공급망에 걸친 다양한 소프트웨어가 사용될 수 있다.

이러한 복잡한 소프트웨어 공급망의 여러 조직 중 한 곳이라도 오픈소스 라이선스 의무를 준수하지 않거나 올바른 오픈소스 사용 정보를 제공하지 않으면 최종 소프트웨어를 배포하는 기업은 오픈소스 라이선스 의무 준수에 실패할 수밖에 없다. 이로 인해 소송을 제기당해 제품 판매가 중단되는 상황이 발생할 수도 있다.

{{< imgproc supplychain Fit "900x600" >}}
<center>[OpenChain Open Source Software License Compliance General Public Guide]</center>
{{< /imgproc >}}

2009년 12월, Busybox라는 오픈소스 관련된 소송이 있었다. Busybox는 임베디드 시스템에 광범위하게 사용되고 있는 GPL-2.0 라이선스가 적용된 오픈소스인데, 국내 회사 두 곳을 포함하여 14개 회사가 소송 대상이 되었다. 이 사례에서 주목할만한 점은 이 중에는 제품을 직접 개발하지 않고 배포만 한 회사도 소송을 당하였다는 점이다.

이와 같은 복잡한 소프트웨어 공급망 환경에서는 어느 한 기업이 아무리 훌륭한 프로세스를 갖추고 있다고 해도 자체적으로 완벽한 오픈소스 컴플라이언스를 달성하는 건 매우 어렵다. 결국 한 기업이 오픈소스 컴플라이언스를 제대로 이행하기 위해서는 소프트웨어 공급망의 모든 구성원이 라이선스 의무를 준수하고 올바른 오픈소스 정보를 제공해야 한다. 공급망 전체에 걸쳐 이런 신뢰가 구축되어야 한다.

Linux Foundation의 [OpenChain](https://www.openchainproject.org/) 프로젝트는 기업이 오픈소스 컴플라이언스를 위해 준수해야 할 핵심 사항을 간결하고 일관성 있게 정의하고, 이를 모두가 준수한다면 소프트웨어 공급망 전체에 걸쳐 오픈소스 라이선스 측면의 신뢰를 구축할 수 있다는 믿음으로 설립되었다. 

{{< imgproc openchainlogo Fit "600x450" >}}
<center>[OpenChain Project Logo]</center>
{{< /imgproc >}}

2016년 유럽에서의 한 오픈소스 콘퍼런스에서 퀄컴의 오픈소스 변호사인 데이브 머<sub>Dave Marr</sub>는 바로 이 점을 강조하였다. 한 기업의 오픈소스 컴플라이언스 수준을 높이기 위해서는 소프트웨어 공급망 내 모든 구성원의 오픈소스 컴플라이언스 수준을 높여야 한다. 아울러 이를 위해서는 오픈소스를 충분히 이해하고, 정책 및 프로세스를 이미 구축하고 있는 선진 기업이 자신의 자산과 노하우를 공개하여 누구나 이를 참고할 수 있게 하면 어떻겠냐는 의견을 제시하였다. 콘퍼런스 참석자들은 “오픈소스 컴플라이언스는 기업의 이익을 차별화할 수 있는 분야가 아니다. 기업은 적은 리소스를 투입하면서도 적정한 수준의 리스크 관리를 원한다. 그렇기 때문에 기업이 가진 자산을 서로 공유하면 할수록 적은 리소스로 모두 함께 컴플라이언스를 달성 할 수 있게 된다”는 아이디어에 공감하였다. 그렇게 OpenChain 프로젝트(당시에는 Work Group)는 시작되었고, 퀄컴, 지멘스, 윈드리버, ARM, 어도비 등 다수 글로벌 기업들이 참여하였다.

OpenChain 프로젝트는 기업들이 오픈소스 컴플라이언스를 더욱 쉽게 달성 할 수 있도록 크게 다음 세 가지를 제공한다. 

1. OpenChain 규격[^specification]
2. OpenChain 적합성 인증[^question]
3. 문서 자료[^resource]

[^specification]: OpenChain 규격 - https://www.openchainproject.org/get-started/conformance
[^question]: OpenChain 자체 인증 웹사이트 - https://certification.openchainproject.org/
[^resource]: OpenChain 문서 자료 - https://www.openchainproject.org/resources

기업이 어떻게 이들을 활용할 수 있을지 하나씩 알아보자. 

## OpenChain 규격과 ISO/IEC 5230 

OpenChain 규격은 오픈소스 컴플라이언스를 위한 핵심 요구사항을 정의한 10페이지 분량의 문서이다. 2016년 OpenChain 규격 버전 1.0이 발표되었다. OpenChain 규격은 기업의 규모나 업종과 관계없이 모든 기업에 적합하도록 설계되었다. 

2020년에는 버전 2.1의 규격이 배포됐으며, 기업이 오픈소스 컴플라이언스 달성을 위해 꼭 수행해야 할 여섯 가지 핵심 요구사항과 이를 입증하기 위해 필요한 자료 목록을 정의하고 있다.

1. 프로그램 설립
2. 관련 업무 정의 및 지원
3. 오픈소스 콘텐츠 검토 및 승인
4. 컴플라이언스 산출물 생성 및 전달
5. 오픈소스 커뮤니티 참여에 대한 이해
6. 규격 요구사항 준수

오픈소스 컴플라이언스를 처음 시작하는 기업이라면 이러한 OpenChain 규격의 요구사항을 하나씩 충족해가면서 수준을 향상시키는 것이 좋은 전략이다.

{{< imgproc spec Fit "1200x900" >}}
<center>< 출처 : https://github.com/OpenChain-Project/Specification/blob/master/Official/en/2.1/openchainspec-2.1.pdf></center>
{{< /imgproc >}}

이 OpenChain 규격은 2020년 12월 오픈소스 컴플라이언스에 대한 국제 표준[^ISO]으로 정식 등록되었다. 

[^ISO]: ISO/IEC 5230 : https://www.iso.org/standard/81039.html


{{< imgproc iso Fit "900x600" >}}
<center>< 출처 : https://www.iso.org/standard/81039.html></center>
{{< /imgproc >}}


지난 4년간 사실상의 표준이었던 OpenChain 규격이 ISO/IEC 5230:2020이라는 정식 국체 표준으로 전환되었고, 이는 오픈소스 컴플라이언스 및 프로세스 관리를 정의한 최초의 국제 표준이다. 이로써 글로벌 IT기업의 ISO/IEC 5230 준수에 관한 관심이 높아지고 있고, 소프트웨어 공급망에서 공급자들에게 ISO/IEC 5230 준수를 요구하는 기업이 늘어날 것으로 예상된다. 


## ISO/IEC 5230 인증 방법

ISO/IEC 5230에서의 요구 사항을 모두 준수한다면 ISO/IEC 5230에 적합한 오픈소스 프로그램을 보유했음을 인증받을 수 있다. 오픈소스 프로그램이란 정책, 프로세스, 인원 등 기업이 오픈소스 컴플라이언스 활동을 수행하기 위한 일련의 관리 체계를 의미한다. 

아래의 이미지는 ISO/IEC 5230이 요구하는 항목 번호를 나열한 그림이다. 이 항목을 모두 충족하는 기업은 소프트웨어 공급망에서 투명하고 신뢰할 수 있는 오픈소스 거버넌스 체계를 구축하였다고 인정받을 수 있다. 

{{< imgproc spec3111 Fit "900x600" >}}
{{< /imgproc >}}

OpenChain 프로젝트에서 제안하는 인증 방법은 세 가지 이다. 
* 자체 인증
* 독립 평가
* 타사 인증

{{< imgproc certify Fit "900x600" >}}
<center><i> https://www.openchainproject.org/get-started/conformance </i>></center>
{{< /imgproc >}}

각각의 방법을 알아보자. 

### 1. 자체 인증 (Self Certification)

자체 인증은 OpenChain 프로젝트에서 제일 권장하는 방법이며, 비용이 발생하지 않는다는 장점이 있다. OpenChain Project는 기업이 OpenChain 규격을 준수하는지 자체적으로 확인할 수 있도록 OpenChain 자체 인증 웹사이트를 제공한다[^question]. 기업의 오픈소스 담당자는 OpenChain 자체 인증 웹사이트에 가입해 온라인 자체 인증을 시작할 수 있다. 자체 인증은 아래와 같이 Yes/No 질문에 답변하는 방식으로 진행된다.

{{< imgproc question Fit "900x600" >}}
<center>< 출처 : https://certification.openchainproject.org/></center>
{{< /imgproc >}}

오픈소스 컴플라이언스 체계를 잘 구축하여 OpenChain 자체 인증의 모든 질문에 Yes로 대답할 수 있다면 이 결과를 웹사이트상에 제출할 수 있다<sub>Conforming Submission</sub>. 그러면 Linux Foundation의 간단한 문답식의 확인 절차를 거친 후 ISO/IEC 5230 인증을 선언을 할 수 있게 된다. 

{{< imgproc sktannounce Fit "900x600" >}}
<center><예: SK텔레콤 인증 선언 - 출처: https://www.openchainproject.org/featured/2021/09/08/sk-telecom></center>
{{< /imgproc >}}

이렇게 인증 선언을 하게 되면, Global Software Supply Chain에서 ISO/IEC 5230을 준수하는 오픈소스 프로그램을 가진 기업으로 인정 받게 된다. 

{{< imgproc announcelogo Fit "900x600" >}}
<center>< ISO/IEC 5230 적합 프로그램 보유 선언 기업, 출처 - https://www.openchainproject.org/  ></center>
{{< /imgproc >}}

OpenChain 프로젝트는 자체 인증 방식을 권장한다. 참고로, OpenChain 적합성을 선언한 대부분의 기업도 자체 인증 방식을 채택하였다. 

또한, 기업은 자체 인증 과정을 통해 부족한 부분이 무엇인지, 추가로 필요한 활동이 무엇인지 판단할 수 있다. 이 가이드에서는 조직, 정책, 프로세스 등 주요 구성 요소 별로 ISO/IEC 5230 요구 사항을 준수할 수 있는 방법을 설명한다. 

가이드만으로 자체적으로 보완할 수 있는 역량이 부족한 기업인 경우 독립 평가 방법을 고려할 수 있다. 

### 2. 독립 평가 (Independent Assessment)

독립 평가는 기업 외부의 독립 기관이 공정한 관점에서 기업의 오픈소스 컴플라이언스 상태를 점검하고 평가한다. 독립 평가의 특징은 평가 보고서를 생성하는 것에 그치지 않고 도출된 미비점을 보완하기 위한 컨설팅을 제공한다. (단, 공인 인증서를 발급하지는 않는다.)

기업은 독립 기관으로부터의 공정한 평가와 컨설팅을 받아 컴플라이언스 수준을 높이고, 다시 독립 평가를 수행하는 반복적인 과정을 통해 정책을 세분화하고 프로세스를 구축할 수 있다. 


{{< imgproc independent2 Fit "900x1200" >}}
<center>< Independent Compliance Assessment, 출처 - https://youtu.be/DEBd-g0Ab8E ></center>
{{< /imgproc >}}

결국 기업은 ISO/IEC 5230 인증을 받을 수 있는 수준에 도달하게 되고, 그때 자체 인증, 혹은 타사 인증을 획득하는 절차에 돌입할 수 있다. 독립 평가는 이렇게 기업의 오픈소스 컴플라이언스 수준을 높이기 위한 평가와 컨설팅을 제공하여서 기업이 ISO/IEC 5230 적합 프로그램을 보유하고 인증을 획득할 수 있게 지원한다. 

독립 평가를 제공하는 업체는 [AlektoMetis](https://alektometis.com/)[^AlektoMetis], [Source Code Control](https://sourcecodecontrol.co/)[^SourceCodeControl] 등이 있다. 

[^AlektoMetis]: AlektoMetis - https://alektometis.com/, 
[^SourceCodeControl]: Source Code Control - https://sourcecodecontrol.co/

국내에서는 OpenChain Korea Work Group의 Subgroup인 [Conformance Group](https://openchain-project.github.io/OpenChain-KWG/subgroup/conformance/)[^conformancegroup]에서 기업간에 자체적으로 ISO/IEC 5230 준수를 위한 방법을 논의하고 공유하는 커뮤니티가 있다. OpenChain Korea Work Group 멤버라면 누구나 참여하여 도움을 받을 수 있다. 

[^conformancegroup]: Conformance Group - https://openchain-project.github.io/OpenChain-KWG/subgroup/conformance/


### 3. 타사 인증 (Third-Party Certification)

소프트웨어 공급망에서 구매자에게 보다 신뢰성 있고 투명한 오픈소스 컴플라이언스 수준을 나타내고자 한다면 타사 인증 기관으로부터 인증서를 발급받고 이를 홍보에 활용할 수 있다. 또한, 오픈소스 컴플라이언스의 보다 견고한 신뢰성을 요구하는 일부 구매자는 공급자<sub>Supplier</sub>에게 타사 인증을 의무화 할 수도 있을 것으로 예상된다. 

2021년 10월 기준, OpenChain의 공인 타사 인증 기관은 [ORCRO](https://orcro.co.uk/)[^ORCRO], [PWC](https://www.pwc.de/en/opensource)[^PWC], [TÜV SÜD](https://www.tuvsud.com/)[^TUVSUD], [Synopsys](https://www.synopsys.com/)[^synopsys], [Bureau Veritas](https://group.bureauveritas.com/)[^BV]이다.

[^ORCRO]: ORCRO- https://orcro.co.uk/
[^PWC]: PWC - https://www.pwc.de/en/opensource
[^TUVSUD]: TÜV SÜD - https://www.tuvsud.com
[^synopsys]: Synopsys - https://www.synopsys.com/
[^BV]: Bureau Veritas - https://group.bureauveritas.com/

{{< imgproc 3rdpartycertifiers Fit "900x600" >}}
<center>< Third-Party Certifiers, 출처 - https://www.openchainproject.org/partners ></center>
{{< /imgproc >}}

이들은 ISO/IEC 5230 적합 프로그램 확인을 위한 평가를 제공하고 통과한 기업에 인증서를 발급한다. 

{{< imgproc pwc Fit "900x600" >}}
<center>< PWC certification, 출처 - https://youtu.be/HslvXCM-4pQ ></center>
{{< /imgproc >}}

2021년 10월 현재, 아직은 타사 인증을 의무적으로 요구하는 구매자나 기관은 없어 보인다. 하지만 유럽의 자동차 업계에서는 ISO/IEC 5230이 [ASPICE](http://www.automotivespice.com/)<sub>Automotive SPICE</sub>[^aspice] 자동차 소프트웨어 개발을 위한 국제 표준 프로세스 모델)와 같이 자동차 소프트웨어 공급자에게 의무화될 날이 머지않을 것이라고 예견하는 전문가도 있다. 

[^aspice]: ASPICE : 자동차 소프트웨어 개발을 위한 국제 표준 프로세스 모델 - http://www.automotivespice.com

또한, 자세한 자체 인증 방법은 다음 슬라이드를 참고할 수 있다. 

* [https://openchain-project.github.io/OpenChain-KWG/meeting/9th/OpenChain_Korea_20210311_howto.pptx](https://openchain-project.github.io/OpenChain-KWG/meeting/9th/OpenChain_Korea_20210311_howto.pptx)


## OpenChain Resources

OpenChain 프로젝트에서는 기업이 컴플라이언스 프로그램을 구축하는 데 필요한 정책 문서 템플릿, 교육 자료 등 다양한 문서 자료를 제공한다. 이 자료는 OpenChain 규격을 준수하고 일반적인 오픈소스 컴플라이언스 활동을 지원하기 위해 고안됐으며, 누구나 자유롭게 사용할 수 있도록 CC-0 라이선스로 제공된다.

{{< imgproc resource Fit "900x600" >}}
<center>< OpenChain Curriculum, 출처 - https://www.openchainproject.org/resources ></center>
{{< /imgproc >}}

이 가이드의 많은 내용도 OpenChain에서 공개한 자료를 기반으로 작성하였다. 각 기업의 오픈소스 담당자는 정책, 프로세스, 교육자료가 필요하다면 OpenChain Resources를 먼저 찾아보기 바란다. 또한 이 자료는 한국어로도 번역되어 공개되고 있다. [OpenChain Korea Work Group](https://openchain-project.github.io/OpenChain-KWG/)[^KWG]에서 이러한 번역 작업을 주도하고 있다. 한국어 번역은 관심 있는 누구나 [참여](https://openchain-project.github.io/OpenChain-KWG/resource/)할 수 있다[^translate].

[^KWG]: OpenChain Korea Work Group - https://openchain-project.github.io/OpenChain-KWG/

[^translate]: 한국어 번역 작업 - https://openchain-project.github.io/OpenChain-KWG/resource/

## ISO/IEC 5230 추세

2021년 초, 독일의 자동차 제조사가 부품 Supplier에게 ISO/IEC 5230 준수 계획을 요구하기 시작했다는 소식이 들렸고, 유럽의 한 오픈소스 분야 교수는 "앞으로 소프트웨어 공급망의 Buyer는 Supplier에게 ISO/IEC 5230 준수를 요구할 것은 명백하다"며, "자동차 업계로 보면 A-SPICE처럼 될 것이다"라고 말했다. 

이를 반영하듯 2021년 5월, 폭스바겐 그룹의 Scania는 Supplier가 따라야 하는 자체 기업 표준(STD 4589)에 ISO/IEC 5230 준수를 요구하는 내용을 포함시켰다. 

{{< imgproc scania Fit "900x600" >}}
<center><i>linkedin, May 2021</i></center>
{{< /imgproc >}}

또한, 2021년 7월, 자동차 및 산업 기술 기업인 Boash는 연말까지 모든 그룹사가 ISO/IEC 5230을 준수하는 프로그램을 갖추겠다고 선언하였다. 업계에서는 모든 자동차 제조사나 다른 산업에서도 소프트웨어 공급망 내에서 ISO/IEC 5230을 요구하기 시작하는건 시간 문제라는 전망도 내놓고 있다. 

{{< imgproc bosch Fit "900x600" >}}
<center><i>linkedin, July 2021</i></center>
{{< /imgproc >}}