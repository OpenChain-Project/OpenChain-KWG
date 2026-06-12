---
title: "AI SBOM 컴플라이언스 가이드"
linkTitle: "AI SBOM 컴플라이언스 가이드"
weight: 35
type: docs
categories: ["guide"]
tags: ["AI SBOM", "OpenChain", "ISO/IEC 5230", "ISO/IEC 42001", "컴플라이언스"]
description: >
  OpenChain AI SBOM 컴플라이언스 가이드(Version 1.0)의 요구사항을 조항별로 풀어
  설명하는 기업 실천 가이드다.
---

이 가이드는 OpenChain AI Work Group이 펴낸 *AI System Bill of Materials — Compliance
Management Guide for the Supply Chain*(Version 1.0)의 각 요구사항을 하나씩 풀어서 설명한다.
각 조항이 요구하는 입증자료가 무엇인지, 어떻게 준수할 수 있는지, 바로 활용할 수 있는 샘플과
도구는 무엇인지 안내한다.

이 규격은 오픈소스 라이선스 컴플라이언스 표준 ISO/IEC 5230과 같은 구조(요구사항, 검증 자료,
근거)를 AI 공급망으로 옮긴 것이다. 코드뿐 아니라 모델 가중치, 학습 데이터셋, 모델 트리(Model
Tree)의 라이선스와 투명성 의무까지 컴플라이언스 대상으로 끌어들인다.

**Author : OpenChain Korea Work Group / [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)**

{{% alert title="이 가이드는 파일럿 단계입니다" color="warning" %}}
현재 요구사항 10개 가운데 정책(3.1), 라이선스 의무(3.5), AI SBOM(3.9) 세 조항을 먼저 작성했다.
나머지 조항은 같은 구조로 확장 중이다.
{{% /alert %}}

## 대상 독자

- AI 시스템을 개발하거나 공급망으로 주고받는 조직의 컴플라이언스 담당자
- 오픈소스 컴플라이언스(ISO/IEC 5230) 체계를 갖춘 뒤 AI 영역으로 넓히려는 실무자
- AI 모델과 데이터셋의 라이선스, 투명성 의무를 점검해야 하는 법무, 보안, 개발 담당자

## 이 가이드의 활용 방법

{{% alert title="OpenChain 규격과 KWG 실천 가이드의 역할 분담" color="success" %}}
OpenChain 규격은 "무엇을 입증해야 하는가"를 정의한다. 이 가이드는 "어떻게 달성하는가"를
채운다. 각 조항 페이지는 규격 요구사항을 옮겨 적는 데 그치지 않고, 실제 절차, 샘플, 도구,
그리고 도구만으로 메우기 어려운 부분을 처리하는 방법까지 안내한다.
{{% /alert %}}

{{% alert title="표기 규칙 — [규격 요구] vs [본 가이드 권고]" color="info" %}}
각 조항 페이지의 내용은 다음 두 가지로 구분된다.

- **[규격 요구]** — AI SBOM 컴플라이언스 가이드 본문이 `shall` 또는 검증 자료로 명시하는 사항.
- **[본 가이드 권고]** — 규격 본문에는 없으나 OpenChain Korea Work Group이 실무 경험과 모범
  사례, 다른 표준(ISO/IEC 5230, 42001 등)을 근거로 권장하는 사항. 채택 여부는 조직 재량이다.

입증자료 번호(예: `3.1.1`)와 함께 제시되는 활동은 **[규격 요구]**다. 자동화와 도구 활용,
인입 게이트 같은 본 가이드의 보강은 **[본 가이드 권고]**다.
{{% /alert %}}

{{% alert title="조항 번호에 관한 안내" color="info" %}}
규격 원문은 목차와 본문의 절 번호가 어긋나 있다(목차의 "3.9 AI content review and approval"
절이 본문에 없어 이후 번호가 한 칸씩 당겨짐). 이 불일치는 OpenChain AI Work Group에 보고했다.
이 가이드는 규격 **본문 기준 번호(3.1~3.10)**를 따른다.
{{% /alert %}}

## 단계별 구축 로드맵

요구사항 10개를 구축 우선순위에 따라 네 단계로 나눴다. 1단계에서 프로그램의 기반을 세우고,
2단계에서 AI 고유의 컴플라이언스 프로세스를 구축하며, 3단계에서 운영 체계를, 4단계에서
거버넌스를 갖춘다.

---

### Phase 1 — 프로그램 기반

**목표**: 프로그램의 범위를 정하고, 정책을 세우고, 역량과 인지를 확보한다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.4.1** | 프로그램 범위 진술서 | 작성 예정 |
| ☐ | **3.1.1** | 문서화된 AI SBOM 정책 | [3.1 →](./1-program-foundation/1-policy/) |
| ☐ | **3.1.2** | 정책 인지 절차 | [3.1 →](./1-program-foundation/1-policy/) |
| ☐ | **3.2.1~3.2.3** | 역할 목록, 역량 정의, 역량 평가 증거 | 작성 예정 |
| ☐ | **3.3.1** | 참여자 인지 평가 증거 | 작성 예정 |

---

### Phase 2 — AI 확장 프로세스

**목표**: 코드를 넘어 모델, 가중치, 데이터셋까지 다루는 AI 고유의 라이선스, 투명성, SBOM
프로세스를 구축한다. AI SBOM 가이드가 ISO/IEC 5230에서 가장 크게 확장된 영역이다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.5.1** | 라이선스 의무 검토·문서화 절차 | [3.5 →](./2-ai-extension/1-license-obligations/) |
| ☐ | **3.6.1** | 투명성 의무 검토 절차 | 작성 예정 |
| ☐ | **3.9.1** | AI SBOM 식별·추적·검토·승인·보관 절차 | [3.9 →](./2-ai-extension/3-ai-sbom/) |
| ☐ | **3.9.2** | 절차 준수 입증 기록 | [3.9 →](./2-ai-extension/3-ai-sbom/) |

---

### Phase 3 — 운영 체계

**목표**: 외부 컴플라이언스 문의에 대응하는 창구를 만들고, 프로그램에 책임과 자원을 배정한다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.7.1~3.7.2** | 공개 문의 수단, 내부 대응 절차 | 작성 예정 |
| ☐ | **3.8.1~3.8.5** | 역할 배정, 자원, 법률 전문성, 시정 절차 | 작성 예정 |

---

### Phase 4 — 거버넌스

**목표**: AI 시스템 수명주기 전반의 거버넌스 프레임워크를 갖추고, 신흥 AI 규제를 반영한다.

| 완료 | 입증자료 | 설명 | 상세 가이드 |
|:----:|---------|------|------------|
| ☐ | **3.10.1** | AI 거버넌스 프레임워크와 정기 검토 절차 | 작성 예정 |

---

## 전체 조항 체크리스트

AI SBOM 컴플라이언스 가이드 본문은 총 **10개 조항, 19개 입증자료 항목**으로 구성된다(본 가이드의
입증자료 번호 부여 기준).

| 조항 | 제목 | 입증자료 | 상세 |
|------|------|:---:|------|
| 3.1 | 정책 (Policy) | 2건 | [바로가기](./1-program-foundation/1-policy/) |
| 3.2 | 역량 (Competence) | 3건 | 작성 예정 |
| 3.3 | 인지 (Awareness) | 1건 | 작성 예정 |
| 3.4 | 프로그램 범위 (Program scope) | 1건 | 작성 예정 |
| 3.5 | 라이선스 의무 (License obligations) | 1건 | [바로가기](./2-ai-extension/1-license-obligations/) |
| 3.6 | 투명성 의무 (Transparency obligations) | 1건 | 작성 예정 |
| 3.7 | 접근 (Access) | 2건 | 작성 예정 |
| 3.8 | 효과적 자원 배분 (Effectively resourced) | 5건 | 작성 예정 |
| 3.9 | AI SBOM | 2건 | [바로가기](./2-ai-extension/3-ai-sbom/) |
| 3.10 | 거버넌스 (Governance) | 1건 | 작성 예정 |

**합계: 10개 조항 / 19개 입증자료 항목**

## 자동화 성숙도 맵

AI SBOM 컴플라이언스의 각 작업이 도구로 어디까지 자동화되는지를 정직하게 구분한 것이다.
"생성"은 이미 쓸 만한 오픈소스 도구가 있다. 반면 라이선스 의무의 해석과 비표준 라이선스 준수
추적은 아직 사람과 정책의 몫이다. 각 조항 페이지는 이 경계를 따라 "도구로 되는 것"과 "사람이
채워야 하는 것"을 구분해 안내한다.

| 작업 | 자동화 수준 | 대표 오픈소스 도구 |
|------|------------|-------------------|
| 코드·의존성 SBOM 생성 | 성숙 | cdxgen, Syft |
| AI 모델·메타데이터 BOM 생성 | 도구 등장 | OWASP AIBOM Generator, cdxgen `aibom` 모드 |
| 모델 바이너리 정적 분석 | 도구 등장 | Lab700x AI SBOM Scanner |
| LLM 추론 서버·AI 패키지 식별 | 성숙 | Trivy, Syft |
| SBOM 저장·취약점 모니터링 | 성숙 | Dependency-Track, SW360 |
| 라이선스 의무 해석·비표준 준수 추적 | 미성숙(사람·정책) | 도구 보완 단계 |

{{% alert title="생성은 도구로, 해석은 사람으로" color="info" %}}
AI SBOM을 자동으로 만들어 주는 도구는 이미 여럿 있다. 그러나 생성된 BOM의 라이선스 필드가
정확한지, 비표준 라이선스(RAIL 계열, Llama 커뮤니티 라이선스)의 행동 사용 제한을 지키는지,
다운스트림으로 의무가 전파되며 누락되지 않았는지는 도구가 자동으로 보장하지 못한다. 이 영역은
정책과 사람의 검토로 메운다. 자세한 방법은 [3.5 라이선스 의무](./2-ai-extension/1-license-obligations/)에서 다룬다.
{{% /alert %}}

## 다른 표준과의 관계

{{% alert title="ISO/IEC 5230 · 42001과의 관계" color="info" %}}
- **ISO/IEC 5230(라이선스 컴플라이언스)**: AI SBOM 가이드는 5230 방법론을 그대로 물려받았다.
  이미 5230 체계를 갖춘 조직은 정책, 역량, 자원 같은 프로그램 기반을 재사용하고 AI 확장 영역만
  보강하면 된다. [ISO/IEC 5230 준수 가이드](../iso5230_guide/) 참고.
- **ISO/IEC 42001(AI 관리 시스템)**: AI SBOM 형식(SPDX 3.0 AI Profile, CycloneDX ML-BOM)과 생성
  도구의 기술 상세는 [ISO/IEC 42001 가이드 — AI SBOM](../iso42001_guide/4-operation/2-ai-sbom/)에서
  다룬다. 이 가이드는 그 위에서 "컴플라이언스 프로그램을 어떻게 운영하는가"에 집중한다.
{{% /alert %}}

## 원본 규격

{{% pageinfo %}}
- **문서**: Artificial Intelligence System Bill of Materials — Compliance Management Guide for
  the Supply Chain, Version 1.0
- **발행**: OpenChain Project AI Work Group, 2025-10-20
- **라이선스**: Creative Commons Attribution 4.0 (CC-BY-4.0)
- **정식본**: OpenChain Reference-Material 저장소(`AI-SBOM-Compliance/en`)에 PDF와 마크다운으로 공개
- **소개**: [openchainproject.org](https://openchainproject.org/news/2025/10/20/welcoming-the-openchain-ai-system-bill-of-materials-compliance-guide)
{{% /pageinfo %}}
