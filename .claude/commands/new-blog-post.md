# 새 블로그 포스트 작성

블로그 포스트를 생성하는 절차를 수행한다.

## 입력값 확인

사용자에게 아래 정보를 확인한다 (이미 제공된 경우 생략):
- 포스트 주제/제목
- 작성 언어 (ko / en / 양쪽)
- 카테고리 또는 태그 (예: license, compliance, sbom)

## 실행 절차

1. **연도 디렉토리 확인**
   - `content/ko/blog/YYYY/` 디렉토리 존재 여부 확인
   - 없으면 `_index.md` 포함하여 생성

2. **파일 경로 결정**
   - 디렉토리명: `YYYYMMDD-주제키워드` (영문, 하이픈 사용)
   - 예: `content/ko/blog/2026/20260701-sbom-introduction/index.md`

3. **프런트매터 작성**
   ```yaml
   ---
   title: "제목"
   linkTitle: "짧은 제목"
   date: YYYY-MM-DD
   description: >
     한 줄 요약
   author: 작성자
   categories: ["카테고리"]
   tags: ["태그1", "태그2"]
   ---
   ```

4. **본문 작성**
   - 마크다운으로 작성
   - 이미지가 있으면 같은 디렉토리에 저장 (`featured-*.png`는 썸네일로 사용됨)

5. **다국어 동기화**
   - ko 작성 시 `content/en/blog/YYYY/동일디렉토리/index.md` 도 생성 (번역 또는 stub)
   - stub 예시: 프런트매터만 작성 후 `(Korean only)` 표시

6. **확인 및 PR**
   ```bash
   hugo server -D
   ```
   - 브랜치명: `blog/주제키워드`
   - PR 제목: `[Blog] 제목`
