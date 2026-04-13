# /project:guide-check-policy
# 정책 템플릿 ISO 조항 충족 여부 점검

## 실행 순서

1. templates/1-policy/_index.md 와 templates/1-policy/appendix/_index.md 를 읽는다
2. ISO/IEC 5230과 ISO/IEC 18974 요구사항 조항별로 충족 여부를 점검한다
3. 아래 형식으로 출력한다:

| ISO 조항 | 요구 내용 | 충족 여부 | 해당 섹션 | 비고 |

충족 여부 기호: ✅ 충족 / ⚠️ 부분 충족 / ❌ 누락

4. 점검 후 ⚠️ 와 ❌ 항목만 따로 요약하고
   각 항목에 대해 추가할 문구 초안을 제안한다
5. 승인 전까지 파일을 수정하지 않는다
