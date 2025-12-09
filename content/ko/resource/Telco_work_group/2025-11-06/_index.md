---
title: "2025년 11월 미팅: CISA 셧다운의 영향과 SBOM 품질 가이드 집중 점검"
linkTitle: "SBOM 품질 가이드 집중 점검"
# weight: 10
date: 2025-11-06
type: docs
categories: ["Telco"]
tags: ["SBOM"]
description: 2025-11-06 OpenChain Telco Work Group Meetings
---

source: https://openchainproject.org/news/2025/11/11/telco-2025-11-06


일시: 2025년 11월 6일

참석자: Marc-Etienne Vargenau (Nokia, 의장), Shane Coughlan (OpenChain), Norio Koboto (Sony), Masahiro Daikoku (KDDI), Jari Koivisto (Analog Devices) 등

이번 OpenChain Telco Work Group(이하 Telco WG) 정기 미팅에서는 미국 정부 셧다운이 CISA(사이버보안 및 인프라 보안국)의 업무에 미치는 영향부터, 차기 Telco Guide 업데이트 방향, 그리고 최근 업데이트된 SBOM 품질 가이드(Quality Guide)에 대한 심도 있는 기술적 검토가 이루어졌습니다.

미팅에 직접 참여하지 못하신 분들을 위해 핵심 내용을 상세히 요약해 드립니다.

---

## 1. CISA 동향: 정부 셧다운과 인력 공백

이번 미팅의 서두는 현재 미국 정부의 셧다운 사태가 공급망 보안 규제 기관인 CISA에 미치는 영향에 대한 논의로 시작되었습니다.

### 주요 업데이트

- 업무 마비: 현재 셧다운으로 인해 CISA 직원의 약 2/3가 사무실에 출근하지 못하고 있는 상황입니다.
- 핵심 인력 부재: SBOM 확산을 주도했던 Allan Friedman이 CISA를 떠났으며, 그의 후임자 역시 셧다운 영향으로 업무를 시작하지 못한 상태라 리더십 공백이 발생했습니다.
- 의견 수렴 지연: OpenChain WG와 Nokia 등 여러 기업이 CISA의 'Minimum Elements(최소 요소)' 문서에 대한 의견(Comments)을 제출했으나, 셧다운으로 인해 처리가 지연되고 있습니다. 특히 마감 직전에 제출된 Nokia의 코멘트는 시스템에 반영조차 되지 않은 상태입니다.

### 쟁점: SBOM에 '라이선스 정보'가 필요한가?

CISA 문서에 대한 업계의 피드백은 엇갈리고 있습니다.

- 찬성 측: 라이선스 정보도 투명성 확보 차원에서 포함되어야 한다.
- 반대 측: 라이선스는 '보안(Security)'과 직접적인 관련이 없으므로 보안 중심 문서인 SBOM 필수 요소에서 제외해야 한다.

> Telco WG의 대응 방향:
> 
> 
> 현재 Telco Guide v1.0 및 1.1에서는 라이선스 정보가 필수지만, 값을 `NOASSERTION`(정보 없음)으로 표기하는 것을 허용하고 있습니다.
> 
> 하지만 Draft v1.2에서는 `NOASSERTION`을 허용하지 않고 실제 라이선스 정보를 기입하도록 강화할 예정이었습니다. WG는 CISA가 최종적으로 라이선스 정보를 필수 요소로 확정할지 여부를 지켜본 후, 이 방침을 유지할지 결정하기로 했습니다.
> 

---

## 2. Telco Guide 및 Validator(검증기) 업데이트

### 암호화(Encryption) 챕터 추가 건

Ericsson의 Jimmy Ahlberg가 제안했던 '암호화 관련 챕터' 추가는 문구 수정이 더 필요한 상황입니다. 제안자가 현재 아시아 출장 및 한국 행사 참석 일정으로 인해 수정안을 제출하지 못해, 다음 미팅에서 다시 논의하기로 했습니다.

### Validator(검증 도구) 이슈

- 버그 수정: CISA SBOM Type을 처리하는 과정에서 발견된 사소한 버그가 수정되어 곧 마이너 릴리스가 배포될 예정입니다.
- SPDX 3.0 지원의 어려움: 지난 10월 미팅에서 Telco Validator가 SPDX 3.0 스펙을 지원해야 한다는 제안이 있었습니다. 하지만 현재 Validator가 의존하고 있는 파이썬 라이브러리(`tools-python`)가 SPDX 3.0을 지원하지 않아 구현이 어렵습니다.
    - 해당 라이브러리는 1년 넘게 업데이트가 없었으나, 최근 새로운 메인테이너가 지명되어 향후 업데이트를 기대해볼 수 있는 상황입니다.

---

## 3. 심층 분석: SBOM 품질 가이드(Quality Guide) 검토

미팅의 대부분은 현재 작성 중인 SBOM Quality Guide 문서를 검토하는 데 할애되었습니다.

### (1) BSI(독일 연방정보보안청)의 급진적인 SPDX 3.0 도입

독일 BSI의 최신 가이드라인(TR-03183-2 v2.1.0) 내용이 공유되었는데, 이 내용이 상당히 파격적이라 우려의 목소리가 나왔습니다.

- 내용: BSI는 SBOM 포맷으로 SPDX 3.0.1 이상 또는 CycloneDX 1.6 이상을 의무화(Mandate)하고, SPDX 2.x 버전 사용을 사실상 배제했습니다.
- WG의 우려: 이는 시기상조(Premature)라는 의견이 지배적입니다. 현재 BlackDuck을 포함한 대다수의 상용 SCA 도구들이 여전히 SPDX 2.2나 2.3만 지원하고 있으며, SPDX 3.0을 완벽히 지원하는 도구는 거의 없기 때문입니다.

### (2) 용어의 명확화: "Build Information"

가이드 문서의 섹션 3.5인 "SBOM Build information"이라는 용어가 혼란을 줄 수 있다는 지적이 있었습니다.

- 문제점: 독자들이 이를 '소프트웨어를 빌드하는 시점의 정보'로 오해할 수 있음.
- 수정 제안: "SBOM Document Build Information"으로 명칭을 변경하여, 이것이 소프트웨어 자체가 아니라 SBOM 문서가 생성된 시점과 도구에 대한 정보임을 명확히 하기로 했습니다.

### (3) 패키지 식별자 (Package Identifier)

문서에서는 SWHID, PURL, CPE 등 다양한 식별자를 나열하고 있습니다.

- Telco WG의 권장: Telco Guide는 PURL (Package URL) 사용을 권장합니다.
- 표준화 현황: PURL은 곧 ECMA 표준이 될 예정이며, 이후 패스트트랙을 통해 ISO 표준으로 제정될 것으로 예상됩니다. Shane Coughlan(OpenChain)은 ECMA 표준 제정 후 ISO화 되기까지 약 9개월 정도가 소요될 것으로 전망했습니다.

### (4) '알려진 미지(Known Unknowns)'의 표현

공급망 내에서 일부 종속성 정보가 누락되었음을 인지하고 있지만, 그 내용이 무엇인지 모르는 경우(Known Unknowns)를 SPDX로 표현하는 것이 기술적으로 까다롭다는 논의가 있었습니다.

- 현업에서는 종종 공급업체가 하위 모듈에 대한 조사를 하지 않아 정보를 제공하지 않으면서, 단순히 "모른다"고만 표기하는 경우가 많습니다. 이를 데이터 필드에 어떻게 정확히 매핑할지가 과제로 남아 있습니다.

---

## 4. 향후 일정 및 참여 안내

### 문서 검토 요청

이번에 논의된 문서들은 오는 12월 일본에서 열리는 Open Compliance Summit에서 발표될 예정입니다. 따라서 WG 멤버들은 그전까지 문서에 대한 코멘트를 적극적으로 제출해 줄 것을 요청받았습니다.

### 참여 방법

OpenChain Telco WG는 모든 이에게 열려 있습니다. 관심 있는 분들은 아래 채널을 통해 참여하실 수 있습니다.

- 메일링 리스트: [https://lists.openchainproject.org/g/telco](https://lists.openchainproject.org/g/telco)
- GitHub 저장소: [https://github.com/OpenChain-Project/Telco-WG](https://github.com/OpenChain-Project/Telco-WG)

---