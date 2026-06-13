---
title: "도구"
linkTitle: "도구"
weight: 50
type: docs
categories: ["guide"]
tags: ["AI SBOM", "도구"]
description: >
  AI SBOM을 생성하고 분석하는 오픈소스 도구의 주요 기능과 사용법을 실행 화면과 함께 안내한다.
---

이 절은 AI SBOM 컴플라이언스를 자동화하는 오픈소스 도구를 다룬다. 각 도구의 주요 기능과
설치, 사용법을 실제 실행 결과와 함께 정리했다. [3.9 AI SBOM](../2-ai-extension/3-ai-sbom/)의
자동화 성숙도 맵에서 본 구분을 도구별로 구체화한 것이다.

정직하게 짚어 둘 경계가 있다. 도구는 BOM을 자동으로 생성하지만, 생성된 BOM의 라이선스가
정확한지, 누락된 자재는 없는지를 보장하지는 못한다. 아래 도구 비교에서 OWASP AIBOM
Generator는 모델 카드의 라이선스를 채우고, cdxgen은 의존성을 빠르게 식별하되 라이선스 필드를
비워 둔다. 도구를 고를 때 이 차이를 본다.

## 도구 한눈에 보기

| 도구 | 입력 | 출력 | 강점 | 다루는 곳 |
|---|---|---|---|---|
| OWASP AIBOM Generator | Hugging Face 모델 ID | CycloneDX 1.6/1.7 | 모델 카드와 라이선스 메타데이터, 완전성 점수 | [바로가기](./1-aibom-generator/) |
| cdxgen | 프로젝트 디렉토리, 모델 파일 | CycloneDX | 의존성 자동 식별, CI/CD 연동 | [바로가기](./2-cdxgen/) |
| Lab700x, Trivy, Syft | 모델 바이너리, 컨테이너, 가상환경 | 보고서, SBOM | 모델 정적 분석, 추론 서버와 패키지 식별 | [바로가기](./3-scanners/) |

각 도구는 생성, 분석, 관리 단계 중 일부를 자동화한다. 한 도구로 전부 해결되지 않으므로, AI
SBOM을 생성하는 도구(OWASP AIBOM Generator, cdxgen)와 보안을 분석하는 도구(Lab700x, Trivy),
관리하는 도구([Dependency-Track](../../tools/7-dependency-track/))를 조합한다.
