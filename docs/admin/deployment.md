# 수정 사항 반영 및 Deployment

develop branch의 수정 사항에 대한 [Review와 Test](review-test.md)가 완료되었으면 이를 master branch에 반영하고 deploy합니다.

## Master branch로 수정사항 Merge

먼저 origin이 OpenChain-Project repository임을 확인합니다.

```bash
$ git remote -v
origin  https://github.com/OpenChain-Project/OpenChain-KWG.git (fetch)
origin  https://github.com/OpenChain-Project/OpenChain-KWG.git (push)
```

master branch로 checkout하고 origin/master를 pull합니다.

```bash
$ git checkout master
$ git pull origin master
```

그 상태에서 origin/develop을 master branch에 merge하고, origin remote에 push합니다.

```bash
$ git merge origin/develop
$ git push origin master
```

## Deployment

OpenChain KWG 웹사이트는 GitHub Actions를 통해 master branch에 push되면 자동으로 GitHub Pages에 배포됩니다.

수동 배포가 필요한 경우 아래 스크립트를 사용할 수 있습니다.

```bash
$ ./publish_to_ghpages.sh
```

이 스크립트는 gh-pages branch에 빌드 결과물을 push하여 웹사이트 deploy를 완료합니다.
