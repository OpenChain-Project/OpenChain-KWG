---
title: "대규모 공급망에서 SBOM을 어떻게 운영 단계에 적용할 것인가?"
linkTitle: "운영 단계 SBOM 적용"
# weight: 10
date: 2025-11-26
type: docs
categories: ["study"]
tags: ["SBOM"]
description: OpenChain SBOM Work Group – Monthly Meeting – 2025-11-26
---

source: https://openchainproject.org/news/2025/11/27/recording-openchain-sbom-work-group-monthly-meeting-2025-11-26


일시: 2025년 11월 26일 (수)

주제: 복잡한 대규모 공급망에서 SBOM을 어떻게 '운영(Production)' 단계에 적용할 것인가?

발표자: Thomas Graf (Siemens)

---

## 들어가며: "만드는 것"을 넘어 "쓰는 것"으로

지난 11월 26일 열린 OpenChain SBOM Work Group 정기 미팅은 SBOM(Software Bill of Materials) 논의가 이제 새로운 국면에 접어들었음을 보여주는 중요한 자리였습니다. 그동안 업계의 논의가 "SBOM을 어떻게 생성할 것인가(How to generate)?"에 머물러 있었다면, 이번 미팅의 핵심 질문은 "생성된 SBOM을 실제 운영 환경(Production)과 복잡한 공급망에서 어떻게 활용할 것인가?"였습니다.

특히, 제조 및 산업 자동화 분야의 거인인 지멘스(Siemens)의 Thomas Graf가 연사로 나서, 이론이 아닌 현장의 SBOM 구현 사례를 공유했다는 점에서 큰 의미가 있었습니다. 이 글에서는 미팅의 핵심 내용을 상세히 정리하여, SBOM 도입을 고민하는 실무자들에게 실질적인 인사이트를 제공하고자 합니다.

---

## 1. Keynote: 지멘스(Siemens)의 실전 SBOM 구현 전략

이번 미팅의 하이라이트는 단연 Thomas Graf의 발표였습니다. 지멘스는 수만 개의 소프트웨어 컴포넌트와 하드웨어 제품을 다루는 복잡한 공급망을 가진 기업입니다. 그들이 어떻게 SBOM을 표준화하고 관리하는지에 대한 내용은 대규모 조직에게 훌륭한 레퍼런스가 됩니다.

### 1.1. '지멘스 표준 BOM(Siemens Standard BOM)'의 정의

지멘스는 거대한 조직 특성상 수많은 부서가 각기 다른 도구와 언어를 사용합니다. 이를 통합하기 위해 그들은 '지멘스 표준 BOM'이라는 개념을 도입했습니다.

- CycloneDX의 부분집합(Subset) 활용: 지멘스는 OWASP CycloneDX 표준을 기반으로 하되, 모든 스펙을 다 쓰는 것이 아니라 자신들의 비즈니스 로직에 필요한 필수 필드를 정의하여 사용합니다. 이는 데이터의 일관성을 유지하고, 불필요한 복잡성을 줄이기 위함입니다.
- 기술 중립성(Technology Agnostic): Java, Python, .NET 등 특정 언어나 생태계에 종속되지 않는 독립적인 JSON 포맷을 유지합니다. 이를 통해 어떤 개발 환경에서든 동일한 방식의 SBOM 처리가 가능합니다.

### 1.2. SBOM은 '퍼즐(Puzzle)' 맞추기다

Thomas Graf는 SBOM을 하나의 거대한 퍼즐에 비유했습니다. 하나의 완벽한 SBOM이 뚝딱 만들어지는 것이 아니라, 여러 출처의 데이터를 조립해야 비로소 전체 그림이 보인다는 것입니다.

- 다양한 소스 통합: 오픈소스 라이브러리, 컨테이너 이미지, 3rd Party 벤더가 제공하는 상용 소프트웨어, 그리고 파트너사의 컴포넌트 등 출처가 다른 데이터를 하나의 포맷으로 통합해야 합니다.
- 상호운용성(Interoperability) 확보: 결국 핵심은 '상호운용성'입니다. 내부적으로 생성한 데이터와 외부에서 수신한 데이터가 서로 대화할 수 있어야 하며, 이를 위해 지멘스는 자체 툴링을 개발하여 이 간극을 메우고 있습니다.

### 1.3. 자동화와 툴링의 중요성

"모든 팀은 다르다(Nearly every team is different)."라는 현실적인 문제 앞에서 지멘스는 '중앙집중식 강제'보다는 '도구 제공'에 초점을 맞춥니다.

- 개발자들이 쉽게 SBOM을 생성하고 라이선스를 검증할 수 있도록 내부(Inner Source) 또는 오픈소스 도구를 제공합니다.
- Thomas Graf는 이러한 도구들이 단순히 지멘스 내부용에 그치지 않고, 오픈소스 생태계에 기여(Upstream contribution)하거나 공개될 가능성도 열어두었습니다. 이는 생태계 전체의 성장을 도모하겠다는 의지입니다.

---

## 2. Open Q&A: 커뮤니티의 고민들

발표 이후 이어진 Q&A 세션에서는 전 세계 실무자들의 날카로운 질문들이 이어졌습니다. (미팅 영상 참조: [YouTube 링크](https://youtu.be/hU1ITlUUAp8?si=btp8ZIYn5kfKyHFM))

주요 논의 주제는 다음과 같았습니다:

- 레거시 시스템 대응: SBOM 생성이 고려되지 않았던 오래된 시스템(Legacy)에서 어떻게 데이터를 추출할 것인가?
- 데이터 품질(Quality): 벤더로부터 받은 SBOM의 품질이 낮을 때(예: 필수 필드 누락) 이를 어떻게 검증하고 보완할 것인가?
- VEX(Vulnerability Exploitability eXchange) 연동: 단순히 취약점이 있다는 사실을 넘어, 실제로 '영향을 받는지' 여부를 판단하기 위해 VEX 정보를 SBOM과 어떻게 매핑할 것인가?

이러한 논의들은 SBOM이 단순한 '문서'가 아니라, 보안 및 컴플라이언스 대응을 위한 '살아있는 데이터'로 다뤄져야 함을 재확인시켜 주었습니다.

---

## 3. Study Group Updates & 참여 방법

미팅의 마지막 순서로 의장(Chair)의 업데이트가 있었습니다. OpenChain SBOM Work Group은 현재 "대규모 공급망에서의 SBOM 운영"이라는 난제를 해결하기 위해 스터디 그룹을 운영하고 있습니다.[openchainproject](https://openchainproject.org/news/2025/11/27/recording-openchain-sbom-work-group-monthly-meeting-2025-11-26)

이 스터디 그룹은 단순히 이론을 공부하는 것이 아니라, 실제 기업들이 겪는 문제를 공유하고 해결책을 모색하는 실무 중심의 모임입니다. 누구나 참여할 수 있으며, 여러분의 경험이 생태계의 표준이 될 수 있습니다.

## [참여 및 정보 확인 방법]

관심 있는 분들은 아래 채널을 통해 지난 자료를 확인하거나 향후 미팅에 참여할 수 있습니다.

- 미팅 다시보기: [YouTube 영상 바로가기](https://youtu.be/hU1ITlUUAp8?si=btp8ZIYn5kfKyHFM)
- 공식 미팅 로그: [OpenChain Project News](https://openchainproject.org/news/2025/11/27/recording-openchain-sbom-work-group-monthly-meeting-2025-11-26)
- 메일링 리스트 가입: [https://lists..org/g/sbom](https://lists.openchainproject.org/g/sbom)
- GitHub 저장소: [https://github.com/OpenChain-Project/SBOM-sg](https://github.com/OpenChain-Project/SBOM-sg)
- 향후 일정 확인: [OpenChain Participate Page](https://www.openchainproject.org/participate)

---

## 맺음말

2025년 11월 미팅은 SBOM이 규제 준수를 위한 '숙제'에서, 소프트웨어 공급망 투명성을 확보하는 '핵심 인프라'로 진화하고 있음을 보여주었습니다. 지멘스의 사례처럼, 이제는 "어떻게 표준화된 포맷으로, 자동화된 파이프라인 안에서 SBOM을 굴릴 것인가"를 고민해야 할 때입니다.