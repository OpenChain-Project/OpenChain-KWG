---
title: "2025-12-04 SBOM 표준화와 최신 이슈들"
linkTitle: "2025-12-04"
# weight: 10
date: 2025-12-04
type: docs
categories: ["Telco"]
tags: ["SBOM"]
description: OpenChain Telco Work Group – 2025-12-04
---

source: https://openchainproject.org/news/2025/12/12/recording-openchain-telco-work-group-2025-12-04

일시: 2025년 12월 4일

참석자: Jimmy Ahlberg (Ericsson), Takashi Ninjouji (Honda), Marc-Etienne Vargenau (Nokia)

주요 의제: CycloneDX 이슈, OpenChain 운영진 변경, CISA 규제 현황, 신규 툴 소개, SPDX 3.0 전환 이슈

---

## 1. 주요 공지사항 및 운영 이슈

### OpenChain General Manager 사임

OpenChain 프로젝트의 핵심 인물이었던 Shane이 General Manager직을 내려놓게 되었습니다. 그의 마지막 근무일은 12월 12일이며, 현재 후임자는 정해지지 않은 상태입니다. 프로젝트 측에서는 적합한 후보자 추천을 환영하고 있으며, 리더십 공백을 최소화하기 위해 노력하고 있습니다.

### 반독점(Anti-trust) 정책 준수

미팅은 언제나처럼 OpenChain의 반독점 정책 고지를 확인하며 시작되었습니다. 이는 오픈 소스 컴플라이언스 활동이 공정한 경쟁 환경을 저해하지 않도록 하기 위한 필수적인 절차입니다.

---

## 2. SBOM 표준 관련 이슈

### CycloneDX v1.7과 우려 사항

최근 릴리스된 CycloneDX v1.7 표준에 대해 Ericsson의 Jimmy Ahlberg가 중요한 우려를 제기했습니다. 이번 버전부터 특허(Patents) 및 특허 패밀리(Patent Families)에 대한 지원이 공식적으로 포함되었는데, 이 필드들이 자칫 '특허 괴물(Patent Trolls)'들에게 악용될 소지가 있다는 점입니다.

- 핵심 이슈: SBOM 내에 특허 정보가 명시적으로 포함될 경우, 공격적인 특허 소송을 주도하는 단체들에게 불필요한 정보를 제공하거나 타겟이 될 위험이 증가할 수 있습니다. 이는 표준 도입 시 신중하게 검토해야 할 부분으로 지적되었습니다.

---

## 3. 규제 및 정책 동향: CISA 및 BSI

### CISA 최소 요소(Minimum Elements) 문서 지연

미국 사이버보안 및 인프라 보안국(CISA)의 'Minimum Elements' 문서에 대한 업데이트가 지연되고 있습니다. Nokia 측에서 의견을 제출했으나 아직 공식 사이트(regulations.gov)에 반영되지 않았으며, 최종 버전의 발행 시점 또한 불투명한 상황입니다. 이는 관련 기업들의 컴플라이언스 준비에 불확실성을 더하고 있습니다.

### 독일 BSI의 SPDX 3.0 요구와 업계의 괴리

Honda의 Takashi Ninjouji는 독일 연방정보기술보안청(BSI)의 최신 문서가 SPDX 3.0 사용을 요구하고 있다는 점을 지적했습니다.

- 문제점: 이전 버전에서는 SPDX 2.0만 요구했으나 갑작스럽게 요건이 상향되었습니다. 하지만 Black Duck을 포함한 대부분의 상용 툴은 현재 SPDX 2.0만 지원하고 있어 현장과의 괴리가 큽니다.
- 대안: 현재로서는 `spdx-tools-java`와 같은 변환 도구를 사용하여 SPDX 2.0 데이터를 3.0으로 변환하는 것이 가장 현실적인 해결책으로 논의되었습니다.

---

## 4. 기술 업데이트 및 신규 도구 소개

이번 미팅에서는 실무자들에게 도움이 될 만한 구체적인 툴 업데이트 소식이 다수 공유되었습니다.

### (1) Python `ntia-conformance-checker` 업데이트

NTIA 적합성 검사 도구가 업데이트되어 이제 CISA 문서에 대한 적합성 검사도 지원합니다.

- 기능: 라이선스 및 저작권자(Copyright Holder) 정보 포함 여부를 확인할 수 있습니다.
- 참고: 기본 설정은 여전히 NTIA 기준이므로, CISA 기준을 검사하려면 별도 옵션을 추가해야 합니다. 이 툴을 사용하는 `openchain-telco-sbom-validator`에는 아직 직접적인 영향이 없습니다.

### (2) `openchain-telco-sbom-validator` 0.3.3 릴리스

Telco 가이드라인 준수 여부를 확인하는 검증기의 새 버전이 배포되었습니다.

- 수정 사항: CISA SBOM 타입 뒤에 주석(comment)이 추가될 때 발생하던 사소한 버그가 수정되었습니다.

### (3) Nokia의 신규 도구: `pypispdx`

Nokia에서 PyPI(Python Package Index)에 등록된 패키지들을 위한 SBOM 생성 도구인 `pypispdx`를 공개했습니다.

- 주요 기능:
    - SPDX 2.3 포맷 지원 (tag:value, JSON, RDF, XML, YAML)
    - OpenChain Telco SBOM 가이드 준수
    - 패키지의 재귀적 의존성(Recursive dependencies) 포함
    - 패키지 다운로드 위치, 체크섬(SHA256, MD5), 라이선스 정보 자동 포함

---

## 5. 향후 계획 및 워킹 그룹 활동

### Telco 가이드의 SPDX 3.0 대응

Automotive 워킹 그룹에서는 이미 Yocto 프로젝트에서 생성된 SPDX 3.0 데이터를 Telco 가이드 기준으로 검증하려는 시도가 있었습니다. 하지만 현재 검증기가 사용하는 Python 라이브러리가 SPDX 3.0을 파싱하지 못하는 한계가 있습니다.

- 대응: 관련 라이브러리의 새 유지보수자가 지명되었으므로 업데이트를 기다리는 중이며, Telco 워킹 그룹 차원에서도 가이드라인을 SPDX 3.0까지 포용할 수 있도록 개정하는 논의를 시작하기로 했습니다.

### 문서 개선

Jimmy Ahlberg는 암호화(Encryption) 관련 단락의 문구를 더 명확하게 개선하여 업데이트할 예정입니다.

---

### 마치며

이번 12월 미팅은 기술적 표준의 변화(SPDX 3, CycloneDX 1.7)와 규제 기관의 요구사항(CISA, BSI) 사이에서 실무적인 대응 방안을 모색하는 자리였습니다. 특히 툴링 생태계가 표준의 진화 속도를 따라가지 못하는 상황에서, `pypispdx`와 같은 새로운 도구의 등장은 환영할 만한 소식입니다.

OpenChain Telco Work Group은 누구나 참여할 수 있는 열린 공간입니다. 관심 있는 분들은 언제든 메일링 리스트나 GitHub을 통해 참여해 주시기 바랍니다.

- 메일링 리스트: [https://lists.openchainproject.org/g/telco](https://lists.openchainproject.org/g/telco)
- GitHub 저장소: [https://github.com/OpenChain-Project/Telco-WG](https://github.com/OpenChain-Project/Telco-WG)

*by Gemini 3.0*