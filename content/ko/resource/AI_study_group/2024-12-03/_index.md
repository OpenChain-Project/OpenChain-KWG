---
title: "OpenChain AI Work Group - AI Compliance BOM"
linkTitle: "2024-12-03"
# weight: 10
date: 2024-12-03
type: docs
categories: ["study"]
tags: ["AI"]
description: 2024-12-03 AI Compliance BOM에 대한 실용적인 가이드 개발 목표
---

source: https://openchainproject.org/news/2024/12/04/full-recording-openchain-ai-work-group-monthly-workshop-for-north-america-and-europe-2024-12-03

## 목차

1. 소개
2. AI BOM의 필요성
3. SPDX 3.0 소개
4. AI 프로파일과 데이터셋 프로파일
5. AI BOM 생성의 과제
6. 향후 과제와 해결 방안
7. 질의응답
8. 결론

## 1. 소개

### 발표자 소개

- Gopi Krishnan Rajbahadur: SPDX AI 워킹 그룹 멤버
- Karen Copenhaver: SPDX 법률 팀 멤버

### 웨비나 소개와 목적

이 웨비나는 OpenChain AI Work Group의 첫 번째 공식 회의로, AI Compliance BOM에 대한 실용적인 가이드를 개발하는 것을 목표로 합니다. 이전의 AI Study Group에서 AI Work Group으로 전환되어, AI BOM 컴플라이언스에 초점을 맞추고 있습니다.

## 2. AI BOM의 필요성

AI BOM(Bill of Materials)은 AI 시스템의 구성 요소를 문서화하고 추적하는 데 필요한 도구입니다. 전통적인 [소프트웨어 BOM](https://www.ntia.gov/page/software-bill-materials)에서 발전한 개념으로, AI 모델, 데이터셋, 그리고 관련 메타데이터를 포함합니다.

### AI BOM의 주요 목적

- 컴플라이언스 분석 지원
- 취약점 분석 용이
- 편향성 및 윤리적 문제 식별
- 규제 준수 지원 (예: EU AI Act)

## 3. SPDX 3.0 소개

[SPDX(Software Package Data Exchange)](https://spdx.dev/)는 소프트웨어 구성 요소, 라이선스, 저작권, 보안 참조를 설명하는 오픈 표준입니다. SPDX 3.0은 AI 구성 요소를 포함한 전체 시스템을 표현할 수 있도록 확장되었습니다.

### SPDX 3.0의 주요 특징

- 프로파일 기반 구조
- Core 프로파일: 모든 SPDX 문서의 기본
- Software 프로파일: 소프트웨어 아티팩트 설명
- AI 및 데이터셋 프로파일: AI 특화 요소 포함

## 4. AI 프로파일과 데이터셋 프로파일

### AI 프로파일

- 모델 유형, 준수 표준, 도메인, 자율성 수준 등 포함
- 투명성, 재현성, 감사 가능성 지원
- 안전성 평가, 개인정보 처리, 에너지 소비 정보 포함

### 데이터셋 프로파일

- 데이터셋 유형, 크기, 노이즈, 기밀성 수준 등 설명
- 수집 프로세스, 업데이트 주기, 용도 등 포함
- 라이선스 컴플라이언스 지원

## 5. AI BOM 생성의 과제

### 주요 과제

- 자동화 도구 부족
- 메타데이터 표준화 미비
- 라이선스 컴플라이언스 복잡성
- 프로세스 정보 캡처의 어려움

### 사례 연구: Simple HTR 시스템

발표자는 간단한 필기 인식 시스템에 대한 AI BOM을 수동으로 생성하는 과정을 공유했습니다. 이 과정에서 다음과 같은 어려움이 있었습니다:

- 40시간 이상의 수작업 소요
- 소스 코드 분석, 학술 논문 검토, 충돌 해결 등 필요
- 메타데이터 부족 및 분산
- 라이선스 결정의 복잡성

## 6. 향후 과제와 해결 방안

### Foundation Models의 영향

- 새로운 소프트웨어 패러다임 등장 (Promptware, Agent-based development)
- AI BOM 표준의 확장 필요성

### 주요 과제 및 해결 방안

1. 자동화 부족
    - 체크리스트 개발
    - 메타데이터 표준 개선
    - NLP 기반 자동 추출 기술 개발
2. 규제 요구사항 명확화
    - 규제 지침을 시스템 요구사항으로 매핑
    - 정책 입안자와의 적극적인 협력
3. 데이터 소유권 및 라이선스 문제
    - 데이터 출처 및 계보 추적
    - 합성 데이터에 대한 저작권 명확화
4. 프로세스 정보 캡처
    - AI 개발 라이프사이클 문서화
    - 유연한 문서화 도구 개발

## 7. 질의응답

### Q: ISO 42001과의 비교는 어떻게 되나요?

A: 비교를 진행했지만 백서에는 포함되지 않았습니다. 관심이 있으시면 개별적으로 비교 데이터를 제공할 수 있습니다.

### Q: 오픈 소스와 클로즈드 소스 모델의 차이점은 무엇인가요?

A: 클로즈드 소스 모델의 경우 상세 정보 획득이 어려울 수 있습니다. 그러나 BOM 표준 자체는 두 경우 모두 적용 가능합니다.

### Q: 데이터셋 출처 추적이 모델 출처 추적보다 더 어려운가요?

A: 네, 데이터셋 출처 추적이 일반적으로 더 복잡합니다. 하지만 두 가지 모두 중요한 과제입니다.

## 8. 결론

AI BOM은 AI 시스템의 투명성과 컴플라이언스를 위한 중요한 도구입니다. 그러나 자동화, 표준화, 법적 명확성 등 여러 과제가 남아있습니다. OpenChain AI Work Group과 SPDX 커뮤니티의 협력을 통해 이러한 과제들을 해결해 나갈 계획입니다.