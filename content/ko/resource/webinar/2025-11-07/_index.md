---
title: "컨테이너와 오픈소스 컴플라이언스: 무엇이 문제이고 어떻게 해결할 것인가?"
linkTitle: "컨테이너 패널 토의"
# weight: 10
date: 2025-11-07
type: docs
categories: ["webinar"]
tags: ["Container"]
description: 2025-11-07 Containers and Compliance
---

source: https://openchainproject.org/news/2025/11/07/webinar-containers-and-compliance


2025년 11월 7일, OpenChain Project는 최근 소프트웨어 개발의 핵심인 '컨테이너(Container)'와 '컴플라이언스(Compliance)'를 주제로 심도 깊은 패널 토의를 진행했습니다. 이번 웨비나는 Chris Wood의 진행 하에 Caren Kresse (OSADL), Heather Meeker, Mary Hardy, Till Jaeger 등 최고의 오픈소스 법률 및 기술 전문가들이 모여 열띤 토론을 벌였습니다.

컨테이너 기술은 배포를 혁신적으로 단순화시켰지만, 동시에 라이선스 관리와 컴플라이언스 측면에서는 복잡한 "블랙박스"를 만들어냈습니다. 이번 포스팅에서는 웨비나에서 논의된 핵심 이슈 3가지와 전문가들의 제언을 상세히 정리해 드립니다.

---

## 웨비나 개요

- 주제: Containers and Compliance (컨테이너와 컴플라이언스)
- 일시: 2025년 11월 7일
- 패널:
    - Chris Wood (Chair): OpenChain Specification Chair
    - Caren Kresse: OSADL (Open Source Automation Development Lab)
    - Heather Meeker: 오픈소스 법률 전문가
    - Mary Hardy: 오픈소스 컴플라이언스 전문가
    - Till Jaeger: 오픈소스 전문 변호사

---

## 핵심 논의 1: 패키지 매니저의 불투명성 (Transparency Issues)

개발자들은 `npm`, `pip`, `maven` 같은 패키지 매니저를 믿고 의존성을 설치합니다. 하지만 전문가들은 이 과정에 심각한 "투명성 부족" 문제가 있다고 지적했습니다.

### 문제점: "메타데이터는 거짓말을 한다"

패널들은 패키지 매니저가 제공하는 정보가 불완전하거나, 오래되었거나, 심지어 틀린 경우가 많다고 입을 모았습니다.

- Caren Kresse & Heather Meeker: "패키지 매니저의 메타 정보만 믿고 컴플라이언스를 진행하는 것은 위험하다. 실제 소스 코드의 라이선스와 패키지 정보가 불일치하는 경우가 비일비재하다."
- Till Jaeger: "패키지 매니저는 결국 업스트림 프로젝트가 입력한 정보만 보여줄 뿐이다. 입력 단계에서 오류가 있다면, 패키지 매니저는 잘못된 정보를 그대로 전파하게 된다."

### 해결 방향: "ClearlyDefined"와 같은 공용 DB 활용

Mary Hardy는 [ClearlyDefined](https://clearlydefined.io/)와 같은 공공 데이터베이스의 활용을 제안했습니다. 이는 오픈소스 패키지의 실제 라이선스 정보를 스캔하고 사람이 검증한(Curated) 데이터를 제공하므로, 불확실한 패키지 매니저 정보보다 신뢰할 수 있는 기준점이 될 수 있습니다.

---

## 핵심 논의 2: 바이너리 스캐너의 한계 (Binary Scanner Limitations)

컨테이너는 기본적으로 이미 빌드된 '바이너리(Binary)' 형태의 이미지입니다. 소스 코드가 없는 상태에서 바이너리만 보고 라이선스를 판별하는 것은 기술적으로 매우 어렵습니다.

### 문제점: "겉만 보고 속을 알 수 없다"

- 스캐너의 한계: 현재의 라이선스 스캐너들은 주로 바이너리의 최상위 레벨 라이선스만 식별할 수 있습니다. 바이너리 안에 정적으로 링크된 라이브러리나 복잡한 종속성 구조까지 완벽하게 파헤치지 못합니다.
- Caren Kresse: "바이너리 스캐너가 제대로 작동하려면 해당 바이너리가 '어디서 왔고(Origin)', '어떻게 빌드되었는지(Build Info)'를 역추적할 수 있어야 하는데, 현재 기술로는 이것이 매우 어렵다."

### 미래 전망: AI와 고도화된 스캐닝

Heather Meeker와 Mary Hardy는 AI 코딩 도구의 발전이 오히려 스캐닝 기술의 부활을 이끌 수 있다고 전망했습니다. AI가 코드의 출처를 추적하는 기술이 발전함에 따라, 바이너리의 기원을 찾아내는 기술도 함께 고도화될 것이라는 긍정적인 예측이 나왔습니다.

---

## 핵심 논의 3: 개발자 인식 개선 (Developer Awareness)

가장 근본적인 문제는 결국 "사람"에 있습니다. 개발자들이 컨테이너를 만들 때 라이선스 정보를 제대로 기입하지 않거나, 베이스 이미지(Base Image)의 법적 리스크를 고려하지 않는 관행이 지적되었습니다.

### 문제점: "기본값의 함정"

- Marcel (참가자 코멘트): "Maven 같은 도구에서 `default`로 설정된 라이선스(예: Apache)를 개발자가 의도치 않게 그대로 사용하는 경우가 많다. 실제로는 다른 라이선스를 써야 함에도 설정을 바꾸지 않아 잘못된 정보가 퍼진다."
- Chris Wood: "호환되지 않는 라이선스들이 컨테이너 하나에 섞여 들어갔을 때, 이를 기술적으로 해결(Remediation)하는 방법이 마땅치 않다."

### 해결 방향: 교육과 "신뢰할 수 있는 베이스 이미지"

- Till Jaeger: "모든 개발자가 법률 전문가가 될 순 없다. 대신 '검증된 베이스 이미지(Trusted Base Images)'를 사용하도록 가이드해야 한다." OSADL과 같은 기관에서 법적 검토가 끝난 베이스 이미지를 제공하고, 개발자들은 그 위에서 애플리케이션만 올리는 방식이 현실적인 대안으로 제시되었습니다.

---

## 결론: 컨테이너 컴플라이언스, 앞으로의 과제

이번 웨비나의 결론은 명확했습니다. "자동화 도구(Tooling)만으로는 아직 충분하지 않다"는 것입니다.

1. 소스 코드 확보의 중요성: 바이너리 스캔만으로는 한계가 있으므로, 가능한 한 소스 코드를 확보하여 분석해야 합니다.
2. 업스트림과의 협력: 라이선스 정보가 누락되었을 때는 직접 업스트림 프로젝트에 기여(Contribution)하여 정보를 수정하는 문화가 필요합니다.
3. 프로세스의 표준화: OpenChain(ISO/IEC 5230)과 같은 표준 프로세스를 도입하여, 개발 단계에서부터 올바른 라이선스 정보가 기입되도록 강제하는 체계가 필요합니다.

컨테이너는 편리하지만, 그 편리함 뒤에 숨겨진 '법적 부채'를 무시해서는 안 됩니다. 이번 웨비나는 그 부채를 어떻게 관리 가능한 수준으로 만들 것인가에 대한 중요한 이정표를 제시해주었습니다.

---

## 🔗 관련 자료

- OpenChain Project: [https://openchainproject.org](https://openchainproject.org/)
- OSADL (Open Source Automation Development Lab): [https://osadl.org](https://osadl.org/)
- ClearlyDefined: [https://clearlydefined.io](https://clearlydefined.io/)

---

*본 포스팅은 2025년 11월 7일 진행된 OpenChain 웨비나의 요약 및 패널 토의 내용을 바탕으로 재구성되었습니다.*