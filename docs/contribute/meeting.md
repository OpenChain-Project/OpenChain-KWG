# Meeting 내용 작성하기

OpenChain KWG 웹사이트 > 메뉴 > **Meeting** 에는 정기 미팅 내용을 작성하여 공유합니다. 여기에 내용을 추가/수정하는 방법을 설명합니다.

## 소스 코드 다운로드

다음 안내에 따라 로컬 PC에 OpenChain KWG 웹사이트의 소스 코드를 다운로드합니다. : [Git Workflow](../workflow/git-workflow.md)

이 중 [Step 4](../workflow/git-workflow.md#step-4-개발용-branch-생성)까지 수행하면 됩니다.

## Meeting 코드 위치

Meeting 내용에 대한 코드는 다음 디렉토리에 위치합니다.

```
$ cd content/ko/meeting/
$ ls
_index.md  1st  2nd  3rd  ...
```

각 미팅 차수 디렉토리에는 `_index.md` 파일이 있습니다.

## Meeting 내용 수정

각 미팅 디렉토리의 `_index.md` 파일을 편집하면 OpenChain KWG 웹사이트의 미팅 화면을 수정할 수 있습니다.

마크다운 기본 문법을 사용하여 필요한 내용을 작성하세요. (참고: [파일 첨부와 그림 보여주기](file-attachment.md))

## 새로운 Meeting 추가

### Archetype 템플릿을 사용하는 방법 (권장)

`archetypes/meeting.md` 템플릿을 사용하여 ko/en 양쪽 페이지를 생성합니다.

```bash
# 예시: 29번째 미팅
hugo new content/ko/meeting/29th/_index.md --kind meeting
hugo new content/en/meeting/29th/_index.md --kind meeting
```

- `title`, `weight`는 디렉터리명에서 자동으로 추출됩니다.
- 생성 후 `description`, 일정, 아젠다 등을 채워 넣으세요.
- 발표자료는 반드시 GitHub Releases에 업로드한 뒤 링크하세요. ([파일 첨부 규칙 참고](file-attachment.md#대용량-파일-업로드-규칙-github-releases))

Front Matter 수정 사항을 참고하세요. : [Index 페이지 헤더 영역 작성하기](index-page.md)

## 새 미팅 페이지 생성 방법

미팅 페이지는 Archetype 템플릿을 사용하여 아래 절차로 생성합니다.

**1단계: 발표자료 업로드**

발표자료(PDF, PPTX 등)는 Git 저장소에 직접 커밋하지 않고,
반드시 GitHub Releases에 업로드합니다.

- GitHub Releases 접속:
  https://github.com/OpenChain-Project/OpenChain-KWG/releases
- 해당 연도의 Release 태그 선택 (예: `meeting-slides-2026`)
  태그가 없으면 새로 생성:
  - Tag: `meeting-slides-YYYY`
  - Title: `Meeting Slides YYYY`
- 파일명 규칙 준수 후 업로드:
  - 영문, 숫자, 하이픈(`-`), 언더스코어(`_`), 점(`.`)만 사용
  - 공백·한글·특수문자 사용 금지
  - 권장 형식: `YYYYMMDD-발표자-주제키워드.pdf`
  - 예시: `20260320-kakao-sbom-intro.pdf`
- 업로드 후 다운로드 URL 복사:
  `https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf`

**2단계: 미팅 페이지 생성**

Archetype 템플릿을 사용하여 ko/en 양쪽 페이지를 생성합니다.

```bash
# 예시: 29번째 미팅
hugo new content/ko/meeting/29th/_index.md --kind meeting
hugo new content/en/meeting/29th/_index.md --kind meeting
```

생성된 파일을 열어 아래 항목을 채웁니다:
- Front Matter: `title`, `date`, `description`
- 발표자료 표의 링크를 1단계에서 복사한 GitHub Releases URL로 교체

**3단계: 커밋 및 배포**

```bash
git add content/ko/meeting/29th/
git add content/en/meeting/29th/
git commit -m "feat: add 29th meeting page"
git push origin master
```

> 주의: `static/` 또는 `content/` 폴더에 PDF, PPTX 등 대용량 파일을
> 직접 커밋하지 마세요. GitHub Pages 1GB 용량 한도를 초과할 수 있습니다.

## 수정 사항 확인하기

[로컬에서 웹사이트 구동하기](../dev/local-server.md)를 해보면 수정 사항이 정상적으로 동작하는지 확인할 수 있습니다.

(개발환경 구성이 수월하지 않은 경우, 수정 사항 확인하는 부분은 생략하세요.)

## 영문 페이지 반영하기

국문 페이지 내용 작성을 완료하였으면 다음 안내에 따라 이를 영문 페이지에도 반영하세요. : [영문 페이지 작성](english-page.md)

## 수정 사항 반영 요청하기

추가 / 수정을 완료하면 Pull Request하여 반영을 요청합니다. OpenChain KWG 관리자가 Review 후 Merge / Deploy합니다.

Pull Request는 [Git Workflow](../workflow/git-workflow.md)를 참고하여 [Step 5](../workflow/git-workflow.md#step-5-commit) ~ [Step 7](../workflow/git-workflow.md#step-7-create-a-pull-request)을 수행하세요.
