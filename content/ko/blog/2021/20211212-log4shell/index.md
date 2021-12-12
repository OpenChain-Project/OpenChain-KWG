---
date: 2021-12-12
title: "Log4j 2 보안 취약점 사태 (Log4Shell)"
linkTitle: "Log4Shell RCE"
description: "오픈소스 보안 이슈 Log4Shell과 관련된 내용을 정리합니다."
author: Robin Hwang ([@revfactory](https://github.com/revfactory))
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Robin Hwang"
---

Apache Log4j 2에서 발생한 취약점([CVE-2021-44228, NVD](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-44228))을 통해 악성코드 감염 등 추가 피해가 발생할 수 있어 전 세계적으로 긴급 보안 업데이트 조치 (2021.11.10)가 있었으며, 관련 내용을 정리합니다.  

### Log4j
Log4j는 로그를 목적으로 Java 기반의 웹서비스에서 대부분 사용되는 Apache 재단의 오픈소스입니다.
![log4j-logo](log4j.png)


### 경과
- 2021.11.24 알리바바 클라우드 보안팀에서 최초로 발견 ([Apache 공지](https://logging.apache.org/log4j/2.x/security.html))
- 2021.11.30 Log4j팀, [Restrict LDAP access via JNDI](https://github.com/apache/logging-log4j2/pull/608) pull request 추가 (12/5 Merged)
- 2021.11.30 Log4j팀, [no longer formats lookups in messages by default](https://github.com/apache/logging-log4j2/pull/607) pull request 추가 (12/5 Merged)
- 2021.12.09 log4j 2 보안 이슈 PR과 취약성 재현 스샷이 한 [트윗](https://twitter.com/P0rZ9/status/1468949890571337731)에 올라오면서 이슈가 퍼지기 시작
- 2021.12.10 마인크래프트 기술 책임자가 관련 이슈 수정하였다며 [트윗](https://twitter.com/slicedlime/status/1469150993527017483)으로 알리면서 본격 이슈화
- 2021.12.10 Log4j 2.15.0 버전 릴리즈 로 보안 취약성 패치
- 2021.12.12 Log4j팀, [Disable JNDI by default](https://github.com/apache/logging-log4j2/commit/44569090f1cf1e92c711fb96dfd18cd7dccc72ea) 추가
- 2021.12.12 Log4j 2.15.1 버전 릴리즈 후보 (JNDI 기본값 Disable)

### 보도자료 (국내)
- 2021.12.11 ["컴퓨터 역사상 최악 취약점 발견" 전세계 보안업계 화들짝](https://www.yna.co.kr/view/AKR20211211035951009?section=popup/print)
- 2021.12.11 [거의 모든 서버 위협하는 최악의 '로그4j' 보안허점 발견](https://news.naver.com/main/tool/print.naver?oid=092&aid=0002241848)
- 2021.12.11 ["컴퓨터 역사상 최악의 취약점 발견" 보도에 국정원 "선제적 조치 취해"](https://news.naver.com/main/tool/print.naver?oid=421&aid=0005778626)
- 2021.12.12 [과기정통부, '치명적 보안 취약' 오픈소스 '로그4j' 긴급 보안조치 권고](https://v.kakao.com/v/20211212103345131)
- 2021.12.12 ["최악의 보안 결함"..발칵 뒤집힌 IT업계](https://v.kakao.com/v/20211212180303915)
- 2021.12.12 [전자신문, 피해 파악 어려워..SW 세부 내역 파악해야](https://v.kakao.com/v/20211212184805464)
- 2021.12.12 [IT서버 해킹 우려에 '긴급 대응팀' 가동](https://v.kakao.com/v/20211212193223921)
- 해외 기사는 "Log4Shell" 로 검색

### 대응방안
- 2021.12.06 [Apache 2.15.0 CVE-2021-44228 관련 내용 고지](https://logging.apache.org/log4j/2.x/)
- 2021.12.10 [Spring, Log4J2 Vulnerability and Spring Boot](https://spring.io/blog/2021/12/10/log4j2-vulnerability-and-spring-boot) (영문)
- 2021.12.11 [KISA, Apache Log4j 2 보안 업데이트 권고](https://www.krcert.or.kr/data/secNoticeView.do?bulletin_writing_sequence=36389)
- 2021.12.12 [과기정통부, Apache Log4j 2 웹 서비스 긴급 보안패치 권고](https://www.korea.kr/news/pressReleaseView.do?newsId=156485848) (가이드는 위 내용과 동일)


### 대응 사례 (참고)
- 2021.12.10 [AWS, Apache Log4j2 Issue](https://aws.amazon.com/ko/security/security-bulletins/AWS-2021-005) (영문)
- 2021.12.11 [Cloudflare Security의 Log4j 2 취약점 대응](https://blog.cloudflare.com/how-cloudflare-security-responded-to-log4j2-vulnerability/) (영문)


### 영향범위
- Log4j 2.0-beta9 부터 2.15.x 이전 버전

- [Spring Boot 관련](https://spring.io/blog/2021/12/10/log4j2-vulnerability-and-spring-boot)
  - Spring Boot는 또 다른 로그 라이브러리인 Logback을 디폴트로 하고 있으며,  
    [기본 로깅 시스템을 Log4j2로 전환한 경우](https://docs.spring.io/spring-boot/docs/current/reference/html/howto.html#howto.logging.log4j) 취약점의 영향을 받습니다.
  - 2021.12.12 현재 최신 버전인 Spring Boot 2.6.1 에서는 Log4j2 로 전환시 버전을
  명시하지 않으면 1.14.1 로 설치됨
  - 현재 릴리즈 전인 Spring Boot 2.6.2 에서는 Log4j 2.15.x 로 업데이트 예정


### 알려진 취약성 검사 스캐너
- [Labrador Log4Shell 코드 레벨 점검 도구](https://labrador.iotcube.com/) (래브라도와 고려대 보안연구소 공동 개발)
- [Huntress Log4Shell Testing Application](https://github.com/huntresslabs/log4shell-tester)

- Labrador Log4Shell 테스트
  - (Step1) Package Management를 통한 스캔 후, (Step2) Jar 파일 스캔 수행
  - Spring Boot 2.6.1 샘플 프로젝트([Github](https://github.com/revfactory/log4j-vulnerability-test))로 테스트 ([직접 생성하기](https://start.spring.io/#!type=maven-project&language=java&platformVersion=2.6.1&packaging=jar&jvmVersion=11&groupId=com.kakao.opensource&artifactId=log4j-vulnerability-test&name=log4j-vulnerability-test&description=Demo%20project%20for%20Spring%20Boot&packageName=com.kakao.opensource.log4j-vulnerability-test&dependencies=web))
  $java -jar LabradorLog4ShellDetector.jar -project [path]
  - Spring 기본 프로젝트 스캔 수행시 : 취약점 없음
    ![labrador-test1](labrador-test1.png)
  - [Log4j2 로 로깅 시스템 전환 후](https://docs.spring.io/spring-boot/docs/current/reference/html/howto.html#howto.logging.log4j)
    ![labrador-test2](labrador-test2.png)


### 취약성 공격 방식
- log4shell 은 RCE(원격코드실행) 취약성으로 분류됩니다.
- 제로데이 Attack (공표되었지만 아직까지 패치되지 않은 보안 취약점을 이용한 공격) 위험이 있습니다.
- [상세 내용 참고](https://www.hahwul.com/2021/12/11/log4shell-internet-is-on-fire/)
  ![log4shell-exploit-flow](log4shell-exploit-flow.png)
  [이미지 출처](https://www.hahwul.com/2021/12/11/log4shell-internet-is-on-fire/)


### 정부, 오픈소스 사용실태 조사 검토
국내 피해사례는 나오지 않았지만 이번 사태로 사이버 보안 위협에 대한 경각심은 커지고 있다. 이번처럼 외부업체가 공급하는 소프트웨어를 고리로 한 해킹 공격이 잇따르고 있어서다. 업계에선 이를 '공급망 공격'이라 부른다.

지난해 세계 보안업계를 떠들썩하게 만든 '솔라윈즈' 해킹 사건이 대표적이다. 솔라윈즈는 다수 기업의 네트워크 시스템 관리용 소프트웨어를 만드는 미국 회사다. 지난해 국제 해커 조직이 이 회사 소프트웨어에 악성코드(트로이목마)를 심어 미 연방정부 등 서버에 침투한 사실이 드러나 미 정부가 긴급 조치를 내리기도 했다. 솔라윈즈의 30만 고객 가운데 2만여 곳이 악성코드를 내려받았다.

정부도 오픈소스 소프트웨어의 보안 수위를 높이는 방향을 고민하고 있다. 과기부 관계자는 "오픈소스가 워낙 많다 보니 앞으로 유사 사고가 발생할 가능성이 크다"며 "사용 실태조사 등 후속조치를 고민하고 있다"고 말했다.

([기사내용](https://v.kakao.com/v/20211212233003588) 발췌)

---------
