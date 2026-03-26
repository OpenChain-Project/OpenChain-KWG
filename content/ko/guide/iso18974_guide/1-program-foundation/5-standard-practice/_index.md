---
title: "§4.1.5 표준 관행 구현"
weight: 50
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "표준 관행", "취약점 대응"]
description: >
---

## 1. 조항 개요

§4.1.5는 ISO/IEC 5230에 없는 18974 전용 신규 조항이다. 오픈소스 취약점을
다루는 **8가지 표준 처리 방법** 각각에 대해 문서화된 절차를 수립하도록 요구한다.
이 조항은 단순히 취약점에 "대응한다"는 선언을 넘어, 위협 식별·탐지·후속 조치·
고객 통보·배포 후 모니터링·지속적 보안 테스트·위험 검증·정보 수출까지 전체
취약점 생명주기를 절차로 명문화할 것을 요구한다. 이 조항은 §4.3.2 보안 보증과
함께 ISO/IEC 18974의 핵심을 이룬다.

## 2. 해야 할 활동

8가지 방법 각각에 대한 문서화된 절차를 수립한다:

1. **구조적·기술적 위협 식별**: 공급 소프트웨어에 영향을 미치는 위협을 식별하는
   방법을 정의한다.
2. **알려진 취약점 탐지**: 오픈소스 컴포넌트의 알려진 취약점(CVE) 존재를
   탐지하는 방법을 정의한다.
3. **취약점 후속 조치**: 식별된 취약점에 대해 패치·완화·수용 등 후속 조치를
   취하는 방법을 정의한다.
4. **고객 통보**: 해당되는 경우 식별된 취약점을 고객에게 전달하는 방법을 정의한다.
5. **배포 후 신규 취약점 분석**: 출시 후 새로 공개된 CVE에 대해 기배포 소프트웨어를
   분석하는 방법을 정의한다.
6. **지속적 보안 테스트**: 출시 전 모든 소프트웨어에 지속적·반복적 보안 테스트를
   적용하는 방법을 정의한다.
7. **위험 해결 검증**: 식별된 위험이 출시 전에 해결되었는지 검증하는 방법을
   정의한다.
8. **위험 정보 수출**: 적절한 경우 제3자에게 위험 정보를 내보내는 방법을 정의한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §4.1.5 | 프로그램은 알려진 취약점의 건전하고 견고한 처리 절차와 보안 소프트웨어 개발을 다음 8가지를 정의하고 구현하여 시연해야 한다: 위협 식별 / 취약점 탐지 / 후속 조치 / 고객 통보 / 배포 후 신규 취약점 분석 / 지속적 보안 테스트 / 위험 해결 검증 / 위험 정보 수출 | **4.1.5.1** 위에 식별된 각 방법에 대한 문서화된 절차가 존재 |

<details><summary>영문 원문 보기</summary>

> **§4.1.5 Standard Practice Implementation**
> A program shall demonstrate defined and implemented processes for sound and
> robust handling of known vulnerabilities and security software development,
> specifically by defining and implementing the following:
> - A method to identify structural and technical threats to the supplied
>   software;
> - A method to detect the existence of known vulnerabilities in the supplied
>   software;
> - A method to follow up on identified known vulnerabilities;
> - A method to communicate identified known vulnerabilities to customers,
>   where applicable;
> - A method to analyze the supplied software for newly disclosed known
>   vulnerabilities when they are published;
> - A method to apply continuous and iterative security testing to all
>   supplied software before release;
> - A method to verify that identified risks have been addressed before
>   release; and
> - A method to export information about identified risks to third parties,
>   where appropriate.
>
> **Verification Material(s):**
> 4.1.5.1 A documented procedure exists for each of the methods identified
> above.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 4.1.5.1 8가지 취약점 처리 방법에 대한 문서화된 절차

**준수 방법**

8가지 방법 각각에 대해 "어떻게 수행하는가"를 설명하는 절차를 문서화해야 한다.
이 절차들이 모여 입증자료 4.1.5.1을 구성한다. 별도의 8개 문서를 작성할 수도
있고, 하나의 통합 취약점 관리 절차 문서 안에 8개 섹션으로 구성할 수도 있다.
후자가 관리 부담이 적고 일관성을 유지하기 쉬운 방식이다.

**방법 1 — 구조적·기술적 위협 식별**

공급 소프트웨어에 영향을 미칠 수 있는 구조적(아키텍처 설계, 의존성 구조) 및
기술적(알려진 취약 패턴, 위험 컴포넌트) 위협을 식별하는 방법을 정의한다.
위협 모델링(STRIDE, PASTA 등)을 활용하거나, 정기적으로 의존성 트리를 분석하여
위험 컴포넌트를 식별하는 방식이 일반적이다.

```
[위협 식별 절차 개요]
- 신규 소프트웨어 아키텍처 설계 시 위협 모델링을 수행한다.
- 분기별로 의존성 트리를 분석하여 EOL(End-of-Life) 컴포넌트,
  유지보수 중단 프로젝트, 높은 의존성 집중도를 가진 컴포넌트를 식별한다.
- 식별된 위협은 위험 레지스트리(Risk Registry)에 등록하고 담당자를 배정한다.
```

**방법 2 — 알려진 취약점 탐지**

SBOM을 기반으로 오픈소스 컴포넌트의 CVE(Common Vulnerabilities and Exposures)
존재 여부를 탐지하는 방법을 정의한다. 자동화 도구(OSV-SCALIBR, Dependency-Track,
Grype 등)를 CI/CD 파이프라인에 통합하여 빌드 시마다 취약점을 스캔하는 것이
효과적이다.

```
[취약점 탐지 절차 개요]
- CI/CD 파이프라인에 SCA(Software Composition Analysis) 도구를 통합한다.
- 빌드마다 SBOM 기반 취약점 스캔을 자동 실행한다.
- OSV(Open Source Vulnerabilities), NVD(National Vulnerability Database),
  GitHub Advisory Database 등 복수의 취약점 데이터베이스를 참조한다.
- 탐지된 취약점은 심각도와 함께 보안 담당자에게 자동 알림 발송한다.
```

**방법 3 — 취약점 후속 조치**

식별된 취약점에 대해 패치 적용, 완화 조치, 컴포넌트 교체, 위험 수용 등 후속
조치를 취하는 방법을 정의한다. CVSS 점수 기반 우선순위와 조치 기한을 절차에
명시한다.

```
[후속 조치 절차 개요]
- CVSS 점수에 따라 조치 우선순위와 기한을 결정한다:
  Critical(9.0+): 7일 이내 / High(7.0-8.9): 30일 이내
  Medium(4.0-6.9): 90일 이내 / Low(0.1-3.9): 다음 릴리스 시
- 패치가 없는 경우 완화 조치(네트워크 격리, WAF 규칙 추가 등)를 수행하고
  위험 수용 결정은 보안 담당자 + 오픈소스 PM이 공동 승인한다.
- 조치 결과를 취약점 추적 시스템에 기록하고 완료 여부를 검증한다.
```

**방법 4 — 고객 통보**

공급한 소프트웨어에서 취약점이 발견되어 고객에게 영향을 미칠 수 있는 경우
이를 고객에게 전달하는 방법을 정의한다. 고객 통보 기준(심각도, 고객 영향 범위),
통보 채널, 통보 기한을 절차에 명시한다.

```
[고객 통보 절차 개요]
- Critical/High 취약점 중 고객 배포 제품에 영향을 미치는 경우 통보한다.
- 통보 채널: 제품 보안 공지(웹사이트), 고객사 담당자 이메일, 보안 권고문 발행
- 통보 기한: 패치 또는 완화 조치 확정 후 7일 이내
- 통보 내용: 영향받는 컴포넌트, CVE ID, 심각도, 권장 조치, 패치 제공 일정
```

**방법 5 — 배포 후 신규 취약점 분석**

이미 배포된 소프트웨어에 대해 새로 공개된 CVE가 영향을 미치는지 분석하는 방법을
정의한다. 배포된 소프트웨어의 SBOM을 보관하고, 신규 CVE 발행 시 해당 컴포넌트
포함 여부를 자동 대조하는 모니터링 체계가 필요하다.

```
[배포 후 신규 취약점 분석 절차 개요]
- 배포된 소프트웨어의 SBOM을 버전별로 보관한다.
- Dependency-Track 등 도구를 활용하여 신규 CVE 발행 시 기배포 SBOM과
  자동 대조하고 영향을 받는 소프트웨어 버전 목록을 생성한다.
- 영향받는 버전이 확인된 경우 방법 3(후속 조치)과 방법 4(고객 통보) 절차에
  따라 처리한다.
- 모니터링은 상시 자동 수행하며, 주간 요약 보고를 보안 담당자에게 발송한다.
```

**방법 6 — 지속적 보안 테스트**

출시 전 모든 공급 소프트웨어에 지속적이고 반복적인 보안 테스트를 적용하는
방법을 정의한다. SAST(Static Application Security Testing), DAST(Dynamic
Application Security Testing), SCA를 CI/CD 파이프라인에 통합하는 것이
일반적인 방식이다.

```
[지속적 보안 테스트 절차 개요]
- CI/CD 파이프라인 단계별 보안 테스트:
  · 코드 커밋 시: SAST(정적 분석), SCA(오픈소스 취약점 스캔)
  · PR 머지 시: 보안 게이트 통과 여부 확인 (Critical/High 미해결 시 블로킹)
  · 릴리스 후보 빌드: DAST(동적 분석), 컨테이너 이미지 스캔
- 보안 테스트 실패 시 릴리스를 자동 차단하고 보안 담당자에게 알림 발송한다.
- 테스트 커버리지와 결과를 대시보드에서 지속 모니터링한다.
```

**방법 7 — 위험 해결 검증**

식별된 위험이 출시 전에 실제로 해결되었는지 검증하는 방법을 정의한다. 패치
적용 후 재스캔을 통해 취약점이 제거되었음을 확인하고 그 결과를 기록해야 한다.

```
[위험 해결 검증 절차 개요]
- 패치 또는 완화 조치 완료 후 동일 도구로 재스캔을 실행한다.
- 재스캔 결과 취약점이 제거되었음을 확인하고 취약점 추적 시스템에 기록한다.
- Critical/High 취약점의 경우 보안 담당자가 검증 결과를 승인한다.
- 위험이 해결되지 않은 채 출시하는 경우 경영진 승인과 완화 계획을 문서화한다.
```

**방법 8 — 위험 정보 수출**

적절한 경우 식별된 위험 정보를 제3자(공급망 파트너, 고객, 취약점 데이터베이스
등)에게 내보내는 방법을 정의한다. VEX(Vulnerability Exploitability eXchange)
형식을 활용하거나, CVD 채널을 통해 상류 프로젝트에 취약점 정보를 제보하는
절차가 여기에 해당한다.

```
[위험 정보 수출 절차 개요]
- 자체적으로 새로운 취약점을 발견한 경우 CVD 절차에 따라 상류 프로젝트
  또는 CERT에 보고한다.
- 공급망 파트너에게 취약점 영향 정보를 공유할 때는 VEX 형식을 사용한다.
- 제3자 공유 전 법무 담당의 검토를 거쳐 영업 비밀 또는 미공개 정보가
  포함되지 않도록 확인한다.
- 정보 수출 이력(대상, 날짜, 내용 요약)을 기록하고 보관한다.
```

## 5. 참고

- ISO/IEC 5230 대응 조항 없음 (18974 전용 신규 조항)
- 관련 가이드: [기업 오픈소스 관리 가이드 — 3. 프로세스](../../../opensource_for_enterprise/3-process/)
- 관련 도구: [OSV-SCALIBR](../../../tools/4-osvscalibr/), [Dependency-Track](../../../tools/7-dependency-track/)
