---
title: "§3.3.1 SBOM"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 5230", "SBOM"]
description: >
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 3 — 프로세스 구축** 단계에서 구축합니다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

## 1. 조항 개요

공급 소프트웨어에 어떤 오픈소스 컴포넌트가 포함되어 있는지 파악하지 못하면
라이선스 의무를 이행할 수 없고 보안 취약점 대응도 불가능하다. §3.3.1은 공급
소프트웨어를 구성하는 오픈소스 컴포넌트를 식별·추적·검토·승인·보관하는
절차를 수립하고, 그 절차가 실제로 이행되었음을 입증하는 컴포넌트 기록(SBOM)을
유지하도록 요구한다. 이 조항은 오픈소스 라이선스 컴플라이언스와 보안 보증의
핵심 인프라인 SBOM을 운영하는 기반이 된다.

## 2. 해야 할 활동

- 공급 소프트웨어에 포함된 오픈소스 컴포넌트를 자동화 도구(FOSSology, ORT,
  Syft, cdxgen 등)를 활용하여 식별하고 목록화한다.
- 오픈소스 컴포넌트 정보(컴포넌트명, 버전, 라이선스, 출처 등)를 추적하고
  검토·승인·보관하는 절차를 문서화한다.
- 각 공급 소프트웨어 릴리스에 대한 SBOM을 생성하고 관리한다.
- SBOM 데이터를 SPDX 또는 CycloneDX 표준 형식으로 작성하여 상호 운용성을
  확보한다.
- 소프트웨어 변경(신규 컴포넌트 추가, 버전 업그레이드, 컴포넌트 제거) 시
  SBOM을 즉시 갱신한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §3.3.1 | 공급 소프트웨어를 구성하는 각 오픈소스 컴포넌트(및 식별된 라이선스)를 포함하는 소프트웨어 구성 목록을 작성하고 관리하기 위한 프로세스가 존재해야 한다. | **3.3.1.1** 공급 소프트웨어를 구성하는 오픈소스 컴포넌트에 대한 정보를 식별, 추적, 검토, 승인 및 보관하는 문서화된 절차<br>**3.3.1.2** 문서화된 절차가 적절히 준수되었음을 보여주는 공급 소프트웨어에 대한 오픈소스 컴포넌트 기록 |

<details><summary>영문 원문 보기</summary>

> **§3.3.1 Bill of Materials**
> A process shall exist for creating and managing a bill of materials that
> includes each open source component (and its identified licenses) from
> which the supplied software is comprised.
>
> **Verification Material(s):**
> 3.3.1.1 A documented procedure for identifying, tracking, reviewing,
> approving, and archiving information about the collection of open source
> components from which the supplied software is comprised.
> 3.3.1.2 Open source component records for the supplied software that
> demonstrates the documented procedure was followed.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 3.3.1.1 오픈소스 컴포넌트 관리 절차

**준수 방법**

공급 소프트웨어에 포함된 오픈소스 컴포넌트를 식별·추적·검토·승인·보관하는
일련의 절차를 문서화해야 한다. 절차는 소프트웨어 개발 주기 전반에 걸쳐
오픈소스가 어떻게 관리되는지를 다루며, ①컴포넌트 식별, ②라이선스 확인,
③의무 검토, ④사용 승인, ⑤SBOM 생성 및 등록, ⑥배포 시 SBOM 제공,
⑦변경 시 SBOM 갱신, ⑧SBOM 보관의 단계를 포함해야 한다. 이 절차 문서 자체가
입증자료 3.3.1.1이다.

SBOM은 SPDX(ISO/IEC 5962) 또는 CycloneDX 형식을 채택하여 표준화하는 것을
권장한다. 자동화 도구를 CI/CD 파이프라인에 통합하면 컴포넌트 변경 시 SBOM이
자동으로 갱신되어 최신성을 유지하기 쉽다.

**고려사항**

- **자동화 도구 통합**: FOSSology, ORT, Syft, cdxgen 등을 CI/CD에 통합하여
  SBOM 생성을 자동화한다.
- **표준 형식 채택**: SPDX 또는 CycloneDX 형식으로 SBOM을 작성하여 공급망
  파트너와의 상호 운용성을 확보한다.
- **갱신 트리거 정의**: 신규 컴포넌트 추가, 버전 업그레이드, 컴포넌트 제거,
  라이선스 변경 발생 시 SBOM 갱신을 의무화한다.
- **승인 절차 명시**: 새로운 오픈소스 컴포넌트 도입 시 오픈소스 프로그램 매니저
  또는 OSRB의 승인 절차를 절차에 포함한다.
- **보관 기간**: SBOM은 해당 소프트웨어 배포 후 최소 [N]년간 보관한다.

**샘플**

아래는 오픈소스 컴포넌트 관리 절차 개요 샘플이다.
[오픈소스 프로세스 템플릿](../../../templates/2-process-template/)에서
전체 프로세스 양식을 확인할 수 있다.

```
[오픈소스 컴포넌트 관리 절차 개요]

(1) 식별
    - 개발자는 오픈소스 컴포넌트 도입 시 오픈소스 관리 시스템에 신고한다.
    - CI/CD 파이프라인의 SCA 도구(Syft, ORT 등)가 컴포넌트를 자동 탐지한다.

(2) 라이선스 확인 및 의무 검토
    - 식별된 컴포넌트의 라이선스를 SPDX License List 기준으로 확인한다.
    - 라이선스 의무 요약표를 참조하여 배포 형태에 따른 의무를 검토한다.
    - 불확실한 경우 법무 담당에게 검토를 의뢰한다.

(3) 사용 승인
    - 오픈소스 프로그램 매니저가 검토 결과를 바탕으로 사용을 승인한다.
    - 라이선스 정책에 반하는 컴포넌트는 대안 검토 후 반려한다.

(4) SBOM 생성 및 등록
    - 승인된 컴포넌트를 SBOM에 등록한다 (형식: SPDX 또는 CycloneDX).
    - SBOM에는 컴포넌트명, 버전, 라이선스, 출처(URL), 저작권 고지를 포함한다.

(5) 배포 및 SBOM 제공
    - 소프트웨어 배포 시 SBOM을 함께 제공하거나 요청 시 제공한다.

(6) 변경 시 갱신
    - 컴포넌트 추가·업그레이드·제거·라이선스 변경 발생 시 SBOM을 즉시 갱신한다.

(7) 보관
    - SBOM은 소프트웨어 배포 후 최소 [N]년간 버전별로 보관한다.
```

---

### 3.3.1.2 오픈소스 컴포넌트 기록 (SBOM)

**준수 방법**

3.3.1.1에서 정의한 절차가 실제로 이행되었음을 보여주는 컴포넌트 기록을
공급 소프트웨어별로 유지해야 한다. 이 기록이 SBOM(Software Bill of Materials)이며
입증자료 3.3.1.2에 해당한다. SBOM에는 최소한 각 오픈소스 컴포넌트의 이름·버전·
라이선스·출처가 포함되어야 하며, SPDX 또는 CycloneDX 형식으로 작성하면 감사
시 즉시 제출 가능한 형태가 된다.

SBOM은 소프트웨어 릴리스 버전별로 관리하고, 과거 버전의 SBOM도 보관하여
특정 시점의 컴포넌트 구성을 언제든 확인할 수 있어야 한다. SBOM 생성 도구의
출력 결과를 그대로 활용하거나, 오픈소스 관리 시스템(SW360, Dependency-Track 등)에
저장·관리하는 방식을 사용할 수 있다.

**고려사항**

- **필수 포함 항목**: 컴포넌트명, 버전, 라이선스 식별자(SPDX ID), 출처(패키지
  레지스트리 URL 또는 소스 저장소), 저작권 고지를 포함한다.
- **버전별 관리**: 소프트웨어 릴리스 버전별로 SBOM을 별도 관리하고 과거 버전도
  보관한다.
- **관리 도구 활용**: SW360, Dependency-Track 등 오픈소스 관리 시스템을 활용하면
  SBOM의 생성·추적·배포를 체계적으로 관리할 수 있다.
- **고객 제공**: 고객 또는 공급망 파트너가 SBOM을 요청하는 경우 즉시 제공할 수
  있도록 접근 가능한 형태로 보관한다.

**샘플**

아래는 SPDX 형식 SBOM의 핵심 항목 샘플이다.

```
SPDXVersion: SPDX-2.3
DataLicense: CC0-1.0
SPDXID: SPDXRef-DOCUMENT
DocumentName: MyProduct-v1.2.0-sbom
DocumentNamespace: https://company.com/sbom/myproduct-1.2.0

PackageName: openssl
SPDXID: SPDXRef-openssl
PackageVersion: 3.0.8
PackageDownloadLocation: https://www.openssl.org/source/openssl-3.0.8.tar.gz
PackageLicenseConcluded: Apache-2.0
PackageLicenseDeclared: Apache-2.0
PackageCopyrightText: Copyright (c) 1998-2023 The OpenSSL Project

PackageName: zlib
SPDXID: SPDXRef-zlib
PackageVersion: 1.2.13
PackageDownloadLocation: https://zlib.net/zlib-1.2.13.tar.gz
PackageLicenseConcluded: Zlib
PackageLicenseDeclared: Zlib
PackageCopyrightText: Copyright (C) 1995-2022 Jean-loup Gailly and Mark Adler
```

## 5. 참고

- 관련 가이드: [기업 오픈소스 관리 가이드 — 3. 프로세스](../../../opensource_for_enterprise/3-process/)
- 관련 템플릿: [오픈소스 프로세스 템플릿](../../../templates/2-process-template/)
- 관련 도구: [FOSSology](../../../tools/1-fossology/), [ORT](../../../tools/2-ort/), [Syft](../../../tools/6-syft/), [cdxgen](../../../tools/5-cdxgen/), [Dependency-Track](../../../tools/7-dependency-track/)
