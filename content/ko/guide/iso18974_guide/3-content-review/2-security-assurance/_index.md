---
title: "§4.3.2 보안 보증"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "보안 보증", "취약점", "CVE"]
description: >
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 3 — 프로세스 구축** 단계에서 구축합니다. ISO/IEC 18974 전용 신규 조항으로, 취약점 탐지·해결 절차와 조치 기록을 수립합니다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

{{% alert title="★ 18974 전용 항목 — Documented Evidence 강도" color="warning" %}}
§4.3.2.1과 §4.3.2.2는 ISO 18974 전용(★) 항목으로 **Documented Evidence**(문서화된 증거)를 요구한다. 단순 "취약점 대응 절차 문서"가 아니라 **각 CVE에 대한 실제 수행 기록**(스캔 결과, CVSS 점수, 조치 이력, VEX 발행, 고객 통보 이력 등)을 보관해야 한다. 강도 차이의 자세한 설명은 [§4.1.5 표준 관행 — Documented Evidence 안내](../../1-program-foundation/5-standard-practice/#iso-18974-전용-항목의-강도--documented-evidence)를 참고한다.
{{% /alert %}}

## 1. 조항 개요

§4.3.2는 ISO/IEC 18974의 핵심 조항으로, ISO/IEC 5230에 없는 18974 전용 신규
조항이다. SBOM에 포함된 각 오픈소스 컴포넌트에 대해 `취약점 탐지 → 위험 평가 → 조치 결정 → 고객 동의(필요 시) → 조치 수행 → 배포 후 신규 취약점 대응 → 지속 모니터링` 의 전 과정을 절차로 수립하고 이행 기록을 유지하도록
요구한다. §4.1.5가 취약점 처리 방법의 존재를 요구한다면, §4.3.2는 그 방법이
각 컴포넌트에 실제로 적용되어 기록이 남아 있을 것을 요구한다.

## 2. 해야 할 활동

- SBOM의 각 오픈소스 컴포넌트에 대해 알려진 취약점 존재 여부를 탐지한다.
- 탐지된 각 취약점에 위험·영향 점수(CVSS)를 할당한다.
- 각 취약점에 대해 필요한 수정 또는 완화 단계를 결정하고 문서화한다.
- 필요한 경우 사전에 결정된 수준 이상에서 고객 동의를 획득한다.
- 위험·영향 점수에 따라 적절한 조치를 수행하고 기록한다.
- 배포된 소프트웨어에 새로 공개된 취약점이 있는 경우 적절한 조치를 수행한다.
- 출시 후에도 공급 소프트웨어의 취약점 공개를 모니터링하고 대응한다.
- 취약점별 탐지 및 조치 결과를 컴포넌트 기록으로 유지한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §4.3.2 | SBOM에 포함될 각 오픈소스 소프트웨어 컴포넌트에 보안 보증 활동을 적용하는 프로세스가 있어야 한다: 알려진 취약점 탐지 / 위험·영향 점수 할당 / 수정 또는 완화 단계 결정·문서화 / 필요 시 고객 동의 획득 / 위험 점수에 따른 조치 수행 / 새로 발견된 취약점 조치 / 출시 후 모니터링 및 취약점 공개 대응 | **4.3.2.1** 공급 소프트웨어의 오픈소스 소프트웨어 컴포넌트에 대해 알려진 취약점의 탐지 및 해결을 처리하기 위한 문서화된 절차<br>**4.3.2.2** 각 오픈소스 소프트웨어 컴포넌트에 대해 식별된 알려진 취약점 및 취해진 조치(조치가 필요하지 않은 경우도 포함)에 대한 기록이 유지 관리되어야 함 |

<details><summary>영문 원문 보기</summary>

> **§4.3.2 Security Assurance**
> There shall exist a process to apply security assurance activities to each
> open source software component that is to be included in the bill of
> materials (SBOM):
> - Applying a method to detect the existence of known vulnerabilities;
> - Assign a risk/impact score to each identified known vulnerability;
> - Determine and document the necessary remediation or mitigation steps for
>   each detected and scored known vulnerability;
> - Obtain customer approval above a pre-determined threshold, where
>   applicable;
> - Perform appropriate action based on risk/impact score;
> - Perform appropriate action for newly disclosed known vulnerabilities in
>   previously released supplied software;
> - Ability to monitor and respond to vulnerability disclosures for the
>   supplied software after its release.
>
> **Verification Material(s):**
> 4.3.2.1 A documented procedure for handling detection and resolution of
> known vulnerabilities for the open source software components of the
> supplied software.
> 4.3.2.2 For each open source software component, a record is maintained of
> the identified known vulnerabilities and action taken (including a
> determination that no action was required).

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 4.3.2.1 취약점 탐지 및 해결 절차

**준수 방법**

SBOM의 각 오픈소스 컴포넌트에 대한 취약점 탐지부터 해결까지의 전체 과정을
문서화한 절차가 입증자료 4.3.2.1이다. 이 절차는 §4.1.5에서 정의한 개별 방법들을
통합하여 운영 흐름으로 구체화한 것이다.

아래 플로우차트는 CVE 탐지부터 조치 완료까지의 전체 흐름을 나타낸다.

```mermaid
flowchart TD
    A([SBOM 컴포넌트]) --> B[취약점 스캔\nSCA 도구]
    B --> C{CVE 탐지?}
    C -- 없음 --> D[탐지 없음 기록\n정기 재스캔 대기]
    C -- 있음 --> E[CVSS 점수 산정\n위험·영향 평가]
    E --> F{심각도 분류}
    F -- Critical/High --> G[즉시 대응\n7~30일 기한]
    F -- Medium --> H[계획 대응\n90일 기한]
    F -- Low --> I[다음 릴리스 처리]
    G --> J{고객 영향?}
    H --> J
    J -- 있음 --> K[고객 통보\n§4.1.5 방법 4]
    J -- 없음 --> L[조치 결정]
    K --> L
    L --> M{패치 가능?}
    M -- 예 --> N[패치 적용\n재스캔 검증]
    M -- 아니오 --> O[완화 조치\n또는 위험 수용]
    N --> P[조치 결과 기록\n§4.3.2.2]
    O --> P
    P --> Q([지속 모니터링\n§4.1.5 방법 5])
```

**절차 단계별 상세**

아래는 플로우차트의 각 단계를 절차 문서 형태로 기술한 샘플이다.

```
[취약점 탐지 및 해결 절차]

1단계 — 취약점 탐지
- CI/CD 파이프라인 빌드 시 SCA 도구(Dependency-Track, OSV-SCALIBR 등)가
  SBOM을 기반으로 취약점을 자동 스캔한다.
- NVD, OSV.dev, GitHub Security Advisories(GHSA), KISA KNVD(Korea National Vulnerability Database, 한국인터넷진흥원) 등
  복수의 취약점 DB를 참조한다(어느 한 출처의 누락·지연을 보완).
- 배포 후에도 신규 CVE 발행 시 아카이브된 SBOM과 자동 대조한다.

2단계 — 위험·영향 점수 산정
- 탐지된 CVE에 대해 CVSS v3.1 또는 v4.0 기준 기본 점수를 산정한다.
  (신규 CVE는 v4.0 점수가 함께 부여되는 경우가 많아지고 있다 — 두 버전 모두 부여된 경우 **더 높은 점수**를 기준으로 적용한다.)
- 당사 제품의 실제 사용 맥락(네트워크 노출도, 권한 필요 여부 등)을 고려하여
  환경 점수(Environmental Score)를 조정한다.
- **EPSS**(Exploit Prediction Scoring System) 점수와 **CISA KEV**(Known Exploited
  Vulnerabilities) 등재 여부를 보조 지표로 함께 평가한다 — 동일 CVSS 점수라도 KEV에
  등재된 CVE는 우선 조치 대상으로 분류한다.
- 심각도 분류: Critical(9.0+) / High(7.0-8.9) / Medium(4.0-6.9) / Low(0.1-3.9) — 기본 점수 등급 임계값은 v3.1·v4.0 동일. 다만 v4.0은 **Threat·Environmental 메트릭(BTE)** 적용 방식이 달라 동일 Base에서도 환경 점수 산정이 달라질 수 있다.

3단계 — 조치 결정 및 문서화
- 심각도와 고객 영향 범위에 따라 조치 방법을 결정한다:
  · 패치 적용: 상위 버전으로 업그레이드 또는 패치 적용
  · 완화 조치: 패치가 없는 경우 네트워크 격리, 기능 비활성화 등
  · 위험 수용: 실제 악용 가능성이 낮고 완화 조치도 불필요한 경우
    (보안 담당자 + 오픈소스 PM 공동 승인 필수)
- 조치 결정 근거를 취약점 추적 시스템에 기록한다.

4단계 — 고객 동의 획득 (해당 시)
- Critical/High 취약점이 고객 배포 제품에 영향을 미치는 경우:
  · 고객사 보안 담당자에게 취약점 정보와 대응 계획을 사전 통보한다.
  · 패치 배포 일정과 완화 조치 방법을 공유한다.
- **VEX 발행 권장**: 공급망 파트너·고객에게 영향 여부를 표준 형식으로 통지한다.
  **CSAF 2.0**(OASIS, `product_status` 4 카테고리) 또는 **CycloneDX VEX**(5 상태, `false_positive` 추가)
  형식을 사용한다. 4가지 공통 상태값은 다음과 같다.
  · `not_affected` — CVE는 존재하나 사용 맥락상 영향 없음(justification 필수)
  · `affected` — 영향 있음(조치 진행 중)
  · `fixed` — 패치 적용 완료
  · `under_investigation` — 영향 조사 중
  특히 `not_affected` 상태는 고객의 불필요한 패치 작업을 차단하는 가치가 크므로
  [CSAF 2.0 §3.2.3.18 product_status](https://docs.oasis-open.org/csaf/csaf/v2.0/os/csaf-v2.0-os.html)에
  정의된 5개 justification(`component_not_present`·`vulnerable_code_not_present`·
  `vulnerable_code_cannot_be_controlled_by_adversary`·`vulnerable_code_not_in_execute_path`·
  `inline_mitigations_already_exist`) 중 해당 항목을 함께 기재한다.

5단계 — 조치 수행
- 결정된 조치를 조치 기한 내에 수행한다.
- 패치 적용 후 재스캔을 실행하여 취약점 제거를 확인한다.
- 조치 완료 결과를 §4.3.2.2 기록에 업데이트한다.
- 조치 완료 시 VEX 상태값을 `fixed`로 갱신하여 재발행한다.

6단계 — 지속 모니터링
- Dependency-Track 등 도구를 통해 배포된 소프트웨어의 취약점 현황을
  상시 모니터링한다.
- 신규 CVE 발행 시 1~3단계를 자동 또는 즉시 재수행한다.
```

---

### 4.3.2.2 취약점 및 조치 기록

**준수 방법**

SBOM의 각 오픈소스 컴포넌트에 대해 식별된 취약점과 취해진 조치(조치가 불필요
하다고 판단한 경우 포함)를 기록하고 유지해야 한다. 이 기록이 입증자료 4.3.2.2다.
"조치가 필요하지 않은 경우도 포함"이라는 표현이 중요하다 — 취약점이 탐지되지
않은 컴포넌트도 스캔했다는 사실과 탐지 결과를 기록해야 한다.

기록은 Dependency-Track, Jira 보안 이슈 트래커, 스프레드시트 등 다양한
도구로 관리할 수 있으며, 감사 시 즉시 제출 가능한 형태로 유지한다.

**고려사항**

- **컴포넌트별 기록**: SBOM의 각 컴포넌트에 대해 개별 기록을 유지한다.
- **탐지 없음도 기록**: 취약점이 탐지되지 않은 컴포넌트도 스캔 날짜와 결과를
  기록한다.
- **조치 이력 추적**: 동일 컴포넌트의 취약점 발생·조치·재스캔 이력을 시계열로
  관리한다.
- **보관 기간**: 해당 소프트웨어의 지원 기간 + 최소 3년간 보관한다.
- **3차원 우선순위 모델 (CVSS · EPSS · KEV)**: CVSS 단일 점수로 우선순위를 정하지 말고
  EPSS(악용 예측)·KEV(실제 악용 등재) 3축으로 평가한다. 동일 CVSS 7.0이라도 KEV
  등재 + EPSS 0.9 이상이면 Critical과 동일 우선순위로 처리한다.
- **Reachability Analysis 권장**: 단순 의존성 존재만으로 영향 판정하지 말고 취약 함수가
  실제 호출 경로에 있는지(reachability) 분석하면 false positive를 90% 이상 줄일 수 있다.
  도구: Snyk Reachability·Endor Labs·SCA reachability 분석 모듈.
- **회귀 테스트 의무화**: 패치 적용 후 재스캔뿐 아니라 동일 패턴의 새 의존성이 추가될
  때 동일 CVE가 재유입되지 않도록 CI 단계에서 deny-list 점검을 자동화한다.
- **VEX `not_affected` justification**: 영향 없음으로 판정한 경우 justification(예:
  `vulnerable_code_not_in_execute_path`, `inline_mitigations_already_exist`)을 기록하여
  감사 추적성을 확보한다.

**샘플**

아래는 컴포넌트별 취약점 및 조치 기록부 샘플이다.

```
| 소프트웨어 | 버전 | 컴포넌트 | 컴포넌트 버전 | CVE ID | CWE | CVSS v3.1/v4.0 | EPSS (2026-05-12 기준) | KEV | 심각도 | Reachable? | 조치 내용 | VEX 상태 | 조치일 | 담당자 | 비고 |
|-----------|------|---------|--------------|--------|-----|---------------|------|-----|--------|----------|-----------|----------|--------|--------|------|
| MyProduct | v1.2.0 | openssl | 3.0.7 | CVE-2023-0286 | CWE-843 | 7.4 / — | 0.42 | No | High | Yes | 3.0.8로 업그레이드 | fixed | 2023-02-10 | 김철수 | v4.0 미부여(2023-11 이전 발행) — 재스캔 확인 완료 |
| MyProduct | v1.2.0 | xz-utils | 5.6.0 | CVE-2024-3094 | CWE-506 | 10.0 / 10.0 | 0.94 | Yes | Critical | Yes | 5.6.2로 업그레이드 | fixed | 2024-04-01 | 김철수 | KEV 등재(supply chain backdoor) 즉시 우선 조치, 고객 통보 완료 |
| MyProduct | v1.2.0 | libpng | 1.6.37 | 없음 | - | - | - | - | - | - | 조치 불필요 | not_affected | 2023-03-01 | 김철수 | 정기 스캔 결과 |
| MyProduct | v1.2.0 | log4j | 2.14.0 | CVE-2021-44228 | CWE-917 | 10.0 / — | 0.97 | Yes | Critical | **No** | 영향 없음 | not_affected (justification: vulnerable_code_not_in_execute_path) | 2021-12-12 | 김철수 | NVD 공식 CWE-917(Expression Language Injection); v4.0 미부여 — reachability 분석으로 호출 경로 외 확인 |
| FirmwareX | v2.3.0 | busybox | 1.35.0 | CVE-2022-28391 | CWE-78 | 9.8 / — | 0.31 | No | Critical | Yes | 위험 수용 (네트워크 격리 완화) | affected | 2022-11-20 | 김철수 | v4.0 미부여 — 패치 미존재, PM 승인 완료 |
```

> **샘플 표 데이터 주의**: EPSS 점수와 KEV 등재 여부는 매일 갱신되므로 실제 운영 시 **측정 시점**(예: `EPSS(YYYY-MM-DD 기준)`)을 컬럼 헤더에 명시한다. CVSS v4.0(2023-11 발행) 이전 등록된 CVE는 NVD에 v4.0 공식 점수가 없으므로 `—`로 표기한다.

## 5. 참고

- ISO/IEC 5230 대응 조항 없음 (18974 전용 신규 조항)
- 관련 가이드: [기업 오픈소스 관리 가이드 — 3. 프로세스](../../../opensource_for_enterprise/3-process/)
- 관련 도구: [Dependency-Track](../../../tools/7-dependency-track/), [OSV-SCALIBR](../../../tools/4-osvscalibr/)
- 연계 조항: [§4.1.5 표준 관행 구현](../../../iso18974_guide/1-program-foundation/5-standard-practice/), [§4.3.1 SBOM](../1-sbom/)
