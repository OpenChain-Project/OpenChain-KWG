---
title: "2025-09-12 컨테이너 컴플라이언스, OSADL Base Image로 해결하세요"
linkTitle: "2025-09-12"
# weight: 10
date: 2025-09-12
type: docs
categories: ["webinar"]
tags: ["Container"]
description: 2025-09-12 Compliant containers with the OSADL Base Image
---

source: https://openchainproject.org/news/2025/09/12/osadl-base-image-webinar


2025년 9월 12일, OpenChain Project는 컨테이너 환경에서의 오픈소스 라이선스 준수(Compliance) 문제를 해결하기 위한 실질적인 솔루션을 주제로 웨비나를 개최했습니다. 이번 웨비나에서는 OSADL(Open Source Automation Development Lab)의 Caren Kresse가 연사로 나서, 복잡한 컨테이너 계층 구조 속에서 법적 의무를 손쉽게 준수할 수 있도록 돕는 'OSADL Base Image' 프로젝트를 상세히 소개했습니다.

개발자에게는 배포의 혁명인 '컨테이너'가 컴플라이언스 담당자에게는 악몽이 될 수 있다는 사실, 알고 계셨나요? 이번 포스팅에서는 그 이유와 OSADL이 제시하는 명쾌한 해답을 정리해 드립니다.

---

## 1. 문제 제기: 컨테이너는 왜 컴플라이언스가 어려울까요?

컨테이너 기술(Docker 등)은 소프트웨어 배포를 단순화시켰지만, 라이선스 관리 측면에서는 새로운 난관을 만들었습니다. Caren Kresse는 크게 두 가지 핵심 문제를 지적했습니다.

### 복잡한 계층(Layered) 구조

컨테이너는 여러 개의 레이어가 쌓여서 하나의 이미지를 만듭니다. 우리는 보통 `FROM ubuntu:latest` 처럼 베이스 이미지를 가져다 쓰고, 그 위에 우리만의 애플리케이션을 얹습니다.

- 문제: 내가 작성한 코드(Upper Layer)는 관리할 수 있지만, 가져다 쓴 베이스 이미지(Base Image) 안에 들어있는 수많은 오픈소스 패키지의 라이선스 의무는 누가 책임질까요?

### 컴플라이언스 자료의 부재

Docker Hub 등에서 쉽게 다운로드할 수 있는 대부분의 베이스 이미지들은 '실행'을 위한 바이너리만 제공할 뿐, 라이선스 고지문이나 소스 코드(GPL 의무 등)와 같은 컴플라이언스 자료는 포함하고 있지 않습니다.

- 리스크: 이 상태로 컨테이너를 배포하면, 오픈소스 라이선스 위반으로 법적 분쟁에 휘말릴 수 있습니다.

---

## 2. 해결책: OSADL Base Image란?

OSADL은 "모두가 공통으로 쓰는 베이스 이미지라면, 컴플라이언스 작업도 한 번만 해서 공유하면 되지 않을까?"라는 아이디어로 이 프로젝트를 시작했습니다.

OSADL Base Image는 단순한 OS 이미지가 아닙니다. "모든 법적 정보와 컴플라이언스 자료가 이미 완벽하게 포함된" 컨테이너 베이스 이미지입니다.

### 주요 특징

- 완벽한 법적 정보: 라이선스 텍스트, 저작권 고지, 소스 코드(또는 제공 제안서)가 모두 포함되어 있습니다.
- 검증된 데이터: OSADL의 OSSelot 프로젝트를 통해 전문가가 큐레이션(Curation)한 신뢰도 높은 라이선스 정보를 사용합니다.
- 다양한 배포판 지원: Debian (slim), Ubuntu (minimal), Alpine 등 널리 쓰이는 리눅스 배포판을 지원합니다.

---

## 3. 기술적 심층 분석: 어떻게 만들어지나요?

웨비나에서는 OSADL Base Image가 생성되는 4단계 기술적 프로세스가 상세히 공개되었습니다.youtube

1. 최소화된 환경 구축 (Minimal Setup):
    
    `debootstrap`(Debian/Ubuntu)이나 `apk static`(Alpine) 같은 도구를 사용해 꼭 필요한 패키지만 포함된 최소한의 파일 시스템(`chroot` 환경)을 만듭니다. 불필요한 패키지를 줄여 이미지 크기를 최소화합니다.
    
2. 라이선스 스캔 및 큐레이션 (Scan & Curation):
    
    이미지에 포함된 모든 소스 패키지를 다운로드한 뒤, FOSSology와 같은 스캐너를 돌립니다. 이때 OSADL이 관리하는 큐레이션 데이터베이스(OSSelot)를 활용해 스캔 결과의 정확도를 높이고 오탐(False Positive)을 제거합니다.
    
3. 컴플라이언스 자료 생성 (Compliance Material):
    
    스캔 결과를 바탕으로 SPDX 리포트, 라이선스 고지문(Legal Notices)을 생성합니다. 사용자가 컨테이너를 실행할 때 법적 정보를 확인할 수 있도록 시작 메시지 등에 포함시킵니다.
    
4. 이미지 빌드 (Build):
    
    최종적으로 이 모든 정보가 담긴 파일 시스템을 컨테이너 이미지로 빌드하여 배포합니다.
    

---

## 4. 실무 활용 가이드: 두 가지 버전

OSADL Base Image는 사용자의 상황에 맞춰 두 가지 버전을 제공합니다.

### 버전 1: 소스 코드 포함형 (Immediate Delivery)

- 특징: 이미지 안에 모든 오픈소스 패키지의 소스 코드가 포함되어 있습니다.
- 장점: 별도의 소스 코드 제공 절차 없이 이미지만 배포하면 GPL 등의 의무를 즉시 만족합니다. 가장 안전하고 편리한 방법입니다.
- 단점: 소스 코드가 들어가므로 이미지 용량이 큽니다.

### 버전 2: 소스 코드 미포함형 (Delayed Delivery)

- 특징: 소스 코드는 빼고, 실행 바이너리와 '소스 코드 제공 제안서(Written Offer)'만 포함되어 있습니다.
- 장점: 이미지 용량이 훨씬 작습니다.
- 단점: 사용자가 요청할 경우 소스 코드를 별도로 제공해야 하는 번거로움이 있습니다(하지만 OSADL이 해당 소스 패키지를 별도로 제공하므로 대응은 쉽습니다).

---

## 5. 결론: "바퀴를 다시 발명하지 마세요"

여러분의 회사가 컨테이너를 배포한다면, 베이스 이미지의 라이선스 분석에 시간을 낭비하지 마세요. 이미 OSADL이 법적으로 검토를 마친 OSADL Base Image를 `FROM`으로 불러와 사용하면 됩니다. 여러분은 그 위에 얹는 여러분의 애플리케이션에 대한 컴플라이언스만 신경 쓰면 됩니다.

이것이 바로 오픈소스의 정신인 "공유와 협력"을 컴플라이언스 영역에 적용한 모범 사례입니다.

---

## 🔗 관련 링크

- 웨비나 다시보기: [YouTube 링크](https://www.youtube.com/watch?v=CyvuYyjCGaI)
- OSADL 프로젝트 페이지: [https://www.osadl.org/base-image](https://www.osadl.org/base-image)
- Docker Hub (다운로드): [https://hub.docker.com/r/osadl/](https://hub.docker.com/r/osadl/)

---

*본 포스팅은 2025년 9월 12일 진행된 OpenChain 웨비나 내용을 바탕으로 작성되었습니다.*