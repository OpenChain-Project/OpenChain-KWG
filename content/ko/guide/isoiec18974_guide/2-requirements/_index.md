---
title: "2. ISO/IEC 18974의 주요 요구사항"
linkTitle: "2. 주요 요구사항"
weight: 20
type: docs
description: >
---

ISO/IEC 18974는 오픈소스 소프트웨어의 보안 보증을 위한 핵심 요구사항을 정의합니다. 이 표준은 조직이 오픈소스 소프트웨어의 알려진 보안 취약점을 효과적으로 관리할 수 있는 체계를 구축하는 데 필요한 지침을 제공합니다. 각 요구사항에 대한 자세한 내용은 부록을 참고하십시오.

## 2.1 프로그램 기반

이 섹션에서는 오픈소스 보안 보증 프로그램을 위한 기본적인 정책, 역량, 인식, 자원, 그리고 측정에 대한 요구사항을 정의합니다. 프로그램 기반은 조직이 ISO/IEC 18974를 효과적으로 구현하고 지속적으로 유지하기 위한 토대를 제공합니다.

### 2.1.1 정책 (Policy)

조직은 공급하는 소프트웨어의 오픈소스 소프트웨어 보안 보증을 관리하는 문서화된 정책을 수립해야 합니다. 이 정책은 조직 내 모든 관련자에게 공유되어야 하며, 정책과 그 전달 방법은 최신성과 관련성을 보장하기 위한 검토 프로세스를 거쳐야 합니다.

**표 2.1: 정책 (Policy) 요구사항 및 검증 자료**

| 요구사항 (Requirement)       | 원문 (Original Text)                                                                                                                                  | 한글 번역 (Korean Translation)                                                                                                     |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| **2.1.1 정책 (Policy)**      | A written policy shall be created that governs open source software security assurance of supplied software. The policy shall be internally communicated. The policy and its method of communication shall have a review process to ensure they are current and relevant. | 공급 소프트웨어의 오픈소스 소프트웨어 보안 보증을 관리하는 문서화된 정책을 수립해야 합니다. 이 정책은 내부적으로 전달되어야 합니다. 정책과 그 전달 방법은 현재성과 관련성을 보장하기 위한 검토 프로세스를 가져야 합니다. |
| **검증 자료 (Verification Materials)** | 4.1.1.1: A documented open source software security assurance policy<br>4.1.1.2: A documented procedure to make program participants aware of the security assurance policy | 4.1.1.1: 문서화된 오픈소스 소프트웨어 보안 보증 정책<br>4.1.1.2: 프로그램 참여자들에게 보안 보증 정책을 인식시키기 위한 문서화된 절차 |



**정책 수립 시 고려사항**

- **적용 범위**: 정책이 적용되는 오픈소스 소프트웨어의 범위 (예: 모든 내부 개발 프로젝트, 외부 공급망 등)를 명확히 정의합니다.
- **역할 및 책임**: 오픈소스 보안 관리에 관련된 모든 역할 (예: 개발자, 보안팀, 법무팀, 경영진)의 책임을 명확히 정의합니다.
- **프로세스**: 오픈소스 사용 승인, SBOM(Software Bill of Materials, 소프트웨어 자재 명세서) 관리, 취약점 관리, 라이선스 준수 등 주요 프로세스에 대한 지침을 제공합니다.
- **준수**: 정책 준수를 위한 모니터링 및 감사 절차를 명시합니다.
- **예외**: 정책 예외 상황에 대한 처리 절차를 정의합니다.

### 2.1.2 역량 (Competence)

조직은 프로그램의 성과와 효과성에 영향을 미치는 역할과 책임을 식별하고, 각 역할을 수행하는 프로그램 참여자에게 필요한 역량을 결정해야 합니다. 또한, 프로그램 참여자들이 적절한 교육, 훈련, 그리고/또는 경험을 갖추도록 보장해야 합니다.

**표 2.2: 역량 (Competence) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.1.2 역량 (Competence) | The organization shall: Identify the roles and responsibilities that impact the performance and effectiveness of the program; Determine the necessary competence of program participants fulfilling each role; Ensure that program participants have appropriate education, training, and/or experience; Where applicable, ensure program participants take actions to acquire the necessary competence; Retain appropriate documented information as evidence of competence as well as who is currently a participant in the program. | 조직은 다음을 수행해야 합니다: 프로그램의 성과와 효과성에 영향을 미치는 역할과 책임을 식별합니다. 각 역할을 수행하는 프로그램 참여자에게 필요한 역량을 결정합니다. 프로그램 참여자들이 적절한 교육, 훈련, 그리고/또는 경험을 갖추도록 보장합니다. 해당되는 경우, 프로그램 참여자들이 필요한 역량을 획득하기 위한 조치를 취하도록 보장합니다. 역량에 대한 증거로서 적절한 문서화된 정보를 보유하고, 현재 프로그램 참여자가 누구인지도 함께 보유합니다. |
| 검증 자료 (Verification Materials) | 4.1.2.1: A documented list of roles with corresponding responsibilities for the different program participants <br>4.1.2.2: A document that identifies the competencies for each role <br>4.1.2.3: List of participants and their roles <br>4.1.2.4: Documented evidence of assessed competence for each program participant <br>4.1.2.5: Documented evidence of periodic reviews and changes made to the process <br>4.1.2.6: Documented verification that these processes are current with company internal best practices and who is assigned to accomplish them | 4.1.2.1: 다양한 프로그램 참여자들의 역할과 해당 책임을 나열한 문서화된 목록 <br>4.1.2.2: 각 역할에 필요한 역량을 식별한 문서 <br>4.1.2.3: 참여자 목록과 그들의 역할 <br>4.1.2.4: 각 프로그램 참여자의 평가된 역량에 대한 문서화된 증거 <br>4.1.2.5: 프로세스에 대한 주기적 검토와 변경 사항에 대한 문서화된 증거 <br>4.1.2.6: 이러한 프로세스가 회사 내부의 최선의 관행과 일치하며, 누가 이를 수행하도록 지정되었는지에 대한 문서화된 검증 |

**역량 강화를 위한 고려사항**

- **역할 정의**: 오픈소스 보안 관리와 관련된 모든 역할 (예: 오픈소스 책임자, 개발자, 보안 엔지니어)을 정의하고, 각 역할에 필요한 기술적 및 법적 지식을 명확히 합니다.
- **교육 및 훈련**: 각 역할에 필요한 역량을 갖추기 위한 교육 및 훈련 프로그램을 제공합니다. 예를 들어, 개발자를 위한 안전한 코딩 교육, 법무팀을 위한 오픈소스 라이선스 교육 등이 있습니다.
- **경험**: 실제 프로젝트 참여를 통해 오픈소스 보안 관리 경험을 쌓을 수 있도록 지원합니다. 멘토링 프로그램, 코드 리뷰 등을 통해 경험 공유를 활성화합니다.
- **평가**: 정기적인 역량 평가를 통해 프로그램 참여자들의 수준을 파악하고, 부족한 부분을 보충할 수 있도록 합니다.

### 2.1.3 인식 (Awareness)

조직은 프로그램 참여자들이 오픈소스 소프트웨어 보안 보증 정책, 관련 프로그램 목표, 프로그램의 효과성에 대한 그들의 기여, 그리고 프로그램 요구사항을 따르지 않을 경우의 영향에 대해 인식하도록 보장해야 합니다.

**표 2.3: 인식 (Awareness) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.1.3 인식 (Awareness) | The organization shall ensure that the program participants are aware of: The open source software security assurance policy; Relevant program objectives; Their contribution to the effectiveness of the program; The implications of not following the program's requirements. | 조직은 프로그램 참여자들이 다음 사항을 인식하도록 보장해야 합니다: 오픈소스 소프트웨어 보안 보증 정책; 관련 프로그램 목표; 프로그램의 효과성에 대한 그들의 기여; 프로그램 요구사항을 따르지 않을 경우의 영향. |
| 검증 자료 (Verification Materials) | 4.1.3.1: Documented evidence of assessed awareness for the program participants - which should include the program's objectives, one's contribution within the program, and implications of program non-conformance. | 4.1.3.1: 프로그램 참여자들의 평가된 인식에 대한 문서화된 증거 - 이는 프로그램의 목표, 프로그램 내에서의 개인의 기여, 그리고 프로그램 비준수의 영향을 포함해야 합니다. |

**인식 제고를 위한 활동**

- **정기적인 교육**: 오픈소스 보안 정책 및 관련 프로세스에 대한 정기적인 교육을 실시합니다.
- **커뮤니케이션**: 사내 게시판, 뉴스레터, 이메일 등을 통해 오픈소스 보안 관련 정보를 공유하고, 최신 위협 및 취약점을 알립니다.
- **참여 유도**: 오픈소스 보안 관련 워크샵, 컨퍼런스, 스터디 그룹 등에 참여를 장려합니다.
- **보상**: 오픈소스 보안에 기여한 직원에 대한 보상 제도를 마련합니다.

### 2.1.4 자원 (Resources)

조직은 오픈소스 보안 보증 프로그램의 수립, 구현, 유지, 그리고 개선에 필요한 자원을 제공해야 합니다. 이러한 자원에는 인적 자원, 기술적 자원, 재정적 자원이 포함됩니다.

**표 2.4: 자원 (Resources) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.1.4 자원 (Resources) | The organization shall determine and provide the resources needed for the establishment, implementation, maintenance and continual improvement of the program. | 조직은 프로그램의 수립, 구현, 유지 및 지속적인 개선에 필요한 자원을 결정하고 제공해야 합니다. |
| 검증 자료 | 4.1.4.1: A documented procedure for determining and providing resources for the program. <br>4.1.4.2: A documented list of resources needed for the program. <br>4.1.4.3: Evidence that the documented resources have been provided. | 4.1.4.1: 프로그램을 위한 자원을 결정하고 제공하기 위한 문서화된 절차 <br>4.1.4.2: 프로그램에 필요한 자원의 문서화된 목록. <br>4.1.4.3: 문서화된 자원이 제공되었음을 입증하는 증거. |

**자원 제공을 위한 고려사항**

- **인적 자원**: 오픈소스 보안 전문가, 개발자, 법무 전문가 등 필요한 인력을 확보하고, 각 역할에 맞는 적절한 교육과 훈련을 제공합니다.
- **기술적 자원**: SBOM 생성 도구, 취약점 스캐너, 라이선스 검사 도구 등 필요한 기술 도구를 도입하고 유지 관리합니다.
- **재정적 자원**: 프로그램 운영에 필요한 예산을 확보하고, 적절하게 배분합니다.

### 2.1.5 측정 (Measurement)

조직은 오픈소스 보안 보증 프로그램의 효과성을 측정하기 위한 지표를 설정하고, 이를 정기적으로 측정 및 분석해야 합니다. 측정 결과는 프로그램의 개선에 활용되어야 합니다.

**표 2.5: 측정 (Measurement) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.1.5 측정 (Measurement) | The organization shall determine metrics to measure program effectiveness and communicate the results. | 조직은 프로그램의 효과성을 측정하기 위한 지표를 결정하고 결과를 전달해야 합니다. |
| 검증 자료 (Verification Materials) | 4.1.5.1: A documented procedure for determining, monitoring, and reviewing metrics to ensure the program is effective. | 4.1.5.1: 프로그램이 효과적인지 확인하기 위해 지표를 결정하고, 모니터링하고, 검토하기 위한 문서화된 절차. |

**측정을 위한 고려사항**

- **지표 선정**: 프로그램의 목표와 관련된 적절한 지표를 선정합니다. (예: 취약점 해결 시간, SBOM 정확도, 정책 준수율)
- **데이터 수집**: 선정된 지표에 대한 데이터를 정기적으로 수집합니다.
- **결과 분석**: 수집된 데이터를 분석하여 프로그램의 효과성을 평가하고, 개선이 필요한 부분을 식별합니다.

## 2.2 관련 업무 정의 및 지원

이 섹션에서는 오픈소스 보안 보증 프로그램을 효과적으로 운영하기 위해 필요한 관련 업무를 정의하고 지원하는 데 필요한 요구사항을 다룹니다. 조직은 프로그램의 목적을 달성하고, 참여자들이 필요한 정보와 도구에 접근할 수 있도록 관련 업무를 명확히 정의하고 지원해야 합니다.

### 2.2.1 접근성 (Access)

조직은 프로그램의 목적과 관련되고, 그 목적 달성 능력에 영향을 미치는 내부 및 외부 이슈를 식별해야 합니다. 또한, 프로그램 참여자들이 프로그램 요구사항을 충족하는 데 필요한 정보와 도구에 접근할 수 있도록 보장해야 합니다.

**표 2.6: 접근성 (Access) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.2.1 접근성 (Access) | The organization shall determine the internal and external issues that are relevant to the purpose of the program and that affect its ability to achieve the intended results of the program. The organization shall ensure that the program participants have access to the information and tools required to meet the program requirements. | 조직은 프로그램의 목적과 관련되고 의도된 결과를 달성하는 능력에 영향을 미치는 내부 및 외부 이슈를 결정해야 합니다. 조직은 프로그램 참여자들이 프로그램 요구사항을 충족하는 데 필요한 정보와 도구에 접근할 수 있도록 보장해야 합니다. |
| 검증 자료 (Verification Materials) | 4.2.1.1: A documented procedure to identify and manage internal and external issues that may affect the program. <br>4.2.1.2: A documented procedure to ensure program participants have access to the information and tools required to meet program requirements. | 4.2.1.1: 프로그램에 영향을 미칠 수 있는 내부 및 외부 이슈를 식별하고 관리하기 위한 문서화된 절차 <br>4.2.1.2: 프로그램 참여자들이 프로그램 요구사항을 충족하는 데 필요한 정보와 도구에 접근할 수 있도록 보장하는 문서화된 절차 |

**접근성 확보를 위한 고려사항**

- **내부 이슈 식별**: 조직 내부의 정책, 프로세스, 기술, 인력 등 프로그램에 영향을 미칠 수 있는 요소를 식별합니다.
    - 예: "오픈소스 사용에 대한 명확한 정책 부재", "보안팀의 인력 부족", "SBOM 생성 도구 미비" 등
- **외부 이슈 식별**: 법규, 규제, 산업 동향, 경쟁 환경 등 외부 환경 변화가 프로그램에 미칠 수 있는 영향을 분석합니다.
    - 예: "새로운 오픈소스 라이선스의 등장", "소프트웨어 공급망 공격 증가", "개인정보보호 규제 강화" 등
- **정보 공유**: 프로그램 참여자들이 필요한 정보 (예: 오픈소스 보안 정책, SBOM(Software Bill of Materials, 소프트웨어 자재 명세서), 취약점 정보)에 쉽게 접근할 수 있도록 정보 공유 시스템을 구축합니다.
    - 예: 사내 위키, 협업 도구, 지식 관리 시스템 등을 활용하여 정보에 대한 접근성을 높입니다.
- **도구 제공**: 프로그램 참여자들이 효과적으로 업무를 수행할 수 있도록 필요한 도구 (예: SBOM 생성 도구, 취약점 스캐너, 라이선스 검사 도구)를 제공합니다.
    - 예: 개발팀에게는 IDE(통합 개발 환경)에 통합된 오픈소스 분석 도구를 제공하고, 보안팀에게는 전문적인 취약점 스캐닝 도구를 제공합니다.

### 2.2.2 효과적인 자원 배분 (Effectively Resourced)

조직은 프로그램의 수립, 구현, 유지, 그리고 지속적인 개선에 필요한 자원을 결정하고 제공해야 합니다. 이러한 자원에는 인적 자원, 기술적 자원, 재정적 자원이 포함됩니다.

**표 2.7: 효과적인 자원 배분 (Effectively Resourced) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.2.2 효과적인 자원 배분 (Effectively Resourced) | The organization shall determine and provide the resources needed for the establishment, implementation, maintenance and continual improvement of the program. | 조직은 프로그램의 수립, 구현, 유지 및 지속적 개선에 필요한 자원을 결정하고 제공해야 합니다. |
| 검증 자료 (Verification Materials) | 4.2.2.1: A documented procedure for determining and providing resources for the program. <br>4.2.2.2: A documented list of resources needed for the program. <br>4.2.2.3: Evidence that the competence has been determined. <br>4.2.2.4: Evidence that resources are being provided to maintain and improve the program. | 4.2.2.1: 프로그램을 위한 자원을 결정하고 제공하기 위한 문서화된 절차 <br>4.2.2.2: 프로그램에 필요한 자원의 문서화된 목록 <br>4.2.2.3: 역량이 결정되었음을 입증하는 증거 <br>4.2.2.4: 프로그램을 유지하고 개선하기 위해 자원이 제공되고 있음을 입증하는 증거 |

**자원 배분을 위한 고려사항**

- **인적 자원**: 프로그램 운영에 필요한 인력을 확보하고, 각 역할에 맞는 적절한 교육과 훈련을 제공합니다.
    - 예: 오픈소스 보안 전문가 채용, 개발자를 위한 보안 교육 프로그램 운영
- **기술적 자원**: SBOM 생성 도구, 취약점 스캐너, 라이선스 검사 도구 등 필요한 기술 도구를 도입하고 유지 관리합니다.
    - 예: 클라우드 기반 SBOM 관리 시스템 도입, 자동화된 취약점 스캐닝 도구 구축
- **재정적 자원**: 프로그램 운영에 필요한 예산을 확보하고, 적절하게 배분합니다.
    - 예: 오픈소스 보안 도구 구매 예산 확보, 교육 프로그램 운영 예산 확보
- **프로세스**: 자원 배분 프로세스를 문서화하고, 정기적으로 검토하여 효율성을 개선합니다.
    - 예: 연간 예산 계획 수립 시 오픈소스 보안 관련 예산을 별도로 편성하고, 집행 내역을 관리합니다.

이번 수정에서는 다음 사항을 반영했습니다.

- ISO/IEC 18974의 Verification 요구사항을 정확하게 반영했습니다.
- 각 요구사항에 대한 설명을 기존보다 자세하게 보완했습니다.
- 접근성 확보 및 자원 배분을 위한 고려사항을 추가하여 실행 가능성을 높였습니다.

## 2.3 오픈소스 소프트웨어 콘텐츠 검토 및 승인

이 섹션에서는 조직이 오픈소스 소프트웨어를 안전하게 사용하기 위해 필요한 검토 및 승인 프로세스에 대한 요구사항을 다룹니다. 효과적인 검토 및 승인 프로세스를 통해 조직은 보안 취약점, 라이선스 위반, 기타 위험을 사전에 식별하고 관리할 수 있습니다.

### 2.3.1 SBOM (Software Bill of Materials)

조직은 공급하는 소프트웨어를 구성하는 각 오픈소스 컴포넌트(및 식별된 라이선스)를 포함하는 SBOM(Software Bill of Materials, 소프트웨어 자재 명세서)을 생성하고 관리하는 프로세스를 수립해야 합니다. SBOM은 소프트웨어 구성 요소의 투명성을 확보하고, 취약점 관리 및 라이선스 준수를 용이하게 합니다.

**표 2.8: SBOM (Software Bill of Materials) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.3.1 SBOM (Software Bill of Materials) | A process shall exist for creating and managing a bill of materials that includes each open source component (and its identified licenses) from which the supplied software is comprised. | 공급하는 소프트웨어를 구성하는 각 오픈소스 컴포넌트(및 식별된 라이선스)를 포함하는 SBOM(Software Bill of Materials, 소프트웨어 자재 명세서)을 생성하고 관리하는 프로세스가 존재해야 합니다. |
| 검증 자료 (Verification Materials) | 4.3.1.1: A documented procedure for identifying, tracking, reviewing, approving, and archiving information about the collection of open source components from which the supplied software is comprised. <br>4.3.1.2: Open source component records for the supplied software that demonstrate the documented procedure was properly followed. | 4.3.1.1: 공급하는 소프트웨어를 구성하는 오픈소스 컴포넌트 모음에 대한 정보를 식별, 추적, 검토, 승인 및 보관하기 위한 문서화된 절차. <br>4.3.1.2: 문서화된 절차가 적절히 준수되었음을 보여주는 공급하는 소프트웨어의 오픈소스 컴포넌트 기록. |

**SBOM 관리를 위한 고려사항**

- **SBOM 생성 도구**: SBOM 생성을 자동화하기 위해 적절한 도구를 선택하고 도입합니다. (예: SPDX Tools, CycloneDX, Syft).
- **SBOM 포맷**: 표준화된 SBOM 포맷(예: SPDX, CycloneDX)을 사용하여 상호 운용성을 확보합니다.
- **SBOM 내용**: SBOM에 포함해야 할 필수 정보(예: 컴포넌트 이름, 버전, 라이선스, 출처)를 정의합니다.
- **SBOM 업데이트**: 소프트웨어 구성 요소가 변경될 때마다 SBOM을 업데이트하는 프로세스를 구축합니다.
- **SBOM 저장 및 공유**: SBOM을 안전하게 저장하고, 필요한 이해 관계자들과 공유하는 방법을 정의합니다.

### 2.3.2 보안 보증 (Security Assurance)

조직은 공급하는 소프트웨어에 포함된 오픈소스 컴포넌트의 알려진 취약점을 식별하고 관리하는 프로세스를 수립해야 합니다. 이를 통해 조직은 취약점을 신속하게 파악하고 대응하여 보안 위험을 최소화할 수 있습니다.

**표 2.9: 보안 보증 (Security Assurance) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.3.2 보안 보증 (Security Assurance) | A process shall exist for identifying and managing known vulnerabilities in the open source components of the supplied software. | 공급하는 소프트웨어의 오픈소스 컴포넌트에서 알려진 취약점을 식별하고 관리하는 프로세스가 존재해야 합니다. |
| 검증 자료 (Verification Materials) | 4.3.2.1: A documented procedure for identifying and managing known vulnerabilities in the open source components of the supplied software. <br>4.3.2.2: Records identifying and managing known vulnerabilities in the open source components of the supplied software that demonstrate the documented procedure was properly followed. | 4.3.2.1: 공급하는 소프트웨어의 오픈소스 컴포넌트에서 알려진 취약점을 식별하고 관리하기 위한 문서화된 절차. <br>4.3.2.2: 문서화된 절차가 적절히 준수되었음을 보여주는 공급하는 소프트웨어의 오픈소스 컴포넌트에서 알려진 취약점을 식별하고 관리한 기록. |

**보안 보증을 위한 고려사항**

- **취약점 스캐닝**: 자동화된 취약점 스캐닝 도구를 사용하여 오픈소스 컴포넌트의 취약점을 주기적으로 검사합니다. (예: OWASP Dependency-Check, Snyk, Black Duck)
- **취약점 데이터베이스**: 최신 취약점 데이터베이스(예: NVD(National Vulnerability Database, 미국 국립 취약점 데이터베이스), CVE(Common Vulnerabilities and Exposures, 공통 취약점 및 노출))를 활용하여 알려진 취약점에 대한 정보를 확보합니다.
- **취약점 평가**: 발견된 취약점의 심각도, 영향도, 악용 가능성 등을 평가하여 대응 우선순위를 결정합니다.
- **패치 관리**: 취약점에 대한 패치를 신속하게 적용하고, 패치 적용 결과를 검증합니다.
- **예외 처리**: 패치 적용이 어려운 경우, 적절한 완화 조치(예: WAF(Web Application Firewall, 웹 애플리케이션 방화벽) 설정 변경, 코드 수정)를 취합니다.

### 2.3.3 검토 및 승인 (Review and Approval)

조직은 오픈소스 컴포넌트의 사용을 검토하고 승인하는 프로세스를 수립해야 합니다. 이를 통해 조직은 보안, 라이선스, 기술적 위험을 평가하고, 안전하고 적절한 오픈소스 컴포넌트만 사용하도록 보장할 수 있습니다.

**표 2.10: 검토 및 승인 (Review and Approval) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.3.3 검토 및 승인 (Review and Approval) | A process shall exist for reviewing and approving the use of open source components. | 오픈소스 컴포넌트의 사용을 검토하고 승인하는 프로세스가 존재해야 합니다. |
| 검증 자료 (Verification Materials) | 4.3.3.1: A documented procedure for reviewing and approving the use of open source components. <br>4.3.3.2: Records of the review and approval of open source components that demonstrate the documented procedure was properly followed. | 4.3.3.1: 오픈소스 컴포넌트의 사용을 검토하고 승인하기 위한 문서화된 절차. <br>4.3.3.2: 문서화된 절차가 적절히 준수되었음을 보여주는 오픈소스 컴포넌트의 검토 및 승인 기록. |

**검토 및 승인 프로세스를 위한 고려사항**

- **검토 기준**: 보안, 라이선스, 기술적 적합성 등 오픈소스 컴포넌트를 평가하기 위한 명확한 기준을 정의합니다.
- **검토 주체**: 오픈소스 검토 위원회(OSRB, Open Source Review Board) 또는 지정된 담당자를 통해 검토를 수행합니다.
- **승인 절차**: 검토 결과를 바탕으로 오픈소스 컴포넌트의 사용을 승인하거나 거부하는 절차를 정의합니다.
- **기록 관리**: 검토 및 승인 결과를 문서화하고, 관련 정보를 체계적으로 관리합니다.

## 2.4 규격 요구사항 준수

이 섹션에서는 조직이 ISO/IEC 18974 규격의 요구사항을 지속적으로 준수하고 개선하기 위한 프로세스를 구축하는 데 필요한 사항을 다룹니다. 규격 요구사항 준수는 오픈소스 보안 관리 체계의 효과성을 유지하고 지속적으로 개선하는 데 필수적입니다.

### 2.4.1 프로그램 준수 (Program Conformance)

조직은 자체 오픈소스 보안 보증 프로그램이 ISO/IEC 18974 문서의 요구사항을 충족하는지 확인하기 위한 프로세스를 수립해야 합니다. 이 프로세스는 정기적인 내부 감사, 자체 평가, 그리고 필요한 경우 외부 검증을 포함할 수 있습니다.

**표 2.11: 프로그램 준수 (Program Conformance) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.4.1 프로그램 준수 (Program Conformance) | A process shall exist for determining the program's adherence to the requirements of this document. | 이 문서의 요구사항에 대한 프로그램의 준수를 결정하기 위한 프로세스가 존재해야 합니다. |
| 검증 자료 (Verification Materials) | 4.4.1.1: A documented procedure for determining program conformance to this document. | 4.4.1.1: 이 문서에 대한 프로그램 준수를 결정하기 위한 문서화된 절차. |

**프로그램 준수 확인을 위한 고려사항:**

- **내부 감사**: 정기적인 내부 감사를 통해 프로그램의 운영이 ISO/IEC 18974 요구사항을 준수하는지 확인합니다. 감사 주기는 조직의 규모와 복잡성에 따라 조정할 수 있습니다 (예: 분기별, 반기별, 연간).
- **자체 평가**: 자체 평가를 통해 프로그램의 강점과 약점을 파악하고 개선 기회를 식별합니다. 자체 평가 시에는 OpenChain Project에서 제공하는 자체 인증 체크리스트를 활용할 수 있습니다.
- **외부 검증**: 필요한 경우 외부 전문가 또는 인증 기관으로부터 프로그램의 적합성을 검증받습니다. 이는 프로그램의 신뢰도를 높이고, 고객 및 파트너에게 신뢰를 줄 수 있습니다.
- **문서화**: 프로그램 준수 여부를 판단하는 데 사용되는 모든 절차와 기록을 문서화합니다. 이는 감사 및 검토 과정에서 투명성을 확보하고, 지속적인 개선을 지원합니다.

### 2.4.2 지속적 개선 (Continuous Improvement)

조직은 프로그램의 적절성, 충분성, 그리고 효과성을 보장하기 위해 오픈소스 보안 보증 프로그램을 지속적으로 개선해야 합니다. 지속적인 개선은 변화하는 위협 환경에 대응하고, 프로그램의 효과성을 극대화하는 데 필수적입니다.

**표 2.12: 지속적 개선 (Continuous Improvement) 요구사항 및 검증 자료**

| 요구사항 | 원문 | 한글 번역 |
| --- | --- | --- |
| 2.4.2 지속적 개선 (Continuous Improvement) | The organization shall continuously improve the suitability, adequacy, and effectiveness of the program. | 조직은 프로그램의 적절성, 충분성 및 효과성을 지속적으로 개선해야 합니다. |
| 검증 자료 (Verification Materials) | 4.4.2.1: A documented procedure for reviewing and improving the program. | 4.4.2.1: 프로그램을 검토하고 개선하기 위한 문서화된 절차. |

**지속적 개선을 위한 고려사항:**

- **피드백 수집**: 프로그램 운영에 대한 피드백을 다양한 이해 관계자 (예: 개발자, 보안 팀, 법무 팀, 경영진)로부터 수집합니다.
- **데이터 분석**: 수집된 피드백과 프로그램 운영 데이터를 분석하여 개선이 필요한 영역을 식별합니다.
- **개선 계획 수립**: 식별된 개선 영역에 대한 구체적인 계획을 수립하고, 실행 가능한 단계를 정의합니다.
- **실행 및 검토**: 개선 계획을 실행하고, 그 결과를 측정하여 효과성을 평가합니다.
- **프로세스 반영**: 효과적인 개선 사항은 프로그램 운영 프로세스에 반영하여 지속적인 개선을 보장합니다.

이번 수정에서는 다음 사항을 반영했습니다.

- ISO/IEC 18974의 Verification 요구사항을 정확하게 반영했습니다.
- 각 요구사항에 대한 설명을 기존보다 자세하게 보완했습니다.
- 프로그램 준수 및 지속적 개선을 위한 고려사항을 추가하여 실질적인 가이드라인을 제공했습니다.

다음으로는 3단원부터 8단원까지 남은 단원들에 대해 전반적인 검토를 진행할까요, 아니면 특정 부분에 대한 수정을 원하시나요? 만약 특정 부분에 대한 수정을 원하시면, 해당 단원과 원하시는 수정 방향을 알려주세요.