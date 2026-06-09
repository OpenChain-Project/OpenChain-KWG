---
date: 2026-06-08
title: "AI가 만든 코드, 오픈소스 검사를 어디까지 해야 할까"
linkTitle: "AI 코드와 스니펫 검사"
description: 
author: 장학성
categories: ["blog"]
tags: ["AI 코딩", "SCA", "스니펫 검사", "라이선스 컴플라이언스", "보안 취약점"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---


{{% alert title="이 글에 대해" color="info" %}}
이 글은 Claude Code를 이용해 작성했고, 인용한 핵심 사실은 공개 출처로 교차 검증했습니다.
{{% /alert %}}

{{% alert title="고지" color="warning" %}}
이 글은 작성자 개인의 분석과 정리이며, 법률 자문이 아닙니다. 인용한 사실은 공개 출처에 근거해 확인했으나, 구체적 사안의 판단은 변호사 등 전문가의 검토를 받으시기 바랍니다.
{{% /alert %}}

## 한 가지 먼저 짚을 점

이 질문에 곧바로 "예"나 "아니오"로 답하기는 어렵습니다. 뒤에서 하나씩 짚겠지만, 답을 좌우하는 것은 AI 자체가 아니기 때문입니다. AI 코딩은 패키지로 선언되지 않은 코드 조각의 유입 속도를 높이지만, 라이선스 의무가 생기는 조건 자체를 바꾸지는 않습니다. 그래서 "AI 시대에 스캔이 의미 있나"보다는 "어떤 조건에서 스니펫 단위 검사가 더 중요해지고, 어떤 조건에서 덜 중요해지나"로 나눠 보는 편이 판단에 도움이 됩니다.

## 스니펫 검사와 SCA는 다른 이야기

먼저 용어를 분리해야 논의가 엉키지 않습니다.

| 구분 | 무엇을 보나 | 어떻게 들어온 코드를 잡나 |
|---|---|---|
| 의존성 단위 SCA | 패키지 매니저로 선언된 컴포넌트 | `package.json`, `pom.xml` 등 매니페스트와 빌드 산출물 |
| 스니펫 단위 매칭 | 소스 코드 본문의 일부 조각 | 복사·붙여넣기나 AI 생성으로 들어온 코드 조각 |

소프트웨어 구성 분석(Software Composition Analysis, SCA)은 코드에 들어온 오픈소스를 식별하고 그 취약점과 라이선스를 관리하는 활동 전반을 가리킵니다. 대부분의 SCA는 위 표의 첫 줄처럼 선언된 의존성을 봅니다. 스니펫 단위 매칭은 그중 일부 상용 도구만 갖춘 별도 기능으로, 소스 코드 본문을 수많은 오픈소스 프로젝트와 대조해 패키지로 선언되지 않은 조각의 출처를 찾습니다. 여기서 다루는 것은 SCA 전체가 아니라 이 스니펫 매칭입니다.

## 법적 위험은 실제로 얼마나 될까

AI 코드 스니펫이 라이선스 위반 분쟁으로 이어진 사례부터 봅니다.

가장 널리 알려진 사건은 2022년 11월 오픈소스 개발자들이 GitHub, Microsoft, OpenAI를 상대로 제기한 Copilot 집단소송입니다. 2023년 5월 저작권 침해 청구가 구체적 복제 사례 부족으로 기각됐고, 2024년 7월에는 디지털 밀레니엄 저작권법(Digital Millennium Copyright Act, DMCA) 제1202조(b) 위반 주장도 기각됐습니다. 이 조항은 원저작물에 붙은 저작권 표시 정보를 떼어내는 행위를 금지하는데, 법원은 Copilot 출력이 원본과 충분히 동일하지 않다는 이유로 받아들이지 않았습니다 <a id="a2-ref-1"></a>[A2](#a2). 처음 22개였던 청구 중 남은 것은 두 건, 오픈소스 라이선스 위반과 계약 위반입니다 <a id="a2-ref-2"></a>[A2](#a2)·<a id="a3-ref-1"></a>[A3](#a3).

여기에는 두 방향으로 읽을 수 있는 사실이 함께 있습니다.

한편으로, 지금까지 분쟁의 피고는 모두 AI 도구를 만든 벤더이고, AI 코드를 가져다 쓴 도입 기업이 그 이유만으로 소송을 당한 사례는 공개적으로 보고된 바가 없습니다 <a id="c1-ref-1"></a>[C1](#c1). 또 Microsoft는 2023년 9월 Copilot Copyright Commitment를 통해, 유료 상용 고객이 출력물 때문에 제3자 지식재산권 소송을 당하면 방어 비용과 배상금을 부담하겠다고 밝혔습니다. 다만 제품에 내장된 차단 기능을 끄지 않고 침해물을 의도적으로 생성하지 않아야 한다는 조건이 붙습니다 <a id="b1-ref-1"></a>[B1](#b1)·<a id="c5-ref-1"></a>[C5](#c5).

다른 한편으로, 법적 판단이 확립된 것은 아닙니다. 위 DMCA 쟁점은 1심 판결 전에 특정 쟁점만 상급 법원에서 먼저 다투는 중간항소 형태로 제9순회항소법원에 올라가 있고, 2026년 6월 현재 판결이 나오지 않은 채 1심 절차가 멈춰 있습니다 <a id="a1-ref-1"></a>[A1](#a1). 보고된 선례가 없다는 것이 위험이 없다는 뜻은 아닙니다.

## 라이선스 의무는 언제 생길까

여기서 한 가지를 구분해야 합니다. 소송을 당하는가와, 라이선스를 지킬 의무가 있는가는 다른 문제입니다. 아무도 소송을 걸지 않더라도 오픈소스 라이선스를 지킬 의무 자체는 남습니다. 그리고 그 의무가 발동하는 시점이 중요합니다.

소스 공개를 요구하는 GPL 계열의 카피레프트 의무는 소프트웨어를 배포할 때 생깁니다. 사내에서 실행하기만 하는 것은 사용이지 배포가 아니므로 의무가 발생하지 않습니다 <a id="c3-ref-1"></a>[C3](#c3)·<a id="c4-ref-1"></a>[C4](#c4). 코드를 전달하지 않는 순수 SaaS도 같은 이유로 GPL 의무 바깥에 있습니다. 여기에는 두 가지 단서가 있습니다.

- AGPL은 네트워크 서비스 제공까지 배포로 보는 더 엄격한 라이선스입니다. AGPL이 적용된 구성요소를 쓰면 코드를 직접 전달하지 않고 서비스로만 제공해도 소스 공개 의무가 생깁니다 <a id="c3-ref-2"></a>[C3](#c3). 이런 구성요소는 사내 정책으로 배제해 관리할 수 있습니다.
- "사내"는 자사 직원만 쓰는 경우라야 하며, 인수합병이나 오픈소스화로 나중에 배포가 일어나면 그 시점에 문제가 됩니다.

짧은 코드의 저작물성도 따져볼 점입니다. 몇 줄짜리 기능적 코드는 복제된 양이 사소해 문제 삼기 어렵거나(de minimis), 표현 방법이 사실상 하나뿐이라 보호 대상에서 빠질 수 있습니다(merger doctrine) <a id="a4-ref-1"></a>[A4](#a4)·<a id="a5-ref-1"></a>[A5](#a5). 다만 이는 사안별 판단이고, 길고 창의적인 코드 블록은 보호되므로 모든 스니펫이 자유롭다고 보기는 어렵습니다.

실제로 작은 조각이 의무를 달고 들어오는 경우는 흔합니다. 개발자들이 자주 가져다 쓰는 Stack Overflow의 코드는 CC BY-SA 라이선스여서 출처 표시와 동일 조건 공유 의무가 붙는데, 한 연구에 따르면 GitHub 프로젝트에서 이 코드를 라이선스에 맞게 쓴 비율은 최대 1.8%에 불과했습니다 <a id="c6-ref-1"></a>[C6](#c6). 작은 조각이라도 라이선스 의무를 달 수 있고, 그 의무가 넓게 지켜지지 않는다는 뜻입니다.

## 표준은 스니펫 검사를 요구할까

오픈소스 라이선스 컴플라이언스의 국제 표준인 OpenChain ISO/IEC 5230은 컴플라이언스 프로세스를 어디에 둘지, 역할과 책임을 어떻게 배분할지, 프로세스를 어떻게 지속할지를 규정하는 데 초점이 있습니다 <a id="a6-ref-1"></a>[A6](#a6). 무엇을 달성할지를 정하되 구체적 방법은 조직에 맡기는 비규정적 표준이라, 스니펫 스캔 같은 특정 기법을 의무화하지 않습니다 <a id="a6-ref-2"></a>[A6](#a6)·<a id="a7-ref-1"></a>[A7](#a7). 표준이 요구하는 것은 제3자 컴포넌트를 식별하고 그 목록인 소프트웨어 자재명세서(Software Bill of Materials, SBOM)를 갖추는 일입니다. 표준을 충족하는 데 중요한 것은 어떤 컴포넌트가 코드에 들어왔는지를 파악하는 일이고, 코드 조각 하나하나의 출처까지 분석하라고 요구하지는 않습니다. 실제로 시장에서 널리 쓰이는 SCA 도구 상당수가 스니펫 매칭 없이 의존성 단위로만 동작합니다.

이 사실은 두 가지로 읽힙니다. 표준이 요구하지 않으므로 스니펫 검사 없이도 표준을 충족할 수 있다는 뜻이기도 하고, 동시에 표준이 다루지 않는 영역이 남아 있다는 뜻이기도 합니다. 의존성 단위 검사는 패키지로 선언되지 않은 채 복사되거나 AI가 생성한 조각을 보지 못합니다. 스니펫 매칭은 바로 그 공백을 메우는 기능이며, 일부 조직은 더 철저한 지식재산권 관리를 위해 이를 수행합니다.

## 어떤 조건에서 더 중요해질까

스니펫 검사의 비중은 회사가 처한 두 가지 조건에 따라 달라집니다.

첫째, 고객에게 코드나 바이너리를 직접 전달하는지입니다. 온프레미스 설치형 제품, 모바일 앱, SDK, 임베디드 기기 펌웨어처럼 코드가 회사 밖으로 나가면 배포에 해당해 카피레프트 의무가 발동할 수 있습니다. 코드를 전달하지 않는 순수 SaaS는 그 부담이 작습니다.

둘째, 외부 검증을 받는지입니다. 인수합병 실사, 대형 고객의 보안 감사, 규제 요건, 스니펫 수준까지 요구하는 SBOM 제출처럼 회사 밖의 누군가가 코드 출처를 실제로 확인하는 상황입니다.

이 둘이 겹칠수록 잠재된 의무가 실제 비용으로 드러날 가능성이 커집니다. 코드를 전달하더라도 검증 계기가 없으면 위험은 잠재 상태에 머물고, 코드를 전달하지 않으면 의무 자체가 잘 생기지 않습니다. 두 조건 모두 AI 사용 여부와는 무관합니다. AI 코딩은 조건이 성립할 때 유입량을 늘리는 요인이지, 조건을 만드는 요인은 아닙니다.

## 회사 조건별로 본다면

| 회사 유형 | 스니펫 검사의 비중 | 이유 |
|---|---|---|
| 코드를 외부에 전달하지 않음 (순수 SaaS, AGPL 구성요소 미사용) | 낮음 | 배포가 아니라 카피레프트 의무가 잘 생기지 않음 |
| 코드나 바이너리를 고객에 전달, 단 외부 감사 없음 | 상황에 따라 | 라이선스 의무가 생길 수 있으나 외부에서 들여다볼 일이 없음 |
| 코드 전달 + 인수합병 실사, 고객 감사, 규제 | 높음 | 외부에서 출처를 실제로 확인하는 지점 |

표는 판단의 출발점이지 정답이 아닙니다. 같은 칸에 있더라도 다루는 코드의 성격, 사용하는 라이선스의 종류, 회사의 위험 감수 수준에 따라 선택은 달라질 수 있습니다.

## 임베디드는 사정이 다릅니다

지금까지는 패키지 매니저로 빌드하는 소프트웨어를 전제로 했습니다. 공유기, 셋톱박스, IoT 기기, 차량용 제어기처럼 임베디드나 펌웨어로 동작하는 소프트웨어는 사정이 다릅니다. 주로 C/C++로 작성되고, 매니페스트 없이 오픈소스를 소스째 복사해 프로젝트에 직접 넣는 경우가 많습니다. 이러면 의존성 SCA가 읽을 매니페스트가 없어 오픈소스를 거의 보지 못합니다.

한 가지는 구분해야 합니다. Linux 커널이나 BusyBox처럼 통째로 가져다 쓰는 큰 구성요소는 회사가 대개 그 사용을 알고 있습니다. 이건 찾아내는 문제가 아니라 소스를 공개하는 의무를 지키느냐의 문제입니다. 스니펫 스캔이 필요한 경우는 다릅니다. 여러 오픈소스에서 조금씩 가져와 넣었지만 아무도 목록에 올리지 않은 작은 코드 조각들입니다. 의존성 SCA가 보지 못하는 이런 조각을 찾아내는 것이 스니펫 스캔의 몫입니다.

그래서 임베디드에서는 스니펫 스캔이 조건부 보조가 아니라, 선언되지 않은 오픈소스 조각을 찾는 기본 수단에 가깝습니다.

## 코드가 들어오기 전에 거르는 방법

사후 스캔과 별개로, 문제 코드가 들어오기 전에 막는 방법도 있습니다. GitHub Copilot에는 공개 코드와 똑같은 제안을 차단하는 설정이 있습니다. 공개 코드와 일정 길이(평균 약 150자) 이상 그대로 일치하는 제안은 아예 표시하지 않습니다 <a id="b2-ref-1"></a>[B2](#b2)·<a id="c2-ref-1"></a>[C2](#c2). GitHub는 150자가 넘는 원문 그대로의 복제는 약 1% 수준이라고 밝혔고, 독립 연구에서는 맥락에 따라 그보다 높게 보고되기도 합니다. 어느 쪽이든 0은 아니지만, 이 설정을 켜면 출처가 불분명한 조각의 유입이 줄어듭니다. 비용이 거의 들지 않고, 앞서 본 벤더 면책의 전제 조건이기도 합니다.

이 설정은 사후 스니펫 스캔과 목적이 겹치는 부분이 있습니다. 한쪽은 들어온 뒤에 찾아내고, 다른 한쪽은 들어오기 전에 막습니다. 둘 중 무엇을, 어느 정도로 둘지는 위의 조건과 비용을 함께 보고 정할 문제입니다.

## 판단을 위한 기준

이 판단이 간단하지 않은 데는 이유가 있습니다. 패키지로 선언되지 않은 채 복사되거나 AI가 만들어 넣은 코드 조각을 찾아내는 방법은 사실상 스니펫 매칭뿐입니다. 의존성 단위 SCA도, 코드를 거르는 설정도 그 조각까지 다 잡아내지는 못합니다. 그래서 스니펫 매칭만이 채워 주는 부분이 작게나마 남습니다. 그런데 많은 회사에서 그 작은 부분이 실제 손실로 이어지는 경우는 드물고, 스니펫 검사에는 도구 비용과 검토 노력이 듭니다. 결국 이 작은 위험을 막으려고 그만한 비용을 들일지 말지를 정하는 일입니다.

판단할 때 살펴볼 점은 네 가지입니다.

- **코드를 외부에 내보내는가** — 내보낼수록 카피레프트 의무가 실제로 생길 여지가 커집니다.
- **외부 검증을 받는가** — 인수합병 실사나 고객 감사가 있으면 그동안 묻혀 있던 의무가 드러날 수 있습니다.
- **라이선스 위험을 어디까지 감수할 것인가** — 보고된 소송 선례는 없지만 법적 판단이 굳어진 것도 아닙니다. 이 불확실성을 어떻게 받아들일지는 회사가 정할 몫입니다.
- **이미 갖춘 다른 점검 수단이 있는가** — 의존성 단위 SCA, 공개 코드와 똑같은 제안을 막는 AI 도구 설정, AGPL 구성요소 배제 정책을 이미 운영하고 있다면 스니펫 검사가 더 잡아낼 몫은 그만큼 줄어듭니다.

한 가지 덧붙일 점이 있습니다. 스니펫 검사는 늘 켜 두거나 아예 안 하거나, 둘 중 하나로만 정할 일이 아닙니다. 외부에서 코드 출처를 실제로 들여다보는 계기는 대체로 정해져 있습니다. 인수합병 실사나 대형 고객의 감사를 받을 때입니다. 그래서 평소에는 의존성 검사와 차단 설정만 운영하다가, 이런 시점이 예상되면 그때 스니펫 검사를 한 번 받는 방법도 있습니다.

위 네 가지와 이런 운영 방식을 자기 회사 상황에 맞춰 보면, 스니펫 검사에 얼마나 비중을 둘지에 대한 답은 회사마다 다르게 나올 것입니다. 단, 매니페스트 없이 빌드하는 임베디드 소프트웨어는 예외입니다. 거기서는 스니펫 스캔이 조건부 보조가 아니라 선언되지 않은 오픈소스 조각을 찾는 기본 수단이 됩니다.

## 보안 취약점은 별개의 문제입니다

지금까지는 라이선스 이야기였습니다. 보안 취약점은 다른 축이고, 위의 조건부 결론을 그대로 적용하면 안 됩니다. 취약한 오픈소스가 코드에 들어 있으면 배포하든 안 하든, 감사받든 안 받든 위험합니다. 사내 전용이나 순수 SaaS의 백엔드에 있어도 공격에 노출되기 때문입니다. 그래서 취약점 점검은 거의 모든 회사에 폭넓게 필요합니다.

보안 점검을 맡는 도구는 크게 두 가지입니다.

- **의존성 단위 SCA** — 선언된 오픈소스 라이브러리의 이름과 버전을 보고, 알려진 취약점(CVE) 목록과 대조합니다 <a id="d1-ref-1"></a>[D1](#d1). AI가 끌어온 라이브러리의 알려진 취약점은 여기서 잡힙니다.
- **SAST(정적 분석)** — 코드가 어디서 왔든, 소스 코드 자체의 위험한 작성 방식을 찾습니다. AI 코드의 주된 보안 위험이 여기 있습니다. 한 연구에서는 Copilot이 생성한 프로그램 1,689개 중 약 40%에 취약점이 있었습니다 <a id="d2-ref-1"></a>[D2](#d2).

복사해 온 코드든 AI가 만든 코드든, 보안 취약점 점검은 다른 코드와 다르지 않습니다. 코드 자체의 위험한 작성 방식은 SAST가, 가져다 쓴 라이브러리의 알려진 취약점은 의존성 SCA가 잡습니다. 스니펫 스캔은 라이선스 출처를 찾는 기능이라, 보안 점검에 쓰는 도구가 아닙니다.

한 가지 예외만 짚자면, 알려진 취약점이 있는 코드를 그대로 복사해 왔는데 SAST의 패턴에도 걸리지 않고 의존성 목록에도 없는 드문 경우입니다. 이걸 잡으려면 라이선스 출처를 찾는 스니펫 기능이 아니라, CVE 패치에서 만든 취약 코드 서명과 내 코드를 직접 대조하는 검사(취약점 코드 클론 탐지)가 필요합니다 <a id="d3-ref-1"></a>[D3](#d3). 학술 도구와 일부 상용 도구가 이를 제공합니다.

## 출처

<a id="a1"></a>**A1.** BakerHostetler (2025). *Doe v. GitHub, Inc. — The Copilot Litigation*. <https://www.bakerlaw.com/the-copilot-litigation/> (접속: 2026-06-08). — Copilot 집단소송의 청구별 경과와 제9순회항소법원 계류 상태. <a href="#a1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="a2"></a>**A2.** Claburn, T. (2024). *Judge dismisses DMCA copyright claim in GitHub Copilot suit*. The Register, 2024-07-08. <https://www.theregister.com/2024/07/08/github_copilot_dmca/> (접속: 2026-06-08). — DMCA §1202(b) 청구 기각, 22개 중 2개(라이선스 위반, 계약 위반) 잔존. <a href="#a2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="a3"></a>**A3.** Pearl Cohen (2024). *Copyright Claims Against GitHub, Microsoft, and OpenAI Largely Dismissed*. <https://www.pearlcohen.com/copyright-claims-against-github-microsoft-and-openai-largely-dismissed/> (접속: 2026-06-08). — 다수 청구 기각과 잔존 청구의 전체 구도. <a href="#a3-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="a4"></a>**A4.** Goldstein Patent Law. *Understanding the Copyright Merger Doctrine*. <https://www.goldsteinpatentlaw.com/copyright-merger-doctrine/> (접속: 2026-06-08). — 기능적 코드의 저작물성을 부정하는 merger doctrine. <a href="#a4-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="a5"></a>**A5.** NYU Journal of Intellectual Property & Entertainment Law. *Clarifying the De Minimis Doctrine in Copyright Law*. <https://jipel.law.nyu.edu/clarifying-the-de-minimis-doctrine-in-copyright-law/> (접속: 2026-06-08). — 사소한 복제를 문제 삼지 않는 de minimis 법리. <a href="#a5-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="a6"></a>**A6.** OpenChain Project. *OpenChain ISO/IEC 5230 — License Compliance*. <https://openchainproject.org/license-compliance> (접속: 2026-06-08). — 표준이 프로세스와 역할을 규정하되 스니펫 스캔 같은 특정 기법을 의무화하지 않는다는 점. <a href="#a6-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="a7"></a>**A7.** ISO. *ISO/IEC 5230:2020 — Information technology — OpenChain Specification*. <https://www.iso.org/standard/81039.html> (접속: 2026-06-08). — 표준 원문 서지 정보. <a href="#a7-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="b1"></a>**B1.** Microsoft (2023-09-07). *Microsoft announces new Copilot Copyright Commitment for customers*. <https://blogs.microsoft.com/on-the-issues/2023/09/07/copilot-copyright-commitment-ai-legal-concerns/> (접속: 2026-06-08). — 유료 상용 고객 지식재산권 면책과 내장 차단 기능 유지 조건. <a href="#b1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="b2"></a>**B2.** GitHub. *GitHub Copilot* (제품 페이지). <https://github.com/features/copilot> (접속: 2026-06-08). — 공개 코드 일치 차단 설정의 존재와 동작. <a href="#b2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="c1"></a>**C1.** TechTarget. *AI lawsuits explained: Who's getting sued?*. <https://www.techtarget.com/whatis/feature/AI-lawsuits-explained-Whos-getting-sued> (접속: 2026-06-08). — 분쟁의 피고가 벤더에 집중돼 있고 도입 기업 피소 사례가 보고되지 않았다는 정황. <a href="#c1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="c2"></a>**C2.** Microsoft Community Hub. *Demystifying GitHub Copilot Security Controls*. <https://techcommunity.microsoft.com/blog/azuredevcommunityblog/demystifying-github-copilot-security-controls-easing-concerns-for-organizational/4468193> (접속: 2026-06-08). — 공개 코드 일치 차단 설정의 약 150자 일치 임계와 약 1% 복제율. <a href="#c2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="c3"></a>**C3.** Mend.io. *The SaaS Loophole In GPL Open Source Licenses*. <https://www.mend.io/blog/the-saas-loophole-in-gpl-open-source-licenses/> (접속: 2026-06-08). — 카피레프트의 배포 트리거, 사내와 SaaS 비해당, AGPL 제13조 예외. <a href="#c3-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="c4"></a>**C4.** Revenera. *Understanding the SaaS Loophole in GPL*. <https://www.revenera.com/blog/software-composition-analysis/understanding-the-saas-loophole-in-gpl/> (접속: 2026-06-08). — 배포 트리거와 SaaS 예외 보강. <a href="#c4-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="c5"></a>**C5.** TechTarget. *Microsoft Copilot Copyright Commitment explained*. <https://www.techtarget.com/searchenterprisedesktop/tip/Microsoft-Copilot-Copyright-Commitment-explained> (접속: 2026-06-08). — 면책의 적용 범위와 조건 보강. <a href="#c5-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="c6"></a>**C6.** Baltes, S. & Diehl, S. (2019). *Usage and Attribution of Stack Overflow Code Snippets in GitHub Projects*. Empirical Software Engineering, arXiv:1802.02938. <https://arxiv.org/abs/1802.02938> (접속: 2026-06-08). — GitHub 프로젝트에서 Stack Overflow 코드(CC BY-SA)를 라이선스에 맞게 사용한 비율이 최대 1.8%에 그쳤다는 실증 연구. <a href="#c6-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="d1"></a>**D1.** Cycode. *What Is Software Composition Analysis (SCA)?*. <https://cycode.com/blog/what-is-software-composition-analysis-sca/> (접속: 2026-06-08). — SCA가 컴포넌트와 버전을 CVE·NVD에 대조해 취약점을 찾는 방식. <a href="#d1-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="d2"></a>**D2.** Pearce, H., Ahmad, B., Tan, B., Dolan-Gavitt, B., & Karri, R. (2022). *Asleep at the Keyboard? Assessing the Security of GitHub Copilot's Code Contributions*. IEEE S&P 2022, arXiv:2108.09293. <https://arxiv.org/abs/2108.09293> (접속: 2026-06-08). — 89개 시나리오로 생성한 1,689개 프로그램 중 약 40%에 취약점. <a href="#d2-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>

<a id="d3"></a>**D3.** Kim, S., Woo, S., Lee, H., & Oh, H. (2017). *VUDDY: A Scalable Approach for Vulnerable Code Clone Discovery*. IEEE S&P 2017. <https://seulbae-security.github.io/pubs/vuddy-sp17.pdf> (접속: 2026-06-08). — 취약점이 복사된 코드를 통해 전파되고 상류 패치 후에도 복사본이 미패치로 남는 문제와 그 탐지. <a href="#d3-ref-1" onclick="event.preventDefault(); history.back(); return false;" title="본문으로 돌아가기">↩</a>
