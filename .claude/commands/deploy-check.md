# 배포 전 체크리스트

PR merge 또는 master push 전에 수행하는 사전 점검.

## 체크리스트

1. **빌드 테스트**
   ```bash
   hugo --minify
   ```
   오류 없이 완료되는지 확인

2. **발표자료 파일 커밋 여부 확인**
   ```bash
   git diff --cached --name-only | grep -E '\.(pdf|pptx|ppt|key)$'
   ```
   결과가 있으면 커밋에서 제외하고 GitHub Releases로 안내 (`/upload-slides` 참고)

3. **static/ 디렉토리 용량 확인**
   ```bash
   du -sh static/
   ```
   100MB 초과 시 경고

4. **다국어 동기화 확인**
   `/sync-check` 실행

5. **로컬 미리보기 최종 확인**
   ```bash
   hugo server -D
   ```
   변경된 페이지 직접 접속하여 렌더링 확인
