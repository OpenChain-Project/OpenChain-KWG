---
date: 2021-03-28
title: "Elastic License 2.0 그리고 진화하는 오픈소스 라이선스"
linkTitle: "Elastic License 2.0"
description: "Elastic License 2.0의 작성 배경을 설명합니다"
author: Haksung Jang ([@haksungjang](https://haksungjang.github.io/))
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
  byline: "Photo: Haksung Jang"
---

---

> 안녕하세요. 
> 
> 미국의 오픈소스 전문 변호사인 [Heather Meeker](https://heathermeeker.com/about-me/)가 2021년 3월 11일 공개한 Elastic License에 대한 [백서](https://www.coss.community/coss/elastic-license-2-0-and-the-evolution-of-open-source-licensing-3jb3))를 기반으로 아래의 글을 작성하였습니다. 대부분 원글을 번역하는 방식이며, 제 의견은 인용구로 추가하였습니다. 
> 
> 참고로, Heather Meeker는 이 백서를 자신의 개인적인 견해임을 나타내면서도 일부 Elastic의 자금 지원이 있었다고 밝혔습니다. 그래서인지, 원글은 Elastic License에 호의적인 입장을 보입니다. 
>> (조금 찾아보니, Elastic License 2.0을 [Heather Meeker가 작성](https://www.elastic.co/blog/elastic-license-v2)하였군요.)
> 
> 여하튼 시대가 변하며 소프트웨어 배포 방식이 바뀌는 상황에 따라 상용 오픈소스 기업들이 개발과 사업을 병행하기 위해 어떤 라이선스 모델을 도입해야 할지 고민해야 했고, Elastic License가 나온 배경에 대한 한 측면을 이해하는 데 도움이 되는 글이라 생각합니다. 
> 글에 오류가 있다면 언제든 [연락](https://haksungjang.github.io/)해주세요. :-)
> 
> * 감수에 도움 주신 카카오의 [Sean](https://www.linkedin.com/in/%EC%98%81%ED%99%98-%EA%B9%80-4069b5135/) 그리고 [Robin](https://www.linkedin.com/in/hwang-minho/)에게 깊은 감사 드립니다. 

---

최근, 2021년 2월, [Elastic](https://www.elastic.co/)은 소프트웨어 제품에 [Elastic License 2.0](https://www.elastic.co/licensing/elastic-license)이라는 새로운 라이선스를 도입하였다. 이 라이선스 모델은 Elasticsearch, Kibana 등 주요 소프트웨어 제품군에 적용되었다. 이런 변화의 목적과 의미하는 바가 무엇인지 알아보자. 

Elastic License 2.0은 개방형 개발 모델<sub>Open Development Model</sub>로 사업하는 기업이 취할 수 있는 대표적인 라이선스 모범 사례이다. Elastic License 2.0은 오픈소스 라이선스는 아니지만, 소프트웨어의 사용, 공유 및 변경의 자유와 커뮤니티에 해를 끼는 행동 방지 간의 공정한 균형을 유지하는 데 필요한 최소한의 제한 설정을 목표로 한다. 

![scale](./featured-scale.png)

## 유닉스, 리눅스, 자유소프트웨어, 그리고 오픈소스

Elastic License 2.0과 같은 새로운 라이선스의 추세를 이해하려면 오픈소스 라이선스 운동이 어떻게 성장했는지 살펴보는 것이 도움이 된다. 

오픈소스와 자유소프트웨어<sub>Free Software</sub> 운동은 소프트웨어가 사유화되는 것에 대한 개발자의 우려에서 시작되었다. 이러한 우려의 불씨는 당시 가장 인기있는 운영체제인 유닉스였다. 수년간 유닉스는 매우 관대한 조건 하의 라이선스가 적용되었다. 이는 1956년 동의령<sub>consent decree</sub>이 유닉스의 개발사인 AT&T Bell Labs가 유닉스 및 C언어를 포함하는 연구 프로젝트로 이익 얻는 것을 금지했었기 때문이다[^decree]. 학계, 연구자, 개발자들은 수정/개선 사항을 공유하기 시작했고, 유닉스는 곧 운영체제 분야의 선두가 되었다. 1983년 동의령이 해제되자 AT&T는 수정 사항의 공유를 허용하지 않는 상용 조항을 적용하기 시작하였다. 이에 따라 유닉스는 많은 호환되지 않는 종류로 쪼개졌고, 라이선스 사용자들은 더 이상 협업할 수 없게 되었다. 

[^decree]: "Modification of Final Judgment," August 24, 1982, filed in case 82-0192, United States of America v. Western Electric Company, Incorporated, and American Telephone and Telegraph Company, U.S. District Court for the District of Columbia [web.archive.org/web/20060827191354/members.cox](http://web.archive.org/web/20060827191354/members.cox.net/hwilkerson/documents/AT&T_Consent_Decree.pdf).

유닉스가 사유화되면서 자유소프트웨어 운동, 그리고 이어서 오픈소스 운동이 생겨났으며, 이들은 인프라 소프트웨어가 폐쇄되는 상황이 다시 발생하는 것을 방지하려고 하였다. 이 운동은 유닉스를 대체하는 자유소프트웨어인 리눅스를 중심으로 이루어졌으며 곧 모든 소프트웨어는 자유<sub>free</sub>(무료<sub>free</sub> 맥주에서의 Free가 아니라 언론의 자유<sub>free</sub>에서의 Free)로워야 한다는 철학에 기반한 더 큰 운동으로 발전하였다. 이러한 운동의 한 요소는 소스 코드에 대한 접근, 개선 및 변경 사항을 만들고 공유할 수 있는 권리이다. 이러한 원칙들은 [GNU General Public License](https://en.wikipedia.org/wiki/GNU_General_Public_License) (GPL)에서 구현되었으며, 이에 따라 바이너리 배포자들은 해당 소스 코드를 공유해야 한다. 

시간이 흐르고, 2000년대 초반 인터넷 붐에 힘입어 오픈소스 라이선스는 더욱 인기를 얻게 되었다. GPL과 같은 일부 라이선스는 복잡한 법적 우려를 불러일으키기도 했지만, 기업이 협업할 수 있는 기반을 마련하였다. 2000년 이후 오픈소스와 이를 통해 가능해진 협업은 모든 기술 부문에 채택되었다. 오늘날, 오픈소스는 전자상거래<sub>e-commerce</sub>의 핵심 기술이며, 기업들은 소프트웨어 인프라를 위한 지속해서 협력한다. 

## 클라우드의 출현과 AGPL

GPL과 같은 라이선스는 변경 사항의 공유를 요구한다. 바이너리 배포에 대한 소스 코드 공유 조건을 부과한다. 반면에 "개인 복사본"을 만들어서 사용하는 건 변경 사항을 공유할 필요가 없다. 이러한 조건은 당시 대부분의 소프트웨어를 직접설치<sub>on-premise</sub>하는 방식이었기 때문에 공유를 강제하는 데 효과적이었다. 그러나 2000년대 초부터 소프트웨어는 퍼블릭 클라우드로 이동하기 시작하였고, 더 이상 소프트웨어를 배포할 필요가 없었다. 고객은 로컬 사본을 얻지 않고도 소프트웨어를 사용할 수 있게 되었다. 

클라우드 서비스 사업이 커지면서, 이러한 패러다임의 변화는 오픈소스 커뮤니티의 기대치와 AWS<sub>Amazon Web Services</sub>와 같은 클라우드 서비스 공급 업체 사이에 긴장감을 조성하였다. 클라우드 서비스 공급 업체는 개선 사항을 공유해야 하는 법적 의무에서 자유로웠다. 구글이 검색 서비스 강화를 위해 Linux에 의존하는 것으로 잘 알려졌기 때문에 이를 "구글 루프홀<sub>Loophole</sub>"이라고도 불렀다. 이에 대응하기 위해 자유소프트웨어 커뮤니티는 [Affero GPL](https://www.gnu.org/licenses/agpl-3.0.en.html) (AGPL)이라는 GPL을 부분 변경한 형태의 라이선스를 만들었다. AGPL 3.0은 GPL 3.0과 거의 동일하지만 다음과 같은 원격 네트워크 상호 작용<sub>Remote Network Interaction</sub> 조항을 포함한다. 

~~~
[I]f you modify the Program, your modified version must prominently offer 
all users interacting with it remotely through a computer network … 
an opportunity to receive the Corresponding Source of your version by 
providing access to the Corresponding Source from a network server at no 
charge, through some standard or customary means of facilitating copying 
of software….
~~~

이 새로운 라이선스는 GPL이 리눅스 배포에 대해 했던 것처럼 클라우드 서비스 공급 업체가 소스 코드 개선 사항을 공유하도록 강제하기 위한 것이다. 

## AGPL과 듀얼 라이선스

AGPL은 첫 번째 릴리스부터 논란이 있었다. 2007년, GPL 3.0 초안 작성이 마무리되어 가는 과정에서 일부 작성자들은 GPL을 네트워크 카피레프트<sub>Copyleft</sub> 모델로 변경하기를 원하였다. 하지만 커뮤니티는 GPL 3.0의 "루프홀"을 그대로 유지하기로 결정했고, 몇 달 후, 이에 대한 대안으로 AGPL을 내놓았다. 그러나 AGPL은 널리 채택되지 않았다. 매우 인기 있는 분산 데이터베이스 제품인 [MongoDB](https://en.wikipedia.org/wiki/MongoDB)가 유일무이한 AGPL의 "킬러 앱<sub>killer app</sub>"이다. 기업들은 처음에는 AGPL을 이해하고 받아들이기 어려워했지만, 대부분 사용자는 소프트웨어를 변경하거나 서비스로 제공하지 않았기 때문에 AGPL하의 소프트웨어를 사용하겠다는 합리적인 결정을 내릴 수 있었다. 

> AGPL 3.0의 Remote Network Interaction 조항은 프로그램을 변경하였을 때에 한하여 변경 사항의 소스 코드를 컴퓨터 네트워크를 통한 원격 사용자에게 제공해야 합니다. 즉, 변경하지 않는다면 소스 코드 공개 의무가 발생하지 않습니다. 

MongoDB는 AGPL을 "[듀얼 라이선스](http://monty-says.blogspot.com/2009/08/thoughts-about-dual-licensing-open.html)" 비즈니스 모델의 한 축으로 사용하였다. 사용자<sub>licensee</sub>에게 AGPL 또는 상용 소프트웨어 라이선스 중 하나를 선택할 수 있게 하였다. AGPL의 요구사항을 준수하고 싶지 않거나 준수할 수 있는지 확인하기 위한 법적 분석에 관여하고 싶지 않은 사람들은 상용 라이선스를 선택하게 하였다. 이 비즈니스 모델은 MySQL이 GPL을 이용하는 방식으로 개발되었으나 시간이 지나면서 GPL 대신 AGPL이 듀얼 라이선스 모델을 위해 주로 사용되는 라이선스가 되었다. MongoDB의 이 라이선스 모델은 상당히 성공적이었다. AGPL은 가장 강력한 카피레프트 라이선스였기 때문에 상업적인 협상을 추진하는 데 유용하였다. 그러나, AGPL의 작성자들은 이 사업모델이 [해로운](http://ebb.org/bkuhn/blog/) 갈취<sub>toxic shakedown</sub>라면서 라이선스의 사용을 비판하였다. 그럼에도 불구하고 AGPL의 소스 코드 공유 조건은 개발자나 사용자 커뮤니티에 아무것도 돌려주지 않는 방식으로 대규모의 상업적 사용을 막기에는 충분하지 않았다. 

## 무상 사용<sub>Strip-mining</sub>

클라우드 이용이 GPL 모델을 "파괴<sub>broken</sub>"시켰던 것처럼, 2010년대 클라우드 컴퓨팅이 발전하면서 AGPL 듀얼 라이선스 모델도 압박을 받기 시작하였다. 이번에는 문제가 달랐다. GPL 또는 AGPL의 범위는 하나의 단일 실행 가능 프로그램<sub>single program executable</sub>까지만 확장된다. 이 "기능"은 저작권 라이선스가 단일 저작물에 대해서만 사용 조건을 지정할 수 있다는 이론에 따라 GPL에서 의도적으로 설계된 것이었다. 즉, GPL은 파생 저작물<sub>derivative work</sub>에 대한 소스 코드 공유 요건을 갖지만, 집합 저작물<sub>collective work</sub>에 대해서는 아니다. 법적으로 이 둘 간의 경게는 상당히 불분명하지만 GPL이 인기를 얻으면서 단일 프로그램이란 하나의 실행 가능한 프로세스라고 정의하는 것이 일반적인 관행이 되었다. 자유소프트웨어재단<sub>Free Software Foundation</sub>은 [GPL FAQ](https://www.gnu.org/licenses/gpl-faq.en.html#MereAggregation)에서 오랫동안 이런 원칙을 주장해왔다. 

하지만 클라우드 서비스가 발전하면서 두 가지 일이 발생하였다. 첫째, 소프트웨어 엔지니어링을 클라우드 구현에 더욱 집중하게 되었다. 클라우드 공급 업체는 한때 클라우드 환경에서 실행하기 위한 소프트웨어를 개선하거나 수정해야 했던 반면, 소프트웨어 엔지니어링이 발전하면서 클라우드 공급 업체는 기존 오픈소스 소프트웨어를 "플러그 앤드 플레이<sub>plug and play</sub>"형태로 사용할 수 있게 되었다. 그러다 보니 클라우드 공급 업체는 혁신의 주체를 주요 실행 파일이 아닌 곳으로 변화할 수 있었다. 그들은 소프트웨어를 관리, 모니터링 및 배포하기 위한 소프트웨어를 추가로 개발했으며, 이러한 혁신은 클라우드 서비스를 키울 수 있었다. AGPL은 클라우드 공급 업체의 이러한 개선사항에 대해서는 이를 공유하도록 강제하는 데 아무런 도움이 되지 않았다.

이렇게 오픈소스 상용 기업들은 대형 클라우드 공급 업체가 무료로 갖다 쓰기 좋은 상점처럼 되어 버렸다. 특히 "플랫폼 소프트웨어" 또는 미들웨어 (컴퓨터 스택에서 최상위 계측인 응용 프로그램과 운영 체제의 중간에 있는 소프트웨어)에서 문제는 더 심각하였다. 이 범주의 소프트웨어는 최신 컴퓨팅에 필수적이며 클라우드 구현에 매우 유용하다. 

이 때문에 비즈니스 세계에서 클라우드 공급 업체의 오픈소스 사용에 대한 비판이 제기되었다. Bain Capital의 Salil Deshpande는 2018년 "분명히 이것은 불법은 아니다. 그러나 우리는 이것이 잘못되었고, 오픈소스 커뮤니티의 지속 가능성에 도움이 되지 않는다고 생각한다"라고 [하였다](https://techcrunch.com/2018/09/07/commons-clause-stops-open-source-abuse/). 또 다른 전문가는 "AWS는 오픈소스의 아킬레스건을 건드리고 있다. 다른 사람의 저작물을 무료로 가져다가 이에 대한 접근 권한을 임대하는 사업을 하는 것이다."라고 [하였다](https://onezero.medium.com/open-source-betrayed-industry-leaders-accuse-amazon-of-playing-a-rigged-game-with-aws-67177bc748b7). 문제는 모든 주요 오픈소스 라이선스는 이런 방식으로 소프트웨어를 사용하는 것을 제지하지 않는다는 것이다. 

> 주요 오픈소스 라이선스가 작성되었던 시점에는 AWS의 "Program as a Service" 형태의 프로그램이 없었으니, 이에 대한 조건도 고려하지 않았을 테지요. 
> 
> 오픈소스 상용 기업들은 오픈소스 프로그램을 개발해서 듀얼 라이선스 모델 (GPL or 상용)로 사업을 하고 있었는데, 클라우드 제공 업체에서 이 오픈소스 프로그램을 그대로 가져다가 클라우드 서비스로 제공하는 사업을 하고, 자기네한테는 아무런 이윤도 안겨주지 않으니, 사업 또는 개발 측면에서 모두 좋지 않은 영향을 미쳤을 것은 충분히 추측할 수 있습니다.  
> 
> 클라우드 공급 업체가 MongoDB를 [Amazon DocumentDB](https://aws.amazon.com/ko/documentdb/)나 [Azure Cosmos DB](https://docs.microsoft.com/ko-kr/azure/cosmos-db/introduction)로 서비스하며 고객을 확보하는게 대표적인 예라고 볼 수 있을 것 같습니다.

오픈소스 상용 기업들과 투자자들은 이런 오픈소스 모델의 한계 때문에 고민이 되었다. GPL, AGPL 등 어떤 라이선스도 저작권법을 사용하여 클라우드 공급 업체가 변경 사항을 공유하도록 강제할 수 없었다. 또한 AWS, Azure 또는 Google Cloud와 같은 대규모 고객 기반을 가진 클라우드 공급 업체는 버튼 클릭으로 소프트웨어를 쉽게 추가할 수 있게 하여 고객과 "끈끈한" 관계를 유지하였다. 일부 오픈소스 개발사는 자체 클라우드 서비스를 제공했지만, 소프트웨어를 무료로 사용하는 대형 클라우드 공급 업체와 경쟁하는 건 너무 어렵다는 걸 알게 되었다. 오픈소스 개발사의 서비스가 더 우수한 경우에도, 기존 클라우드 계정에서는 단지 "체크박스를 선택"하여 소프트웨어 제품군을 추가하는 것과는 달리, 새로운 서비스를 사용하기 위한 거래 비용<sub>transaction cost</sub>이 발생한다는 점이 고객이 등을 돌리게 하였다. 

## SSPL과 소스 공개 라이선스

2018년 업계는 돌파구를 찾았다. AWS가 오픈소스 플랫폼 소프트웨어를 호스팅하면서 계속 인기를 얻자 오픈소스 개발사들은 행동에 나서기 시작하였다. 라이선스를 변경하였다. 

오픈소스 개발사들은 두 가지 다른 경로를 통해 [무상 사용 문제에 대응](https://techcrunch.com/2018/11/29/the-crusade-against-open-source-abuse/)하였다.
1. 매우 강한<sub>ultra-strong</sub> 네트워크 카피레프트 라이선스
2. 제한 조건을 갖는 소스 공개 라이선스<sub>Source Available Licensing</sub>

이 두 범주 모두 이전에는 정의되지 않았던 형태이다. 둘 다 MySQL 및 MongoDB 에서와 같은 듀얼 라이선스 모델을 지원하기 위한 것이다. 

### SSPL

매우 강한 카피레프트 접근 방식은 2018년 [SSPL](https://www.mongodb.com/licensing/server-side-public-license)<sub>Server Side Public License</sub>을 만든 MongoDB에 의해 시도되었다. 

~~~
1.  Offering the Program as a Service.

If you make the functionality of the Program or a modified version 
available to third parties as a service, you must make the Service 
Source Code available via network download to everyone at no charge, 
under the terms of this License. Making the functionality of the 
Program or modified version available to third parties as a service 
includes, without limitation, enabling third parties to interact 
with the functionality of the Program or modified version remotely 
through a computer network, offering a service the value of which 
entirely or primarily derives from the value of the Program or 
modified version, or offering a service that accomplishes for users 
the primary purpose of the Program or modified version.

"Service Source Code" means the Corresponding Source for the Program 
or the modified version, and the Corresponding Source for all programs 
that you use to make the Program or modified version available as a 
service, including, without limitation, management software, user 
interfaces, application program interfaces, automation software, 
monitoring software, backup software, storage software and hosting 
software, all such that a user could run an instance of the service 
using the Service Source Code you make available. [emphasis added].
~~~

이 라이선스는 무상 사용 문제에 대응하기 위한 오픈소스 솔루션을 만들기 위해 작성되었다. 소스 코드 공유 요구 사항은 AGPL의 요구 사항보다 훨씬 광범위하다. 이러한 요구 사항의 범위는 분산 소프트웨어에 대해서도 GPL 요구 사항과 유사하게 작동하도록 설계되었다. [MongoDB는 SSPL 또는 상용 라이선스](https://www.mongodb.com/community/licensing)에 따라 소프트웨어를 사용할 수 있는 듀얼 라이선스 모델을 적용하였다. 

MongoDB는 SSPL을 [OSI<sub>Open Source Initiative</sub>](https://opensource.org/approval)에 승인받기 위해 제출하였다. 수개월 간의 논쟁 끝에 승인을 받지는 못하였지만, MongoDB는 듀얼 라이선스 모델의 오픈소스 선택지로 SSPL을 계속 사용하고 있다. 이 라이선스가 [오픈소스 정의](https://opensource.org/osd)<sub>Open Source Definition</sub>에 적합하지 않은 이유에 대한 논의는 복잡했으며, 이 정의를 충족하는 것만이 유일한 기준은 아니었다. 요약하자면, 이렇게 광범위한 소스 공유 요구 사항을 가진 라이선스가 "[소프트웨어 자유를 보장](https://opensource.org/approval)"할지가 분명하지 않았다. 

### 제한 조건을 갖는 소스 공개 라이선스

다른 사람들은 또 다른 경로를 따랐다. 일부 회사는 Salil Deshpande가 주도한 [Commons Clause](https://commonsclause.com/)를 채택했으며, 어떤 회사는 Elastic이 Elastic License 1.0을 만든 것처럼 [Redis](https://redislabs.com/legal/licenses/), [Confluent](https://www.confluent.io/confluent-community-license), [CockroachDB](https://www.cockroachlabs.com/cockroachdb-community-license/)와 같은 자체 라이선스를 제작하였다. SSPL과는 달리, 이 라이선스들은 오픈소스 정의를 충족시키기 위한 것이 아니었다. 대신, 이들은 무상 사용을 겨냥한 제한 조건을 갖고 있다. 

왜 이렇게 두 가지 경로로 갈렸을까? 이는 [Freedom Zero](https://www.gnu.org/philosophy/free-sw.en.html), "어떤 목적으로든 원하는 대로 프로그램을 실행할 수 있는 자유"와 관련이 있다[^free].

[^free]: The Free Software Definition is similar to the Open Source Definition, but shorter and clearer.

오픈소스 또는 자유소프트웨어 라이선스의 주요 특징은 라이선스 제약이나 제한이 없다는 것이다[^limitation]. 일반적인 상용 소프트웨어 라이선스와 비교해보자. 개인용으로 사용하겠다는 라이선스 조건에 클릭하여 수락하는 형태의 최종 사용자 라이선스<sub>End User license Agreement</sub>는 소프트웨어를 사용하는 것만 허용하며, 변경하거나 배포할 수 없다. 엔터프라이즈 라이선스는 소프트웨어를 사용할 수 있는 사용자, 서버 또는 물리적 위치의 수에 대한 제한을 설정하고, 기업은 해당 사용을 감시해야 한다. 그러나 오픈소스 라이선스에는 그러한 제한이 없다. 따라서, 소스 코드를 무료로 제공한다고 하더라도 상업적 사용 불가와 같은 제한을 갖고 있다면 정의상 오픈소스가 아니다. 

[^limitation]: Open source licenses can contain conditions, such as notices or source code sharing. But these are not limitations that tell you what you cannot do with software, they only require that if you elect to do certain things, you also must do others.

즉, 모든 라이선스 제한은 오픈소스 범주에서 벗어나게 한다. 

2018년 이후 발생한 라이선스 변경의 물결 가운데 출시된 모든 라이선스는 거의 비슷한 제한을 갖고 있다. 각각 고유한 조건이 있지만, 이들은 모두 사용자가 소프트웨어를 무료로 사용할 수 있도록 허용하는 동시에 경쟁 호스팅 서비스 제공을 위한 소프트웨어 사용을 금지하는 데 초점을 맞추고 있다. 

## Elastic License 2.0

2021년 초, Elasticsearch는 이 두 가지 경로를 모두 따르는 하나의 길을 개척하였다. SSPL과 새로운 [Elastic License 2.0](https://www.elastic.co/licensing/elastic-license) (ELv2)이라는 두 가지 무료 선택지를 제공하여 소프트웨어 제품군을 사용할 수 있게 하였다. 

새로운 Elastic 2.0 라이선스는 짧고 (한 페이지에 불과) 쉬운 언어로 작성되었으며 오픈소스 라이선스의 거의 모든 자유를 허용한다. 소프트웨어 수신자는 소프트웨어를 자유롭게 사용, 변경 및 재배포 할 수 있다. 전에 소프트웨어 라이선스를 읽어본 적이 없더라도 이 라이선스는 한번 읽어볼 가치가 있다. 

여기에는 두 가지 주요 제한이 있다. 

~~~
You may not provide the software to third parties as a hosted or 
managed service, where the service provides users with access to 
any substantial set of the features or functionality of the software.

You may not move, change, disable, or circumvent the license key 
functionality in the software, and you may not remove or obscure 
any functionality in the software that is protected by the license key.
~~~

첫 번째 제한은 무상 사용 문제를 해결하는 데 초점이 맞춰져 있다. 이로써 이 제한을 위반하여 소프트웨어를 사용하면 소프트웨어의 권한을 침해하게 된다. 

두 번째 제한은 소프트웨어 라이선스 키의 해킹을 금지하기 위한 것이다. 이러한 제한은 소프트웨어 라이선스에서는 오랫동안 일반적이었지만 소스 공개 라이선스에서는 이제 막 사용이 시작되었다. 이러한 조항을 통해 개발자는 소프트웨어와 상호 작용하는 유료 서비스를 실행하거나 유료 기능을 위해 소프트웨어 구성 요소 일부를 저장할 수 있게 되었다. 

이 라이선스의 다른 조항들은 매우 간단하며 오픈소스 라이선스를 읽은 사람이라면 누구나 익숙할 것이다.

## 왜 듀얼 라이선스를 사용하였는가?

Elasticsearch는 사용자에게 SSPL과 Elastic License 중 하나를 선택할 수 있게 하는 특이한 경로를 택하였다. 오늘날 많은 기업이 "오픈 코어<sub>open core</sub>" 모델을 사용하고 있으며, 실제로 Elasticsearch도 전에는 이 모델을 사용하였다. 둘의 차이는 미묘하다고 할 수 있다. 오픈 코어 모델은 (대부분 Apache 2.0과 같은 허용적인<sub>permissive</sub>) 오픈소스 라이선스로 핵심 소프트웨어를 제공한다. 그런 다음 제한된 라이선스로 또는 서비스로만<sub>as a service</sub> 추가 기능(대개 기업이 대규모로 배포하는 데 유묭한 기능)을 제공한다. 그러나 Elasticsearch는 동일한 소프트웨어를 두 개의 다른 라이선스로 사용할 수 있는 듀얼 라이선스 모델을 고수하였다. 이 듀얼 라이선스 모델은 MySQL에 의해 개척되었고, 일반적으로 무료 라이선스 선택지로 GPL, AGPL 또는 SSPL과 같은 카피레프트 라이선스를 사용한다. 그러나 이 모델은 오픈소스 라이선스와 클라우드 서비스 간의 충돌 때문에 최근 몇 년 동안 인기가 시들해졌다. 

Elastic의 선택은 SSPL과 Elastic License 2.0의 두 가지 무료 라이선스 선택권을 제공하였다는 점에서 더욱 이례적이었다. 듀얼 라이선스는 일반적으로 하나의 무료 옵션만 제공한다. 이러한 이례적인 방법을 통해 Elasticsearch는 거의 모든 사용자가 소프트웨어를 무료로 사용할 수 있도록 하는 유연성을 강조하였다. 

> Elastic License 2.0는 오직 클라우드 서비스 공급 업체에서 Elasticsearch를 자기네 클라우드 서비스로 제공하는 것만은 막겠다는 의지인 것 같습니다. 
> 
> 결국 AWS는 Elasticsearch 서비스를 계속하기 위해 Elasticsearch를 [Fork](https://aws.amazon.com/ko/blogs/opensource/stepping-up-for-a-truly-open-source-elasticsearch/)했고, 이를 [Open Distro for Elasticsearch](https://opendistro.github.io/for-elasticsearch/)라고 명명하며 Apache License 2.0을 적용하고, 커뮤니티를 키워가기로 했습니다. 
> 
> 누가 오픈소스의 지속가능성과 발전에 기여하고 있는 것일까요? 

## Elastic License 2.0과 최신 라이선스 기술

Elasticsearch는 사용자와 개발자 모두에게 공정하고 지속 가능한 비즈니스 모델을 유지하면서 가능한 한 개방성을 유지하기 위해 새로운 라이선스 모델로 전환하였다. 그렇게 함으로써 소스 공개 운동<sub>source-available movement</sub>에 참여한 다른 참여자들의 목표와 추구하는 바를 라이선스 작성 시를 반영하였다. 

[라이선스 변경에 대한 FAQ](https://www.elastic.co/licensing/elastic-license/faq)에서 요약한 바와 같이 Elastic의 라이선스 변경은 고객이나 커뮤니티 사용자 수에 영향을 미치지 않을 것으로 예상된다. 대부분의 사용자는 Elastic의 소프트웨어를 기반으로 애플리케이션을 구축한다. 이는 "제3자에게 호스팅 또는 관리 서비스<sub>as a hosted or managed Service</sub>로 제공"하는 비즈니스가 아니기 때문이다.

## 더 나은 라이선스 만들기

또한, Elastic은 Elastic License 2.0을 작성하는 데 리소스를 투입함으로써 라이선스 작성 기술의 발전을 추구하였다. 어떤 의미에서 소스 공개 라이선스는 소프트웨어만큼 오래되었다. 사실, 바이너리 전용 라이선스는 1980년대 PC / Mac 플랫폼 표준화의 산물이었다. 그 이전에는 거의 모든 소프트웨어가 소스 코드 형식으로 라이선스 되었다. 그러나 시간이 지남에 따라 라이선스의 배포 형식과 방법은 크게 달라졌다. 

Elastic License 2.0은 이러한 추세의 정점이다. 형식적으로는 오픈소스 라이선스의 가장 인기 있는 간단하고 직관적인 작성 방식과 템플릿을 채택하였다. 또한 라이선스 키 보존 조항을 통해 공급 업체가 무료 및 유료 기능을 모두 갖춘 소프트웨어에 대한 라이선스를 쉽게 사용할 수 있도록 지원한다. 

수십 년 전 유닉스에서 분리된 수많은 호환되지 않은 독점 버전과 마찬가지로 독점 라이선스는 제각각의 조항과 조건으로 덕지덕지 붙여진 누더기이다. 일반 소비자 소프트웨어 제품에 대한 단순한 최종 사용자 라이선스조차도 일반적으로 너무 길고 난해하여 대부분의 사용자는 이해할 수 없다. [아무도 그것을 읽지 않는다는 말도 많다](https://en.wikipedia.org/wiki/HumancentiPad). 그러나 이러한 복잡성은 대부분 불필요하다. 오픈소스 라이선스, 특히 허용<sub>permissive</sub> 라이선스는 이를 교훈으로 삼았다. 간단한 일련의 규칙으로도 충분해야 하며 이해하기 쉬울수록 사용자가 이를 존중할 가능성은 높아진다. 

Elastic License 2.0은 짧고 간단하며 이해하기 쉬울 뿐만 아니라 사람들이 이를 [템플릿으로 사용](https://www.elastic.co/blog/elastic-license-v2)할 수도 있다. 무상 사용 방지 논쟁이 시작된 후, 마찰이 없는 방식으로, 합리적인 제한을 가지며, 간단하고 이해 가능한 라이선스에 대한 수요가 증가하고 있다. 그러나 대부분의 소규모 소프트웨어 회사는 자체적으로 라이선스를 작성할 리소스가 없다. 많은 소프트웨어 스타트업이 Elastic License 2.0과 Confluent Community License와 같은 라이선스를 그들이 채택할 수 있는 모델로 찾고 있는 것은 놀라운 일이 아니다.

이 분야는 [Fair Code](https://faircode.io/)가 이에 대한 표준을 만들면서 대중화되었다. Fair Code는 다음과 같이 말한다. 

~~~
Fair-code is not a software license. 
It describes a software model where software:

* is generally free to use and can be distributed by anybody
* has its source code openly available
* can be extended by anybody in public and private communities
* is commercially restricted by its authors
~~~

이 계획은 아직 초기 단계에 있지만, 이로써 사용자와 개발자 모두에게 공정한 패러다임의 필요성을 업계가 인식하기 시작하고 있으며, 오픈소스 상용 기업이 오픈소스 모델보다 더 유연한 방식으로 둘 사이의 균형을 맞출 수 있도록 하고 있음은 분명하다. 한 전문가는 최근의 라이선스 발전을 "[오픈소스 이후 시대](https://monetize.substack.com/p/open-source-eras)"라고 부르기까지 하였다. 하지만 실제로는 이러한 소스 공개 라이선스는 비즈니스 및 라이선스 모델이 계속 발전함에 따라 일반적으로 오픈소스 라이선스와 함께 사용된다. 따라서 두 모델은 엄격한 대체품이 아니라 보완품이다. 

또 다른 표준화된 라이선스 옵션도 있다. 2020년, 한 변호사 그룹은 [PolyForm Project](http://www.polyformproject.org/)를 시작하여 소스 공개 라이선스 템플릿 모음을 작성하였다. 이러한 라이선스는 오픈소스 라이선스와 독점 라이선스 모두에 경험이 있는 변호사에 의해 상호 리뷰되었다. 개방형 콘텐츠 라이선싱을 위한 [Creative Commons](https://creativecommons.org/)와 마찬가지로 비상업적, 평가 전용, 경쟁 방지 라이선스 등의 옵션 메뉴를 제공한다. Elastic License 2.0과 같이 모두 무료로 소스 코드에 대한 접근을 제공하며 필요한 특허 라이선스를 부여한다. PolyForm Perimeter 및 PolyForm Shield는 선조라고 할 수 있는 Confluent Community License와 유사하며, Elastic License 2.0은 이러한 추세에 따라 사용 가능한 옵션을 발전시켰다. 

질문이 있거나 더 자세한 내용을 알아가고 싶다면 다음과 같은 몇 가지 자료를 참조하라. 

**"The rise of open source IPOs"** https://coss.media/rise-of-the-open-source-ipo/. This article tracks some of the spectacular business successes of open source companies.

**"The After Open Source Era Has Started"** https://monetize.substack.com/p/open-source-eras . This article discusses the sea change represented by companies moving to source available licenses.

**US House of Representatives Committee on the Judiciary's report on investigation into competition in digital markets, spearheaded by the Subcommittee on Antitrust, Commercial and Administrative Law.** https://www.documentcloud.org/documents/7222836-Investigation-of-Competition-in-Digital-Markets.html. Note the mention of Elasticsearch on page 326.