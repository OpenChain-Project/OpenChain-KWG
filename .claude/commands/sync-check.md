# ko/en 콘텐츠 동기화 확인

한국어와 영어 콘텐츠의 동기화 상태를 점검한다.

## 실행 절차

1. **파일 목록 비교**
   ```bash
   find content/ko -name "*.md" | sed 's|content/ko/||' | sort > /tmp/ko_files.txt
   find content/en -name "*.md" | sed 's|content/en/||' | sort > /tmp/en_files.txt
   diff /tmp/ko_files.txt /tmp/en_files.txt
   ```

2. **결과 분석**
   - ko에만 있는 파일: 영어 번역 또는 stub 페이지 필요
   - en에만 있는 파일: 한국어 페이지 누락 확인

3. **보고**
   - 누락 파일 목록을 표로 정리
   - 각 항목에 대해 조치 방안 제안 (번역 필요 / stub 생성 / 삭제)