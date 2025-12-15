---
title: "2025-12-03 Software Hash ID (SWHID): 이제는 선택이 아닌 필수입니다"
linkTitle: "2025-12-03"
# weight: 10
date: 2025-12-03
type: docs
categories: ["webinar"]
tags: ["SWID"]
description: 2025-12-03 Software Hash ID you will not be able to live without it
---

source: https://openchainproject.org/webinar/2025/12/03/webinar-software-hash-id-you-will-not-be-able-to-live-without-it


2025년 12월 3일, OpenChain Project는 매우 중요한 주제로 웨비나를 개최했습니다. 바로 SWHID(Software Hash Identifier)입니다.

"소프트웨어 식별자? 그냥 URL이나 버전 넘버 쓰면 되는 거 아냐?"라고 생각하셨나요? 만약 그랬다면 오늘 이 글을 끝까지 읽으셔야 합니다. 2025년 4월, ISO/IEC 18670:2025 국제 표준으로 제정된 SWHID는 이제 소프트웨어 공급망 보안과 컴플라이언스의 새로운 기준(New Normal)이 되었기 때문입니다.

이번 웨비나에서는 Software Heritage의 CTO인 Thomas Aynaud가 연사로 나서 SWHID의 기술적 원리와 거버넌스, 그리고 우리가 왜 이것 없이는 살 수 없게 될 것인지에 대해 심도 깊은 이야기를 나누었습니다. 웨비나를 놓치신 분들을 위해 핵심 내용을 상세히 정리해 드립니다.

---

## 1. 문제의 시작: "그 코드, 어디 갔지?"

우리는 매일 수많은 오픈소스와 라이브러리에 의존해 소프트웨어를 개발합니다. 하지만 우리가 의존하는 그 코드를 식별하는 방식은 생각보다 불안정합니다.

- URL은 깨집니다 (Link Rot): GitHub 저장소가 삭제되거나, 프로젝트가 다른 곳으로 이사 가면 URL은 무용지물이 됩니다.
- 버전 넘버는 모호합니다: `v1.0`이라는 태그는 개발자가 덮어쓰기 나름입니다. 어제 다운로드한 `v1.0`과 오늘 다운로드한 `v1.0`이 100% 같다고 보장할 수 있을까요?

Thomas Aynaud는 이 문제를 해결하기 위해 '고유 식별자(Intrinsic Identifier)'의 개념을 소개했습니다.

### 외재적(Extrinsic) vs. 내재적(Intrinsic) 식별자

이것이 이번 웨비나의 핵심 개념입니다.

- 외재적 식별자 (Extrinsic): 외부 시스템(레지스트리)이 부여하는 이름입니다. 예: 주민등록번호, URL, DOI.
    - *문제점:* 발급 기관(레지스트리)이 사라지거나 실수를 하면 식별자와 대상의 연결이 끊어집니다.
- 내재적 식별자 (Intrinsic): 대상 그 자체에서 계산된 이름입니다. 예: 지문, DNA, SWHID.
    - *장점:* 레지스트리가 필요 없습니다. 코드(Content)가 같다면, 언제 어디서 누가 계산해도 항상 똑같은 식별자가 나옵니다.

SWHID는 바로 이 '내재적 식별자'입니다. 중앙 관리 기구 없이도 소프트웨어 아티팩트의 무결성을 수학적으로 보장합니다.

---

## 2. SWHID 해부: 어떻게 생겼나요?

SWHID는 단순한 난수가 아닙니다. 체계적인 구조를 가진 문자열입니다. 웨비나에서 소개된 SWHID의 표준 구조를 살펴보겠습니다.

`textswh:1:cnt:94a9ed024d3859793618152ea559a168bbcbb5e2`

이 식별자는 다음과 같이 3부분으로 나뉩니다.

1. Prefix (`swh:1`): 이것이 SWHID이며 버전 1이라는 뜻입니다.
2. Object Type: 식별하고 있는 대상의 종류입니다.
    - `cnt` (Content): 파일 내용 그 자체 (Blob)
    - `dir` (Directory): 파일과 하위 디렉토리 구조
    - `rev` (Revision): 특정 시점의 커밋 (작성자, 날짜 정보 포함)
    - `rel` (Release): 특정 릴리즈 (태그 등)
    - `snp` (Snapshot): 저장소의 전체 상태 (모든 브랜치와 태그 포함)
3. Hash: 객체의 내용을 암호화(SHA1)하여 생성한 고유한 지문입니다.

Merkle DAG (머클 트리) 구조

SWHID는 파일 하나만 식별하는 게 아닙니다. 파일들이 모여 디렉토리가 되고, 디렉토리가 모여 커밋이 되는 전체 구조를 수학적으로 연결합니다. 파일 하나라도 내용이 1비트만 바뀌면, 상위 디렉토리와 커밋의 SWHID 값도 연쇄적으로 완전히 달라집니다. 이것이 바로 완벽한 무결성(Integrity)입니다.

---

## 3. 왜 SWHID가 필수인가요? (Use Cases)

Thomas Aynaud는 SWHID가 단순한 아카이빙 도구를 넘어, 산업계의 핵심 인프라가 되고 있음을 강조했습니다.

### 1. 소프트웨어 공급망 보안 (Software Supply Chain Security)

SBOM(Software Bill of Materials)이 중요해지면서, "정확히 어떤 코드가 들어갔는가?"를 증명해야 합니다. SWHID를 사용하면 외부 저장소가 해킹당해 코드가 변조되더라도, 해시값이 달라지므로 즉시 탐지할 수 있습니다. EU Cyber Resilience Act (CRA)와 같은 규제 대응에 있어 SWHID는 가장 강력한 무기입니다.

### 2. 장기 보존 및 추적성 (Long-term Traceability)

오픈소스 프로젝트가 사라져도(폐기되더라도), Software Heritage는 전 세계의 코드를 크롤링하여 보관합니다(현재 260억 개 이상의 소스 파일 보관 중). SWHID만 있다면 원본 저장소가 사라져도 아카이브에서 정확히 그 코드를 찾아낼 수 있습니다. "깨지지 않는 링크"가 생기는 셈입니다

### 3. 과학적 재현성 (Reproducibility)

연구 논문에서 "GitHub의 X 프로젝트를 사용했다"라고 쓰는 것만으로는 부족합니다. 코드가 업데이트되면 연구 결과를 재현할 수 없기 때문입니다. SWHID를 사용하면 "정확히 이 버전의, 이 파일들을 사용했다"고 명시할 수 있어 연구의 신뢰도를 높일 수 있습니다.

---

## 4. ISO 표준화와 거버넌스

2025년 4월, SWHID는 ISO/IEC 18670:2025라는 국제 표준이 되었습니다. 이것이 주는 의미는 큽니다.

- 특정 기업의 소유물이 아닙니다: SWHID는 Software Heritage가 처음 만들었지만, 이제는 국제 표준으로서 전 세계 누구라도 자유롭게 구현하고 사용할 수 있습니다.
- 오픈 거버넌스: 투명한 거버넌스 모델 아래에서 관리되므로, 특정 벤더에 종속(Lock-in)될 위험이 없습니다.

---

## 5. 결론: SWHID를 준비하세요

웨비나의 제목인 "You will not be able to live without it"은 과장이 아니었습니다.

소프트웨어가 세상을 먹어치우고 있는 지금, 그 소프트웨어를 '정확하게 지칭하고', '변조되지 않았음을 증명하고', '영구적으로 보존하는' 유일한 방법이 바로 SWHID이기 때문입니다.

더 이상 깨질 수 있는 URL에 의존하지 마세요. 이제는 코드의 지문, SWHID를 사용할 때입니다.

---

## 관련 링크

- 웨비나 다시보기: [YouTube 링크](https://www.youtube.com/watch?v=-pNMurDVLnw)
- SWHID 공식 스펙: [ISO/IEC 18670:2025](https://www.iso.org/standard/89985.html)
- OpenChain Project: [https://openchainproject.org](https://openchainproject.org/)

---

*본 포스팅은 2025년 12월 3일 진행된 OpenChain 웨비나 내용을 바탕으로 작성되었습니다.*

*by Gemini 3.0*