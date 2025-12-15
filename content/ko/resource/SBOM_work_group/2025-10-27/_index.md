---
title: "SBOM 품질 가이드와 규제 대응의 구체화"
linkTitle: "SBOM 품질 가이드"
# weight: 10
date: 2025-10-27
type: docs
categories: ["study"]
tags: ["SBOM"]
description: OpenChain SBOM Work Group – Monthly Meeting – 2025-10-22
---

source: https://openchainproject.org/news/2025/10/27/recording-openchain-sbom-work-group-monthly-meeting-2025-10-22


작성일: 2025년 10월 27일

주제: OpenChain SBOM Work Group Monthly Meeting (2025-10-22) 상세 리뷰

안녕하세요. 오늘은 지난 10월 22일에 진행된 OpenChain SBOM 워크 그룹(OpenChain SBOM Work Group) 정기 미팅의 핵심 내용을 정리해 드립니다.

이번 미팅은 지난 9월 '스터디 그룹(Study Group)'에서 '워크 그룹(Working Group)'으로 승격된 이후 본격적으로 진행된 논의라는 점에서 큰 의미가 있었습니다. 특히, 현재 업계의 가장 큰 화두인 "단순히 SBOM을 만드는 것을 넘어, 어떻게 고품질의 SBOM을 만들고 규제에 대응할 것인가?"에 대한 구체적인 가이드라인 작업 현황이 공개되었습니다.

미팅에 직접 참석하지 못하셨더라도 이 글을 통해 현재 논의되고 있는 핵심 아젠다와 향후 방향성을 충분히 이해하실 수 있도록 상세히 정리했습니다.

---

## 1. 주요 안건 개요 (Executive Summary)

이번 10월 미팅의 핵심은 단연 'SBOM 품질 가이드(Guide to SBOM Quality)'의 구체화였습니다. 단순히 이론적인 논의에 그치지 않고, 실제 법적 규제와 SBOM 데이터 요소를 매핑(Mapping)하는 실무적인 작업이 진행되고 있음을 확인할 수 있었습니다.

- 그룹 위상 변경: SBOM 스터디 그룹이 공식 '워크 그룹(Working Group)'으로 명칭 및 위상이 변경됨에 따라 활동 범위가 확대되었습니다.
- 품질 가이드 업데이트: 'Guide to SBOM Quality' 문서의 챕터 6(규제 매핑 테이블)과 부록 1(환경 다이어그램)이 집중적으로 업데이트되었습니다.
- 앰배서더 프로그램: 워크 그룹 활동을 알릴 2명의 공식 앰배서더가 선정되었습니다.

---

## 2. 핵심 업데이트: SBOM 품질 가이드 (Guide to SBOM Quality)

미팅의 대부분은 현재 작성 중인 'OpenChain SBOM Document Quality Guide'의 진척 상황을 공유하고 토론하는 데 할애되었습니다. 현재 이 문서는 구글 닥스(Google Docs)를 통해 공동 편집되고 있으며, 추후 마크다운(Markdown) 포맷으로 변환되어 GitHub에 공식 배포될 예정입니다.

### 2.1. 챕터 6: 규제와 SBOM 요소의 매핑 (Mapping Regulations)

이번 미팅에서 가장 주목해야 할 부분은 Chapter 6의 업데이트입니다. 워크 그룹은 전 세계적으로 강화되고 있는 사이버 보안 규제와 가이드라인을 실제 SBOM 데이터 필드와 연결하는 작업을 진행했습니다.

- 배경: 기업들은 "미국 행정명령(EO 14028)이나 EU 사이버복원력법(CRA)을 준수하려면 SBOM에 정확히 어떤 필드가 있어야 하는가?"라는 질문을 끊임없이 던집니다.
- 업데이트 내용: 챕터 6에 '규제/가이드라인과 SBOM 요소 간의 매핑 테이블'이 추가되었습니다. 이는 특정 규제(예: NTIA 최소 요소, CRA 등)가 요구하는 사항을 만족시키기 위해 SBOM 내에 어떤 태그(Tag)나 데이터가 필수적으로 포함되어야 하는지를 일목요연하게 보여줍니다.
- 현재 상태: 이 작업은 아직 진행 중(Work in Progress)이며, 미팅에서는 3가지 주요 가이드라인을 우선적으로 선정하여 매핑 작업을 진행하고 있다고 밝혔습니다.

### 2.2. 부록 1: 환경 다이어그램 (Environment Diagram)

단순한 텍스트 나열을 넘어, 시각적인 이해를 돕기 위한 부록(Appendix 1) 업데이트도 있었습니다.

- 내용: 각 가이드라인을 준수하기 위해 "누가(Which entity)" SBOM 문서를 생성해야 하는지를 보여주는 환경 다이어그램(Environment Diagram)이 추가되었습니다.
- 의의: 공급망은 매우 복잡합니다. 오픈소스 프로젝트 관리자, 패키지 배포자, 최종 제품 벤더 등 다양한 주체가 섞여 있습니다. 이 다이어그램은 각 주체가 공급망의 어느 단계에서 어떤 책임을 지고 SBOM을 생성해야 하는지를 명확히 하여, 책임 소재의 모호함을 줄이는 데 기여할 것입니다.

---

## 3. 워크 그룹 운영 및 기타 소식

### 3.1. 스터디 그룹에서 '워크 그룹'으로

지난 9월, OpenChain 이사회(Board)는 기존의 SBOM 스터디 그룹을 '워크 그룹(Working Group)'으로 승격시켰습니다. 이는 해당 모임이 단순한 학습이나 정보 공유를 넘어, 실질적인 표준과 가이드라인을 생산하는 조직으로 인정받았음을 의미합니다. 이에 따라 10월 미팅부터는 공식적으로 변경된 그룹 명칭이 사용되었습니다.

### 3.2. 앰배서더(Ambassador) 프로그램

워크 그룹의 활동을 외부에 더 널리 알리고 참여를 독려하기 위해, OpenChain 프로젝트는 앰배서더 프로그램을 도입했습니다. 이번 미팅에서는 SBOM 워크 그룹을 위해 두 명의 앰배서더가 활동하게 되었음을 공지했습니다. 이들은 향후 메일링 리스트와 소셜 미디어를 통해 워크 그룹의 성과를 전파하는 역할을 맡게 됩니다.

### 3.3. 11월 자동차(Automotive) 관련 미팅 예고

다가오는 11월 중순에는 자동차 산업에 특화된 별도의 미팅이 예정되어 있습니다.

- 형식: 단순한 발표(Presentation) 형식이 아닌, 참여자 간의 활발한 토론(Discussion) 중심으로 진행될 예정입니다.
- 목표: 자동차 산업의 복잡한 공급망 특성을 반영하여 실질적인 문제를 해결하는 자리가 될 것으로 기대됩니다.

---

## 4. 참여 방법 및 리소스

OpenChain SBOM 워크 그룹은 모든 과정이 투명하게 공개되며, 누구나 참여할 수 있습니다. "대규모 공급망에서 SBOM을 어떻게 실제로 운영(Production)할 것인가?"라는 난제를 함께 풀어나가고 싶다면 아래 채널을 참고해 주세요.

- 메일링 리스트: [https://lists.openchainproject.org/g/sbom](https://lists.openchainproject.org/g/sbom) (주요 공지 및 논의가 이루어지는 곳)
- GitHub 리포지토리: [https://github.com/OpenChain-Project/SBOM-sg](https://github.com/OpenChain-Project/SBOM-sg) (회의록, 가이드 문서 초안 등 자료 아카이브)
- 미팅 참여: OpenChain 프로젝트의 [참여 페이지(Participate Page)](https://www.openchainproject.org/participate)에서 향후 미팅 일정과 접속 정보를 확인할 수 있습니다.

---

## 5. 마치며: '양'에서 '질'로의 전환

이번 10월 미팅은 SBOM 논의가 '생성(Generation)'의 단계를 지나 '품질(Quality)과 규제 준수(Compliance)'의 단계로 깊어지고 있음을 보여주었습니다.

단순히 SBOM 파일을 만들어내는 것만으로는 충분하지 않습니다. 그 SBOM이 "규제가 요구하는 필수 요소를 포함하고 있는가?", "누가 그 데이터의 정확성을 책임지는가?"에 대한 답을 내릴 수 있어야 합니다. 현재 워크 그룹이 작성 중인 '품질 가이드'는 바로 이 질문에 대한 해답이 될 것입니다.

*by Gemini 3.0*