# 로컬에서 웹사이트 구동하기

아래의 절차를 따르면 로컬에서 OpenChain KWG 웹사이트를 구동할 수 있습니다.

## 1. 웹사이트 개발 환경 구축

다음 안내에 따라 로컬 PC에 웹사이트 개발 환경을 구축합니다. : [웹사이트 개발 환경 구축하기](setup.md)

Windows, Linux, macOS 모두 가능합니다.

## 2. 소스 코드 다운로드

다음 안내에 따라 로컬 PC에 OpenChain KWG 웹사이트의 소스 코드를 다운로드합니다. : [Git Workflow](../workflow/git-workflow.md)

이 중 [Step 4](../workflow/git-workflow.md#step-4-개발용-branch-생성)까지 수행하면 됩니다.

## 3. 의존성 설치

웹사이트 빌드에 필요한 Hugo Extended와 [PostCSS](https://postcss.org/)는 `package.json`에 고정되어 있습니다. 루트 디렉토리로 이동해 `npm ci`로 한 번에 설치합니다.

```bash
$ cd OpenChain-KWG
$ npm ci
```

> `npm ci`는 `package.json`에 고정된 정확한 버전을 설치하므로, Hugo를 별도로 설치할 필요가 없습니다.

## 4. Build

다운로드한 코드의 Root 디렉토리에서 `npm run build`로 빌드를 수행합니다.

```bash
$ cd OpenChain-KWG
$ npm run build
Building sites …
                   | KO | EN
-------------------+----+-----
  Pages            | 82 | 81
  ...

Total in 3656 ms
```

위와 같은 메시지가 나타나면 이상없이 빌드가 완료된 것입니다.

빌드 산출물은 `/public` 디렉토리에 생성되어 있습니다.

## 5. Build Serve

`npm run serve` 명령을 수행하면 웹사이트가 로컬에서 구동됩니다(Draft 포함).

```bash
$ npm run serve
Building sites …
...
Web Server is available at http://localhost:1313/OpenChain-KWG/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```

이제 브라우저를 열고 http://localhost:1313/OpenChain-KWG/ 로 접속하세요. OpenChain KWG 웹사이트의 초기화면을 볼 수 있습니다!
