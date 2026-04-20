---
title: "AI SBOM"
weight: 20
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "AI SBOM", "SPDX 3.0", "AI 문서화"]
description: >
  ISO/IEC 42001 §7.5(문서화된 정보)와 §8.5(AI 시스템 생애주기)에 따른
  AI SBOM(AI System Bill of Materials) 구성 방법과 생성 도구를 안내한다.
---

## 1. AI SBOM이란?

**AI SBOM(AI System Bill of Materials)** 은 AI 시스템을 구성하는 모든 요소의 목록과
그 출처·라이선스를 문서화한 것이다. 소프트웨어 SBOM(ISO/IEC 5230 §3.3.1)의 개념을
AI 시스템으로 확장한 것으로, ISO/IEC 42001 §7.5(문서화된 정보) 요구사항의 핵심 산출물이다.

### AI SBOM이 필요한 이유: 투명성과 규제 대응

AI SBOM은 **AI 시스템의 투명성과 설명 가능성**을 확보하는 핵심 수단이다.
ISO/IEC 42001 Appendix C.2.11은 투명성과 설명 가능성을 AI 관리 시스템의 핵심 목표로 명시한다.

| 요구 주체 | 근거 | AI SBOM 역할 |
|---------|------|------------|
| **ISO/IEC 42001** | Appendix C.2.11 (투명성·설명 가능성) | AI 시스템 구성 투명성 확보 |
| **EU AI Act** | 고위험 AI 시스템 기술 문서 요건 | 학습 데이터·모델 출처 명시 |
| **EU Cyber Resilience Act(CRA)** | AI 제품의 투명성 의무 | 컴포넌트 목록 및 취약점 추적 |
| **OpenChain AI Work Group** | AI SBOM Compliance Guide | 공급망 내 AI SBOM 표준 절차 |

{{% alert title="ISO/IEC 42003과 AI SBOM" color="info" %}}
ISO/IEC 42001의 구현 가이드인 **ISO/IEC 42003**(개발 중)에 AI SBOM 관련 구체적 요구사항이
포함될 예정이다. OpenChain AI Work Group은 AI SBOM 가이드를 42003의
§6.2(AI 목표)와 Appendix C.2.11(투명성·설명 가능성)에 반영하는 것을 추진 중이다.
{{% /alert %}}

### AI SBOM vs 소프트웨어 SBOM

| 비교 항목 | 소프트웨어 SBOM | AI SBOM |
|---------|---------------|---------|
| **포함 대상** | 라이브러리, 패키지, 실행 파일 | 프레임워크 + 모델 + 데이터셋 |
| **라이선스 유형** | SPDX 표준 라이선스 | SPDX + AI 커스텀 라이선스 (Llama, Gemma ToU 등) |
| **표준 형식** | SPDX 2.x, CycloneDX 1.4 | SPDX 3.0 AI 프로파일, CycloneDX 1.6 |
| **추가 정보** | 없음 | 모델 파라미터 수, 학습 데이터 출처, 모델 목적 등 |
| **관련 ISO 표준** | ISO/IEC 5230 §3.3.1 | ISO/IEC 42001 §7.5 |

---

## 2. AI SBOM 구성 요소

```
AI SBOM
  │
  ├── 1. AI 프레임워크 · 라이브러리
  │       (일반 소프트웨어 SBOM과 동일한 항목)
  │       - name, version, license, PURL, hash
  │
  ├── 2. 사전 훈련 모델 (Pre-trained Model)
  │       - name, version, license
  │       - primaryPurpose (inference / training / fine-tuning / evaluation)
  │       - modelCard URL (모델 카드 링크)
  │       - baseModel (파인튜닝 시 원본 모델)
  │
  ├── 3. 학습 데이터셋
  │       - name, version, license
  │       - dataCollectionProcess (수집 방법)
  │       - dataType (text / image / audio / etc.)
  │       - knownBias (알려진 편향, 있는 경우)
  │
  ├── 4. 파인튜닝 데이터 (해당 시)
  │       - name, license, source
  │       - dataType
  │
  └── 5. Fact Sheet (AI 시스템 카드) ★
          - 편향(bias) 정보 및 한계 사항
          - 데이터 출처 및 데이터 가용성
          - 모델 성능 및 평가 결과 요약
          - 의도된 사용 목적 및 금지 사용 목적
          - 안전성·보안 관련 알려진 이슈
```

{{% alert title="Fact Sheet란?" color="info" %}}
**Fact Sheet**(또는 모델 카드 확장판)는 AI 시스템의 투명성·설명 가능성을 제공하는 문서다.
ISO/IEC 42001 Appendix C.2.11과 EU AI Act의 고위험 AI 기술 문서 요건을 충족하는 핵심 수단이다.
OpenChain AI Work Group은 이 Fact Sheet 정보를 AI SBOM의 표준 구성 요소로 포함하는 것을 추진 중이다.
{{% /alert %}}

---

## 3. SPDX 3.0 AI 프로파일 활용

[SPDX 3.0](https://spdx.github.io/spdx-spec/v3.0/)은 AI 시스템을 위한 **AI 프로파일**을 새롭게 포함한다.
OpenChain Korea Work Group의 AI Work Group이 이 형식을 기반으로 AI SBOM 가이드를 개발했다.

### AI SBOM SPDX 3.0 예시

```yaml
spdxVersion: SPDX-3.0
SPDXID: SPDXRef-DOCUMENT
name: "MyAI-Service AI SBOM"
dataLicense: CC0-1.0
created: "2026-04-01T00:00:00Z"
createdBy:
  - type: Tool
    identifier: "cdxgen-10.0"

packages:
  # 1. AI 프레임워크
  - SPDXID: SPDXRef-pytorch
    name: torch
    versionInfo: "2.2.0"
    supplier: "Organization: Meta AI"
    downloadLocation: "https://pypi.org/project/torch/2.2.0/"
    licenseConcluded: BSD-3-Clause
    primaryPurpose: library

  - SPDXID: SPDXRef-transformers
    name: transformers
    versionInfo: "4.40.0"
    supplier: "Organization: Hugging Face"
    downloadLocation: "https://pypi.org/project/transformers/4.40.0/"
    licenseConcluded: Apache-2.0
    primaryPurpose: library

  # 2. 사전 훈련 모델
  - SPDXID: SPDXRef-llama3-8b
    name: meta-llama/Llama-3.1-8B-Instruct
    versionInfo: "3.1"
    supplier: "Organization: Meta AI"
    downloadLocation: "https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct"
    licenseConcluded: LicenseRef-Meta-Llama-Community-License
    primaryPurpose: inference
    # AI 프로파일 확장 필드
    modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct"
    hyperparameter:
      contextWindow: 131072

  # 3. 파인튜닝 데이터셋
  - SPDXID: SPDXRef-dataset-alpaca-korean
    name: beomi/KoAlpaca-v1.1a
    versionInfo: "1.1a"
    downloadLocation: "https://huggingface.co/datasets/beomi/KoAlpaca-v1.1a"
    licenseConcluded: CC-BY-NC-4.0
    primaryPurpose: trainData
    dataCollectionProcess: "Korean instruction-following dataset"

relationships:
  - spdxElementId: SPDXRef-llama3-8b
    relationshipType: TRAINED_ON
    relatedSpdxElement: SPDXRef-dataset-alpaca-korean
```

{{% alert title="CC-BY-NC 데이터셋 주의" color="warning" %}}
위 예시의 `beomi/KoAlpaca-v1.1a` 데이터셋은 **CC-BY-NC 4.0** 라이선스로,
**비상업적 목적**에만 사용 가능하다. 상업 서비스에 이 데이터셋으로 파인튜닝한 모델을
사용하고 있다면 즉시 법무팀과 협의해야 한다.

이 예시는 AI SBOM 형식 설명을 위한 것이며, 상업 서비스에서는 Apache 2.0, MIT,
CC-BY 4.0, CC0 등 상업적 사용이 가능한 라이선스의 데이터셋을 사용한다.
{{% /alert %}}

---

## 4. AI SBOM 생성 도구

### 4.1 cdxgen (CycloneDX 형식)

cdxgen은 Python AI 프로젝트의 의존성을 분석하여 CycloneDX 형식의 SBOM을 생성한다.
AI 특화 필드는 별도로 추가해야 한다.

```bash
# Python AI 프로젝트 SBOM 생성
cdxgen -t python ./my-ai-project -o ai-sbom.json

# requirements.txt 기반 생성
cdxgen -t pypi -r requirements.txt -o ai-sbom.json
```

도구 가이드: [cdxgen 사용 가이드](../../../tools/5-cdxgen/)

### 4.2 Syft (컨테이너 이미지 분석)

AI 서비스를 컨테이너로 배포하는 경우 Syft로 컨테이너 이미지 전체의 SBOM을 생성한다.

```bash
# AI 서비스 컨테이너 이미지 SBOM 생성
syft my-ai-service:latest -o spdx-json=ai-container-sbom.json
```

도구 가이드: [Syft 사용 가이드](../../../tools/6-syft/)

### 4.3 Dependency-Track (AI SBOM 관리 및 취약점 추적)

생성된 AI SBOM을 Dependency-Track에 업로드하면 지속적으로 취약점을 모니터링할 수 있다.

```bash
# Dependency-Track에 AI SBOM 업로드
curl -X "POST" "http://dtrack:8080/api/v1/bom" \
  -H "X-Api-Key: ${DTRACK_API_KEY}" \
  -F "bom=@ai-sbom.json" \
  -F "projectName=MyAI-Service" \
  -F "projectVersion=1.0.0"
```

도구 가이드: [Dependency-Track 사용 가이드](../../../tools/7-dependency-track/)

---

## 5. AI SBOM 운영 절차

### AI SBOM 수명주기 관리

```
AI 시스템 개발 착수
  └─ AI SBOM 초안 작성 (프레임워크·모델 확정 시)
       └─ 개발 중 컴포넌트 추가 시 즉시 갱신
            └─ 배포 전 AI SBOM 최종 검토
                 └─ 배포 시 AI SBOM 보관 (버전별)
                      └─ 운영 중 신규 취약점 발견 시 AI SBOM 연계 대응
                           └─ 모델 라이선스 변경 모니터링 → 필요시 AI SBOM 갱신
```

**체크포인트**:
- [ ] 모든 배포 버전의 AI SBOM이 생성·보관되어 있는가?
- [ ] AI SBOM에 프레임워크·모델·데이터셋이 모두 포함되어 있는가?
- [ ] 각 컴포넌트의 라이선스가 정확하게 기록되어 있는가?
- [ ] AI SBOM을 기반으로 취약점 모니터링이 수행되고 있는가?

---

## 6. AI Work Group 가이드 연계

OpenChain Korea Work Group의 AI Work Group은 **AI SBOM Compliance Guide**를 개발·발표했다.
이 가이드는 SPDX 3.0 AI 프로파일을 활용한 AI SBOM 작성 방법을 상세히 안내한다.

- AI Work Group 활동 및 가이드: [리소스 — AI Work Group](../../../../resource/AI_work_group/)

---

## 7. 참고

- [운영 섹션 홈](../)
- [ISO/IEC 5230 — §3.3.1 SBOM](../../../iso5230_guide/3-content-review/1-sbom/)
- [ISO/IEC 18974 — §4.3.1 SBOM](../../../iso18974_guide/3-content-review/1-sbom/)
- [도구 — cdxgen](../../../tools/5-cdxgen/)
- [도구 — Syft](../../../tools/6-syft/)
- [도구 — Dependency-Track](../../../tools/7-dependency-track/)
- [AI Work Group](../../../../resource/AI_work_group/)
