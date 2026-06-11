# 개발 환경 구축하기

OpenChain KWG는 [Hugo](https://gohugo.io/) static site generator의 Theme인 [Docsy](https://www.docsy.dev/docs/)를 기반으로 제작되었습니다. [Hugo](https://gohugo.io/)와 [Docsy](https://www.docsy.dev/docs/)를 먼저 살펴보면 도움이 됩니다.

OpenChain KWG 웹사이트를 개발하는데 [Docsy](https://www.docsy.dev/docs/)를 사용한 이유는 문서를 작성하고 배열하는데 적합해보였기 때문인데요, [Docsy](https://www.docsy.dev/docs/)를 기반으로 개발한 아래 [웹사이트(example)](https://www.docsy.dev/docs/examples/)들을 보면 이를 확인할 수 있습니다.

| Site | Repo (if public) |
|---|---|
| [This Docsy documentation site](/docs) | https://github.com/google/docsy |
| ["Goldydocs" - a Docsy example site](https://example.docsy.dev) | https://github.com/google/docsy-example |
| https://www.kubeflow.org/ | https://github.com/kubeflow/website |
| https://agones.dev/site/ | https://github.com/GoogleCloudPlatform/agones/tree/master/site |
| https://googlecontainertools.github.io/kpt/ | https://github.com/GoogleContainerTools/kpt/tree/master/docs |
| [Navidrome Music Server](https://www.navidrome.org) | https://github.com/navidrome/website |
| https://docs.agilebase.co.uk/ | https://github.com/okohll/abdocs |

## Install Node.js

이 웹사이트는 Hugo Extended와 [PostCSS](https://postcss.org/)로 빌드하며, 둘 다 npm으로 설치됩니다. 따라서 [Node.js](https://nodejs.org/)가 설치되어 있어야 합니다. 로컬 환경에 맞게 [설치](https://nodejs.org/ko/download/)하세요.

Hugo는 따로 설치하지 않아도 됩니다. 정확한 Hugo Extended 버전이 `package.json`에 고정되어 있어, 다음 단계의 `npm ci`를 실행할 때 함께 설치됩니다.

이제 로컬에서 OpenChain-KWG 웹사이트의 코드를 빌드하고, 로컬 브라우저에서 열 수 있는 준비가 됐습니다.

다음 단계: [로컬에서 웹사이트 구동하기](local-server.md)
