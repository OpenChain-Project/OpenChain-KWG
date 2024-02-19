---
date: 2024-02-19
title: "프랑스 법원, 대형 통신사 Orange에게 GPL 위반으로 손해배상 판결"
linkTitle: "프랑스 법원, 대형 통신사 Orange에게 GPL 위반으로 손해배상 판결"
description: 
author: 장학성
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---


안녕하세요. 

오늘은 프랑스 법원이 GPL 위반으로 통신사인 Orange에게 손해배상을 판결한 사건에 대해 살펴보려 합니다. 이 사건은 두 가지 주요 측면에서 특별히 주목할 만한 점이 있어 보였습니다. 

- 첫째, 이 사건의 피고인이 대형 통신사인 Orange라는 점입니다. (제가 통신사에 몸 담고 있다보니...)
- 둘째, GPL 위반 소송이 주로 임베디드 디바이스에서 발생하는 반면, 이 사건에서는 B2B 형태의 웹서비스 구축에 사용된 오픈소스가 이슈가 되었다는 점입니다. 이는 오픈소스 라이선스 준수가 모든 소프트웨어 개발 영역에서 중요하다는 것을 강조합니다.

이 사건은 이러한 측면들을 통해 오픈소스 라이선스 준수의 중요성을 재확인하는 계기가 될 것으로 보입니다. 이는 기업들이 오픈소스를 사용할 때 라이선스 요구사항을 철저히 이해하고 준수해야 함을 강조하는 중요한 사례가 될 것입니다. 

> 감수 및 보완 내용 의견 주신 SK텔레콤의 박철웅 매니저님께 감사 드립니다. 

## GPL이란?

GNU General Public License의 약자로, 대표적인 오픈소스 라이선스 중 하나인 GPL은 소프트웨어의 저작권자가 "누구든지 소프트웨어를 자유롭게 사용하고, 수정하고, 배포할 수 있도록 허용하는 동시에, 수정된 버전이나 파생된 저작물도 GPL을 따라야 한다는 조건을 부과"하는 강력한 Copyleft 성격의 라이선스입니다. 

- 참고 - GPL-2.0 가이드 : [https://sktelecom.github.io/guide/use/obligation/gpl-2.0/](https://sktelecom.github.io/guide/use/obligation/gpl-2.0/)

## 원고: 엔트루베르 (Entr’Ouvert)

2002년 9월에 설립된 프랑스의 소프트웨어 회사인 엔트루베르는 [Lasso](https://lasso.entrouvert.org)라는 이름의 C 라이브러리를 개발하였습니다. Lasso는 Liberty Alliance의 SAML 표준과 같은 인증 프로토콜을 구현하는 라이브러리입니다.

![lasso](./featured_lasso.png)

Lasso는 현재 두 가지 라이선스로 제공됩니다. 

- 오픈소스 라이선스 : GPL-2.0 + OpenSSL exception (소스 코드 공개 필요)
- 상용 라이선스 (유료 구매 필요)

> *We strongly recommend the use of the GNU General Public License each time it is possible. But for proprietary projects, that wouldn't want to use it, we designed a commercial license.*
>
> *https://lasso.entrouvert.org/*

## 피고: Orange

프랑스의 대형 통신사인 Orange는 2005년, 프랑스 전자 행정 개발청(ADAE, 현재 DGME)과 "My Public Service" 포털(현재 [https://www.service-public.fr/](https://www.service-public.fr/))을 개발하기 위한 계약을 체결했습니다.

![orange](./orange.png)

당시 이 포털은 ID 관리 서비스를 지원하기 위해 SAML 프로토콜을 사용해야 했습니다. Orange는 이를 구현하기 위해 Lasso를 사용하였는데, GPL-2.0 라이선스 조건을 준수하지 않았습니다. 즉, Orange는 Lasso 소프트웨어의 출처와 라이선스를 명시하지 않았으며, 수정된 소스 코드를 공개하지 않았습니다.

엔트루베르는 이를 발견하고 2011년 Orange사를 상대로 손해배상을 청구하는 소를 제기하였습니다.

## 판결
 
소송은 10년 이상 진행되었고, 마침내 2024년 2월 14일, 파리 항소 법원은 GNU GPL v2 라이선스를 준수하지 않은 이유로 Orange에게 엔트루베르에 총 650,000유로(한화 약 9억4천만원)를 지불하라고 명령했습니다. Orange는 엔트루베르에게 경제적 손실에 대한 보상으로 500,000유로를 지불하고 도덕적 피해에 대해 150,000유로를 지불해야 합니다.

법원은 "Orange가 라이선스 계약을 존중하고 유료 라이선스를 체결했다면 그들은 엔트루베르에게 로열티를 지불했어야 했다."라고 말했습니다. 또한, 법원은 Orange가 Lasso 소프트웨어를 무료로 활용함으로써 7년 동안 지속된 이 대규모 공공 시장에서 부당하게 이익을 창출했다고 지적했습니다.

## 시사점

1. 5G의 성장 한계에 도달하면서 비통신 전략을 가속화하고 있는 통신사가 소송의 대상이 된 것은 흥미로운 점입니다. AI, 클라우드, IoT, 로보틱스, 반도체, UAM 등 첨단 기술 분야에서 다양한 제품과 서비스를 출시하고, B2B 영역을 함께 공략하고 있는 통신사들은 이제 다른 산업 분야의 회사와 마찬가지로 소프트웨어 개발 환경에서 오픈소스를 필수적으로 사용하게 되었습니다. 따라서, 오픈소스 관리를 위한 정책과 프로세스를 수립하는 것이 중요하게 되었습니다.

2. 오픈소스 라이선스 분쟁 사례는 주로 오픈소스를 사용하여 개발한 디바이스나 소프트웨어 상품이 무단으로 배포될 때 발생하였습니다. 그러나 이번 사례에서는 정부 기관의 웹사이트를 구축하기 위해 소프트웨어 공급 계약자가 사용한 오픈소스가 분쟁의 대상이 되었습니다. 따라서 기업들은 소프트웨어 디바이스, 앱 등의 배포 대상뿐만 아니라, B2B 형태로 웹서비스 구축 계약을 체결하여 정부기관이나 고객사에 소프트웨어를 공급할 때에도 오픈소스 관리를 위한 프로세스를 적용해야 함에 유의해야 합니다.

# References

- French Court Issues Damages Award for Violation of GPL: https://heathermeeker.com/2024/02/17/french-court-issues-damages-award-for-violation-of-gpl/amp/
- [https://www.entrouvert.com/actualites/2019/entrouvert-versus-orange/](https://www.entrouvert.com/actualites/2019/entrouvert-versus-orange/)
- [https://www.zdnet.fr/blogs/l-esprit-libre/non-respect-de-la-licence-gpl-orange-condamne-en-appel-39964312.htm](https://www.zdnet.fr/blogs/l-esprit-libre/non-respect-de-la-licence-gpl-orange-condamne-en-appel-39964312.htm)


> 이 블로그는 불어로 작성된 기사 등의 번역본을 기반으로 작성하였으며, 저의 법률적인 지식은 극히 제한적이기 때문에 오류가 있을 수 있습니다. 
> 혹시 오류를 발견하시면 알려주세요~ (haksung@sk.com) 
> 
> 바로바로 업데이트하겠습니다. ^^