---
date: 2021-11-15
title: "중국 첫 GPL 소송 사례, VirtualApp"
linkTitle: "중국 첫 GPL 소송 사례"
description: "피고는 GPL 위반으로 원고에게 배상금 50만 위안 지급 선고"
author: 장학성
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---


> <i>안녕하세요, 장학성입니다. 
> 
> 지난 2021년 9월, 중국내 최초의 GPL 관련 판결이 있었다는 [중국 기사](https://www.oschina.net/news/159435)를 통해 공개되었습니다. 번역기를 활용해 이해한 내용을 정리해보았습니다.   
> 제가 법률가도 아니고, 중국어도 모르다보니 틀린 내용이 있을 수도 있음을 감안해주시기 바랍니다. :)   
> 오류를 발견하신 분은 언제든 알려주시면 감사하겠습니다! (haksung@sk.com) 
> 
> (감수에 도움을 주신 한국저작권위원회 [최진영 센터장](https://www.linkedin.com/in/jin-young-choi-20174b44)님께 감사 드립니다. ^^)</i>


{{% pageinfo %}}
출처 : "首例！违反 GPL 协议致侵权，被判赔偿 50 万元" - https://www.oschina.net/news/159435
{{% /pageinfo %}}

## 요약

지난 2021년 4월, 중국에서 저작권 침해 분쟁에 대한 민사 1심 [판결](https://www.iphouse.cn/cases/detail/woznd0v9pek4jx35ovdj8y5gxrm371q2.html?keyword=GPL)이 있었습니다. 피고가 원고가 GPL-3.0으로 공개한 코드를 사용하면서 GPL-3.0의 의무수항을 준수하지 않음으로써 GPL-3.0이 부여한 라이선스 권리가 종료되고, 이로 인해 침해가 구성되었다는 판결입니다. 법원은 침해 사실을 확인하고, 피고에게 500,000 RMB (약 1억 원)의 배상금을 부과하였습니다. 

## 분쟁 주체

이 분쟁의 원고와 피고, 그리고 분쟁 대상 소프트웨어는 다음과 같습니다. 

### 원고
원고는 **Jining Luohe Network Technology Co., Ltd** 이며, VirtualApp 저작권자입니다. 

### 피고

피고는 모두 세 곳의 회사입니다. 

1. **Fujian Fengling Chuangjing Technology Co., Ltd.**
    - Dim Sum Desktop 저작권 소유자
    - Dim Sum Desktop 공식 웹사이트 운영
2. **Beijing Fengling Chuangjing Technology Co., Ltd.** (Fujian Fengling의 모회사)
    - Dim Sum Desktop 개발사로 표시됨
3. **Shenzhen Tencent Computer System Co., Ltd.**
    - "Application Bao" (Dim Sum Desktop을 다운로드, 설치 및 운영하기 위한 서비스를 제공) 운영

## 분쟁 대상 소프트웨어

### 1. VirtualApp (원고 측 소프트웨어)
{{< imgproc featured_va_logo Resize "200x" >}}
{{< /imgproc >}}

원고는 가상 Android 환경을 제공하는 소프트웨어인 VirtualApp을 개발하여 배포하였습니다.
* Gitee : https://gitee.com/mirrors/VirtualApp
* GitHub : https://github.com/asLody/VirtualApp

{{< imgproc virtualapp Resize "600x" >}}
http://www.downcc.com/soft/359746.html
{{< /imgproc >}}

히스토리를 조금 더 자세히 살펴 보겠습니다. 

1. 원고 회사의 설립자 중 한 명이자 VirtualApp의 original contributor인 Lody는 2016년 7월 7일, VirtualApp을 [GitHub에 공개](https://github.com/asLody/VirtualApp/commit/136fdba24e8770b009882369a778d468ce600bed)하였습니다. 
2. 2016년 7월 8일, [LGPL-3.0을 적용](https://github.com/asLody/VirtualApp/commit/7a610f0abf1852c5cc8134134b44f11de6d2b566)하였으며, 
3. 2016년 8월 12일, [GPL-3.0으로 라이선스를 변경](https://github.com/asLody/VirtualApp/commit/38cc2086ea88dd69009093d4d28fe2d11ee445b9)하였습니다. 
   * [당시 시점의 코드](https://github.com/asLody/VirtualApp/tree/38cc2086ea88dd69009093d4d28fe2d11ee445b9)를 보면, Repository 내 GPL-3.0 라이선스 사본이 포함되어 있고, README 내 License 정보도 "GPL-3.0"으로 명시하고 있음을 확인할 수 있습니다. 
4. 그런데, 2017년 1월 24일, 갑자기 "[당신은 이 프로젝트를 무료로 사용할 수 있는 권한이 없다](https://github.com/asLody/VirtualApp/commit/7c8bfa40b2b301828cbaafefca122a3b5fc141d9)"는 안내가 추가됩니다. 
   * 이후, 2017년 3월부터 7월까지 이 프로젝트를 상용으로 이용하기 위해서는 상용 라이선스 취득이 필요하다는 안내가 여러 차례 추가됩니다. 
   * 이러한 라이선싱 정책 변화에 대해 중국 내 한 변호사는 Lody가 개발 초기에는 VirtualApp을 오픈소스 라이선스 하에 무료로 공개하였지만, 나중에 이를 이용하여 수익을 창출하려고 마음이 바뀐 것으로 추측하였습니다.
   * 다만, 이렇게 GPL로 공개한 오픈소스에 조건을 추가하는건 GPL에서 허용하지 않은 방식인데요, Lody는 오픈소스 라이선스에 대하여 제대로 이해하지 못하고 있었기 때문에 GPL-3.0에 위반하는 라이선싱 정책을 시도한 것으로 보인다고 중국 변호사는 언급한 바 있습니다. 
5. 2017년 8월, Lody는 VirtualApp(원고)을 설립합니다. 본격적으로 VirtualApp으로 비즈니스를 하겠다는 거죠. 
6. 그리고, Lody는 결국, 2017년 10월 29일, GitHub에서 [오픈소스 라이선스를 제거](https://github.com/asLody/VirtualApp/commit/44529892fc2e6198928196c80c5766e6453bf81e)합니다. 
     * https://github.com/asLody/VirtualApp/commit/00f152f98a922ced0d858c31e1a9c2f0afb53ab6  
      ![github_delete](./github_delete.png) 
7. 2017년 11월 8일, 원고는 VirtualApp v1.0에 대한 소프트웨어 저작권을 등록하여 등록증을 취득하고, 소프트웨어 저작권의 모든 권리를 향유합니다. 
8. 2017년 12월 30일, VirtualApp을 상용으로 사용 시, 아래와 같이 [반드시 상용라이선스 구매가 필요함](https://github.com/asLody/VirtualApp/commit/8e6d9cd925af55b53a7e93046c469dd69676c38b)을 알리고, 이후, 더 이상 GitHub Repo에 소스 코드를 업데이트하지 않았습니다. 

~~~
"VirtualApp(중국명: Luo box)은 2017년 8월에 정식으로 설립되었습니다. VirtualApp을 상업적 
목적으로 사용해야 하는 경우 반드시 QQ: 10890으로 연락하여 상업용 라이선스를 구매하시기 바랍니다. 
VirtualApp의 코드를 상업적 이익, 내부 사용을 위해 자신의 코드로 사용하거나 승인 없이 소프트웨어 시장에 
업로드하는 경우 당사에서 직접 경찰에 신고(저작권 침해)하여 귀하의 회사에 법적 소송 및 형사 책임이 발생합니다."
~~~  

참고로, VirtualApp은 Lody가 주요 기여자이고, 이후 30여 명의 개발자가 추가로 기여하였습니다. 

### 2. Dim Sum Desktop (피고 측 소프트웨어)

Dim Sum Desktop은 VirtualApp과 마찬가지로 가상 안드로이드 환경을 제공하는 소프트웨어이며, 피고 Fujian Fengling Chuangjing Technology Co., Ltd.가 개발하였습니다. 

{{< imgproc dimsum Resize "600x" >}}
http://www.appchina.com/app/com.dianxinos.dxhome
{{< /imgproc >}}

피고는 Dim Sum Desktop을 개발하면서 [GitHub에 공개된 VirtualApp의 2017년 8월 16일자](https://github.com/asLody/VirtualApp/tree/13808a689e0da48d31bdba4b8724891a1dbf84e1) 버전을 받아서 포함하였습니다. 이 버전은 GPL-3.0이 적용된 상태이면서 (앞뒤가 맞지 않지만) 상업적 사용을 금지한다는 문구도 포함하고 있습니다. 

2018년 9월, 원고는 "Dim Sum Desktop v6.5.8"이 VirtualApp V1.0의 코드를 사용하고 있음을 확인하였습니다. 
  - 두 소프트웨어 간 비교 가능한 코드 421개 중 다음과 같은 유사성을 발견하였습니다. 
      - 308 codes - substantial similarity
      - 27 codes - high similarity
      - 78 codes - general similarity


## 청구 취지

원고는 2019년 아래와 같은 청구 취지로 소송을 제기하였습니다.

1. 피고 Fujian Fengling Company와 피고 Beijing Fengling Company는 즉시 원고의 컴퓨터 소프트웨어 저작권 침해를 중단할 것
    - 즉, 인터넷을 통한 모든 버전의 "Dim Sum Desktop" 소프트웨어 다운로드, 설치 및 운영 서비스 제공을 즉시 중단해야 함
2. 피고 Fujian Fengling Company와 피고 Beijing Fengling Company는 원고에게 **2천만 위안**의 경제적 손실을 배상할 것
3. 피고 Fujian Fengling Company와 피고 Beijing Fengling Company는 침해 중지에 대해 원고에게 **50만 위안**의 합당한 수수료를 배상할 것 <sub>compensate the plaintiff for a reasonable fee of 500,000 yuan for stopping the infringement</sub>
4. 피고 Fujian Fengling Company와 피고 Beijing Fengling Company는 이 case에 대한 소송 비용을 부담할 것

## 법원 판결

2021년 4월, 법원은 이 사건이 컴퓨터 소프트웨어의 저작권 침해에 관한 분쟁이며 오픈 소스와 관련된 문제라고 [판결](https://www.iphouse.cn/cases/detail/woznd0v9pek4jx35ovdj8y5gxrm371q2.html?keyword=GPL)하며 다음과 같은 근거를 제시하였습니다.   

![china_judegement](china_judegement.png)

### 쟁점 1. GPL-3.0의 법적 효력 여부

법원은 계약적 성격을 띠고 라이선스 제공자와 사용자 간의 저작권 계약으로 판단할 수 있으며 중국 '계약법'의 조정 범위에 해당한다고 판단하였으며, GPL-3.0 위반에 대한 책임을 아래와 같이 설명하였습니다. 

#### GPL-3.0 위반에 대한 불법 행위 책임

- 저작권법은 저작권자의 배타적 권리를 보호
    - 복제, 수정, 배포 등의 권리는 저작권자에게만 있음 (저작권자 외에는 "공정 이용"의 범위 내에서만 저작물을 사용할 수 있음)
    - 누구든지 허가 없이 이런 행위를 하는 것은 침해에 해당함
- [GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html) 8. Termination
    - GPL-3.0의 사용 조건을 위반하는 경우 GPL-3.0을 통해 얻은 권한은 자동으로 종료
    - "You may not propagate or modify a covered work except as expressly provided under this License. Any attempt otherwise to propagate or modify it is void, and will automatically terminate your rights under this License"
- 중국 민법 총칙 제158조
    - “민사법률행위는 조건이 있을 수 있다… 해제 조건이 있는 민사법률행위는 조건이 충족되면 무효”라고 규정
- 오픈소스 소프트웨어의 특성상 GPL-3.0서에 명시된 사용조건(오픈소스코드, 저작권 정보 표시, 수정정보 등)은 라이선스 제공자가 사용자가 이를 사용할 수 있도록 하기 위한 전제조건임
    - 사용자가 사용 전제조건을 위반한 경우 라이선스 제공자와 사용자 간의 GPL-3.0은 자동으로 해지
    - 계약에 따른 사용자의 라이선스는 즉시 해지됨
    - 이로인해 사용자가 수행하는 복제, 수정, 출판 등의 행위는 권리의 상실로 인한 침해에 해당함

### 쟁점 2. 원고가 이 소송을 제기할 권리가 있는지 여부

법원은 GitHub에서 여러 기여자가 만든 저작물에 대해 소유권의 성격(예: 단독저작물, 공동저작물, 결합저작물 등)을 명확하게 설명하지는 않았습니다. 다만, 원고가 VirtualApp에 대한 저작권 등록을 했다는 등의 이유로 원고가 저작권을 가지며, 다른 기여자의 동의 없이 소송을 제기할 권리가 있다고 판단했습니다. 

1. 코드 호스팅 웹사이트의 업로드 기록과 인증 내역에 따라 원고가 VirtualApp의 저작권 소유자임을 입증할 수 있음
2. 원고는 소송을 제기하는데 기여자의 동의 또는 승인 없이 소송을 제기할 권리가 있음
    - 원고의 주주인 Lody는 프로젝트 owner로서 원고 주장의 근거가 되는 GitHub에 VirtualApp 초기버전의 소스 코드 중 총 31,097줄을 공개함.
    - 기여자는 GPL-3.0에 따라 VirtualApp 프로젝트에 자신의 소스 코드를 업로드하고, 라이선스도 부여함.
        - 이는 프로젝트 소유자 및 기타 사용자에게 기여한 기여물에 대해 라이선스를 부여하는데 동의한 것으로 간주.
    - 오픈 소스 프로젝트의 소송 권리 보호를 위해 모든 기여자의 만장일치 동의 또는 승인이 필요하게 요구한다면 실제로 권리 보호 조치를 시작조차 못하게 될 것임
    - 따라서 원고는 소송을 시작하기 위해 기여자의 동의나 승인이 필요하지 않음
3. GPL-3.0은 라이선스 제공자가 사용자에 대한 특허권을 주장하는 것을 제한할 뿐 라이선스 계약을 위반한 사용자에 대한 저작권 주장을 제한하지 않음 
    - 따라서 원고의 소송은 분쟁해결방식에 관한 GPL-3.0 합의를 위반하지 않았다고 볼 수 있음

다만, 법원은 원고가 VirtualApp을 relicense할 권리가 있는지에 관해서는 판단하지 않았습니다. 또한, 다른 기여자의 기여물까지 포함하여 relicense함으로써 GPL-3.0을 오염시킨 부분에 관해서도 판단하지 않았습니다. 

### 쟁점 3. 피고의 행위가 원고의 저작권을 침해했는지 여부

법원은 VirtualApp의 "상용 사용 금지 문구"가 GPL-3.0 (7조 Additional Terms, 10조 Automatic Licensing of Downstream Recipients)을 위반한다고 지적하며, 여전히 GPL-3.0 라이선스가 우선한다고 판단하였습니다. 

1. 원고는 VirtualApp을 오픈소스 버전과 상용버전으로 나누고, 후속 오픈소스 버전에서 "GPL-3.0" 라이선스를 삭제함
    - 이와 별도로 원고는 권리의 근거로 오픈소스 버전의 VirtualApp을 사용함. 따라서, VirtualApp의 오픈소스 버전과 상용버전의 관계 및 영향을 판단할 필요는 없음
    - GPL-3.0에 따르면 GPL-3.0을 따르는 이전 버전의 파일은 후속 버전에서도 여전히 GPL-3.0에 구속됨
2. GPL-3.0은 사용자가 상업적 사용을 수행할 수 있도록 허용하며, 라이선스 제공자가 이를 제한할 수 없음
    - 따라서, 법원은 원고의 다음 주장을 지지하지 않음 : "Dim Sum Desktop을 상용화하는 것은 GPL-3.0 위반임."
3. 피고가 "Dim Sum Desktop" 앱(V6.5.8)이 GPL-3.0을 따라 소스 코드를 무료로 공개해야 하지만 피고 Fujian Fengling Company가 이를 이행하지 않았음
    - 이에 따라 GPL-3.0 8조 및 중국 민법 일반원칙 제158조에 따라 피고 Fujian Fengling Company가 획득한 권한은 자동 종료됨
    - 따라서, 피고 Fujian Fengling Company의 VirtualApp 복사, 수정 및 배포는 권리 출처 상실로 인한 침해에 해당함

다만, 법원은 GPL-3.0 8조의 "라이선스 복원 조항" (저작권자가 위반 사실을 알렸을 때 위반 통지를 받은 게 처음이고, 30일 이내에 위반 사항을 시정 시 라이선스 영구 복원)에 대한 언급은 없었습니다. 중국의 한 변호사는 "원고가 피고에게 사전에 위반 사실을 통지하였는지?", "사전 통지 없이 그냥 바로 소송을 제기한 것은 아닌지?", "그렇다면 아직 '30일 내 시정 시 라이선스 영구 회복'의 기회가 남아있는 것인지?" 등이 궁금하다고 언급하기도 하였습니다. (소송까지 가는 순간 통지한 걸로 봐야하지 않을까요?) 

### 쟁점 4. 침해 사실 확인 시 피고의 법적 책임 범위

원고는 피고의 이익에 기반한 손해배상액 산정을 요청하였습니다. 하지만 법원은 법정손해배상금(statutory damages)에 근거하여 배상금을 정한 것으로 보입니다. 

- 피고 Fujian Fengling Company는 "Dim Sum Desktop" 앱(V6.5.8)의 개발자, 운영 및 퍼블리셔로서 법에 따라 VirtualApp의 저작권 침해를 중지할 책임이 있음
    - 피고 Fujian Fengling Company가 피고 Beijing Fengling Company의 전액 출자 자회사라는 사실에 비추어 볼 때, 두 피고가 공동으로 불법 행위 책임을 부담한다는 원고의 주장은 합법적이며 법원의 지지를 받음
- 피고 Tencent는 "AppBao 공식 웹사이트"에서 침해 가능성에 대한 관련 규칙과 불만 제기 채널을 마련하고 고소된 소프트웨어를 즉시 제거함
    - 원고는 또한 피고 Tencent에 대해 구체적인 불만을 제기하지 않았음
    - 따라서 피고 Tencent는 법적 책임을 질 필요가 없음
- 보상 문제
    - 원고는 피고 Fujian Fengling Company와 피고 Beijing Fengling Company의 침해 이익을 기반으로 계산되었다고 주장함
    - 법원은 배상액을 50만 위안으로 결정함

## 마무리

그동안 중국은 저작권법 위반에 관대하다는 인식이 많았는데, 영문을 기반으로 한 오픈소스 라이선스의 법적 효력을 인정하고, 라이선스 위반을 저작권 침해로 판결한 점이 인상적이었습니다. 기업은 오픈소스 라이선스 의무를 준수하기 위한 정책과 프로세스를 갖추어야 이러한 분쟁에 휘말리는 위험을 최소화 할 수 있을 것입니다. 

피고는 사건을 대법원에 상고한 것으로 알려졌습니다. 