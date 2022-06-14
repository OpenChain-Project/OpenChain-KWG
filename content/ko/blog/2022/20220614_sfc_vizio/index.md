---
date: 2022-06-14
title: "SFC vs. Vizio 판결 겉핥기"
linkTitle: "SFC vs. Vizio 판결 겉핥기"
description: SFC와 Vizio의 GPL 소송에 대한 배경과 쟁점을 살펴 보겠습니다.
author: 장학성
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

> 안녕하세요, [장학성](https://haksungjang.github.io/)입니다. 
> 
> [SFC](https://sfconservancy.org/)(Software Freedom Conservancy)가 GPL 위반을 이유로 미국의 스마트 TV 제조사인 [Vizio](https://www.vizio.com/)에 소송을 제기하였는데요, 지난 2022년 5월 13일, 이와 관련한 미국 연방 법원의 [판결](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf)이 있었습니다. 
> 
> 이번 판결의 배경과 시사점을 수박 겉핥기로 정리해보았습니다. 제가 법률 전문가가 아니기 때문에 용어나 해석에 있어서 오류가 있을 수 있습니다. 여러 전문가분께서 [피드백](https://github.com/haksungjang/haksungjang.github.io/issues/new) 주시면 고맙겠습니다. ^^

## References

먼저 이 글을 작성하면서 참고한 references를 밝힙니다. 

- PROCEEDINGS: (IN CHAMBERS) ORDER GRANTING PLAINTIFF’S MOTION TO REMAND : [https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf)
- Software Freedom Conservancy files right-to-repair lawsuit against California TV manufacturer Vizio Inc. for alleged GPL violations : [https://sfconservancy.org/copyleft-compliance/vizio.html](https://sfconservancy.org/copyleft-compliance/vizio.html)
- SFC Files GPL Enforcement Suit Against Vizio Advancing Novel Legal Theories : [https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories/](https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories/)
- First Update on the Vizio lawsuit : [https://sfconservancy.org/blog/2021/nov/30/vizio-update-0/](https://sfconservancy.org/blog/2021/nov/30/vizio-update-0/)
- SFC v. Vizio remanded back to California state courts : [https://lwn.net/Articles/895405/](https://lwn.net/Articles/895405/)
- Software Freedom Conservancy right-to-repair lawsuit against California TV manufacturer Vizio, Inc. remanded to California State Court : [https://sfconservancy.org/news/2022/may/16/vizio-remand-win/](https://sfconservancy.org/news/2022/may/16/vizio-remand-win/)
- 미국 법원 "GPL도 계약"…소비자의 코드 요구권 인정 : [https://zdnet.co.kr/view/?no=20220518145132](https://zdnet.co.kr/view/?no=20220518145132)
- 오픈소스 라이선스 위반과 저작권 침해 : [https://olis.or.kr/library/openSwDetail.do?bbsId=103&bbsNum=26400](https://olis.or.kr/library/openSwDetail.do?bbsId=103&bbsNum=26400)
- 오픈소스 라이선스에 대한 법적 효력 : [https://www.copyright.or.kr/information-materials/trend/the-copyright/download.do?brdctsno=10231&brdctsfileno=4699](https://www.copyright.or.kr/information-materials/trend/the-copyright/download.do?brdctsno=10231&brdctsfileno=4699)
- 연방 법원(Federal Court) 특징 : [https://lawandstory.com/연방-법원federal-court-특징/](https://lawandstory.com/%EC%97%B0%EB%B0%A9-%EB%B2%95%EC%9B%90federal-court-%ED%8A%B9%EC%A7%95/)


## 1. 배경지식

지난 5월 18일, "[미국 법원 "GPL도 계약"…소비자의 코드 요구권 인정](https://zdnet.co.kr/view/?no=20220518145132)"이라는 제목의 기사가 나왔는데요, 다음과 같은 문장은 뭔가 중요한 말인 것 같은데 정확히 어떤 의미인지 잘 이해가 되지 않았습니다. 

{{< alert >}}"조세핀 L. 스테튼 미국 지방법원 판사는 판결문에서 "GPLv2가 저작권법으로 제공하는 권리와  추가 계약 약속의 집행은 별도로 구별되는 추가 요소에 해당한다는 SFC의 주장이 연방법에 의해 선점되지 않으므로 (상급법원으로) 환송한다"고 밝혔다."{{< /alert >}}

그래서 호기심에 몇몇 자료들을 찾아보았고, 나름대로 이해한 바를 정리해 보았습니다. 저와 비슷한 고민이 있으셨던 분들께 도움이 되길 바랍니다. 

### 1-1 저작권법과 계약법

#### 저작권법
- 이용권자(라이선시)는 저작권법이 허락 하는 이용 방법 및 조건의 범위 안에서 저작물을 이용 가능
    - 여기서 ‘이용'은 복제, 공중 송신, 배포, 이차적저작물 작성 등의 저작재산권이 부여하는 행위만을 뜻하고, ‘사용'행위는 포함하지 않음
    - ‘사용'행위에 대한 방법이나 조건이 있다면 이를 위반하여도 저작재산권 침해는 성립하지 않고, 계약위반으로 인한 책임만 부담
- 이용권자(라이선시)가 저작권법이 허락하는 이용 방법과 조건의 범위를 벗어나는 행위를 한다면 저작권 침해에 해당
- 저작권 침해에 해당한다면 저작권법 위반으로 형사처벌, 금지 청구 가능

#### 계약법
- 일반적으로 계약은 라이센서(오픈소스라면 copyright owner)와 라이선시 사이의 합의
- 계약법에 의한 책임을 물으려면 우선 양 당사자 사이에 정당하게 계약이 성립되었음이 요구됨
- 계약(합의)’의 효력으로서 부담하는 의무에 위반한 경우에는 채무불이행으로 인한 계약 책임만 부담
  - 저작권 침해처럼 형사처벌이나 금지 청구를 당할 염려는 없으며 약정된 손해배상액을 물어주어야 함
- 오픈소스 라이선스 하의 저작물을 계약의 성립이 구성된다고 보는 것은 관할권마다 다툼의 여지가 있음
- 손해배상의 액수나 구제 조치 등에 있어서 제한적

#### 사례
- GPL software의 저작권자가 저작권 침해 주장으로 소송 제기
  - 예: Harald Welte, Patrick McHardy)
- Jacobsen v. Katzer 판례
    - 라이선스 조건을 부과하고 있는 저작권 라이선스가 준수되지 아니한 경우에는 저작권 침해
    - 라이선스 규정이 조건(condition)이라면 저작권법이 적용되고 합의사항 (covenants)에 불과하다면 계약법 적용
- 한컴 vs. 아티팩스
    - 한컴은 계약 서명과 같은 행위 또는 상호 합의 과정이 없었기 때문에 계약 위반이 아니라고 주장하
    - 법원은 계약 위반에 해당한다고 판결

### 1-2 미국 연방 법원 (Federal Court)와 주 법원 (State Court)
- 미국에는 연방 법원과 주 법원이 있으며, 각각 다른 성격의 사건을 다룬다. 
    - 주 법원 : 대체로 주민의 개인적인 삶에 영향을 미치는 사건 (가정법, 유언법 등)
    - 연방 법원
        - 지역 법원 (District Court), 항소 법원 (Appellate Court), 대법원 (Supreme Court)로 이루어져 있음
        - 제한된 사건만 다루고 있음 : 헌법, 연방 범죄, 군법, 지적재산권 등
        - 저작권법(Copyright Act)은 연방 법원에서 다룸
- 미국에서는 연방 법원에서 저작권 주장에 대한 독점적인 관할권을 갖고 있다.
    - 따라서, 과거 미국에서의 GPL 소송을 위한 거의 모든 주장은 저작권법에 대한 독점 관할권을 가진 연방 법원(Federal Court)에 제기됐다.
- 소장을 엉뚱한 법원에 제출한다면, 사건은 기각되거나 다른 법원으로 이송된다.
    - 즉, 주 법원(State Court)에 제기된 action이 연방 법원에 의해 선점(preempt)되는 경우 제거될 수 있음

## 2. SFC vs. Vizio 소송 히스토리

SFC는 2021년 10월에 Vizio를 상대로 소송을 제기하였습니다. 당시 소송 내용과 이후 히스토리는 다음과 같습니다. 

### 2021-10-19

- SFC는 Vizio를 상대로 [SmartCast](https://www.vizio.com/en/smartcast) TV와 관련하여 GPL 및 LGPL을 위반했다고 주 법원에 [소송](https://sfconservancy.org/docs/software-freedom-conservancy-v-vizio-complaint-2021-10-19.pdf)을 제기
    - plaintiff : Software Freedom Conservancy, Inc. (”[SFC](https://sfconservancy.org/)”)
    - defendant : Vizio, Inc. (”[Vizio](https://www.vizio.com/)”)
    - allege :
        - Vizio uses “at least twenty-five programs, including the Linux kernel software” in its smart TVs that are covered by the GPL Agreements,
        - Vizio does not make the corresponding source code for these programs available to purchasers of its smart TVs.
    - seek :
        - to enforce SFC’s right to have access to the source code corresponding to the executable code resident on Vizio’s devices covered by the GPL Agreements.
        - as a remedy to its breach of contract claim, SFC seeks to compel Vizio to make the source code available
    - claim :
        1. breach of contract and 
        2. declaratory relief (선언적 판결)
            - 선언적 판결이란 미국의 민사소송법 내 절차로 판사가 민사소송에서 당사자들의 권리, 의무, 책임 등을 선언하는 것을 말하며 이때 어떤 이행 명령이나 조치, 또는 배상을 명령하지는 않음. 특허 등의 소송의 경우, 침해혐의자가 특허권자를 상대로 비침해, 무효, 권리 불행사의 확인을 구하는 소 또는 반소 등으로 사용됨.
- 참고 : “[최근 소송 사례 : Stockfish v. ChessBase, SFC v. Vizio (박원재)](https://openchain-project.github.io/OpenChain-KWG/meeting/12th/)”

### 2021-11-29

이에 대해 Vizio는 다음과 같이 반박하였습니다. 

- GPL을 위반하는 것은 저작권 침해에 해당
- 저작권법은 연방 법원이 선점(preemption)하기 때문에 주 법원에서 다룰 사안이 아님
- 저작권법하에서 저작권 소유자만 GPL 및 LGPL에 따라 소스 코드를 요청할 권리가 있고, SFC가 소비자로서 소스 코드를 요구할 권리는 없다.

그렇기 때문에, Vizio는 주 법원에 제기된 이 사건을 연방 법원에서 맡아줄 것을 요청([NOTICE of REMOVAL of ACTION to FEDERAL COURT](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.1.0.pdf))하였습니다. 

만약 이를 연방 법원이 승인할 경우, 미국 저작권법에 따라 심사가 진행되어야 하고, SFC는 저작권자가 아니기 때문에 원고로서의 자격조차 없게 됩니다. 

### In Response, 

SFC는 이러한 Vizio의 주장에 반박하며 이 사건을 다시 주 법원으로 환송하기 위한 요청서(Motion to Remand)를 연방 법원에 제출하였습니다. 

### 2022-05-13

연방 법원은 SFC의 Motion to Remand를 승인[(ORDER GRANTING PLAINTIFF'S MOTION TO REMAND)](https://storage.courtlistener.com/recap/gov.uscourts.cacd.837808/gov.uscourts.cacd.837808.30.0.pdf)하여 이 사건을 주 법원으로 환송하였습니다. 

## 3. 주목할 만한 사항

이번 소송은 기존 GPL 소송 사례와는 여러 새로운 면이 있습니다. 미국의 오픈소스 전문 변호사인 Heather Meeker는 이에 대해 아래와 같이 [설명하였습니다](https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories). 

### 3-1. 계약 위반(Breach of Contract)과 특정 이행(Specific Performance)
- 과거에는 거의 모든 GPL 소송이 저작권 침해 주장으로 제기되었음
- 하지만, 이번 소송은 저작권법이 아닌 계약법 하의 claim
- 금전적 손해 배상(monetary damages)이 아닌 모든 TV 구매자에게 copyleft license가 요구하는 technical information을 제공할 것을 요구 (소스 코드 공개)
    - “damages”에 대한 보상이 아닌 소스 코드 공개를 요구 : “specific performance”
- 계약법에서 금전적 손해를 제외한 모든 구제 청구는 특정 이행(specific performance)을 요구하는 것임 (specific performance는 계약법에서는 드문 구제 방법
- 일반적으로 원고가 계약을 위반한 피고에게 보상금 대신 specific performance를 요구하는 경우는, 돈으로 대체할 수 없는 것을 원하기 때문

{{< alert type="warning" title="specific performance" >}}
Fulfilling the requirements of a contract in exactly the way the contract specifies. When most contracts are disputed in court, the plaintiff expects to receive money, that they can use to remedy the harm that the other party caused them in not holding up their side of the deal. When a plaintiff seeks specific performance, they want something that money can’t replace.
{{< /alert >}}

### 3-2. Claim Brought in State Court
- 미국에서는 연방 법원에서 저작권 주장에 대한 독점적인 관할권을 갖고 있음
- 따라서, 과거 미국에서의 GPL 소송을 위한 거의 모든 주장은 저작권법에 대한 독점 관할권을 가진 연방 법원에 제기했다.
- 하지만 이번 SFC가 제기한 소송은 Orange County, California 주 법원에 제기하였다.
- 주 법원 소송은 연방 법원에 비해 예측 불가하고, 결과가 일관적이지 않으며, 새로운 법률 이론에 대해 예상치 못한 견해를 보일 가능성이 있다.

### 3-3. No Author as Plaintiff
- SFC는 제품의 구매자로서 소송을 제기
- 과거 GPL 소송의 원고는 GPL software의 저작권 소유자였다.
- 이와 달리, 이 소송의 원고는 SFC이고, Vizio TV를 구매한 소비자로서 소송 제기
- SFC는 저작권 소유자뿐만 아니라 제품의 소비자도 소스 GPL 코드를 받을 권리가 있음을 증명하고자 함

### 3-4. Declaratory Relief
- 이 소송은 본질적으로 법원에 GPL 및 LGPL이 법적으로 집행 가능하고 (enforceable) Vizio가 이를 위반하였음을 선언하도록 요청했다.
- GPL을 계약으로 본다고 해도, 일반적으로 계약은 licensor (i.e. code copyright owner)와 licensee 사이의 계약이기 때문에 SFC는 계약 당사자로 보기 어렵다.
- 그래서, SFC는 자신과 모든 소비자가 계약의 제삼자 수혜자 (third party beneficiary)라는 이론으로 소송을 제기하였다. 
    - Third Party Beneficiary : 계약서의 당사자가 아니면서 계약서를 강행하도록 소송을 걸 수 있는 사람을 의미, 즉, 계약서의 당사자가 아니더라도 계약의 이익에 직접적으로 관여된 사람을 의미
    - GPL의 제삼자 수혜자 : GPL 계약의 당사자는 아니지만, GPL 계약 당사자들이 계약을 성실히 수행할 때 혜택을 얻을 수 있는 자. 이러한 혜택의 한 예는 GPL software의 소스 코드를 받는 것임
  
{{< alert type="warning" title="third-party beneficiaries of the GPL" >}}
People who aren’t a party to a GPL agreement, but who would benefit from the contract if the parties to the GPL do as they promise under the agreement. An example of such a benefit might be the receipt of the source code of the GPL’d software. See also General Public License (GPL).
{{< /alert >}}

## 4. 연방 법원 판결 주요 내용 (2022-05-13)

2022년 5월 13일 연방 법원에서는 어떤 내용의 판결을 했는지 살펴보겠습니다. 

### 4-1. 주요 관건

법원은 우선 연방 법원에서 판단해야 할 주요 관건을 다음과 같이 설명하였습니다. 

- 법원이 결정해야 할 유일한 문제는 federal Copyright Act (연방 저작권법)이 SFC의 claim (breach of contract and declaratory relief)을 완전히 선점(preempt)하여 연방 관할권을 생성하는지 여부이다. 
- 만약 claim이 연방 저작권법에서 다루는 일반적인 저작권 범위 내의 권리(복제, 2차 저작물 배포 및 전시에 대한 배타적 권리 등)와 동등하다면 연방 저작권법에 의해 선점되기 때문에 연방 관할권을 생성한다.
- 만약 사건이 연방 저작권법에 의해 선점되지 않는다고 주장하려면, 소송 원인이 저작권이 보호하는 권리 이외의 권리를 보호해야 하고, 이에 해당하는 “extra element”가 있어서 소송의 성격을 변경할 수 있어야 한다. 

### 4-2. 관련 판례 : "Versata Software vs. Ameriprise"

- GPL이 derivative work에 대해 소스 공개를 요구하는 건 저작권 의무와는 별개이다.
- 피고는 저작권 침해로 소송을 제기당한게 아니다.
    - 오픈소스 프로그램을 포함하는 파생 저작물에 대한 ‘additional obligation : 소스 공개 의무 미준수’을 위반했기 때문에 원고로부터 소송을 당한 것이다. 
- 이처럼 저작권법에 의해 제공되는 권리에 해당하지 않는 “additional contractual promise”은 “extra element”에 해당한다.

### 4-3. SFC의 Claim이 “extra element”인지 여부

- 저작권법의 보호 목적은 저작물을 복제, 배포, 전시할 수 있는 사람을 제한하는 독점권이다.
- 그러나 저작권법은 소스 코드를 받을 권리를 부여하지 않는다. 이런 권리는 오히려 저작권법이 보호하는 독점권과 정반대이다.
- 저작권자가 아닌 SFC가 GPL agreement의 제삼자 수혜자로서의 지위를 주장하는 것은 저작권법에 따른 권리와는 다르다.
- 즉, SFC가 GPL agreement의 제삼자 수혜자 (third-party beneficiary)로서 소스 코드를 받을 자격이 있다고 주장하는 건 “extra element”이다.

### 4-4. Vizio의 주장이 유효한지 여부

- Vizio는 오픈소스 라이선스 위반은 저작권 침해라고 주장하지만, SFC는 이번 소송에서 저작권 침해에 대한 claim을 하지 않았다. 
    - 원고가 claim하지 않은 사항을 법원이 판단할 이유는 없다. 
    - 게다가 SFC는 저작권자가 아니기 때문에 그런 주장조차 할 수 없다.
    - SFC는 저작권법에 의해 Vizio의 복제, 파생저작물 제작 등을 하는 것을 제한하려는 것이 아니라, 소스 코드를 제공하도록 요청할 뿐이다.
- Vizio는 소스 코드 제공이 라이선스의 ‘condition’이므로 이를 위반하는 건 ‘계약 위반'이 아니라 ‘저작권 침해'에 해당한다고 주장하였다.
    - 따라서 SFC의 ‘contract claim’은 저작권 침해로 전환되어야 한다고 주장하였다.
    - 하지만 “수행 의무가 발생하기 전에 반드시 발생해야 하는 행위 또는 사건" 이라는 condition 위반 만이 저작권 침해를 구성할 수 있으며, 이외 다른 모든 license terms, covenants의 위반은 계약법에 의해서만 소송이 가능하다
    - 또한, 모호한 계약 조항은 condition이 아니라 covenant로 해석한다


### 4-5 판결

- SFC의 주장이 저작권법에 의해 완전히 선점되지 않았다.
  - GPL 계약은 저작권 라이선스뿐만 아니라 계약(contractual agreement)의 기능을 모두 수행한다. 
- 따라서, 연방 법원은 관할권이 없으며 주 법원으로의 환송 신청을 승인한다(the Motion to Remand is GRANTED). 

## 5. 시사점

이번 판결에 대해 SFC는 많은 사람이 GPL은 저작권 라이선스로만 기능한다고 알고 있는데, 저작권 라이선스 뿐만 아니라 계약으로서도 기능한다는 것을 보여준 Copyleft license 역사에서의 분수령이 된 순간이라고 말하였습니다. 또한, SFC는 이 소송이 GPL의 제삼자 수혜자로서의 개인 소비자의 권리에 초점을 맞춘 최초의 법적 사례이며, 이런 소비자의 권리를 주 법원에서 증명할 기회를 기대하고 있다고 [밝혔습니다](https://sfconservancy.org/news/2022/may/16/vizio-remand-win/). 

사실 저는 국내 기사만을 (대충) 봤을 때는 SFC가 소송에서 이겼고, 이제 일반 소비자도 기업을 대상으로 GPL 소스 코드를 요구할 법적 권리가 생긴 줄로 생각했는데, 이번 판결 내용은 그에 대한 최종 판결을 한 것은 아니었습니다. 앞으로 주 법원에서 이를 위한 다툼을 할 수 있는 기회를 부여 받은 판결로 이해됩니다. 

끝으로, 이에 관련한 [Heather Meeker의 의견](https://heathermeeker.com/2021/11/09/sfc-files-gpl-enforcement-suit-against-vizio-advancing-novel-legal-theories/)은 좋은 참고가 됩니다. 

- SFC는 GPL 소송 기준을 새롭게 만들려고 노력하고 있다. 환영할 만하지만 역효과도 우려된다.
    - 지난 25년간 GPL software를 사용하여 제품을 만드는 많은 회사는 GPL 소송에 크게 걱정하지 않았다.
    - 만약 이번 소송에서 SFC가 승소한다면, 기업은 GPL code를 사용하는 데 부담을 가질 수 있고, 이는 free software의 확산에 걸림돌이 될 수 있다.
    - 또한, 일반 대중이 GPL 소송을 제기할 수 있게 되는 경우, 금전적인 이익만을 목적으로 하는 트롤이 나타날 수 있다.
- SFC의 시도가 성공할 수 있을지도 아직은 모른다.
    - 연방 법원이 이 사건을 기각하지 않고 주 법원으로 환송했다는 것은 SFC의 주장을 모두 받아들였다고 보기보다는 단순히 사건이 연방 법원에 적절하지 않으며, 따라서 기각할 근거도 없기 때문에 환송했다고 볼 수 있다.
    - 일단, SFC는 GPL의 제삼자 수혜자로서 피고에 소스 코드 공개를 요청할 자격이 있다고 주장할 입지를 얻었다.
    - 하지만, 앞으로 이 소송은 복잡하고, 길어질 수 있으며, 큰 비용이 들어갈 수 있다.
    - 대부분의 GPL 소송은 대개 신속히 합의로 해결되기도 한다.


이상으로 정리를 마치며, 다시 잘 이해되지 않았던 국내 기사를 보겠습니다. 

{{< alert >}}"조세핀 L. 스테튼 미국 지방법원 판사는 판결문에서 "GPLv2가 저작권법으로 제공하는 권리와  추가 계약 약속의 집행은 별도로 구별되는 추가 요소에 해당한다는 SFC의 주장이 연방법에 의해 선점되지 않으므로 (상급법원으로) 환송한다"고 밝혔다."{{< /alert >}}

이제 이해가 되는 것 같습니다. 그런데, 여전히 왜 "(상급법원으로)" 환송한다고 표현했는지는 잘 모르겠습니다. 미국 지방법원은 연방 법원에 해당하고, 이 사건은 주 법원으로 환송하는 건데, 왜 "(상급법원으로)" 환송한다고 표현했을까요? 오타일까요, 미국에서는 주 법원을 상급법원으로 표현하나요? 아니면 제가 뭔가를 잘 못 이해하고 있는걸끼요? 법률 전문가 분의 [의견](https://github.com/haksungjang/haksungjang.github.io/issues/new) 부탁 드려봅니다. :) 

감사합니다. 