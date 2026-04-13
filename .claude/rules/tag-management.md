# Tag Management Rules

태그 관련 작업 시 반드시 준수해야 할 규칙.

## 파일 읽기 규칙

- 마크다운 파일 처리 시 **본문(body)은 절대 읽지 않는다**
- 프론트매터의 **`title`, `tags` 속성만 추출**한다
- 스크립트에서 프론트매터 파싱 후 body 부분은 무시한다

## 파일 수정 규칙

- 파일 수정 시 **본문과 다른 프론트매터 속성은 절대 변경하지 않는다**
- `tags` 값만 대체한다 (date, title, author, categories 등 불변)
- 수정 전 항상 dry-run 먼저 실행하여 변경 목록 확인

## 작업 파일 저장 위치

- 모든 중간 작업 파일은 `.claude/work/` 디렉토리에 저장
- 주요 파일:
  - `.claude/work/current_tags.json` — 현재 태그 현황 추출 결과
  - `.claude/work/tag_mapping.json` — 표준화 매핑 제안
  - `.claude/work/update_tags.py` — 일괄 적용 스크립트

## 승인 절차

- 태그 표준화 사전(tag_mapping.json) 생성 후 반드시 사용자 승인 요청
- 사용자 승인 전 실제 파일 수정 금지
