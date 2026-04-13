# /project:guide-check-sbom-process
# 프로세스 템플릿 SBOM 관련 절차 점검

## 실행 순서

1. templates/2-process-template/_index.md 를 읽는다
2. 아래 항목이 각 단계에 포함되어 있는지 점검한다:
   - SBOM 표준 형식(SPDX/CycloneDX) 지정 여부
   - SBOM 정확성 검증 절차 존재 여부
   - SBOM 고객 배포 절차 존재 여부
   - 컴포넌트 변경 시 SBOM 갱신 트리거 존재 여부
   - 외부 문의 대응 기록 보관 기간 명시 여부
   - CVD(Coordinated Vulnerability Disclosure) 공개 타이밍 절차 여부
3. 아래 형식으로 출력한다:

| 점검 항목 | 존재 여부 | 위치(단계명) | 비고 |

존재 여부 기호: ✅ 있음 / ⚠️ 부분 있음 / ❌ 없음

4. 누락/부분 항목에 대해 추가 위치와 문구 초안을 제안한다
5. 승인 전까지 파일을 수정하지 않는다
