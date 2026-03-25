# Blog 작성하기

OpenChain KWG 웹사이트 > 메뉴 > **Blog** 에는 OpenChain 뉴스 및 Tech Blog를 작성할 수 있습니다. 아래 절차를 참고하세요.

## 소스 코드 다운로드

다음 안내에 따라 로컬 PC에 OpenChain KWG 웹사이트의 소스 코드를 다운로드합니다. : [Git Workflow](../workflow/git-workflow.md)

## Blog 코드 위치

[blog](https://github.com/OpenChain-Project/OpenChain-KWG/tree/master/content/ko/blog) 내용에 대한 코드는 다음 디렉토리에 위치합니다.

```
$ cd content/ko/blog/
$ ls
_index.md  2020  2021  sample
```

여기에는 하나의 `_index.md` 파일과 연도별 디렉토리가 있습니다.

## Blog 작성하기

작성일에 해당하는 연도 디렉토리(예: `/2021`) 하위에 작성할 블로그를 위한 디렉토리를 생성합니다. 쉽게하려면 `/sample/sample-post` 디렉토리를 복사해서 사용하세요.

```bash
$ cd blog/2021/
$ cp -R ../sample/sample-post/ ./2021-01-15-title
```

생성한 디렉토리 내에는 기본적으로 `index.md` 파일이 있어야 합니다. 그리고, 블로그 작성에 필요한 이미지 파일 등을 위치시킵니다.

`index.md` 파일은 Markdown 형태이며 상단의 헤더 영역과 본문 영역으로 구분됩니다.

헤더 영역 작성은 다음 페이지를 참고하세요. : [Index 페이지 헤더 영역 (Blog)](index-page.md#index-페이지-헤더-영역-blog)

그리고, 블로그 본문을 Markdown 문법에 맞추어 작성합니다. 필요에 따라 파일과 그림을 첨부합니다.

* [파일 첨부와 그림 보여주기](file-attachment.md)

## 수정 사항 확인하기

[로컬에서 웹사이트 구동하기](../dev/local-server.md)를 해보면 수정 사항이 정상적으로 동작하는지 확인할 수 있습니다.

(개발환경 구성이 수월하지 않은 경우, 수정 사항 확인하는 부분은 생략하세요.)

## 영문 페이지 반영하기

국문 페이지 내용 작성을 완료하였으면 다음 안내에 따라 이를 영문 페이지에도 반영하세요. : [영문 페이지 작성](english-page.md)

(영문 페이지에 반영할 필요가 없는 내용일 경우, `영문 페이지 반영하기`는 스킵합니다.)

## 수정 사항 반영 요청하기

추가 / 수정을 완료하면 Pull Request하여 반영을 요청합니다. OpenChain KWG 관리자가 Review 후 Merge / Deploy합니다.

Pull Request는 [Git Workflow](../workflow/git-workflow.md)를 참고하여 [Step 5](../workflow/git-workflow.md#step-5-commit) ~ [Step 7](../workflow/git-workflow.md#step-7-create-a-pull-request)을 수행하세요.
