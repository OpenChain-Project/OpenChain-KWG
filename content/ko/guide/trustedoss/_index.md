---
title: "TrustedOSS"
linkTitle: "TrustedOSS"
weight: 50
type: docs
categories: ["guide"]
tags: ["TrustedOSS", "TRUSCA", "자체 인증", "DevSecOps", "AI 코딩"]
description: >
  이 가이드가 설명하는 오픈소스 관리 체계를 산출물로 만드는 것을 돕는 커뮤니티 자료입니다.
---

{{% pageinfo %}}

TrustedOSS는 KWG 커뮤니티 활동에서 출발한 프로젝트로, 이 가이드의 저자가 공개했습니다.
문서는 CC BY 4.0, 코드는 MIT와 Apache 2.0으로 배포합니다.

**사이트: [https://trustedoss.github.io/](https://trustedoss.github.io/)**

{{% /pageinfo %}}

TrustedOSS는 다음 네 가지를 다룹니다.

## 자체 인증 산출물 생성

ISO/IEC 5230과 ISO/IEC 18974 자체 인증에 필요한 문서를 AI 에이전트와 대화하며 만듭니다.
조직 구성, 정책, 프로세스, SBOM 분석, 취약점 리포트, 교육 커리큘럼, 준수 선언문 초안까지
단계별로 생성합니다. [기업 오픈소스 관리 가이드](../opensource_for_enterprise/)가 설명하는
여섯 단계와 같은 순서를 따릅니다.

## DevSecOps 파이프라인

CI/CD 파이프라인에 보안 검사를 넣는 방법을 다룹니다. SAST, DAST, SCA, 시크릿 탐지,
컨테이너 보안, IaC 보안을 단계별로 안내하고, 각 항목이 ISO/IEC 18974의 어느 조항과
연결되는지 매핑합니다.

## AI 코딩 거버넌스

AI 코딩 도구를 쓰는 조직이 정해야 할 규칙을 다룹니다. 에이전트 권한 관리, AI 생성 코드의
보안 검토, 라이선스와 법적 쟁점, ISO/IEC 42001 연계를 설명하고, Claude Code, GitHub Copilot,
Cursor 등 도구별 규칙 파일 예시를 제공합니다.

## TRUSCA

자체 호스팅 오픈소스 SCA 포털입니다. 취약점(CVE), 라이선스 컴플라이언스, SBOM 관리를 하나의
화면에서 다룹니다. [TRUSCA 도구 페이지](../tools/11-trusca/)에서 설치와 사용법을 안내합니다.
