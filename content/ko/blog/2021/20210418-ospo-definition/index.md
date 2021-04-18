---
date: 2021-04-18
title: "OSPO란?"
linkTitle: "OSPO란?"
description: "OSPO<sub>Open Source Program Office</sub>의 정의와 가이드"
author: Haksung Jang ([@haksungjang](https://haksungjang.github.io/))
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: TODO Group"
---

{{% pageinfo %}}
This paper was translated by Haksung Jang from the English version available at the [OSPO Definition](https://github.com/todogroup/ospodefinition.org).  The original document is licensed under [CC-BY-SA-4.0](https://github.com/todogroup/ospodefinition.org/blob/master/LICENSE). 
{{% /pageinfo %}}

---

> 안녕하세요!  
> 
> [TODO Group](https://todogroup.org/)[^todogroup]은 Talk Openly, Develop Openly를 표방하며 협업을 통해 성공적인 오픈소스 프로젝트와 프로그램을 만들어가고자 하는 Linux Foundation 산하의 [그룹](https://todogroup.org/members/)[^todogroupmember]입니다. TODO 그룹에서는 오픈소스 [가이드](https://todogroup.org/guides/)[^guide], [도구](https://github.com/todogroup/repolinter)[^repolinter] 등을 함께 만들어서 공개하며 오픈소스에 관심 있는 누구나 활용할 수 있게 하고 있습니다. 
> 
> 기업 등의 조직이 오픈소스를 효과적으로 관리하고 사용하기 위해서는 OSPO<sub>Open Source Program Office</sub>를 설립하여 개발자 교육, 컴플라이언스 보장, 커뮤니티 참여 및 구축, 오픈소스 공개, 코드 점검 등의 활동이 필요하다고 합니다. 이 글에서는 OSPO가 무엇이고, 어떤 역할을 하는지에 대해 TODO Group에서 [정의한 글](https://todogroup.org/blog/ospo-definition/)[^definition]을 옮겼습니다. 

[^todogroup]: TODO Group : https://todogroup.org/
[^todogroupmember]: TODO Group Member : https://todogroup.org/members/
[^repolinter]: Repolinter : https://github.com/todogroup/repolinter
[^guide]: TODO guides : https://todogroup.org/guides/
[^definition]: Open Source Program Office (OSPO) Definition and Guide : https://github.com/todogroup/ospodefinition.org

---

## OSPO의 정의

OSPO<sub>Open Source Program Office</sub>는 조직의 오픈소스 운영을 위해 조직의 중앙에 역량을 집중하도록 설계되었다. 여기에는 오픈소스의 사용, 배포, 선택, 검사 및 관련 정책 수립뿐만 아니라 개발자 교육, 컴플라이언스 보장과 조직에 이익이 되는 커뮤니티 참여와 구축을 촉진하는 활동이 포함될 수 있다. 

모든 산업에 걸쳐 적용할 수 있는 오픈소스 프로그램을 구축하기 위한 광범위한 템플릿은 없지만, 여기에서는 일반적인 OSPO의 기능을 세 가지로 분류해보았다. 
1. 법적 위험 완화<sub>Legal Risk Mitigation</sub>
2. 엔지니어 작업 방식 개선<sub>Improving Engineers’ Practices</sub>
3. 재정적 이익 실현<sub>Enabling Financial Benefits</sub>

이렇게 세 가지로 분류해보니 각각 두려움<sub>Fear</sub>, 사랑<suv>Love</sub>, 돈<sub>Money</sub>이 연상된다.

### 법적 위험 완화

기업의 주된 관심사는 법적인 컴플라이언스이다. 따라서, OSPO는 기업의 오픈소스 라이선스 컴플라이언스 프로세스를 구축하고 관리한다. 일반적으로 소프트웨어를 배포하는 기업은 이 문제에 가장 관심이 많으며, 이러한 법적 위험을 완화하기 위해 OSPO의 설립을 시작한다. 

OSPO는 법적 위험 관리를 위해 다음과 같은 책임을 가진다. 
* 오픈소스 라이선스 컴플라이언스 관리 감독
* 인바운드 코드<sub>주: 오픈소스 등 외부로부터 입수한 코드</sub> 사용을 위한 검토 프로세스 실행
* 오픈소스 프로젝트에 효과적으로 기여하도록 보장

### 엔지니어 작업 방식 개선

OSPO는 오픈소스 환경에서 코드 관리에 대한 가이드와 정책을 제공함으로써 엔지니어링 기능을 개선한다. 소프트웨어 엔지니어가 많은 기업은 OSPO를 엔지니어링 정책과 작업 방식에 집중한다. 

이와 관련한 OSPO의 책임은 다음과 같다. 

* 기업의 오픈소스 전략을 기업 내부 및 외부에 명확히 전달
* 조직 내 오픈소스 문화 육성
* 오픈소스 커뮤니티에 고품질의 코드를 자주 공개하도록 보장

### 재정적 이익 실현

일부 기업은 오픈소스에 관한 재정적 이익에 초점을 맞춘다. OSPO를 활용하여 상용 벤더를 사용할지 아니면 오픈소스 벤더를 사용할지에 대한 전략을 수립한다. 반면 일부 기술 기업은 자신의 OSPO (및 오픈소스 프로젝트)를 활용하여 고객이 자신의 상용 제품을 구매하도록 유도한다. 

이와 관련한 OSPO의 책임은 다음과 같다. 

* 전략 실행에 대한 오너쉽과 감독
* 상용 제품 및 서비스에서 오픈소스를 효과적으로 사용하도록 촉진
* 전략적 오픈소스 프로젝트이의 채택을 장려하기 위하여 개발자 커뮤니티와 협력

---

<i>이처럼 각 OSPO는 기업 비즈니스, 제품 및 목표에 맞게 구성된다. </i>


## OSPO 가이드

> TODO Group은 기업이 OSPO를 설립하고 운영하기 위한 가이드를 제공합니다. 

* [How to Create an Open Source Program](https://todogroup.org/guides/create-program)[^howtocreate]
* [Measuring Your Open Source Program](https://todogroup.org/guides/measuring)[^measuring]
* [Tools for Managing Your Open Source Program](https://todogroup.org/guides/management-tools)[^tools]

[^howtocreate]: How to Create an Open Source Program : https://todogroup.org/guides/create-program)
[^measuring]: Measuring Your Open Source Program : https://todogroup.org/guides/measuring)
[^tools]: Tools for Managing Your Open Source Program : https://todogroup.org/guides/management-tools)[


## OSPO Examples

> TODO Group은 Microsoft, Faceboo, Uber 등 오픈소스를 효과적으로 활용하는 기업들이 어떻게 OSPO를 운영하고 있는지, 각 기업의 사례를 취합하여 공개하였습니다. 

* [Autodesk](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/autodesk.md)[^autodesk]
* [Capital One](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/capitalone.md)[^capitalone]
* [Comcast](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/comcast.md)[^comcast]
* [Facebook](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/facebook.md)[^facebook]
* [Microsoft](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/microsoft.md)[^microsoft]
* [Red Hat](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/redhat.md)[^redhat]
* [Salesforce](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/salesforce.md)[^salesforce]
* [SAP](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/sap.md)[^sap]
* [Uber](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/uber.md)[^uber]
* [Yahoo/Verizon Media](https://github.com/todogroup/todogroup.github.io/blob/master/content/en/guides/casestudies/oath.md)[^yahoo]

[^autodesk]: Autodesk's OSPO : https://bit.ly/3mVdi0I)
[^capitalone]: Capital One's OSPO : https://bit.ly/3sxbf4e
[^comcast]: Comcast's OSPO : https://bit.ly/2RAIw1A
[^facebook]: Facebook's OSPO : https://bit.ly/3gkwOmg
[^microsoft]: Microsoft's OSPO : https://bit.ly/3eajxKm
[^redhat]: Red Hat : https://bit.ly/3xfk3iW
[^salesforce]: Salesforce's OSPO : https://bit.ly/3akfzgR
[^sap]: SAP's OSPO : https://bit.ly/32sVznS
[^uber]: Uber's OSPO : https://bit.ly/2Qcxwar
[^yahoo]: Yahoo/Verizon Media's OSPO : https://bit.ly/3mYRmBP

> SK텔레콤의 OSPO에 대한 글을 소개 하며 글을 마칩니다. : [SK텔레콤 OSPO](https://sktelecom.github.io/about/ospo/)[^sktospo]
> 
> 감사합니다. 

[^sktospo]: SK텔레콤 OSPO : https://sktelecom.github.io/about/ospo

