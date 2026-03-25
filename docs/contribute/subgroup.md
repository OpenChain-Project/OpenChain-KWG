# Subgroup 내용 작성하기

OpenChain KWG 웹사이트 > 메뉴 > **Subgroup** 에는 Subgroup들의 활동 내용을 작성하여 공유합니다. 여기에 내용을 추가/수정하는 방법을 설명합니다.

## 소스 코드 다운로드

다음 안내에 따라 로컬 PC에 OpenChain KWG 웹사이트의 소스 코드를 다운로드합니다. : [Git Workflow](../workflow/git-workflow.md)

## Subgroup 코드 위치

[subgroup](https://github.com/OpenChain-Project/OpenChain-KWG/tree/master/content/ko/subgroup) 내용에 대한 코드는 다음 디렉토리에 위치합니다.

```
$ cd content/ko/subgroup/
$ ls
_index.md  conformance  planning  tooling
```

* 각 서브 그룹의 디렉토리에 들어가보면 하나의 `_index.md` 파일이 기본적으로 있습니다.
* Subgroup 미팅 등 활동이 있는 경우, 이에 대한 디렉토리(예: `1st-meeting`)가 있는 것을 볼 수 있습니다.
* 이 디렉토리 하위에는 `_index.md`가 있고, 발표자료 파일, 사진 파일 등이 위치합니다.

```
cd conformance/
$ ls
_index.md  1st-meeting
$ ls 1st-meeting
_index.md  1575426596835.jpg  1575426599025.jpg
```

## 특정 Subgroup 내용 수정

각 subgroup 디렉토리(예: `conformance`) 하위에는 `_index.md` 파일이 있습니다. 이를 편집하면 해당 subgroup의 메인화면을 수정할 수 있습니다.

아래의 내용과 마크다운 기본 문법을 사용하여 필요한 내용을 작성하세요.

* [Index 페이지 헤더 영역 작성/수정하기](index-page.md)
* [파일 첨부와 그림 보여주기](file-attachment.md)

## 특정 Subgroup 내 새로운 활동 (예: Meeting) 추가

특정 Subgroup 하위에 새로운 활동을 추가하려면 `conformance/1st-meeting`와 같이 디렉토리를 생성하고 그 안에 `_index.md`를 추가하면 됩니다. 이를 쉽게 하기 위해서는 기존 meeting 디렉토리를 Copy하여 사용하세요.

이때 먼저 Index 페이지(`_index.md`)를 상황에 맞게 수정하고, 필요한 파일 및 그림을 첨부하세요.

* [Index 페이지 헤더 영역 작성/수정하기](index-page.md)
* [파일 첨부와 그림 보여주기](file-attachment.md)

## 새로운 subgroup 생성하기

`/content/ko/subgroup`에 새로운 subgroup 디렉토리를 추가하면 웹사이트에 subgroup이 생성됩니다. 쉽게 하기 위해 기존의 subgroup 중 하나를 Copy하세요.

```bash
$ cd ./content/ko/subgroup
$ cp -R ./conformance ./newsubgroup
```

생성된 `/newsubgroup` 디렉토리 내 `_index.md`를 제외한 불필요한 디렉토리, 이미지, 문서 파일은 삭제하세요.

`_index.md` 파일을 열어서 필요한 내용을 수정합니다.

* [Index 페이지 헤더 영역 작성/수정하기](index-page.md)

이렇게 header 영역을 수정하고, 하단에는 새로운 subgroup 내용을 작성합니다. 필요 시 아래 링크를 참고하여 파일 및 그림을 첨부합니다.

* [파일 첨부와 그림 보여주기](file-attachment.md)

## 수정 사항 확인하기

[로컬에서 웹사이트 구동하기](../dev/local-server.md)를 해보면 수정 사항이 정상적으로 동작하는지 확인할 수 있습니다.

(개발환경 구성이 수월하지 않은 경우, 수정 사항 확인하는 부분은 생략하세요.)

## 영문 페이지 반영하기

국문 페이지 내용 작성을 완료하였으면 다음 안내에 따라 이를 영문 페이지에도 반영하세요. : [영문 페이지 작성](english-page.md)

## 수정 사항 반영 요청하기

추가 / 수정을 완료하면 Pull Request하여 반영을 요청합니다. OpenChain KWG 관리자가 Review 후 Merge / Deploy합니다.

Pull Request는 [Git Workflow](../workflow/git-workflow.md)를 참고하여 [Step 5](../workflow/git-workflow.md#step-5-commit) ~ [Step 7](../workflow/git-workflow.md#step-7-create-a-pull-request)을 수행하세요.
