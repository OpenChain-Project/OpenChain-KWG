
# OpenChain KWG Website
여기에는 OpenChain KWG Website ([https://openchain-project.github.io/OpenChain-KWG/](https://openchain-project.github.io/OpenChain-KWG/))를 위한 소스 코드가 있습니다. 

이 웹사이트는 Jekyll([https://jekyllrb-ko.github.io/](https://jekyllrb-ko.github.io/))을 기반으로 하며, JekyllUp 테마([https://github.com/jekyllup](https://github.com/jekyllup)) 중 Massively([https://github.com/jekyllup/jekyll-theme-massively](https://github.com/jekyllup/jekyll-theme-massively))를 사용하여 제작하였습니다. 

## 개발환경 구축하여 Local 서버에서 웹사이트 구동하기
1. Local PC에서 웹사이트를 개발하기 위해서는 Ruby 개발환경, Jekyll 및 Bundler 설치가 필요합니다. 이에 대한 자세한 사항은 다음 페이지를 참고하세요. : [https://jekyllrb-ko.github.io/docs/](https://jekyllrb-ko.github.io/docs/)
2. docs/의 소스 코드를 빌드하여 Local 서버로 구동하기 위해서는 먼저 임시로 _config.yml 파일 내 baseurl과 url 값을 다음과 같이 수정하세요. 
~~~yml
#baseurl: "/OpenChain-KWG" # the subpath of your site, e.g. /blog
#url: "https://OpenChain-Project.github.io" # the base hostname & protocol for your site
baseurl: "" # the subpath of your site, e.g. /blog
url: "" # the base hostname & protocol for your site
~~~
3. docs/ 디렉토리에서 필요한 gem을 설치하세요.
~~~cmd
$ sudo bundle install
~~~
4. docs/ 디렉토리에서 사이트를 빌드하고 Local 서버에 적용하면, 다음과 같이 Server가 Running합니다.
~~~
$ bundle exec jekyll serve

Configuration file: /Users/1112821/Documents/GitHub/OpenChain-KWG/docs/_config.yml
Deprecation: The 'gems' configuration option has been renamed to 'plugins'. Please update your config file accordingly.
Source: /Users/1112821/Documents/GitHub/OpenChain-KWG/docs
Destination: /Users/1112821/Documents/GitHub/OpenChain-KWG/docs/_site
Incremental build: disabled. Enable with --incremental
Generating...
done in 1.287 seconds.
Auto-regeneration: enabled for '/Users/1112821/Documents/GitHub/OpenChain-KWG/docs'
Server address: http://127.0.0.1:4000/
Server running... press ctrl-c to stop.
~~~
5. 그러면, Local PC 브라우저에서 "[http://localhost:4000/](http://localhost:4000/)" 에 접근하여 OpenChain KWG Website로 접속할 수 있습니다. 

## Meeting 추가하기
Meeting 내용은 docs/_posts/하위의 md 파일을 생성/수정함으로 웹사이트에 반영할 수 있습니다. 
1. docs/_posts/2020-06-16-6th-meeting-online.md를 열어서 필요한 내용을 수정합니다. 
2. pdf를 추가하려면 docs/assets/pdf/2020-06-16 하위에 pdf 파일을 추가합니다. 
3. 이미지 파일을 추가하려 docs/images/meeting/2020-06-16 하위에 이미지 파일을 추가합니다. 