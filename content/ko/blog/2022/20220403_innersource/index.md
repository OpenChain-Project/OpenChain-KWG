---
date: 2022-04-03
title: "이너소스 도입을 위한 과제와 효과"
linkTitle: "이너소스 도입을 위한 과제와 효과"
description: 
author: 장학성
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

안녕하세요, 장학성입니다. 

이너소스(Inner Source)는 오픈소스 개발방법론을 사내에 도입하여 조직간 공유와 협업을 극대화하고, 빠른 개발 속도와 투명한 커뮤니케이션, 코드 품질 향상 등의 효과를 기대하기 위한 방법입니다. 

이너소스를 위한 방법은 여러 문서에서 설명하고 있는데요, 오늘은 다음 자료에서 언급하고 있는 이너소스를 시작하는 방법과 기대효과에 대해 간략히 정리하였으니 참고하시기 바랍니다. 

* [Getting Started with InnerSource (Keys to collaboration and productivity inside your company) / Adny Oram](https://little-canada.org/tmp/books/oreilly/Programming/getting-started-with-innersource.pdf)

![](./featured_innersource.png)

## 1. 오픈소스 Practice 주요 사항
먼저, 오픈소스 개발방법론에서 강조하는 주요 Practice를 살펴보겠습니다. 어떻게 거대한 오픈소스 프로젝트가 자발적인 참여에 의해 성장해갈 수 있을까요? 왜 오픈소스 프로젝트에 참여하면 개발자 개인의 성장을 이룰 수 있다고 할까요? 오픈소스 프로젝트에는 다음과 같은 주요 Practice가 있기 때문입니다. 

### (1) 조직간 협업

* 오픈소스 프로젝트에서는 코드를 전 세계에 공유하기 때문에  이를 누구나 자유롭게 보고, 배우고, 개선할 수 있습니다. 
* branch를 자유롭게 만들고, 병합하기 위한 rule이 있고, 이를 가능하게 하는 tool이 있습니다. 
* 이로써 근무지와 무관하게 동일한 code에서 작업할 수 있습니다. 

### (2) 문서화

* 오픈소스 프로젝트는 Code에 대해서 가능한 자세히 문서화를 합니다. 
* 이런 문서화가 소프트웨어 아키텍처 개선으로 이어집니다. 문서로 설명하다 보면 복잡하고 직관적이지 않은 아키텍처의 변경 필요성에 공감하게 됩니다. 
* 문서화가 잘 되어 있는 프로젝트는 신규 Contributor의 유입도 수월하게 합니다. 

### (3) Continous Test

* 일반적으로 오픈소스 프로젝트는 각 기여를 객관적으로 test하는 엄격한 시스템을 구축합니다. 이로써 collaborator 간 신뢰를 유지하게 하고, 코드 품질을 보장합니다. 
* 즉, 변경사항을 commit 하기 전 quality를 보장하기 위해 확인하는 tool과 절차가 있습니다.  
  * unit test
  * continuous integration
  * code coverage
  * static analysis 등
* 각 개발자는 자신의 code에 대한 unit test를 작성해야 합니다. 

### (4) 모든 Communication 및 의사결정이 투명하게 공개됨

* 오픈소스 프로젝트에서의 모든 communication은 공개되고 이력으로 남습니다. 
* 주로 mailing list로 토론에 기반하여 의사 결정을 합니다. 
* 모든 communication이 문서화 되고, 이력으로 남기 때문에 누구나 문서를 통해 프로젝트를 이해하고 새롭게 참여할 수 있습니다. 


### (5) 개발자 실력을 인정 받을 수 있고, 다른 개발자 멘토링

* 많은 commit을 기여한 개발자라면 그 프로젝트에 이해도가 높은 개발자로 간주할 수 있습니다. 
* 이러한 개발자는 Trusted Committer로 인정 받게 됩니다. 
* Trusted Committer는 다른 개발자의 작업을 review / 승인하는 자격이 주어집니다. 
* 또한, contributor에게 멘토링을 제공함으로 우수 개발자로 성장시키는 역할을 수행합니다. 


## 2. 이너소스 도입 효과

기업이 1에서 설명한 오픈소스 Practice를 사내에 도입하는 것을 이너소스(Inner Source)라고 부릅니다. 참고로, Inner Source는 [InnerSource Commons](https://innersourcecommons.org/) 등의 커뮤니티에서 보다 체계적으로 기법과 Practice를 발전시키고 있습니다. 

그럼 기업이 이너소스를 도입하면 어떤 효과를 기대할 수 있을까요? 

1. 조직 전체적으로 code 재사용이 늘어납니다. 
   * 각 팀의 개발자가 다른 팀이 개발한 모듈 및 아키텍처를 이해하고 활용하거나 기여할 수 있습니다. 
2. Code Quality가 개선됩니다. 
    * unit test, code coverage, CI (continous integration), static analysis, code review 등을 통해 quality가 개선됩니다.  
3. 개발 속도가 빨라진다.
    * 개발자가 unit test, code coverage, CI (continous integration)를 배워 감에 따라 bug가 줄고, 개발 속도가 빨라집니다.
   * communication을 written comment로 하는 것이 처음에는 시간이 걸리는 것처럼 보이지만, 새로운 개발자가 시스템을 빨리 배울 수 있게 하여 개발 속도 향상에 더 도움이 됩니다.
4. 개발자들이 code design, test, 문서화에 대한 새로운 기술을 배우면서 code design에 대해 보다 포괄적으로 고민하게 됩니다. 
5. 개발자들이 문서화를 더 잘하게 되고, 이는 다른 팀원이 프로젝트를 더 잘 이해해서 더 많은 기여를 할 수 있게 도와줍니다.
6. 개발자들에게 권한을 부여함으로써 지적 성장과 직업 만족도를 높일 수 있습니다. 

## 3. 이너소스 도입을 위한 과제

이번에는 이너소스를 도입하려는 기업이 고려해야 할 과제에 대해 알아보겠습니다. 

사내에 source code를 공개하고 공유하는 것만으로 아너소스의 효과를 기대할 수는 없습니다. 반드시 다음의 사항이 함께 수반되어야 합니다. 

1. Repository내의 모든 code에 대한 문서화
2. 협업을 위해 Github과 같은 협업 환경 및 가이드 제공
3. test 환경 구축 및 rule 수립 : 신규 유입 code의 quality 보장하기 위함
    * code가 commit되기 전에 code coverage test를 code의 90% 이상에서 실행
    * commit이 되면 자동 build trigger
4. 다른 조직으부터의 기여를 encourage하기 위해 modular architecture와 API 정의
5. 참여자들에게 수행한 작업에 대한 자부심을 갖게 하고, Conference에서 발표하거나 Blog에 글을 기고하는 것을 적극 권장


## 4. 개발자는 왜 이너소스 프로젝트에 참여해야 하나? 

사내에 이너소스 환경이 구축되었지만, 개발자 입장에서 당장 팀 내의 과제를 수행하다 보면 다른 팀의 코드를 보거나 기여하는 게 엄두가 나지 않을 수 있습니다. 하지만, 개발자 자신의 성장을 위해서라도 이너소스 프로젝트에 참여하는 것이 도움이 됩니다. 

1. 외부 오픈소스 프로젝트에 바로 참여하기 전에 사내 이너소스 프로젝트에 참여함으로써 오픈소스 Practice를 배우고 익숙해질 수 있습니다. 
    * 이너소스에서는 code review, commit, test가 오픈소스 방식으로 수행됩니다. 
    * 문서화에 익숙해집니다. 
    * Test, 문서화에 대한 새로운 기술을 배우면서 code design에 대해 보다 포괄적으로 고민하는 우수 개발자가 될 수 있습니다, 
2. Trusted Committer와 Contributor 간의 communication을 지켜보고 있는 것 자체가 도움이 됩니다. 

개발자가 오픈소스에 기여해야 하는 이유에 대해서는 다음 블로그에서도 언급하고 있으니 참고하시기 바랍니다. : "[개발자가 오픈소스에 기여해야 하는 이유](https://devocean.sk.com/opensource/techBoardDetail.do?ID=159274)"

감사합니다. 
