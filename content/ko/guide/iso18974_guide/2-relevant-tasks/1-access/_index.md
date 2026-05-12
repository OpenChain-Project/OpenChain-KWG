---
title: "§4.2.1 접근성"
weight: 10
type: docs
categories: ["guide"]
tags: ["ISO/IEC 18974", "외부 문의"]
description: >
---

{{% alert title="구축 단계" color="info" %}}
이 조항은 **Phase 4 — 운영 체계 수립** 단계에서 구축합니다.
[전체 구축 로드맵 보기](../../#단계별-구축-로드맵)
{{% /alert %}}

## 1. 조항 개요

§4.2.1은 ISO/IEC 5230 §3.2.1(외부 문의 대응)과 구조가 동일하지만, 초점이
**라이선스 컴플라이언스 문의**에서 **취약점 문의**로 전환된다. 제3자가 공급
소프트웨어에서 알려진 취약점 또는 새로 발견한 취약점에 대해 문의할 수 있는
공개 채널을 마련하고, 내부적으로는 이 문의에 체계적으로 대응하는 절차를
문서화해야 한다. 보안 취약점 보고 채널은 CVD(Coordinated Vulnerability
Disclosure) 절차와 연결되어 있으므로, 보안 연구자나 고객이 발견한 취약점을
안전하게 접수하고 처리하는 체계가 필요하다.

## 2. 해야 할 활동

- 제3자가 취약점 관련 문의를 보낼 수 있는 공개 연락처(이메일 주소, 웹폼 등)를
  제품 또는 웹사이트에 명시한다.
- 공개 채널을 통해 접수된 취약점 보고를 내부적으로 처리하는 절차를 문서화한다.
- 문의 접수·분류·담당자 배정·대응·종결까지의 처리 단계를 절차에 포함한다.
- CVD 원칙(비공개 협력 후 공개)에 따른 처리 방침을 절차에 명시한다.
- 문의 접수 및 대응 이력을 기록하고 일정 기간 보관한다.

## 3. 요구사항 및 입증자료

| 조항 번호 | 요구사항 (KO) | 입증자료 |
|-----------|--------------|---------|
| §4.2.1 | 외부의 취약점 문의에 효과적으로 대응하기 위한 프로세스를 유지해야 한다. 제3자가 알려진 취약점 또는 새로 발견된 취약점에 대한 문의를 할 수 있는 수단을 공개적으로 밝혀야 한다. | **4.2.1.1** 제3자가 알려진 취약점 또는 새로 발견된 취약점에 대한 문의를 할 수 있도록 공개적으로 볼 수 있는 방법 (예: 프로그램 참여자가 모니터링하는 이메일 주소 또는 웹 포털)<br>**4.2.1.2** 제3자의 알려진 취약점 또는 새로 발견된 취약점 문의에 응답하기 위한 내부 문서화된 절차 |

<details><summary>영문 원문 보기</summary>

> **§4.2.1 Access**
> Maintain a process to effectively respond to external vulnerability
> inquiries. Publicly identify a means by which a third party can make an
> inquiry about known vulnerabilities or newly discovered vulnerabilities.
>
> **Verification Material(s):**
> 4.2.1.1 Publicly visible method that allows any third party to make a known
> vulnerability or newly discovered vulnerability inquiry (e.g., via a
> published contact email address, or web portal that is monitored by
> program participants).
> 4.2.1.2 An internal documented procedure for responding to third party known
> vulnerability or newly discovered vulnerability inquiries.

</details>

## 4. 입증자료별 준수 방법 및 샘플

### 4.2.1.1 공개된 취약점 문의 채널

**준수 방법**

제3자가 취약점을 보고하거나 문의할 수 있는 공개 연락처를 마련하고 외부에
명시해야 한다. 보안 전용 이메일 주소(예: security@company.com)를 제품 문서,
웹사이트 보안 정책 페이지, 또는 `SECURITY.md` 파일(GitHub 등 오픈소스 저장소)에
게시하는 것이 일반적이다. 이 공개 채널 자체가 입증자료 4.2.1.1이다.

ISO/IEC 5230 §3.2.1.1(라이선스 문의 채널)과 별도로 운영하거나, 보안 취약점
보고 전용 채널을 추가하는 방식으로 구성할 수 있다.

**고려사항**

- **보안 전용 채널 분리**: 라이선스 문의 채널(oss@company.com)과 보안 취약점
  보고 채널(security@company.com)을 분리하여 운영하면 처리 우선순위 관리가
  용이하다.
- **응답 보장**: 보고 채널이 실제로 모니터링되고 있음을 명시한다(예: "영업일
  기준 3일 이내 수신 확인 응답").
- **`security.txt` 표준 활용**: RFC 9116의 `security.txt` 표준을 적용하면
  보안 연구자가 쉽게 연락처를 찾을 수 있다.

**샘플**

```
[웹사이트 보안 정책 페이지 / SECURITY.md 샘플]

## 보안 취약점 보고

당사 소프트웨어에서 보안 취약점을 발견하신 경우 아래 채널로 보고해 주십시오.
저희는 책임있는 공개(Coordinated Vulnerability Disclosure) 원칙을 따릅니다.

- 보고 이메일: security@company.com
- 수신 확인: 영업일 기준 3일 이내
- 처리 원칙: 비공개로 취약점을 검토하고 패치 후 공개

Security Vulnerability Reporting

To report a security vulnerability, please contact: security@company.com
We follow Coordinated Vulnerability Disclosure (CVD) practices.
```

---

### 4.2.1.2 내부 취약점 문의 대응 절차

**준수 방법**

외부에서 취약점 보고가 접수되었을 때 내부적으로 처리하는 절차를 문서화해야
한다. CVD 원칙에 따라 보고자와 비공개로 협력하여 취약점을 해결하고, 패치
준비 후 공개하는 흐름이 기본 골격이 된다. 이 절차 문서가 입증자료 4.2.1.2다.

**고려사항**

- **CVD 원칙 준수**: 보고자와 협력하여 취약점 해결 전까지 비공개를 유지하고
  공개 일정을 합의한다.
- **처리 기한**: 수신 확인, 취약점 검증, 패치 제공, 공개 각 단계별 기한을
  절차에 명시한다.
- **기록 보관**: 보고 내용, 검토 과정, 대응 조치, 공개 이력을 최소 3년간 보관한다.

**샘플**

```
[외부 취약점 보고 대응 절차]

1. 접수 및 수신 확인 (3영업일 이내)
   - security@company.com 수신함을 매일 확인한다.
   - 보고자에게 수신 확인 및 비공개 처리 약속을 회신한다.

2. 취약점 검증 (7영업일 이내)
   - 보안 담당자가 보고된 취약점의 재현 가능성과 영향 범위를 검증한다.
   - CVSS 점수를 산정하고 심각도를 분류한다.

3. 패치 개발 및 조치 (심각도에 따라 7~90일)
   - §4.1.5 방법 3(후속 조치) 절차에 따라 패치 또는 완화 조치를 수행한다.
   - 필요 시 보고자와 패치 일정을 공유하고 협의한다.

4. 공개 (패치 완료 후)
   - 보안 권고문(Security Advisory)을 작성하고 보고자 확인 후 공개한다.
   - CVE ID 발급을 요청한다 (필요 시).
   - 영향받는 고객에게 §4.1.5 방법 4(고객 통보) 절차에 따라 통보한다.

5. 기록 보관
   - 보고 내용, 검토 과정, 조치 결과, 공개 이력을 최소 3년간 보관한다.
```

{{% alert title="법규별 취약점 보고 시한 — ISO 요구와 별개로 추가 적용" color="warning" %}}

ISO/IEC 18974 §4.2.1.2는 처리 기한을 **조직이 자율적으로** 정하도록 요구하지만,
관할 법규는 별도로 강제 시한을 부여한다. ISO 절차와 법규 시한을 **분리하여 절차에
명시**해야 인증 심사와 규제 대응을 동시에 통과할 수 있다.

| 법규 | 적용 대상 | 보고 시한 | 보고 대상 |
|------|---------|---------|---------|
| **EU CRA** (Cyber Resilience Act, 2024-12 발효, 2027-12 시행) | EU 시장에 출시되는 디지털 제품 (소프트웨어 포함) | **24시간 이내**(조기 경고) → **72시간 이내**(상세 보고) → **14일 이내**(최종 보고) — 적극적으로 악용된 취약점 | ENISA + 회원국 CSIRT |
| **EU NIS 2** (Directive 2022/2555, 2024-10 시행) | 핵심·중요 산업(에너지·의료·금융·디지털 인프라 등) | **24시간 이내**(조기 경고) → **72시간 이내**(통지) → **1개월 이내**(최종 보고) | 회원국 관할 당국 |
| **US EO 14028** (Improving Nation's Cybersecurity, 2021-05) | 미국 연방 정부 납품 SW 공급자 | SBOM 제출, 취약점 정보 공유 (M-22-18 메모) | CISA |
| **한국 정보통신망법 §48조의3** | 정보통신서비스 제공자 | 침해사고 인지 후 **즉시** 신고 | 과학기술정보통신부·KISA |
| **한국 개인정보보호법 §34조** | 개인정보 처리자 | 개인정보 유출 인지 후 **72시간 이내** | 개인정보보호위원회·KISA |

**적용 권장**: §4.2.1.2 절차에 "관할 법규에 따른 보고 의무 표"를 부록으로 첨부하고,
취약점 접수 시 법규 적용 여부를 자동 분기하는 점검 항목을 추가한다.

{{% /alert %}}

## 5. 참고

- 대응 ISO/IEC 5230 조항: [§3.2.1 외부 문의 대응](../../iso5230_guide/2-relevant-tasks/1-access/)
- 관련 가이드: [기업 오픈소스 관리 가이드 — 3. 프로세스](../../../opensource_for_enterprise/3-process/)
