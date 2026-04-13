# 새 미팅 페이지 생성

새로운 정기 미팅 페이지를 생성하는 전체 절차를 수행한다.

## 입력값 확인

사용자에게 아래 정보를 확인한다 (이미 제공된 경우 생략):
- 미팅 회차 (예: 32)
- 미팅 연도/날짜 (예: 2026-07-10)
- 발표 세션 수 및 각 세션의 제목, 발표자

## 실행 절차

1. **파일 생성** (`archetypes/meeting.md` 아키타입 사용)
   ```bash
   hugo new meeting/YYYY/NNth/_index.ko.md
   ```
   - 파일 생성 위치: `content/ko/meeting/YYYY/NNth/_index.ko.md`
   - en 버전은 ko 파일을 복사하여 `content/en/meeting/YYYY/NNth/_index.en.md` 생성

2. **프런트매터 작성**
   ```yaml
   title: "NNth Meeting"
   date: YYYY-MM-DD
   weight: NN
   type: docs
   categories: ["meeting"]
   description: >
     YYYY년 MM월 DD일 (요일) / 주최기관
   draft: false
   ```

3. **아젠다 작성**
   - 세션별 시간, 제목, 발표자, Slide 링크(미정 시 `-` 또는 `TBD`)

4. **발표자료 안내**
   - 발표자료는 미팅 후 GitHub Releases에 업로드
   - 태그 규칙: `meeting-slides-YYYY`
   - 업로드 후 `/upload-slides` command로 링크 추가

5. **다국어 동기화 확인**
   - ko와 en 파일 둘 다 생성되었는지 확인
   - en 파일은 영문 내용으로 작성 (또는 ko 내용 유지 + 향후 번역 예정 표시)

6. **로컬 미리보기 확인**
   ```bash
   hugo server -D
   ```

7. **PR 생성**
   - 브랜치명: `meeting/NNth`
   - PR 제목: `[Meeting] NNth 정기 미팅 페이지 추가`
