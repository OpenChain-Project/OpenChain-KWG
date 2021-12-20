---
date: 2021-12-20
title: "SaaS로 서비스를 제공할 때에도 오픈소스 컴플라이언스가 필요한가요?"
linkTitle: "SaaS와 컴플라이언스"
description: "Open Source Compliance for SaaS Vendors"
author: 장학성
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

대부분의 오픈소스 라이선스는 오픈소스를 실행시키는 것에는 아무 제한을 두지 않으며, 오픈소스를 재배포할 때 소스 코드 공개, 고지 등의 의무 준수를 요구합니다. 여기서 배포라고 하면, 소프트웨어를 탑재한 임베디드 디바이스의 판매, 앱 마켓을 통한 모바일 앱의 배포 등 일반적으로 소프트웨어의 물리적인 전달을 의미합니다.  

SaaS 서비스 제공 업체는 서비스를 위해 소프트웨어를 배포하지 않기 때문에 오픈소스를 사용하더라도 라이선스 의무에서 비교적 자유로울 수 있습니다. 하지만, AGPL 등 네트워크를 통한 서비스 제공 시에도 라이선스 의무를 준수하는 오픈소스 라이선스도 있기 때문에 이에 대해서는 주의가 필요합니다. 

미국의 저명한 오픈소스 전문 변호사인 Heather Meeker는 [Open Source Compliance for SaaS Vendors](https://heathermeeker.com/2021/11/23/open-source-compliance-for-saas-vendors/)라는 글을 게재하여 SaaS 공급업체가 주의해야 할 Open Source Compliance에 대해 설명하였는데요, 오늘은 이 내용을 소개하겠습니다. 

---

## 1. Client Side로 배포되는 소프트웨어를 고려하라. 

Heather는 먼저 Client Side Software에 대해 언급하였습니다. SaaS Platform에서는 대부분의 소프트웨어가 공급업체의 Server-side에 존재하지만, 일부 소프트웨어는 사용자의 컴퓨터(“Client-Side”)로 전달이 되어 동작하게 됩니다. 

Heather는 SaaS 형태로 웹사이트 제작 기능을 제공하는 [워드프레스](https://wordpress.com/)를 예로 들어 설명하였습니다. Chrome 브라우저로 워드프레스에 접속하여 블로그를 제작하는 화면을 가정하겠습니다. 거기에서 control-u(맥북 환경에서는 Command + Option + U)를 누르면 page source code를 볼 수 있는데, 3천 라인 가량의 소스 코드가 있는 것을 볼 수 있습니다(물론 블로그 작성 기능을 구성하는 대부분의 소스 코드는 [WordPress.com](http://WordPress.com) 측 서버에서 구동됩니다). 

이러한 Client-side의 코드는 주로 웹페이지 내 입력 ‘form’에 날짜나 주소 등의 값이 유효한지 여부를 체크하는 등 단순한 로직 정도입니다. 이런 small task는 굳이 서버와 연동하느라 시간을 소요할 필요가 없습니다. 이런 Client-side의 코드는 주로 “scripting language” 코드이며, 대개 HTML, Javascript, CSS 입니다. 여기서 주목할 점은 이런 스크립트 코드는 브라우저에서 볼 수 있듯이 항상 소스 코드 형태로 전달이 된다는 겁니다. 그래서, LGPL 같은 Copyleft 라이선스가 적용된 코드라고 하더라도 별도로 소스 코드를 제공해야할 필요가 없습니다. 

### 고지 내용 제공은 어떻게?

Heather는 그래도 고지 의무는 고려해야 한다고 설명하면서 한가지 문제를 제기합니다. 개발자들은 오픈소스인 HTML/CSS/Javascript를 사용할때 로딩 속도를 빠르게 하기 위하여 최소한의 코드만 남기기를 원하고, 이 때문에 코드 내 저작권, 라이선스 표시 부분을 지우는 경우가 많다는 겁니다. 그런데, LGPL과 같은 Copyleft가 적용된 소프트웨어를 배포할 때에는 소스 코드를 제공해야 할 뿐만 아니라 라이선스 전문도 함께 제공해야 합니다. 

> [LGPL-2.1](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html)
> 
> 1. ... *and distribute a copy of this License along with the Library.*
> 

그럼 LGPL인 Javascript 코드를 Client-side로 전달하면서 어떻게 LGPL 라이선스 전문을 전달해야 할까요? 

Heather가 제안한 한가지 방법으로는 SaaS 시스템의 대시보드와 같은 화면 내 오픈소스 고지를 위한 페이지를 만들고 여기에 라이선스 전문을 보여주는 링크를 포함하는 것입니다. 

하지만 Heather는 이 방법도 100% 라이선스 조건을 충족한다고 볼 수 있을지에 대해서는 다소 의문을 제기합니다. 사실 대부분의 오픈소스 라이선스의 고지 의무 조항은 웹서비스가 존재하기 훨씬 전에 만들어졌고, 당시의 프로그램 전달 방식만을 고려하여 고지 내용이 설치 프로그램과 함께 전달될 것으로 가정하고 있기 때문입니다. 

MIT의 경우도 다음과 같이 요구합니다. 

> [MIT](https://opensource.org/licenses/MIT)
> 
> *The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.*
> 

이런 조항을 고려하면, SaaS 시스템 내 별도의 웹페이지에서 라이선스 고지를 하는 방법도 충분하지는 않다는 주장이 있을 수도 있습니다. 물론, 이런 방법이라도 제공하는 것이 안하는 것보다는 훨씬 낫겠지만요. 🙂

### Minified Javascript는 소스 코드 공개 방법으로 적절한가?

개발자는 Client-side로 전달하는 코드의 로딩 타임을 최소화 하기 위하여 가급적 코드 사이즈를 경량화합니다. 이를 위해 Javascript 코드 내 불필요한 주석을 제거하고, “white space”도 제거하는 등 Minify 처리를 합니다. 

```jsx
<script id=’wp-media-utils-js-translations’>
	( function( domain, translations ) {
		var localeData = translations.locale_data[ domain ] || 
			translations.locale_data.messages;
		localeData[“”].domain = domain;
		wp.i18n.setLocaleData( localeData, domain );
	} )( “default”, { “locale_data”: { “messages”: { “”: {} } } } );
</script>
```

예를 들어, 위의 코드를 Minify하면 다음과 같이 변환되고, 당연히 가독성은 떨어지게 됩니다. 

```jsx
<scriptid=’wp-media-utils-js-translations’>(function(domain,translations){varlocaleData=translations.locale_data[domain]||translations.locale_data.messages;localeData[“”].domain=domain;wp.i18n.setLocaleData(localeData,domain);})(“default”,{“locale_data”:{“messages”:{“”:{}}}});</script>
```

그런데, 소스 코드 공개를 요구 하는 오픈소스 라이선스에서는 ‘소스 코드'를 수정이 용이한 형태여야 한다고 정의하고 있습니다. 

> [GPL-2.0](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
> 
> *3. ...
> The source code for a work means the preferred form of the work for making modifications to it.*
> 

그렇다면, LGPL인 Javascript 코드가 Client-side로 전달되면서 Minified된다면, 이는 소스 코드 제공의 의무를 준수한 것으로 볼 수 있을까요? Minified 상태로는 사용자가 수정이 곤란하기 때문에 Unminify 상태의 가독성 좋은 코드를 별도로 제공해야 하는건 아닐까요? 

이에 대해 Heather는 Minified Javascfript 코드라도 대부분의 개발 도구에서는 자동으로 white space를 삽입하는 등의 가독성을 향상시켜주는 기능을 제공하기 때문에 문제가 되지 않는다고 말하고 있습니다. 즉, Minified Javascript 코드를 전달하는 것도 GPL, LGPL에서 소스 코드의 정의로 요구하는 “the preferred form of the work for making modifications”로 볼 수 있다고 설명하였습니다. 

## 2. 네트워크 Copyleft 라이선스를 주의하라.

Heather가 언급한 SaaS에서의 또 다른 잠재적인 이슈는 네트워크 Copyleft 라이선스입니다. AGPL 등 일부 오픈소스 라이선스는 소프트웨어의 물리적인 배포가 없더라도 네트워크를 통해 사용자와 상호 작용(interacting)할 경우 Server-side 소스 코드의 공개를 요구합니다. Heather는 이런 라이선스를 “네트워크 Copyleft 라이선스"라고 불렀는데요, 대표적인 네트워크 Copyleft 라이선스인 AGPL-3.0은 13조에서 Remote Network Interaction에 대한 의무를 아래와 같이 정의합니다. 

> AGPL-3.0
> 
> 13. Remote Network Interaction; Use with the GNU General Public License.
> 
> *... if you modify the Program, your modified version must prominently offer all users interacting with it remotely through a computer network (if your version supports such interaction) an opportunity to receive the Corresponding Source of your version by providing access to the Corresponding Source from a network server at no charge, through some standard or customary means of facilitating copying of software.*
> 

즉, AGPL 소프트웨어를 다음 두가지 방식으로 사용한다면, 소스 코드를 제공해야 합니다. 

1. 소프트웨어를 수정하고,
2. 사용자가 네트워크를 통해 소프트웨어와 상호작용 (interacting)하는 방식으로 사용

그럼, 수정하지 않고 사용하는건 얼마든지 가능한 것 아니냐고 반문할 수 있는데요, 개발자가 처음 AGPL-3.0 오픈소스를 도입하는 단계에서는 수정하지 않고 사용한다고 해도, 시간이 지나면서 수정해야만 하는 경우가 발생할 수 있습니다. 하지만 시간이 지나면서 누군가 다른 개발자가 AGPL 라이선스를 고려하지 않고 기능상, 성능상, 호환성 등의 여러 이유로 수정을 가할 수 있습니다. 따라서, 누군가 AGPL-3.0 오픈소스를 수정하지 않고 사용할테니 라이선스 의무 준수가 필요 없을 것이다라고 주장한다면 당장은 그럴듯해 보이지만, 미래의 변동 가능성까지 책임 질 수는 없습니다.  

참고로, Google은 “[AGPL Policy](https://opensource.google/docs/using/agpl-policy/)”를 만들어서 Google에서는 AGPL하의 코드를 사용할 수 없음을 분명히 하였습니다. 

> [Google’s AGPL Policy](https://opensource.google/docs/using/agpl-policy/)
> 
> ***WARNING:** Code licensed under the GNU Affero General Public License ([AGPL](https://en.wikipedia.org/wiki/GNU_Affero_General_Public_License)) MUST NOT be used at Google.
> 
> The license places restrictions on software used over a network which are extremely difficult for Google to comply with. Using AGPL software requires that anything it links to must also be licensed under the AGPL. Even if you think you aren’t linking to anything important, it still presents a huge risk to Google because of how integrated much of our code is. **The risks heavily outweigh the benefits.***
> 

Google은 다음과 같은 이유료 AGPL Policy를 만들었다고 설명합니다. 

- AGPL은 AGPL 소프트웨어와 링크하는 모든 것도 AGPL로 라이선스를 부여할 것을 요구한다. → 바이러스 효과
- 이런 바이러스 효과가 발생하는 시점은 소프트웨어를 배포할 때 뿐만 아니라 사용자가 제품이나 서비스를 원격 네트워크 인터페이스를 통해 액세스 할 때도 포함한다.
- Google의 핵심 제품(Search, Gmail, Map, Youtube 등)은 사용자가 원격 네트워크 인터페이스를 통해 상호작용하는 서비스이기 때문에 엔지니어가 이런 서비스를 AGPL에 의존적으로 개발할 경우 상황은 심각해진다.
- 이런 상황을 고려했을때 Google은 AGPL의 네트워크를 통해 사용되는 소프트웨어에 대한 요구사항을 준수하기 매우 어렵다.

이와 같이 네트워크 조항을 포함하는 라이선스는 AGPL-3.0말고도 여러 라이선스가 있다고 Heather는 설명합니다. 

- Server Side Public License
- Open Software License
- Non-Profit Open Source License
- Artistic 2.0
- Apple Public Source License
- RealNetworks Public Source License
- Reciprocal Public License
- Honest Public License
- Academic Free License ***[Note: this license is permissive. The others are copyleft.]***

Heather는 대부분의 회사는 이러한 네트워크 Copyleft 라이선스를 위험도가 높은 라이선스로 분류하고 SaaS 개발에 사용하지 않는 정책을 갖고 있다고 말하였습니다. 

사실, 저도 예전에는 AGPL-3.0은 수정한 경우에만 소스 공개 의무를 부여하기 때문에 수정하지 않고 사용하는건 문제가 없다고 생각했습니다. 그래서 굳이 회사에서 정책적으로 AGPL-3.0의 사용을 막을 필요까지는 없는 것 아닌가라는 입장이었습니다. 그런데, AGPL-3.0 오픈소스를 도입하는 시기에는 수정하지 않고 사용한다고 하더라도, 수년이 지나면서도 수정하지 않도록 보장할 수 있는 체계가 회사 내부에 갖춰져 있냐를 봤을때에는 수정하지 않겠다는 것을 장담할 수 없게 됩니다. 따라서, Google과 같이 기본 정책으로는 AGPL-3.0 오픈소스는 사용을 제한하는 정책을 가져가는 것이 라이선스 관리 측면에서 합리적이라고 생각합니다. 

## 3. SaaS 코드도 언젠가는 배포해야 할 수 있음을 고려하라.

Heather는 SaaS 플랫폼의 서버 측 코드도 거의 항상 언젠가는 배포된다는 점을 고려하여 서버 측 코드에 대해서도 오픈소스 컴플라이언스를 고려해야 한다고 말합니다. SaaS 코드를 배포하게 되는 경우는 다음과 같습니다. 

- SaaS 담당 조직의 매각
- SaaS 서버를 고객 서버로 이전
    - 금융, Health 등 강력한 규제 산업의 요구 사항으로 인해 서버 이전
    - 보안 이슈로 서버 이전
    - 국가 간 데이터 이동으로 발생하는 개인 정보 문제 방지를 위해 서버 이전 등
- 내부 SaaS 도구의 제품화 등

Heather는 이러한 상황이 발생할 수 있음을 고려하여 SaaS 서비스를 개발할 때에도 향후 배포될 경우를 고려하여 GPL 또는 AGPL 오픈소스와 자체 개발 코드를 결합하는 것을 피해야 한다고 설명합니다. 

과도한 정책이라도 보시는 분들도 있을 것 같지만, 충분히 고려할 만한 주장이라고 생각합니다. 특히, 근래에 들어서 주로 서버에 사용하는 오픈소스가 라이선스를 변경하고 있는 추세를 고려하면 서버용 프로그램에 대해서도 Software BOM을 파악하여 관리하는 체계를 갖추는 것은 기업에 꼭 필요한 절차가 되고 있습니다. 

---

과거에는 기업의 오픈소스 컴플라이언스 정책에서 외부로 배포하지 않고 내부 서버에만 사용하는 오픈소스인 경우에는 오픈소스 점검 대상에서 아예 제외시키기도 하였습니다. 하지만, (1) AGPL과 같은 네트워크 Copyleft 조항이 있는 오픈소스 라이선스나 (2) 오픈소스였다가 상용 소프트웨어러 라이선스 정책을 변경하는 추세를 고려하면 Server-side의 소프트웨어에 대해서도 라이선스 컴플라이언스 측면의 관리 체계가 필요해지고 있습니다. 기업은 이를 위한 정책, 절차를 개선하고, Server-side 소프트웨어에 대한 Bill of Materials를 자동으로 생성할 수 있는 도구를 도입해야 할 것입니다.


{{% pageinfo %}}
This paper was translated by Haksung Jang from the English version available at this [white paper](https://heathermeeker.com/2021/11/23/open-source-compliance-for-saas-vendors/).  The original author, [Heather Meeker](https://heathermeeker.com/about-me/), has not reviewed this translation.
{{% /pageinfo %}}