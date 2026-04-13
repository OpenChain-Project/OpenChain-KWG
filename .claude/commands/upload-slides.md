# 발표자료 GitHub Releases 업로드

미팅 발표자료를 GitHub Releases에 업로드하고 페이지에 링크를 연결한다.

## 입력값 확인

- 미팅 회차 (예: 31)
- 미팅 연도 (예: 2026)
- 업로드할 파일 목록 및 각 파일이 해당하는 세션

## 실행 절차

1. **GitHub Releases 태그 확인**
   - 태그명 규칙: `meeting-slides-YYYY` (연도 단위, 회차 단위 아님)
   - URL: `https://github.com/OpenChain-Project/OpenChain-KWG/releases/tag/meeting-slides-YYYY`
   - 해당 연도 태그의 Release가 없으면 새로 생성:
     - GitHub 저장소 → Releases → Draft a new release
     - 태그: `meeting-slides-YYYY`
     - 제목: `YYYY년 미팅 발표자료`

2. **파일 업로드**
   - 해당 Release에 파일 첨부 (Attach binaries)
   - 파일명 규칙: `YYYYMMDD-발표자-주제키워드.pdf`
   - 영문, 숫자, 하이픈(-), 언더스코어(_), 점(.)만 사용 (공백·한글·특수문자 금지)

3. **URL 수집**
   - 업로드된 각 파일의 직접 다운로드 URL 확인
   - URL 형식: `https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf`

4. **페이지 링크 업데이트**
   - `content/ko/meeting/YYYY/NNth/_index.ko.md` 열기
   - 해당 세션의 Slide 열에 URL 입력
   - `content/en/meeting/YYYY/NNth/_index.en.md` 동일하게 반영

5. **확인 및 PR**
   - 로컬에서 링크 정상 여부 확인 (`hugo server -D`)
   - 브랜치명: `slides/NNth`
   - PR 제목: `[Slides] NNth 정기 미팅 발표자료 링크 추가`
