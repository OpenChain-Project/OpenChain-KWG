---
title: "{{ path.Base .File.Dir }} Meeting"
date: {{ .Date }}
weight: {{ replaceRE "[^0-9]" "" (path.Base .File.Dir) }}
type: docs
categories: ["meeting"]
tags: [""]
description: >
  YYYY년 MM월 DD일 (요일) / 주최기관
draft: false
---

## 일정

* 일정: YYYY-MM-DD (요일) 오후 N시~N시
* 장소: 장소명 (지역 - https://maps.app.goo.gl/XXXXX )

## 아젠다

| Time        | Agenda                        | Speaker                          | Slide |
|-------------|-------------------------------|----------------------------------|-------|
| 00:00~00:00 | 웰컴 & 오프닝                 | 발표자, 소속                      | -     |
| 00:00~00:00 | 발표 제목                     | 발표자, 소속                      | [pdf](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf) |
| 00:00~00:00 | 네트워킹                      | All                              | -     |

## 발표자료

| 제목 | 발표자 | 자료 |
|---|---|---|
| 발표 제목 | 발표자명 | [PDF](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf) |

<!--
첨부파일 업로드 방법:
1. GitHub Releases 페이지 접속:
   https://github.com/OpenChain-Project/OpenChain-KWG/releases/tag/meeting-slides-YYYY
   (YYYY를 해당 연도로 변경. 태그가 없으면 새로 생성)
2. 파일명 규칙 준수:
   - 영문, 숫자, 하이픈(-), 언더스코어(_), 점(.)만 사용
   - 공백·한글·특수문자 사용 금지
   - 권장 형식: YYYYMMDD-발표자-주제키워드.pdf
3. 업로드 후 다운로드 URL 복사:
   https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf
4. 위 표의 링크 URL을 복사한 URL로 교체
-->

## Sponsor

![](../../../images/content/about/logo/회사로고.png)

## 참가기업

<!--
미팅 후 참가기업 목록을 추가하세요.
-->
- 기업명

## 회의록

<!--
미팅 후 회의록 내용을 추가하세요.
주요 논의 사항, 결정 사항, 액션 아이템 등을 기록합니다.
-->

## 다음 미팅

* 예정일: YYYY년 MM월 (미정)
* 주최: 미정

## Album

<!--
미팅 후 Flickr 앨범이 생성되면 아래 embed 코드를 교체하세요.
<a data-flickr-embed="true" href="https://www.flickr.com/photos/198570149@N05/albums/ALBUM_ID" title="ALBUM_TITLE"><img src="THUMBNAIL_URL" width="1024" height="768" alt="ALBUM_TITLE"/></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>
-->
