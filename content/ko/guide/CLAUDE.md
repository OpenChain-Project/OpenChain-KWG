# 2026 기업 오픈소스 관리 가이드 개선 프로젝트

## 목적
이 디렉토리의 가이드를 2026년 기준으로 개선한다.
ISO/IEC 5230(오픈소스 컴플라이언스)과 ISO/IEC 18974(보안 보증) 두 표준을 기반으로 한다.
작업 브랜치: guide/2026-enterprise-oss-guide

## 디렉토리 구조
- opensource_for_enterprise/ : 메인 가이드 (6개 섹션)
- templates/1-policy/        : 오픈소스 정책 템플릿
- templates/2-process-template/ : 오픈소스 프로세스 템플릿
- tools/                     : 도구 페이지 (fossology, sw360, fosslight, osvscalibr)

## 작업 원칙
1. 파일 수정 전 반드시 변경 내용을 diff 형식으로 먼저 제안한다
2. 사람의 승인("진행해줘") 없이는 어떤 파일도 수정하거나 생성하지 않는다
3. 한 번에 하나의 항목씩 처리한다
4. 기존 문서의 문체, 용어, ISO 조항 참조 형식을 그대로 따른다
5. 각 항목 완료 후 TODO.md를 즉시 업데이트한다
6. 작업 완료 항목은 hugo --minify 빌드 검증 후 git commit한다

## 다국어 동기화 규칙 (루트 CLAUDE.md 준수)
- ko/ 수정 시 content/en/guide/ 대응 파일도 함께 수정하는 것이 원칙
- 단, 이번 1차 작업은 ko/ 우선 작업 후 en/ 동기화를 별도 이슈로 관리한다
- 한쪽만 수정한 채 PR을 올리지 않는다 → PR 본문에 en/ 동기화 TODO를 명시한다

## 도구 페이지 작성 기준
- tools/1-fossology/_index.md 의 구조를 기준으로 삼는다
- Frontmatter 필수 필드: title, weight, type: docs, categories: ["guide"], tags
- 섹션 순서: 소개/특징 → 설치 방법 → 기본 사용법/워크플로우
- 코드 블록: bash/yaml 포함, 실행 가능한 형태로 작성
- 외부 링크: 공식 문서, GitHub 저장소 명시

## 정책/프로세스 템플릿 수정 기준
- 기존 문장 스타일과 ISO 조항 참조 형식을 그대로 따른다
- 수정 시 최소 변경 원칙: 필요한 부분만 추가하고 기존 내용 보존
- ISO 조항 번호는 항상 병기한다 (예: ISO/IEC 5230 §3.4.1.2)

## ISO 입증자료 충족 여부 점검

### 점검 방법
- 커스텀 커맨드: `/project:guide-verify-evidence {표준번호} {입증자료번호}`
  - 예: `/project:guide-verify-evidence 5230 3.1.1.1`
  - 커맨드 정의: `.claude/commands/guide-verify-evidence.md`
- 점검 기준 원문: `.claude/reference/iso-5230.md` / `.claude/reference/iso-18974.md`
- 점검 결과 누적: `EVIDENCE-CHECK.md`

### 점검 기준
| 판정 | 의미 |
|------|------|
| ✅ 충족 | 입증자료 요건을 가이드·템플릿에서 명시적으로 다루며, 기업이 따르면 실제 제출 가능한 수준 |
| ⚠️ 부분 충족 | 관련 내용은 있으나 설명 부족 또는 샘플 없음 |
| ❌ 누락 | 관련 내용이 어디에도 없음 |

### 가이드 간 의존 관계
- `iso18974_guide/`의 많은 항목이 `iso5230_guide/`의 대응 조항을 준용한다.
  ISO 18974 전용(★) 9개 항목: 4.1.2.3, 4.1.2.5, 4.1.2.6, 4.1.4.2, 4.1.4.3, 4.1.5.1, 4.2.2.3, 4.3.2.1, 4.3.2.2
- `opensource_for_enterprise/` 섹션과 `iso5230_guide/` / `iso18974_guide/` 조항 가이드는 서로 교차 링크한다.
  `opensource_for_enterprise/` 수정 시 대응 조항 가이드의 "참고" 링크도 함께 확인한다.
- `templates/1-policy/`와 `templates/2-process-template/`은 다수 입증자료의 샘플 기반이다.
  템플릿 수정 시 연관 조항 가이드의 "샘플" 섹션과 정합성을 유지한다.

### 주요 결정 사항
- ISO/IEC 5230 입증자료 번호는 25개(표준 원문 기준). 기존 파일에 "24개"로 잘못 기재된 경우 25개로 수정한다.
- 점검 주기: 연 1회 정기 점검 + 가이드 대규모 수정 후 영향 범위 재점검 권장.
- 가이드 파일을 수정할 때 해당 조항의 입증자료 충족 여부가 변경될 수 있으므로,
  EVIDENCE-CHECK.md의 관련 항목을 즉시 업데이트한다.

## 가이드 하네스 사용

이 가이드 디렉토리 작업에는 전용 에이전트·스킬·규칙 하네스를 사용한다.

- **사용 방법 전체**: `.claude/GUIDE-HARNESS.md` 참고
- **오케스트레이터**: `/guide-improve` (audit / section / links / evidence / status)
- **에이전트 정의**: `.claude/agents/` (guide-auditor / guide-writer / cross-link-checker / evidence-verifier)
- **규칙**: `.claude/rules/guide-writing.md` (모든 가이드 작업에 자동 적용)

## 세션 재개 시 첫 번째 지시

```
/guide-improve status
```

TODO.md 진행률 + 입증자료 점검 현황 + 권장 다음 작업을 한 번에 확인한다.
