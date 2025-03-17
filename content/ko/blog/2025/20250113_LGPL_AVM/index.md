---
date: 2025-01-13
title: "AVM 소송으로 본 오픈소스 사용자 권리 확대와 LGPL-2.1 설치정보 제공의 중요성"
linkTitle: "AVM 소송과 LGPL-2.1"
description: 
author: 장학성
categories: ["blog"]
tags: ["분쟁사례", "LGPL", "AVM"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---


> 본 글은 Ars Technica의 ["German router maker is latest company to inadvertently clarify the LGPL license"](https://arstechnica.com/gadgets/2025/01/suing-wi-fi-router-makers-remains-a-necessary-part-of-open-source-license-law/) 기사를 바탕으로 작성되었습니다. 해당 기사는 AVM과 Sebastian Steck 간의 소송에 대한 자세한 내용과 LGPL 라이선스 준수의 중요성을 다루고 있습니다.

## 1. 사건 개요

2025년 1월 9일, Software Freedom Conservancy (SFC)는 독일의 네트워크 장비 제조업체 AVM을 상대로 제기한 소송이 마무리되었다고 [발표했습니다](https://sfconservancy.org/news/2025/jan/09/avm-copyleft-lawsuit-resolved-with-install/). 이 소송의 핵심은 GNU Lesser General Public License (LGPL) 버전 2.1에 명시된 사용자의 권리, 특히 설치 정보 제공 의무에 관한 것이었습니다.

![](./featured_AVM.png)

Sebastian Steck이라는 독일의 소프트웨어 개발자가 2021년 5월 AVM의 라우터를 구매한 후, AVM이 제공한 소스 코드로는 수정된 소프트웨어를 라우터에 재설치할 수 없다는 사실을 발견했습니다. Steck은 AVM에게 "uClibc, libblkid, libexif 및 libosip2 라이브러리의 완전한 소스 코드와 컴파일 및 설치 스크립트 제공"을 요구했습니다. AVM이 이를 시정하지 않자 Steck은 2023년 7월 베를린 법원에 소송을 제기했습니다.

소송 결과, 독일 법원은 AVM에게 Steck의 변호사 비용을 지불하도록 결정했습니다. AVM은 이 결정에 대해 항소하지 않기로 결정했습니다. 결정문은 소송 비용 부담을 명시하고 있으며, 이는 오픈소스 라이선스 준수 문제의 경제적 가치와 중요성을 반영합니다.


> **Disclaimer:** 
> 
> *본 글은 법률 전문가가 작성한 것이 아니며, 법적 근거로 사용될 수 없습니다. 라이선스 및 법적 문제와 관련된 구체적인 상황에 대해서는 반드시 법률 전문가의 조언을 구하시기 바랍니다. 또한 이 글은 공개된 정보를 바탕으로 작성되었으며, 소송 당사자들의 입장을 모두 반영하지 않을 수 있습니다. 판결의 전체 내용과 맥락은 원문을 참고하시기 바랍니다.*


## 2. 소송의 배경과 경과

### 배경

독일의 소프트웨어 개발자 Sebastian Steck은 2021년 5월, AVM사의 인기 제품인 [Fritz!Box 4020](https://en.avm.de/products/fritzbox/fritzbox-4020/) 라우터를 구입했습니다. Steck은 이 라우터의 펌웨어에 사용된 소스 코드를 요청했는데, 여기서 문제가 발생했습니다. AVM이 제공한 소스 코드로는 라우터에 수정된 소프트웨어를 다시 설치할 수 없었던 것입니다.


### 소송의 법적 근거

이 소송의 중요한 특징은 Sebastian Steck이 LGPL-2.1 소프트웨어의 저작권자가 아님에도 불구하고 소송을 제기할 수 있었다는 점입니다. 이는 LGPL-2.1 라이선스가 제3자를 위한 계약의 성격을 가지고 있기 때문입니다. [소장](https://sfconservancy.org/static/docs/avm-Complaint_Klageschrift_EN.pdf)에 따르면 사용자도 LGPL-2.1에 따라 소스 코드를 받을 권리를 갖게 됩니다:

"This license agreement represents a genuine contract in favor of third parties in accordance with Section 328 of the German Civil Code (BGB), namely in favor of the users who receive the software in object code and, in accordance with the wording of the LGPL-2.1 license conditions to be handed over to them, have a direct right to the transfer of the complete corresponding source code."

이러한 법적 근거는 오픈소스 소프트웨어 사용자의 권리를 크게 강화합니다. 제조업체가 라이선스 의무를 제대로 이행하지 않을 경우, 저작권자뿐만 아니라 일반 사용자도 법적 조치를 취할 수 있게 되었습니다.

### 소송 경과

1. 2021년 5월 7일: Steck이 AVM에 Fritz!Box 4020의 펌웨어 버전 6.83 소스 코드를 요청
2. 2021년 5월 11일: AVM 자회사가 소스 코드 다운로드 링크 제공
3. 2021년 5월 14일: Steck이 제공된 소스 코드의 불완전성을 지적하고 시정 요구
4. 2023년 1월 12일: Steck의 변호인이 AVM에 법적 상황을 설명하고 소스 코드 시정 요구
5. 2023년 3월 9일: Steck이 펌웨어 버전 7.02의 소스 코드도 추가로 요청
6. 2023년 7월 27일: Steck이 베를린 지방법원에 소송 제기
7. 소송 제기 수개월 후: AVM이 Steck에게 요청받은 모든 소스 코드를 제공. "라이브러리 설치를 제어하는 스크립트"도 포함
8. 2025년 1월 9일: 독일 법원이 AVM에게 Steck의 변호사 비용을 지불하도록 결정. 이 결정은 소송 비용에 대한 결정을 포함하며, AVM은 이 결정에 대해 항소하지 않기로 함

### 소송의 쟁점

이 소송에서 주요하게 다뤄진 쟁점들은 다음과 같습니다:

1. 컴파일 및 설치 스크립트 제공: AVM이 처음에 제공한 소스 코드에는 LGPL-2.1에서 요구하는 컴파일 및 설치 스크립트가 빠져 있었습니다. 이 스크립트는 소스 코드를 실행 가능한 프로그램으로 변환하고, 그 프로그램을 기기에 설치하는 데 필요한 중요한 요소입니다.
2. 환경 변수 정보: 컴파일 과정에 필수적인 KERNEL_LAYOUT 등의 환경 변수 설정 정보가 제공되지 않았습니다. 환경 변수는 프로그램이 실행되는 환경을 설정하는 중요한 정보로, 이것이 없으면 소스 코드를 제대로 컴파일할 수 없습니다.
3. 영구 설치 가능성: AVM이 제공한 정보로는 수정된 라이브러리를 Fritz!Box에 영구적으로 설치할 수 없었습니다. 이는 사용자가 자신의 기기에 수정된 소프트웨어를 지속적으로 사용할 수 있어야 한다는 LGPL-2.1의 핵심 요구사항을 위반하는 것입니다.
4. 펌웨어 이미지 생성: 제공된 소스 코드로는 Fritz!Box에 설치 가능한 펌웨어 이미지를 만들 수 없었습니다. 펌웨어 이미지는 라우터의 운영 체제와 기능을 담고 있는 파일로, 이를 생성할 수 없다는 것은 사실상 소프트웨어를 수정하고 재설치할 수 없다는 것을 의미합니다.
5. 사용자의 소송 제기 권리 인정:
이번 결정은 오픈소스 소프트웨어의 저작권자가 아닌 일반 사용자도 LGPL-2.1 라이선스 위반에 대해 소송을 제기할 수 있음을 인정했습니다. 이는 오픈소스 소프트웨어 사용자의 권리를 크게 강화하는 결과를 가져왔습니다.

이러한 쟁점들은 모두 LGPL-2.1 라이선스의 핵심 원칙인 '사용자의 소프트웨어 자유'와 직결됩니다. 소스 코드를 제공하는 것만으로는 충분하지 않고, 사용자가 그 코드를 실제로 수정하고 기기에 다시 설치할 수 있어야 한다는 것이 이 소송의 핵심 주장이었습니다.

> [참고] SFC가 공개한 [소장(Complaint)](https://sfconservancy.org/static/docs/avm-Complaint_Klageschrift_EN.pdf) 중 일부: 
> 
> "The information required for the reinstallation of the compiled program libraries on the Fritz!Box ("installation script") was also deliberately withheld from the plaintiff. Upon request, the plaintiff only received information that could be used to load the libraries in dispute into the working memory (RAM). However, this is not a sufficient installation on the Fritz!Box because the copy is only created temporarily, meaning "fleetingly [volatile]." When the Fritz!Box is switched off and restarted, the modified versions of the LGPL 2.1 libraries would no longer be present on the device, and the versions created by the defendant would be used instead. This is diametrically opposed to the purpose of the LGPL-2.1, namely, to be able to customize and reinstall the software.”
> 

## 3. 결정문 요지

결정문은 소송 비용에 대한 결정을 포함하고 있으며, AVM이 Steck의 변호사 비용을 지불하도록 명시하고 있습니다. 이는 오픈소스 라이선스 준수 문제의 경제적 가치와 중요성을 반영합니다. AVM은 이 결정에 대해 항소하지 않기로 결정했습니다.

## 4. 시사점

1. **LGPL-2.1의 설치 정보 제공 의무**:
   - 소장에서 AVM은 LGPL-2.1 라이선스에 따라 설치 정보를 제공해야 한다는 주장이 제기되었습니다. 이는 소스 코드를 실제로 사용할 수 있도록 필요한 스크립트나 정보를 포함합니다. 결정문에는 이러한 내용이 명시적으로 포함되어 있지 않지만, 소송 과정에서 피고에게 소송 비용을 부담시키는 결정은 사용자 권리 강화와 설치 정보 제공의 중요성을 반영합니다. 이는 기업들이 오픈소스 라이선스 준수를 더욱 철저히 준비해야 할 필요성을 시사합니다.

1. **사용자의 법적 권리 강화**:
   - 이번 결정으로 오픈소스 소프트웨어 사용자들이 직접 라이선스 위반에 대해 법적 조치를 취할 수 있게 되었습니다. 이는 오픈소스 커뮤니티의 힘을 강화하고, 기업들의 라이선스 준수를 더욱 촉진할 것으로 예상됩니다.

2. **오픈소스 생태계의 자정 능력 향상**:
   - 저작권자뿐만 아니라 일반 사용자도 라이선스 준수를 요구할 수 있게 됨으로써, 오픈소스 생태계의 자정 능력이 크게 향상될 것으로 보입니다. 이는 오픈소스 소프트웨어의 자유와 협력적인 개발 환경을 유지하는 데 기여합니다.

3. **기업의 책임 범위 확대**:
   - 기업들은 이제 저작권자뿐만 아니라 모든 사용자에 대해 LGPL-2.1 라이선스 의무를 이행해야 합니다. 이는 기업의 책임 범위를 확대하고, 더욱 철저한 라이선스 준수를 요구하게 될 것입니다. 이를 통해 오픈소스 소프트웨어 사용의 투명성과 신뢰성이 높아질 수 있습니다.

4. **오픈소스 라이선스 준수의 중요성 재확인**:
   - 기업들은 오픈소스 소프트웨어 사용 시 해당 라이선스 조건을 더욱 철저히 준수해야 합니다. LGPL이라고 해서 의무가 가벼운 것이 아님을 인식해야 합니다.


## 5. 결론

이번 AVM 사건은 LGPL-2.1을 포함한 오픈소스 라이선스 준수의 중요성을 다시 한 번 일깨워주는 계기가 되었습니다. 특히 임베디드 기기 제조사들은 이를 교훈 삼아 라이선스 준수에 더욱 신경 써야 할 것이며, 사용자들의 권리도 더욱 존중해야 할 것입니다. 

향후 오픈소스 소프트웨어 사용자들의 권리가 더욱 강화될 것으로 예상됩니다. 기업들은 오픈소스 라이선스 준수를 위한 내부 프로세스를 개선하고, 사용자들의 요구에 더 빠르고 적극적으로 대응해야 할 것입니다.