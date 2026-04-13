# Hugo Taxonomy 구조 (OpenChain KWG)

## 프론트매터 형식

이 프로젝트는 YAML 프론트매터(`---` 구분자)를 사용합니다.

```yaml
---
date: 2024-09-06
title: "페이지 제목"
linkTitle: "짧은 제목"
description: 
author: 작성자명
categories: ["blog"]
tags: ["태그1", "태그2"]
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: ""
---
```

## 태그 클라우드 페이지 경로

- 한국어: `/ko/tags/`
- 영어: `/en/tags/`

Hugo 기본 taxonomy 기능을 사용하며 별도 커스텀 taxonomy 설정은 없음.

## 태그 사용 규칙

- 태그 값은 문자열 배열: `tags: ["태그1", "태그2"]`
- 다국어 파일에서 동일한 태그를 사용 (ko/en 공통)
- 주로 blog, meeting 콘텐츠에 태그 사용

## 현재 사용 중인 태그 샘플

| 태그 | 사용 파일 예시 |
|------|--------------|
| `SPDX` | blog/2024/20240906_spdx_30 |
| `AI Act` | blog/2024/20241112_eu_regulation |
| `CRA` | blog/2024/20241112_eu_regulation |
| `log4j` | blog/2021/20211212-log4shell |
| `오픈소스보안` | blog/2021/20211212-log4shell |

## 콘텐츠 타입별 태그 현황

- **blog**: 대부분의 포스트에 tags 존재
- **meeting**: 일부 파일에 tags 존재 가능
- **guide, resource, subgroup**: tags 드물거나 없음
- `_index.md` (섹션 인덱스 파일): 일반적으로 tags 없음
