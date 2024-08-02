---
title: "I. OpenChain 프로젝트란?"
weight: 1
type: docs
categories: ["guide"]
tags: ["OpenChain", "NIPA"]
description: >
  ISO 국제 표준에 기반하여 기업이 오픈소스를 효과적으로 관리하기 위한 방안을 소개합니다. 
---
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

[^specification]: OpenChain 규격 - https://www.openchainproject.org/contribute-to-the-standard
[^question]: OpenChain 자체 인증 웹사이트 - https://certification.openchainproject.org/
[^resource]: OpenChain 문서 자료 - https://www.openchainproject.org/resources


기업이 어떻게 이들을 활용할 수 있을지 하나씩 알아보자. 