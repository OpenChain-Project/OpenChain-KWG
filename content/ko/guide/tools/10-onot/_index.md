---
title: "onot"
weight: 10
type: docs
categories: ["guide"]
tags: ["onot", "고지문", "notice", "compliance"]
---

오픈소스 컴플라이언스 산출물 중 하나인 오픈소스 고지문(NOTICE 파일)은 공급 소프트웨어에 포함된 오픈소스의 저작권과 라이선스 정보를 사용자에게 제공하기 위한 문서다. 고지문을 수동으로 작성하면 누락이나 오류가 발생하기 쉽다. onot은 이 과정을 자동화하는 도구다.

[SK텔레콤](https://www.sktelecom.com/)은 사내에서 사용하는 오픈소스 고지문 자동 생성 도구를 [onot](https://github.com/sktelecom/onot)이라는 이름으로 오픈소스로 공개하였다. [카카오](https://www.kakaocorp.com/)에서도 주요 기능을 기여하는 방식으로 공동 개발에 참여하였다.

## 주요 특징

onot은 [SPDX](https://spdx.dev/) 문서 형식으로 작성된 SBOM을 입력받아 오픈소스 고지문 형식으로 자동 변환한다. Python 기반으로 가볍고 간단하게 사용할 수 있으며, 다음과 같은 특징을 가진다.

- **SBOM 기반 자동 생성** — cdxgen, Syft 등으로 생성한 SPDX SBOM을 그대로 입력으로 사용
- **표준 형식 출력** — 오픈소스 라이선스별 저작권·라이선스 텍스트를 포함한 고지문 생성
- **Python 기반** — 별도 서버 구축 없이 CLI 도구로 간단히 실행
- **오픈소스 공개** — 누구나 무료로 사용·수정·배포 가능

## 설치

Python 패키지 관리자(pip)로 설치한다.

```bash
pip install onot
```

설치와 관련한 자세한 내용은 공식 저장소를 참고한다. : [https://github.com/sktelecom/onot](https://github.com/sktelecom/onot)

## 기본 사용법

SBOM(SPDX 형식)을 준비한 후 다음 명령어로 고지문을 생성한다.

```bash
onot -f sbom.spdx
```

실행하면 입력한 SBOM 파일을 분석하여 오픈소스 고지문 파일을 출력한다. 생성된 고지문은 배포 패키지에 포함하거나 오픈소스 웹사이트에 게시하여 라이선스 의무를 이행할 수 있다.

자세한 사용법은 공식 저장소의 README를 참고한다. : [https://github.com/sktelecom/onot](https://github.com/sktelecom/onot)
