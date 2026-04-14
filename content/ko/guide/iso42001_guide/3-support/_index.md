---
title: "3. 지원"
weight: 30
type: docs
categories: ["guide"]
tags: ["ISO/IEC 42001", "역량", "AI SBOM", "문서화", "지원"]
description: >
  ISO/IEC 42001 §7(지원) 요구사항 중 오픈소스 관리와 교차하는 내용을 설명한다.
  AI 오픈소스 관리 역량 수립과 AI SBOM 문서화 방법을 안내한다.
---

## 1. 개요

ISO/IEC 42001 §7은 AI 관리 시스템을 운영하는 데 필요한 **역량, 인식, 커뮤니케이션,
문서화**를 다룬다. 오픈소스 담당자 관점에서는 **§7.2(역량)**과 **§7.5(문서화된 정보)**가
핵심 교차점이다.

---

## 2. §7.2 역량 — AI 오픈소스 관리 역량 ★

ISO/IEC 42001은 AI 관련 역할을 수행하는 인원이 필요한 역량을 갖추도록 요구한다.
오픈소스 컴플라이언스 관점에서 AI 개발·운영 인원에게 다음 역량이 포함되어야 한다.

### AI 오픈소스 관리 역량 요소

| 역량 영역 | 내용 | 관련 교육 |
|---------|------|---------|
| **AI 프레임워크 라이선스 이해** | PyTorch·TensorFlow 등 주요 라이선스 조건 파악 | 오픈소스 라이선스 교육 |
| **AI 모델 라이선스 검토** | 커스텀 라이선스 조건(사용 제한, 파생물 처리) 분석 | 법무팀 협업 교육 |
| **AI SBOM 작성** | SPDX 3.0 AI 프로파일 기반 AI SBOM 구성 방법 | AI SBOM 실습 |
| **오픈소스 취약점 관리** | AI 시스템 의존성 SCA 스캔 및 CVE 대응 | DevSecOps 교육 |
| **오픈 데이터 라이선스** | CC 계열 라이선스 조건 및 데이터셋 사용 규칙 | 데이터 라이선스 교육 |

### 기존 오픈소스 역량 체계와의 통합

{{% alert title="ISO/IEC 5230 역량 체계 확장" color="success" %}}
기업이 ISO/IEC 5230 기반의 역량·교육 체계를 이미 운영 중이라면,
기존 오픈소스 교육 과정에 **AI 특화 모듈**을 추가하는 방식으로 확장한다.

추가 모듈 예시:
- AI 모델 라이선스 이해 (1시간)
- AI SBOM 작성 실습 (2시간)
- AI 공급망 오픈소스 검증 방법 (1시간)

관련 가이드: [기업 오픈소스 관리 가이드 — 5. 교육](../../opensource_for_enterprise/5-training/)
{{% /alert %}}

**체크포인트**:
- [ ] AI 개발 인원이 AI 프레임워크·모델 라이선스 조건을 이해하고 있는가?
- [ ] AI SBOM 작성 방법에 대한 교육이 제공되고 있는가?
- [ ] 역량 평가 기록이 문서화되어 있는가?

---

## 3. §7.5 문서화된 정보 — AI SBOM ★

ISO/IEC 42001 §7.5는 AI 관리 시스템 운영에 필요한 **문서화된 정보**를 수립·유지하도록 요구한다.
오픈소스 관점에서 **AI SBOM(AI System Bill of Materials)**은 §7.5의 핵심 산출물이다.

### AI SBOM이란?

AI SBOM은 소프트웨어 SBOM(ISO 5230의 §3.3.1)을 AI 시스템으로 확장한 개념으로,
AI 시스템을 구성하는 모든 요소와 그 출처·라이선스를 문서화한 목록이다.

| 구분 | 기존 소프트웨어 SBOM | AI SBOM |
|------|---------------------|---------|
| 포함 대상 | 라이브러리, 패키지 | 프레임워크 + 모델 + 데이터셋 |
| 라이선스 | SPDX 표준 라이선스 | SPDX + AI 커스텀 라이선스 |
| 표준 형식 | SPDX 2.x, CycloneDX | SPDX 3.0 AI 프로파일 |
| 추가 메타데이터 | 없음 | 모델 파라미터 수, 학습 데이터 출처 등 |

### AI SBOM 구성 요소

```
AI SBOM
  ├── 1. AI 프레임워크 · 라이브러리
  │       name, version, license, hash
  │
  ├── 2. 사전 훈련 모델 (Pre-trained Model)
  │       name, version, license, modelCard URL
  │       primaryPurpose (inference / training / fine-tuning)
  │
  ├── 3. 학습 데이터셋
  │       name, version, license, datasetType
  │       knownBias (편향 정보, 있는 경우)
  │
  └── 4. 파인튜닝 데이터 (해당 시)
          name, license, source
```

AI SBOM 작성 방법 상세: [AI SBOM 가이드](../4-operation/2-ai-sbom/)

### SPDX 3.0 AI 프로파일 간략 예시

```yaml
SPDXVersion: SPDX-3.0
DataLicense: CC0-1.0

# AI 프레임워크
- SPDXID: SPDXRef-pytorch
  name: pytorch
  versionInfo: "2.2.0"
  licenseConcluded: BSD-3-Clause
  primaryPurpose: library

# 사전 훈련 모델
- SPDXID: SPDXRef-llama3
  name: meta-llama/Llama-3.1-8B
  versionInfo: "3.1"
  licenseConcluded: LicenseRef-Llama-Community
  primaryPurpose: inference
  modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B"

# 학습 데이터셋 (파인튜닝 시)
- SPDXID: SPDXRef-dataset-alpaca
  name: tatsu-lab/alpaca
  licenseConcluded: CC-BY-4.0
  dataCollectionProcess: "Stanford Alpaca 52K instruction dataset"
```

**체크포인트**:
- [ ] AI 시스템에 사용된 모든 프레임워크·모델·데이터셋이 AI SBOM에 기록되어 있는가?
- [ ] AI SBOM이 AI 시스템 변경 시마다 최신 상태로 갱신되는가?
- [ ] AI SBOM에 각 컴포넌트의 라이선스 정보가 포함되어 있는가?

---

## 4. §7.3 인식

AI 시스템 관련 역할을 수행하는 인원이 오픈소스 컴플라이언스의 중요성을 인식하도록 한다.

**체크포인트**:
- [ ] AI 개발 인원이 AI 시스템 오픈소스 컴플라이언스 미준수 시의 리스크를 인지하고 있는가?

---

## 5. 참고

- [ISO/IEC 42001 가이드 홈](../)
- [AI SBOM 가이드](../4-operation/2-ai-sbom/)
- [ISO/IEC 5230 — §3.3.1 SBOM](../../iso5230_guide/3-content-review/1-sbom/)
- [ISO/IEC 18974 — §4.3.1 SBOM](../../iso18974_guide/3-content-review/1-sbom/)
- [기업 오픈소스 관리 가이드 — 5. 교육](../../opensource_for_enterprise/5-training/)
- [AI Work Group](../../../resource/AI_work_group/)
