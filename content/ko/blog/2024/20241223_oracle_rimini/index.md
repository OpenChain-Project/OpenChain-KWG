---
date: 2024-12-23
title: "Oracle과 Rimini Street 소송 사례로 알아보는 GPL 파생저작물 범위"
linkTitle: "Oracle과 Rimini Street 소송 사례"
description: 
author: 장학성
categories: ["blog"]
tags: ["Oracle v. Rimini", "GPL"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---

## 들어가며

소프트웨어 지식재산권 침해 논란에서 '파생저작물'이라는 용어는 매우 중요한 개념입니다. 특히 [GNU General Public License (GPL)](https://www.gnu.org/licenses/gpl-3.0.html)와 같은 오픈소스 라이선스를 다룰 때 이 개념은 핵심적인 역할을 합니다. 최근 [Oracle](https://www.oracle.com/)과 [Rimini Street](https://www.riministreet.com/) 간의 소송 사례는 이 '파생저작물'의 정의에 대한 해석을 제시했습니다. 이 글에서는 이 사건의 배경과 판결 내용, 그리고 이것이 오픈소스 라이선스 해석에 미칠 영향에 대해 알아보겠습니다.

## 사건의 배경

### PeopleSoft와 Rimini Street

[PeopleSoft](https://www.oracle.com/applications/peoplesoft/)는 Oracle이 제공하는 ERP(Enterprise Resource Planning) 소프트웨어입니다. 기업의 인사 관리, 재무 관리, 공급망 운영 등을 지원하는 이 소프트웨어는 정기적인 업데이트가 필요합니다.

Rimini Street는 Oracle 고객들에게 더 저렴한 비용으로 제3자 유지보수 서비스를 제공하는 회사입니다. 이들은 Oracle의 업데이트를 다운로드하고, 이를 수정하거나 배포하여 고객 시스템에 적용하는 방식으로 운영되었습니다.

![](./featured-rimini-street.jpeg)

### 저작권 침해 논란

Rimini Street의 초기 운영 방식(Process 1.0)은 다음과 같았습니다:

1. 한 고객 환경에서 PeopleSoft 업데이트를 생성
2. 해당 업데이트를 다른 고객 환경에 복사하거나 배포
3. Oracle의 PeopleTools를 사용하여 업데이트를 생성

이 과정에서 Rimini Street는 Oracle의 라이선스 조건을 위반했다는 지적을 받았습니다. 특히 '교차 사용(cross-use)' 문제가 핵심이었는데, 이는 한 고객의 라이선스로 생성된 업데이트를 다른 고객에게 배포한 행위를 가리킵니다.

## 법적 공방

### 초기 판결

2015년 법원은 Rimini Street의 Process 1.0이 Oracle의 저작권을 침해했다고 판결했습니다. 이에 Rimini Street는 기존 방식을 폐기하고 새로운 프로세스(Process 2.0)를 도입했습니다.

### Process 2.0의 등장

2018년 이후 Rimini Street는 Process 2.0이라는 새로운 프로세스를 도입하며 기존 문제를 해결하려 했습니다. 이 방식은 다음과 같은 특징을 가집니다:

1. **고객 환경 내 작업**: 모든 업데이트 생성 및 테스트 작업을 각 고객의 PeopleSoft 환경에서 수행합니다.
2. **자동화 도구 사용 제한**: 이전에 사용했던 자동화 도구(예: AFW Tools)를 최소화하거나 제거합니다.
3. **고객 맞춤형 지원**: 각 고객의 라이선스 조건에 따라 개별적으로 작업하며 교차 사용 문제를 방지하기 위해 고객 간 데이터와 작업물을 분리합니다.

그러나 Oracle은 여전히 이 방식도 저작권 침해라고 주장했습니다.

### 2023년 네바다 연방법원 판결

2023년 7월, 네바다 연방법원은 Rimini Street가 Process 2.0을 통해 여전히 Oracle의 저작권을 침해하고 있다고 판단했습니다. 법원은 Rimini Street가 일부 작업을 여전히 자체 서버에서 수행했으며, 이는 라이선스 조건 위반이라고 지적했습니다.

### 2024년 항소법원 판결

미국 제9순회 항소법원은 2024년 12월, Rimini Street의 Process 2.0 방식이 단순히 Oracle의 PeopleSoft 소프트웨어와 상호작용하거나 호환된다는 이유만으로는 저작권 침해로 간주될 수 없다고 판단했습니다. : [https://www.courtlistener.com/opinion/10293082/oracle-international-corporation-v-rimini-street-inc/](https://www.courtlistener.com/opinion/10293082/oracle-international-corporation-v-rimini-street-inc/)

1. **파생저작물의 정의**: 파생저작물이 되려면 Oracle의 저작물이 문자적(literal) 또는 비문자적(nonliteral)으로 실질적으로 포함되어야 함.
2. **상호작용과 호환성**: 단순히 PeopleSoft와 호환되거나 상호작용하는 것만으로는 파생저작물로 간주될 수 없음.
3. **교차 사용 문제**: 한 고객 환경에서 생성한 업데이트를 다른 고객에게 배포한 행위가 라이선스 위반인지는 추가 검토가 필요함.

이번 판결은 유럽연합(EU)의 컴퓨터 프로그램 법적 보호 지침([DIRECTIVE 2009/24/EC](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32009L0024))과 일맥상통합니다. EU 지침에서는 컴퓨터 프로그램의 기능이 다른 구성 요소 및 사용자와 통신하고 함께 작동하기 위해 필요한 상호운용성(interoperability)을 명확히 정의하고 있습니다.

## GPL과 파생저작물

이번 판결은 GPL과 같은 오픈소스 라이선스에서 사용되는 파생저작물의 개념에 영향을 줄 수 있습니다.

### GPL의 파생저작물 해석

[GNU General Public License (GPL)](https://www.gnu.org/licenses/gpl-3.0.html) 는 파생저작물에 대해 매우 광범위한 정의를 사용합니다. [GPL FAQ](https://www.gnu.org/licenses/gpl-faq.html)에 따르면, 다음과 같은 경우에 파생저작물로 간주될 수 있습니다:

1. **코드 수정**: GPL 소프트웨어의 소스 코드를 직접 수정하는 경우
2. **코드 포함**: GPL 소프트웨어의 일부 코드를 자신의 프로그램에 포함시키는 경우
3. **링킹**: GPL 라이브러리와 정적 또는 동적으로 링크하는 경우
4. **플러그인 또는 확장**: GPL 소프트웨어의 플러그인이나 확장 기능을 개발하는 경우

### **GPL 파생 저작물 구체적인 사례**

1. **Linux 커널 모듈**: Linux 커널은 GPL-2.0 라이선스를 사용합니다. 커널 모듈을 개발할 경우, 이는 일반적으로 Linux 커널의 파생저작물로 간주되어 GPL-2.0 라이선스를 따라야 합니다.
2. **WordPress 플러그인**: [WordPress](https://wordpress.org/)는 [GPL-2.0](https://wordpress.org/about/license/) 이상의 라이선스를 사용합니다. WordPress 플러그인은 WordPress 코어와 밀접하게 상호작용하기 때문에, 대부분의 경우 파생저작물로 간주되어 GPL 라이선스를 따라야 합니다.
3. **GCC와 링크된 프로그램**: [GCC (GNU Compiler Collection)](https://gcc.gnu.org/)는 GPL-3.0 라이선스를 사용합니다. GCC의 런타임 라이브러리와 정적으로 링크된 프로그램은 일반적으로 GCC의 파생저작물로 간주될 수 있습니다. 그러나 GCC는 특별한 예외 조항을 두어, 링크된 프로그램이 반드시 GPL을 따르지 않아도 되도록 허용하고 있습니다.

GPL의 이러한 광범위한 해석은 종종 "바이럴(viral)" 특성이라고 불립니다. 이는 GPL 소프트웨어와 결합된 다른 소프트웨어도 GPL 조건을 따라야 한다는 의미입니다. 이로 인해 일부 기업들은 GPL 소프트웨어 사용을 꺼리기도 합니다.

### Oracle v. Rimini 판결에서의 파생저작물 해석

반면, Oracle v. Rimini 판결에서 법원은 파생저작물에 대해 더 좁은 해석을 제시했습니다. 이 판결에 따르면, 단순히 다른 소프트웨어와 상호작용하거나 호환되는 것만으로는 파생저작물이 되지 않습니다. 원본 소프트웨어의 코드나 표현이 "실질적으로 포함"되어야 파생저작물로 인정됩니다.

1. **실질적 포함 요건**: 원본 소프트웨어의 코드나 표현이 문자적 또는 비문자적으로 포함되어야 합니다.
2. **단순 상호작용은 불충분**: 호환성만으로는 파생저작물이 성립되지 않을 수 있습니다.

이러한 해석 차이는 향후 GPL 라이선스의 적용 범위에 대한 법적 논쟁을 야기할 수 있으며, 개발자들은 이러한 변화에 주의를 기울일 필요가 있습니다.

## 긍정적 측면과 남은 과제

이번 판결은 자유 소프트웨어 라이브러리 시나리오를 다루는데 있어 불필요한 해석의 왜곡 없이 파생저작물의 범위를 명확히 했다는 점에서 의미가 있습니다. 하지만 여전히 해결해야 할 과제가 존재합니다:

- **정적/동적 링킹 문제**: C 라이브러리와 정적 또는 동적으로 링크된 프로그램이 해당 라이브러리의 파생저작물인지 여부는 여전히 불분명합니다.
- **향후 영향**: 이 판결은 WordPress 플러그인이나 테마가 WordPress의 파생저작물인지와 같은 논쟁적인 문제들에 대해 중요한 영향을 미칠 수 있습니다

## 마치며

Oracle v. Rimini 사건은 소프트웨어 개발 커뮤니티에 중요한 메시지를 전달했습니다. 법원이 "파생저작물"을 좁게 해석함으로써 개발자들에게 더 큰 자유를 제공했지만, 동시에 오픈소스 라이선스의 영향력을 약화시킬 가능성도 열었습니다. 개발자들은 이를 계기로 사용하는 라이선스와 그 조건을 더욱 꼼꼼히 살펴야 하며, 법적 분쟁을 피하기 위해 독립적인 설계 방식을 채택하는 것이 좋습니다. 오픈소스는 여전히 혁신과 협업의 강력한 도구이지만, 그 안에서 지켜야 할 규칙도 분명히 존재한다는 점을 잊지 말아야 합니다.