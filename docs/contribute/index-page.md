# Index 페이지 헤더 영역 작성하기

OpenChain KWG 웹사이트 내 문서들은 Index 페이지(예: `_index.md`)에 의해 작성됩니다.

## Index 페이지 헤더 영역 (일반 문서)

이러한 Index 페이지는 Markdown 형식이며, 파일 상단에는 다음과 같은 형식의 헤더 영역이 있습니다.

```yaml
---
title: "1st Meeting"
linkTitle: "1st Meeting"
weight: 1
date: 2019-11-04
type: docs
description: >
  OpenChain Specification을 준수하고자 하는 기업 간 방법 논의 및 공유
---
```

각 항목의 내용은 다음과 같습니다.

* **title** : 문서의 제목이며, 웹사이트 화면 상단의 Title 영역에 표시됩니다.
* **linkTitle** : 메뉴 이름이며, 웹사이트 좌측의 메뉴바 영역에 표시됩니다. (작성하지 않을 경우, title 값이 메뉴바에 표시됩니다.)
* **weight** : weight 값에 따라 화면 좌측메뉴 영역에 보여질 순서가 정해집니다.
* **date** : 문서 작성일을 기재하세요. (Optional)
* **type** : `docs` → 이 부분은 수정하지 마세요. type은 docs로 되어 있어야 합니다.
* **description** : 페이지에 대한 설명이며 웹사이트 화면 상단의 Title 영역 바로 아래에 표시됩니다.

> **Meeting 페이지의 경우** `archetypes/meeting.md` 템플릿을 사용하면 `title`, `weight` 등이 자동으로 채워집니다. 자세한 내용은 [Meeting 내용 작성하기](meeting.md)를 참고하세요.

이상의 내용을 고려하여 Index 페이지(`_index.md`)를 작성/수정할때는 이 헤더 영역을 페이지 내용에 맞게 수정하시기 바랍니다.

## Index 페이지 헤더 영역 (Blog)

블로그 작성 시 Index 페이지 헤더 영역은 [일반 페이지의 경우](#index-페이지-헤더-영역-일반-문서)에서 몇 개의 항목이 추가됩니다.

```yaml
---
date: 2020-08-29
title: "The sample blog post"
linkTitle: "Sample blog post"
description: "The Docsy Hugo theme lets project maintainers and contributors focus on content, not on reinventing a website infrastructure from scratch"
author: Riona MacNamara ([@rionam](https://twitter.com/bepsays))
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Riona MacNamara / CC-BY-CA"
---
```

* **author** : 저자 정보이며, 블로그 상단에 **By Riona MacNamara (@rionam)** 와 같은 형태로 표시됩니다.
* **resources** : 블로그 본문에서 사용할 이미지 파일에 대한 정보를 작성합니다. 세부 내용은 [hugo의 Image Processing 기능을 사용하여 보여주기](file-attachment.md#hugo의-image-processing-기능을-사용하여-보여주기) 부분을 참고하세요.
