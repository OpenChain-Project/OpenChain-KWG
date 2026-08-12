---
title: "TRUSCA"
weight: 11
type: docs
categories: ["guide"]
tags: ["trusca", "sca", "sbom", "cve", "취약점"]
---

기업이 오픈소스 컴포넌트의 취약점과 라이선스를 관리하려면 SCA(Software Composition Analysis) 도구가 필요하다. 상용 제품이 여럿 있으나, 사내에 직접 설치해 운영할 수 있는 오픈소스 도구를 찾는 경우도 있다.

TRUSCA는 이러한 용도로 공개된 자체 호스팅 SCA 포털이다. Apache 2.0 라이선스로 배포하며, 취약점(CVE), 라이선스 컴플라이언스, SBOM 관리를 하나의 화면에서 다룬다. KWG 커뮤니티 활동에서 출발한 [TrustedOSS](../../trustedoss/) 프로젝트가 개발하고 있다.

## 주요 특징

- 30여 개 언어 생태계의 컴포넌트 검출(cdxgen 기반), 직접 의존성과 전이 의존성 구분
- Trivy 통합 데이터베이스(NVD, OSV, GitHub Advisory, EPSS, KEV) 기반 취약점 검출과 7단계 VEX 분류 절차, EPSS 점수 기반 우선순위 지정
- 라이선스 분류(허용, 조건부, 금지)와 의무사항 추적, 고지문(NOTICE) 자동 생성
- SBOM 내보내기(CycloneDX JSON·XML, SPDX JSON·Tag-Value)와 외부에서 만든 SBOM 가져오기
- 컴포넌트 승인 절차(검토 대기, 검토 중, 승인, 반려), 감사 로그, 역할 기반 권한 관리
- GitHub Action, GitLab CI 템플릿, Jenkinsfile 예시 제공. 심각한 취약점이나 금지 라이선스가 검출되면 빌드를 중단하도록 설정할 수 있다
- 한국어와 영어 화면 지원

## 설치

Docker Compose로 개발 환경을 띄울 수 있다.

```bash
git clone https://github.com/trustedoss/trusca.git
cd trusca
cp .env.example .env
docker-compose -f docker-compose.dev.yml up
```

30초 정도 지나면 컨테이너가 준비되고 http://localhost:5173 으로 접속할 수 있다. 운영 환경은 Docker Compose(Traefik과 Let's Encrypt 포함)나 Kubernetes Helm 차트로 구축한다. 자세한 절차는 공식 문서를 참고한다. : [https://trustedoss.github.io/trusca/docs/installation/docker-compose](https://trustedoss.github.io/trusca/docs/installation/docker-compose)

## 미리 살펴보기

설치 전에 기능을 확인하려면 읽기 전용 데모 사이트를 이용할 수 있다. : [https://trusca-demo.duckdns.org](https://trusca-demo.duckdns.org)

실제 프로젝트와 스캔 결과, 취약점, 라이선스, SBOM이 들어 있고 매일 초기화된다. CycloneDX 형식의 SBOM을 올려 라이선스와 취약점이 어떻게 대조되는지 확인할 수도 있다. 접속 계정은 데모 사이트 안내를 참고한다.
