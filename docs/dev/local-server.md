# 로컬에서 웹사이트 구동하기

아래의 절차를 따르면 로컬에서 OpenChain KWG 웹사이트를 구동할 수 있습니다.

## 1. 웹사이트 개발 환경 구축

다음 안내에 따라 로컬 PC에 웹사이트 개발 환경을 구축합니다. : [웹사이트 개발 환경 구축하기](setup.md)

Windows, Linux, macOS 모두 가능합니다.

## 2. 소스 코드 다운로드

다음 안내에 따라 로컬 PC에 OpenChain KWG 웹사이트의 소스 코드를 다운로드합니다. : [Git Workflow](../workflow/git-workflow.md)

이 중 [Step 4](../workflow/git-workflow.md#step-4-개발용-branch-생성)까지 수행하면 됩니다.

## 3. Install PostCSS

Docsy의 CSS 리소스를 빌드하기 위해서는 [PostCSS](https://postcss.org/)가 필요합니다. OpenChain-KWG 웹사이트 코드의 루트 디렉토리로 이동 후 postcss-cli를 설치합니다.

```bash
$ cd OpenChain-KWG
$ sudo npm install -D --save autoprefixer
$ sudo npm install -D --save postcss-cli
```

## 4. Build

다운로드한 코드의 Root 디렉토리에서 hugo 명령어로 빌드를 수행합니다.

```bash
$ cd OpenChain-KWG
$ hugo
Building sites …
                   | KO | EN
-------------------+----+-----
  Pages            | 82 | 81
  Paginator pages  |  0 |  0
  Non-page files   | 99 | 99
  Static files     | 36 | 36
  Processed images |  7 |  6
  Aliases          |  4 |  3
  Sitemaps         |  2 |  1
  Cleaned          |  0 |  0

Total in 3656 ms
```

위와 같은 메시지가 나타나면 이상없이 빌드가 완료된 것입니다.

빌드 산출물은 `/public` 디렉토리에 생성되어 있습니다.

## 5. Build Serve

**hugo serve** 명령어를 수행하면 웹사이트가 로컬에서 구동됩니다.

```bash
$ hugo serve
Building sites …
                   | KO | EN
-------------------+----+-----
  Pages            | 82 | 81
  Paginator pages  |  0 |  0
  Non-page files   | 99 | 99
  Static files     | 36 | 36
  Processed images |  7 |  6
  Aliases          |  4 |  3
  Sitemaps         |  2 |  1
  Cleaned          |  0 |  0

Built in 1050 ms
Watching for changes in {assets,content,layouts,static,themes}
Watching for config changes in hugo.toml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/OpenChain-KWG/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```

이제 브라우저를 열고 http://localhost:1313/OpenChain-KWG/ 로 접속하세요. OpenChain KWG 웹사이트의 초기화면을 볼 수 있습니다!
