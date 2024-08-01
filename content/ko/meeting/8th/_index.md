---
title: "8th Meeting"
linkTitle: "8th Meeting"
weight: 8
type: docs
categories: ["meeting"]
tags: ["현대자동차", "SCA", "Olive"]
description: >
 Online Meeting, Dec 2020
---

![kwg-logo.gif](openchain-xmas-2.gif)
_<center> < designed by [@soimkim](https://github.com/soimkim) > </center>_

<img src="kwg8-2.png" width="90%">

## Intro

* Schedule: 2020-12-02 (Wed) 2:00~4:00 pm
* How to join
  - Join Zoom Meeting ( https://us02web.zoom.us/j/9990120120?pwd=NzVCaFE2L1RRRFZaSkk0dm8xdlplUT09 )
  - Meeting ID: 999 012 0120
  - Password: 123456

## Agenda

| No | Agenda           | Speaker | Slide |
|----|-----------------|------|------|
| 0  | Intro & Greetings  | SK텔레콤 장학성 | [Download](./OpenChainKWG-8th-2020-12-02-intro.pdf) |
| 1  | OpenChain Update  | 	Shane Coughlan, Linux Foundation | [Download](./OpenChain_Korea_8_Keynote.pdf) |
| 2  | 현대자동차 오픈소스 거버넌스 체계 구축 | 현대자동차 백송하 |  [Download](./20201202_Hyundai.pdf) | 
| 3  | SCA(Software Composition Analysis)  Market 동향 | 카카오 황민호(Robin) | [Download](./SCA%20Market%20Wave%202020.pdf) | 
| 4  | Olive 전격 공개 | 카카오 황민호(Robin) | - | 
| 5  | Case Study | All | - |
| 6  | OpenChain KWG Update | SK텔레콤 장학성 | [Download](./OpenChainKWG-8th-2020-12-02-update.pdf) |
| 7  | Free Discussion | All | - |

## Case Study
* 주제 : 오픈소스 컴플라이언스 / 보안취약점 점검 대상 분류
   - 폰트에 대해서도 오픈소스 컴플라이언스 활동을 수행하는지? (예: Open Font)
   - 회사가 사내 직원용 모바일 앱(안드로이드, iOS)을 배포하는지? 그렇다면 이에 대해서도 오픈소스 컴플라이언스 활동을 수행하는지? 
   - 오픈소스 보안취약점 점검 대상은 어떻게 분류하는지? 배포하는 소프트웨어 뿐만 아니라, 인프라 용, 서버 용으로 사용 중인 소프트웨어에 대해서도 점검 대상으로 포함시키는지?

## Attendees
* Hyundai Mobis
* Hyundai Motors
* Kakao
* ktds
* LINE Plus
* LG Electronics
* NCSOFT
* SamSung Electronics
* SK telecom


## Video

### Introductions and Update

<iframe width="560" height="315" src="https://www.youtube.com/embed/IzED17cZDmM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Hyundai’s Open Source Governance System

<iframe width="560" height="315" src="https://www.youtube.com/embed/me3g6YHdXlA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Trends in Software Component Analysis (SCA)

<iframe width="560" height="315" src="https://www.youtube.com/embed/Sn9zxYWsxqQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Kakao’s Olive System

<iframe width="560" height="315" src="https://www.youtube.com/embed/whonTsWWtMs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



## Minutes
### 1. OpenChain Update (Shane Coughlan, Linux Foundation) 
#### OpenChain 2.1 – ISO / IEC International Standard
  - 12/14(월) publish 예정
  - 일본과 한국 기업이 같은 날에 OpenChain 2.1 Announce 예정
  - 인증 방식
    1. Self Certification : https://certification.openchainproject.org/ 
    2. Independent Assessment : 각 국가에 지정된 인증 기관 통해 인증
    3. Third-Party Certification : PWC, TUV SUD등 OpenChain partner를 통한 인증 (OpenChain 공식 인증서 발급)
#### Self-Certification 지원 언어
  - 현재는 영어, 한국어, 일본어 지원 중
  - 12월 내에 중국어, 독일어, 프랑스어, 이탈리아어, 스페인어 등 가능해질 것
- SPDX 2.2도 ISO/IEC Transposition Process 진입
  - 2021년 2분기에 채택될 예정
#### Openchain T-shirt 추가 지원 
- 추가로 티셔츠를 희망하는 분은 예산 지원 가능하다고 합니다! (Planning Group에 문의해 주세요 : korea-sg-planning@lists.openchainproject.org)

### 2. 현대자동차 오픈소스 거버넌스 체계 구축(백송하, 현대자동차)
#### 배경
- 2015년, OIN(Open Invention Network) 가입: 오픈소스에 대한 특허권 크로스 라이선싱 단체
  - Toyota, BMW, Honda 등이 참여하는 업계 컨소시엄에서 OIN 홍보를 많이 했음
- 2016년, Toyota에서 OIN 가입 후 1000만불 기부하여 Gold Member로 승인받음
- 2017년, 오픈소스 라이선스 전문교육을 받고 컴플라이언스에 대한 중요성 인식
- 2018년, TFT 신설
#### 업계 특성
- 자동차에 포함되어 있는 소프트웨어 라인수가 1억줄 이상 (타 소프트웨어보다 더 비중이 큼)
- Supply Chain 업체로부터 3,000개 이상의 부품이 납품되며, 그 중에서 직접 납품하는 1차 업체만 하더라도 300개 정도 (2차, 3차로 납품하는 케이스가 많아서 Supply Chain이 복잡함)
- 많은 공급 업체들을 어떻게 관리할 것인가가 쟁점

#### 현재 구축된 컴플라이언스 방안
- IP 조직 하에 오픈소스 관리 TFT 구성
  - 법률 대응 및 서드파티 협력사들에게 라이선스 정책 배포, 오픈소스 검증하고 라이선스 고지 담당
- 방향성
  - 1단계) 심플한 기준 수립
    - 해당 오픈소스 소스코드만 공개 및 고지하는 케이스
    - 수정 및 추가한 부분까지 공개하는 케이스
    - 결합된 모든 사용자 코드 공개 및 고지하는 세 가지 케이스에 대해 대응 방안 수립 
  - 2단계) NIPA와 업무협약체결
    - NIPA측으로 업체들이 검증 요청하도록 하고, 현대자동차는 업체로부터 검증 성적서를 제공받음
  - 3단계) OPENCHAIN 프로젝트 활용
    - OPENCHAIN 프로젝트를 활용하여 업체에게도 오픈소스 컴플라이언스 인식 수준을 높이려고 함

#### 이슈: 오픈소스와 특허
- 오픈소스도 특허로 보호 가능하고 출원과 등록 절차 필요함
- 라이선스 규정만 준수하면 되는 것이 아니라 제3자의 특허권에 문제가 없는지, 자사의 특허권 활용에는 영향이 없는지 확인
- 현대자동차는 OIN와 Linux System Definition을 통해 업계 관련 기술들을 크로스 라이선싱 하고 있음
#### Q&A
1. NIPA에 교육/검증을 요청하는 1,2차 업체들이 얼마나 있는지?
    > 금년부터 시작했기 때문에 아직은 20개 정도 업체에서 검증 요청함 <br>현재는 이미 출시했던 차종보다 신규 출시할 차종에 대해 오픈소스 검증을 진행 중
2. 특허 검증 방법은 무엇인지?
    > 소스코드를 매칭하는 툴은 따로 없음 <br> 기술을 숙지하고 특허 툴에 검색어로 검색해서 특허를 침해하는지 체크하고 있음
3. 오픈소스와 관련된 특허 소송 이슈가 있었는지?
    > 소송 사례는 없었으나 분쟁이나 이슈들은 존재하는 것으로 알고 있음
4. TF는 남양 연구소에서 시작되었고, 전사로 확장할 예정
5. 업체 계약 시 특별한 프로세스가 있는지
    > 기술 개발 의뢰할 때 도면을 제공하면서 관련된 지켜야할 규정과 스펙을 업체에 제공함 <br> 이때 오픈소스 관련 표준 스펙을 함께 제공해서 지키도록 하고 있음 <br> 업체 계약 시 오픈소스 관련된 조항을 만들 계획이 있음
6. 기타: 전자가 OIN 가입하지 않은 이유
    > 2차에 걸쳐서 OIN 가입을 검토했었으나 결국은 가입하지 않음 <br> OIN 크로스 라이선싱 범위를 정할 때 어떤 범위까지 공유되어야 하는지 명확하지 않음 <br> 특허를 많이 보유한 업체는 OIN 때문에 라이선스가 빠져나갈 수 있는 리스크가 있다고 판단

### 3. SCA(Software Composition Analysis) Market 동향 (황민호(Robin), 카카오)
#### SCA란?
- 보안, 라이선스 규정 준수를 발견하고 관리하기 위한 자동화된 프로세스
- SCA 관련 리서치들
  - Gartner 보고서 연구 결과
    - OSS 사용 시 가장 중요한 과제는 오픈소스 프로젝트의 장기적인 생존 가능성(1위), 오픈소스 보안 이슈(2위), 취약점(3위) 였음
    - SCA 도구 선택 기준
      1. 취약점 데이터 베이스: NVD 기반으로 취약점 데이터베이스 제공하는
      2. 개발자 지원: IDE, Repository 연동 코드 추가 전 오픈소스 평가 기능, 추천 기능 등이 있는지
      3. 오픈소스 라이선스 준수: 라이선스 정책을 설정할 수 있고, 라이선스 추적할 수 있는 기능이 있는지
      4. 응답 시간 단축: 취약점을 빠르게 감지하고 우선순위 결정할 수 있는지
      5. 보고서 발급
  - Forrester Wave 연구 결과
    - 2017년만 해도 SCA가 막 시작하는 단계였고, 2019년에는 기존 업체들이 리더 포지션으로 정착하고, 새로운 서비스들이 탄생하였음
  - G2 소프트웨어 평가 기관에 따르면
    - 1등은 Gitlab, 2등은 WhiteSource라고 함

> **SCA vs SAST** <br>
> SCA는 오픈소스의 취약점과 라이선스 관리하는 툴이라면, SAST는 독점 코드의 결함 파악, 코드 생산 전에 취약점 탐지하는 툴

#### 대표적인 SCA 툴 소개
- FOSSA 
  - 초기 컨셉은 라이선스 준수 관리 툴로 시작되었으며, 2018년에 4명으로 프로젝트 시작
  - 2020년에는 오픈소스 취약점 관리까지 지원
  - 풍부한 데이터베이스를 갖고 있다고 함
- Snyk
  - FOSSA와는 반대로 오픈소스 취약점 관리 툴로 시작하였으며, 최근 라이선스 준수 관리까지 지원
- WhiteSource
  - Whitesource는 초창기부터 SCA툴을 제공하던 업체이며, 현재 관련 업체들 중 리더급으로 성장
  - Azure, Gitlab 등에 연계되어 있음
- SCA 업체들은 공통적으로 블로그와 같은 커뮤니티를 운영하여 다양한 정보 제공을 하고 있음

#### Q&A
1. SCA 라는 용어가 언제부터 나온 용어인지?
   > 이미 오래전부터 사용되어 왔으나 2017년부터 연구 결과에 본격적으로 SCA라는 명칭이 나온 것으로 보임
2. Github도 SCA라고 볼 수 있는지?
   > 오픈소스 식별은 가능하지만, 라이선스 식별이나 메타 정보를 제공하지는 않아서 SCA로 분류되지 않는 것으로 보임
3. SCA 블로그 목록 제공해줄 수 있는지?
   > 공유 예정 <br> 많은 SCA 업체들이 블로그를 운영하고 있고, 퀄리티 높은 아티클을 많이 읽을 수 있음
 
### 4. Olive 전격 공개 (황민호(Robin), 카카오)
- Olive URL: https://olive.kakao.com
- 카카오 로그인 기반, Github 연동 필요
- 현재는 베타 버전만 공개한 상태이고, 기능 확장하여 정식 공개 예정
- 일부 모듈은 오픈소스로 공개 예정

### 5. Case Study
메일 참조

### 6. OpenChain KWG Update (장학성, SK텔레콤)
- KWG T-shirt 제작
  - 자체 디자인 제작 (Thanks to 소임)
  - 신청자 전원 무상 지급 완료 (Linux Foundation 지원)
  - 11월 내에 배송 완료
- ISO Standard PR 한국어 번역 완료
  - https://github.com/OpenChain-KWG/ISO-announce-translate 
  - 기여자: 홍종호님(LG전자), 정윤환님(삼성전자), 김한주님(현대 MNSOFT), 김동민님(엔씨소프트), 진희두님(LG전자)
  - 아직 어색한 부분이 있어서, 가능한 자연스러운 번역이 되도록 많은 피드백 부탁드립니다! (github Issue 또는 PR)
- OpenChain Specification 2.1 한국어 번역
  - https://github.com/OpenChain-KWG/Specification-Translation-KR 
  - 기여자: 홍종호님(LG전자)
  - 1차 번역은 완료됐지만, 어색한 표현이나 문장에 대한 의견이 필요합니다. 많은 기여 부탁 드립니다. 
- 카카오/엔씨소프트 사내 교육자료 공개
  - 카카오 : https://openchain-project.github.io/OpenChain-KWG/blog/2020/11/24/kakao-training-material/  
  - NCSOFT : https://openchain-project.github.io/OpenChain-KWG/blog/2020/11/23/oss-basic-training-slide/ 
- Planning Group 활동 시작 : https://openchain-project.github.io/OpenChain-KWG/subgroup/planning/ 
- 과학기술정보통신부 장관상 표창 수상 (공개SW 산업발전 유공자부문) : 장학성 - https://www.oss.kr/festival/award 

### 기타: 앞으로 KWG 미팅 진행 방식을 어떻게 할까?
- 현재처럼 세션발표 형식으로 진행하는 것이 좋을지, 더 좋은 방안은 없을지?
  - 일본은 sub-group 모임이 많은데, 우리도 sub-group이나 스터디 그룹을 발전시켜보면 좋겠지만 코로나 상황이 진전되야 가능할 것
  - KWG 진행 방식에 대해 의견 있으시면 자유롭게 말씀해 주세요!
- Tooling Group 진행 방향 (LG전자 박원재)
  - https://openchain-project.github.io/OpenChain-KWG/subgroup/tooling/ 
  - 새로 컨택이 온 오픈소스 툴을 개인적으로 공부 중이며, 공부한 내용을 선 공유하면서 참여를 유도하고자 함
  - LG전자에서 Fossology를 개선해서 사용하고 있는 부분을 내부적으로 검토해서 KWG에서 공개하겠음


## Photo Gallery
<div ><span class="image fit">
  <img src="kwg8-1.png" width="90%">
</span></div>


## OpenChain News
https://www.openchainproject.org/featured/2020/12/09/openchain-korea-work-group-meeting-8-full-recording


![kwg-logo.gif](openchain-xmas.gif)
_<center> < designed by [@soimkim](https://github.com/soimkim) > </center>_
