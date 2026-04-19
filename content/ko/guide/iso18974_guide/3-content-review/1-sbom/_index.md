---
title: "§4.3.1 SBOM"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "SBOM"]
description: >
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 3 — 프로세스 구축** 단계에서 구축합니다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

## 1. 조항 개요

§4.3.1은 ISO/IEC 5230 §3.3.1(SBOM)과 기본 구조는 동일하지만, 강조점이
다르다. 5230은 오픈소스 컴포넌트의 라이선스 관리를 위한 SBOM을 다루는 반면,
18974의 §4.3.1은 **소프트웨어 수명주기 전반에 걸쳐 지속적으로 SBOM을
기록하고 보관**하는 것을 강조한다. 특히 배포 후에도 SBOM을 유지하여 §4.3.2
보안 보증의 취약점 모니터링과 연계되어야 한다. SBOM이 없으면 배포 후 새로
공개된 CVE에 대한 영향 분석(§4.1.5 방법 5)을 수행할 수 없다.

## 2. 해야 할 활동

- 공급 소프트웨어의 오픈소스 컴포넌트를 식별·추적·검토·승인하는 절차를
  수립한다 (5230과 동일).
- **소프트웨어 수명주기 동안 지속적으로 SBOM을 기록하고 보관하는 절차**를
  수립한다 (18974 강조 사항).
- 배포된 소프트웨어 버전별로 SBOM을 보관하여 배포 후 취약점 영향 분석에
  활용한다.
- SBOM 정보를 취약점 관리 도구(Dependency-Track 등)와 연동하여 신규 CVE
  발행 시 자동으로 영향 분석이 이루어지도록 구성한다.
- 컴포넌트 추가·변경·제거 시 SBOM을 즉시 갱신하는 트리거를 정의한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §4.3.1 | 공급 소프트웨어에 사용되는 모든 오픈소스 소프트웨어가 공급 소프트웨어의 수명주기 동안 지속적으로 기록되도록 보장하는 프로세스가 있어야 한다. | **4.3.1.1** 공급 소프트웨어에 사용되는 모든 오픈소스 소프트웨어가 공급 소프트웨어의 수명주기 동안 지속적으로 기록되도록 보장하는 문서화된 절차 (아카이브 포함)<br>**4.3.1.2** 문서화된 절차가 올바르게 수행되었음을 입증하는 공급 소프트웨어에 대한 오픈소스 소프트웨어 컴포넌트 기록 |

<details><summary>영문 원문 보기</summary>

> **§4.3.1 Software Bill of Materials**
> A process shall exist for creating and managing a software bill of materials
> that includes each open source software component (and its identified
> licenses) from which the supplied software is comprised, in a manner that
> ensures the supplied software's open source software components are
> continuously recorded throughout the supplied software's life cycle,
> including archiving.
>
> **Verification Material(s):**
> 4.3.1.1 A documented procedure to ensure that all open source software used
> in the supplied software is continuously recorded during the life cycle of
> the supplied software. This includes an archive of all open source software
> used in the supplied software.
> 4.3.1.2 Open source software component records for the supplied software
> that demonstrates the documented procedure was followed.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 4.3.1.1 SBOM 수명주기 지속 기록 절차

**준수 방법**

ISO/IEC 5230 §3.3.1.1의 SBOM 관리 절차를 기반으로 하되, **수명주기 지속
기록**과 **아카이브**에 초점을 맞춰 절차를 보강해야 한다. 이 절차 문서가
입증자료 4.3.1.1이다.

보안 보증 관점에서 SBOM 관리의 핵심은 배포 후에도 SBOM이 유효하게 유지되어
신규 CVE 발행 시 즉시 영향 분석에 활용될 수 있어야 한다는 점이다. 이를 위해
배포된 모든 소프트웨어 버전의 SBOM을 아카이브하고, 취약점 관리 도구와 연동하는
절차를 포함해야 한다.

**고려사항**

- **수명주기 단계별 SBOM 유지**: 개발·빌드·배포·배포 후 모니터링 각 단계에서
  SBOM이 최신 상태를 유지하도록 절차를 정의한다.
- **아카이브 정책**: 배포된 모든 버전의 SBOM을 버전별로 아카이브하고 보관
  기간을 명시한다(최소 해당 소프트웨어 지원 기간 + 3년).
- **취약점 도구 연동**: Dependency-Track 등에 SBOM을 임포트하여 신규 CVE가
  발행될 때마다 자동 대조가 이루어지도록 설정한다.
- **갱신 트리거**: 컴포넌트 추가·업그레이드·제거, 라이선스 변경, 새로운 취약점
  발견 시 SBOM 갱신을 의무화한다.

**샘플**

아래는 보안 보증 관점으로 강화된 SBOM 관리 절차 개요 샘플이다.

```
[SBOM 수명주기 관리 절차 개요]

(1) 개발 단계
    - 오픈소스 컴포넌트 도입 시 즉시 SBOM에 등록한다.
    - CI/CD 파이프라인 SCA 도구(Syft, cdxgen 등)가 자동 탐지한다.

(2) 빌드 단계
    - 빌드마다 최신 SBOM을 자동 생성한다 (SPDX 또는 CycloneDX 형식).
    - 취약점 스캔 도구와 연동하여 빌드 시점 취약점 현황을 기록한다.

(3) 배포 단계
    - 릴리스 버전의 SBOM을 확정하고 아카이브 저장소에 보관한다.
    - Dependency-Track에 SBOM을 임포트하여 지속 모니터링을 활성화한다.

(4) 배포 후 모니터링
    - 신규 CVE 발행 시 아카이브된 모든 버전 SBOM과 자동 대조한다.
    - 영향받는 버전이 확인되면 §4.1.5 방법 5 절차에 따라 처리한다.

(5) 갱신 트리거
    - 다음 이벤트 발생 시 SBOM을 즉시 갱신한다:
      · 컴포넌트 추가, 버전 업그레이드, 컴포넌트 제거
      · 라이선스 변경, 새로운 취약점 발견으로 인한 대체

(6) 아카이브 보관
    - 배포된 모든 버전의 SBOM을 버전별로 보관한다.
    - 보관 기간: 해당 소프트웨어 공식 지원 종료 후 최소 3년
```

---

### 4.3.1.2 오픈소스 컴포넌트 기록 (SBOM)

ISO/IEC 5230 §3.3.1.2와 동일하다. 보안 보증 관점에서 SBOM에는 라이선스 정보
외에 각 컴포넌트의 **알려진 취약점 현황** 또는 취약점 관리 도구 링크를 함께
기록하면 §4.3.2와 연계가 용이하다. 작성 방법은
[§3.3.1.2 오픈소스 컴포넌트 기록](../../iso5230_guide/3-content-review/1-sbom/)을 참고한다.

## 5. 참고

- 대응 ISO/IEC 5230 조항: [§3.3.1 SBOM](../../iso5230_guide/3-content-review/1-sbom/)
- 관련 가이드: [기업 오픈소스 관리 가이드 — 3. 프로세스](../../../opensource_for_enterprise/3-process/)
- 관련 도구: [Syft](../../../tools/6-syft/), [cdxgen](../../../tools/5-cdxgen/), [Dependency-Track](../../../tools/7-dependency-track/)
