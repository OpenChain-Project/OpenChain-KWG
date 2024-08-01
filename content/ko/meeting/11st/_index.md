---
title: "11st Meeting"
linkTitle: "11st Meeting"
weight: 11
type: docs
description: >
 Online Meeting, September 2021
---
<div ><span class="image fit">
  <img src="kwg-sep.jpeg" width="50%">
  <!-- <img src="OpenChain_KWG_6th_1.png" width="42%"> -->
</span></div>

## Schedule

* Schedule: 2021-09-30 (Thu) 2:00~4:00 PM
* How to join
  - Zoom (Please refer to the e-mail for the access address)

## Agenda
| No | Agenda           | Speaker | Slide |
|----|-----------------|------|------|
| 0  | Intro & Greetings  | Newcomers | - |
| 1  | OpenChain Update  | 	Shane Coughlan, Linux Foundation | - |
| 2  | OpenChain KWG Update | 장학성, SK텔레콤 | [OpenChain_Korea_20210930_update.pptx](OpenChain_Korea_20210930_update.pptx)  |
| 3  | 오픈소스 라이선스 변화의 흐름| Sean (김영환), 카카오 | [opensource_license_flow.pdf](./20210930_opensource_license_flow_kakao.pdf) | 
| 4  | 삼성전자 오픈소스 정책 및 프로세스 현황 소개 | 정윤환. 삼성전자 | - | 
| 5  | 최근 주요 동향 <br> - 미 정부의 'SBOM' 의무화 <br> - Github Copilot 오픈소스 라이선스 논쟁| Robin (황민호), 카카오 | [opensource_trend.pdf](./20210930_opensource_trend_kakao.pdf) | 
| 6  | 소그룹 모임 | All | - |
| 7  | Free Discussion | All | - |

## 소그룹 모임 주제
1. 자기 소개 (하는 일, 최근 주요 관심사)
2. 오픈소스 컴플라이언스 활동 이력 관리 방법 Best Practice 공유 (개발자와 이메일로 소통? Jira 등 도구 활용?)

## Attendees
* ETRI
* 현대자동차
* 현대오토에버
* 현대모비스
* 카카오
* LG전자
* 라인플러스
* 엔씨소프트
* 삼성전자
* SK텔레콤
* Linux Foundation

## Video
### OpenChain Update 

<iframe width="560" height="315" src="https://www.youtube.com/embed/iRaGiaZYTxM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### OpenChain KWG Update

<iframe width="560" height="315" src="https://www.youtube.com/embed/B4q-7ymocjo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 오픈소스 라이선스 변화의 흐름

<iframe width="560" height="315" src="https://www.youtube.com/embed/d79GpONCR9c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 최근 주요 동향

<iframe width="560" height="315" src="https://www.youtube.com/embed/KGoVuO1d9Bc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Minutes
### OpenChain Update (Shane Coughlan / Linux Foundation)
1. SK Telecom OpenChain ISO 인증 획득, Telecommunication 업계 중 최초
2. Global Case Study: 10월~12월 내 운영 중 [https://www.openchainproject.org/featured/2021/09/22/automation-case-study]
   * 주제: Open Source Compliance Automation and Interoperability
3. SPDX Specification 2.2.1 버전이 ISO 등재되었음 [https://www.iso.org/standard/81870.html]
4. OpenChain Security Assurance Guide 준비 중
5. OpenChain Supplier Education Pack 배포

### OpenChain KWG Update (장학성/SK텔레콤)
1. KWG 멤버 조건에 "기업/기관"으로 변경
2. 삼성전자 & SK Telecom OpenChain ISO 인증 획득
3. Tooling Subgorup에서 OSS Based Compliance Tooling Group에서 소개된 오픈소스 도구들에 대해 소개 예정
4. OpenChain KWG Charter 
   * 거버넌스 문서화 진행 중
   * 초안을 작성하고 있으나 많은 분들의 의견이 필요합니다.
5. Blog Update : [https://openchain-project.github.io/OpenChain-KWG/blog/]
   * SK 텔레콤 개발자 소통 커뮤니티 DEVOCEON 론칭 뉴스
   * LG전자의 Fosslight 공개 뉴스
   * 카카오의 OLIVE 출시 뉴스
   * GPL v2.0의 설치 정보 요구 건에 대한 뉴스 

### 오픈소스 라이선스 변화의 흐름 (Sean(김영환)/카카오)
1. 라이선스 변경 이력
   * 2018년 10월, MongoDB : AGPL 3.0 → SSPL 1.0
   * 2019년 11월, Sentry : BSD 3-Clause → BUSL 1.1
   * 2021년 1월, ElasticSearch : Apache 2.0 → EL 2.0 or SSPL 1.0
   * 2021년 4월, Grafana : Apache 2.0 → AGPL 3.0
2. Grafana : Apache 2.0 → AGPL 3.0
   * 변경 목적은 오픈소스 커뮤니티의 자유를 유지하면서, 오픈소스를 수정한 경우 기여 문화를 장려하기 위함
   * AGPL 특징
     * 네트워크로 서비스하더라도 소스코드 공개 필요
     * GPL 소프트웨어를 사용해서 SaaS로 서비스를 제공하면 공개 의무 없으나, AGPL은 소스코드 공개 의무 발생
   * Grafana 사용 가이드
     * Apache 2.0 적용 버전은 사용해도 이슈 없고, AGPL 3.0이 적용된 버전부터 사용 시 코드 공개 의무 있음
3. MongoDB : AGPL 3.0 → SSPL 1.0
   * 변경 목적은 AGPL은 클라우드에서 제공이 배포인지, 아닌지에 대한 논란의 소지가 있어서 명확하게 라이선스를 SSPL로 변경한 것
   * 클라우드 서비스 업체가 커뮤니티에 기여하지 않고 대부분의 이익을 창출하고 있다고 비판
   * 클라우드 서비스에서 **Strip-Mining**을 하고 있다고 비판함 (Strip Mining: 산이라는 생태계는 파괴하고 필요한 자원만 캐는 행위)
   * SSPL v1.0 특징
     * 클라우드 서비스의 경우에 대해서도 소스코드 공개 의무사항을 요구 (13조항) 
     * 서비스 소스코드: 프로그램 및 관리 소프트웨어 (API, 모니터링, 백업, 저장 S/W 등)
   * MongoDB 사용 가이드 
     * MongoDB를 외부에 서비스로 제공하는 경우, 서비스 소스코드를 전부 공개해야 함
4. ElasticSearch : Apache 2.0 → Elastic License 또는 SSPL 1.0
   * 변경 목적은 MongoDB와 사례와 동일
   * Elastic License 2.0 특징
     * 거의 모든 자유를 허용하지만 아래 2가지 제한사항만 있음
     * 1) 호스팅 등의 서비스로 제 3자에게 제공할 수 없음
     * 2) S/W 라이선스키에 대한 변경 및 라이선스키로 보호되는 S/W 기능 변경 금지
   * ElasticSearch v7.10까지는 Apache 2.0 적용, v7.11 이후부터는 SSPL 1.0 또는 EL 2.0 적용
   * Elastic Search 사용 가이드
     * 7.11 이후부터 ElasticSearch를 외부에 서비스하는 경우 적용된 라이선스에 따라 서비스 소스코드를 전부 공개하거나 Elastic과 계약 필요함
     * X-pack 디렉토리 하위는 Elastic 라이선스 적용
5. Sentry : BSD 3-Clause → BUSL 1.1
   * 변경 목적은 Sentry 초기 개발 때 1인 개발로 시작했으나, 프로젝트가 커지면서 수익 창출이 필요했고 Sentry를 판매하는 다른 회사로부터 보호하기 위해 라이선스 변경
   * BUSL 1.1 특징
     * 2016년 MariaDB에 적용된 라이선스
     * 사용자는 소스코드를 수정하고 컴파일 가능
     * 상용 서비스 목적으로 사용을 금지하며, 배포 후 특정 시점이 지나면 Apache License 2.0으로 변경됨
   * Sentry 사용 가이드
     * 9.1.2 버전까지는 BSD가 적용되며 상용 서비스에 사용 가능함
     * 10.0.0 버전부터는 BUSL가 적용되며 상용 서비스에 사용 불가, 3년 지난 후부터 상용 서비스 가능
6. 최근 AWS와 오픈소스 프로젝트들의 협력 사례들
   * Amazon Managed Grafana 정식 출시 
     * Grafana Labs와 협력을 통해 개발 진행 
   * Amazon OpenSearch Service 정식 출시
     * Elastic Search의 Apache 버전을 포크하여 OpenSearch 작업
7. Shared Source Software 등장
   * 지적재산권은 보호하면서, 소스코드는 제공하는 소프트웨어
   * 클라우드 등 상용 서비스로 제공 금지

### 삼성전자 오픈소스 정책 및 프로세스 현황 소개 (정윤환/삼성전자)
1. 정책의 필요성 
   * 오픈소스 사용 정책은 2009년 BusyBox 사건으로 인해 오픈소스 소프트웨어 사용에 대한 정책의 중요성이 대두되었음
   * 오픈소스 기여 정책은 2011년 Tizen 오픈소스를 출범하면서 기여에 대한 정책이 필요해짐
2. 오픈소스 서비스(사이트, 검증도구) 구축
   * 2018년 이전
     * 사내: Protex, BSI, AVAS 등의 검증 도구 사용, 사업부 별로 관리 시스템 별도 구축
     * 사외: OSRC, GitHub
   * 2021년 현재
     * 사내: 오픈소스포털(SOSHUB) 구축
       * 검증도구, 사업부별 관리 시스템, 오픈소스 정책 통합
       * 오픈소스 프로세스 자동화
       * 오픈소스 DB 구축
       * 오픈소스 검증체계 강화: 사전/실시간 검증 추가
     * 사외: SamSung Open Soure 구축

### 최근 주요 동향 (Robin(황민호)/카카오)
1. 미 정부의 SBOM 의무화
   * 미국에서 최근 대형 보안 사고가 있었음 (SolarWinds 사태, Exchange 사태, Colonial PiPeline 사태)
   * 지난 5월 행정명령을 통해 SBOM 위상을 격상하였음 
   * 주요 내용 중 오픈소스와 관련된 부분은 "소프트웨어 공급망을 개선"해야 한다는 내용이 있었음
   * 관련하여 Supplier Name, Component Name 등 SBOM 최소 필수 요소를 지정하였음
2. GitHub Copilot 오픈소스 라이선스 논쟁
   * Copilot은 GitHub에서 내놓은 서비스이며, AI 머신 러닝 기술을 이용해 코드를 자동 완성해주는 기능
   * Sentry의 한 개발자는 GiGhub에 있는 본인의 GPL 코드가 AI 학습에 포함되었음을 영상으로 제작하여 공개함
   * Copilot이 저작권 침해를 저지르고 있는가? 라는 논쟁이 있었으나 GitHub 측에서는 GitHub에 공개된 코드는 트레이닝(학습)에 쓰여질 수 있고, 라이선스 타입을 구분하지 않는다고 답변하였음
   * Fossa의 법적 해석에 따르면, 사용자는 Copilot이 제안하는 코드를 참고만 하고 그대로 사용하지 않는 것이 좋다는 의견  

## Photo Gallery
![photo](kwg1001-2.png)


## OpenChain News
* ... 

