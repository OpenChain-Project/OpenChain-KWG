# 가이드 하네스 사용 방법

OpenChain KWG 가이드(`content/ko/guide/`) 작성·개선·관리를 위한
에이전트·스킬·규칙 기반 하네스 사용 방법.

---

## 구성 요소 한눈에 보기

```
.claude/
├── agents/
│   ├── guide-auditor.md        # 가이드 완성도·일관성 감사
│   ├── guide-writer.md         # 조항 단위 작성·개선 (승인 기반)
│   ├── cross-link-checker.md   # 교차 참조 링크 검증
│   └── evidence-verifier.md    # ISO 입증자료 충족 검증
├── commands/
│   ├── guide-improve.md        # 오케스트레이터 (진입점)
│   ├── guide-resume.md         # 세션 재개
│   ├── guide-verify-evidence.md  # 단건 입증자료 점검
│   ├── guide-check-policy.md   # 정책 템플릿 조항 점검
│   ├── guide-check-links.md    # 링크 유효성 점검
│   └── guide-check-sbom-process.md  # SBOM 절차 점검
└── rules/
    ├── guide-writing.md        # 가이드 작성 규칙 (항상 적용)
    └── tag-management.md       # 태그 규칙 (항상 적용)
```

---

## 진입점: `/guide-improve`

모든 가이드 개선 작업의 시작점. 서브커맨드로 작업을 지정한다.

### 1. 현황 파악
```
/guide-improve status
```
TODO.md 진행률 + 입증자료 점검 현황 + 권장 다음 작업을 요약한다.

**새 세션을 시작할 때 가장 먼저 실행.**

---

### 2. 전체 감사
```
/guide-improve audit
/guide-improve audit 5230        # ISO 5230 가이드만
/guide-improve audit 18974       # ISO 18974 가이드만
/guide-improve audit enterprise  # 기업 오픈소스 관리 가이드만
/guide-improve audit tools       # 도구 페이지만
```
각 가이드의 완성도(섹션 누락 여부)와 교차 참조 현황을 점검하고 개선 우선순위 목록을 반환한다.

---

### 3. 특정 조항 개선
```
/guide-improve section 5230 3.1.2        # ISO 5230 §3.1.2 역량 조항
/guide-improve section 18974 4.1.2.3     # ISO 18974 §4.1.2.3 항목
/guide-improve section enterprise 3      # 기업 가이드 3-process 섹션
```
지정한 조항을 읽고 개선 초안을 **diff 형식**으로 제시한다.
**"진행해줘"라고 승인해야 실제 파일이 수정된다.**

---

### 4. 교차 참조 링크 점검
```
/guide-improve links             # 점검만 (수정 없음)
/guide-improve links fix         # 점검 후 수정 제안도 함께
```
3개 가이드 + Templates + Tools 간 상호 참조 링크를 양방향으로 검증한다.
- 깨진 링크 → 올바른 경로 제안
- 누락된 역방향 링크 → 추가 문구 제안

---

### 5. 입증자료 충족 점검
```
/guide-improve evidence 5230             # ISO 5230 전체 25개 배치 점검
/guide-improve evidence 18974            # ISO 18974 전체 25개 배치 점검
/guide-improve evidence 5230 3.1.1.1     # 단건 점검
```
결과는 자동으로 `content/ko/guide/EVIDENCE-CHECK.md`에 누적 기록된다.

단건 점검은 기존 커맨드로도 가능:
```
/guide-verify-evidence 5230 3.1.1.1
```

---

## 기타 유용한 커맨드

| 커맨드 | 용도 | 언제 쓰나 |
|--------|------|---------|
| `/guide-resume` | TODO.md 기반 세션 재개 | 이전 작업을 이어서 할 때 |
| `/guide-check-policy` | 정책 템플릿 ISO 조항 충족 점검 | templates/1-policy 수정 후 |
| `/guide-check-sbom-process` | SBOM 절차 점검 | templates/2-process 수정 후 |
| `/guide-check-links` | 링크 유효성 점검 | 내부 링크가 많이 바뀐 후 |
| `/guide-new-tool-page` | 새 도구 페이지 추가 | tools/ 에 새 도구 추가 시 |

---

## 일반적인 작업 흐름

### 패턴 1: 새 세션 시작
```
1. /guide-improve status       → 현황 파악
2. /guide-improve audit        → 개선 필요 항목 확인
3. /guide-improve section ...  → 우선순위 항목부터 개선
4. /guide-improve links        → 교차 참조 일관성 확인
```

### 패턴 2: 특정 조항 집중 개선
```
1. /guide-verify-evidence 5230 3.2.1.1   → 현재 충족 여부 확인
2. /guide-improve section 5230 3.2.1     → 개선 초안 제시
3. 승인("진행해줘") → 파일 수정
4. /guide-improve links                  → 교차 참조 영향 확인
```

### 패턴 3: 연간 정기 점검
```
1. /guide-improve evidence 5230    → ISO 5230 전체 배치 점검
2. /guide-improve evidence 18974   → ISO 18974 전체 배치 점검
3. /guide-improve audit all        → 완성도 감사
4. /guide-improve links            → 교차 참조 검증
5. EVIDENCE-CHECK.md 결과로 TODO.md 개선 항목 추가
```

---

## 안전 장치 (승인 없이 파일 수정 금지)

모든 에이전트는 다음 원칙을 따른다:

- **감사 / 점검 / 링크 체크** → 파일을 절대 수정하지 않음 (읽기 전용)
- **섹션 작성·개선** → diff 초안 제시 후 반드시 사용자 승인 대기
- **EVIDENCE-CHECK.md** → evidence-verifier가 자동 기록 (유일한 자동 쓰기)

승인 키워드: `"진행해줘"` / `"ok"` / `"적용해"`
거부/수정 요청: 자유롭게 의견 전달 → 에이전트가 반영 후 재제시

---

## 가이드 간 관계 (참고)

```
ISO/IEC 5230 가이드  ←──────────────→  기업 오픈소스 관리 가이드
(라이선스 컴플라이언스 조항별)           (실무 구현 방법: 정책·프로세스·도구·조직)
         │                                        │
         │  25개 입증자료                          │  6개 섹션
         │                                        │
ISO/IEC 18974 가이드  ←─────────────→  Templates / Tools
(보안 보증 조항별)                       (정책·프로세스 템플릿, 도구 소개)
```

- **ISO 5230 ↔ 기업 가이드**: 조항별 ↔ 실무 구현 방법 상호 링크
- **ISO 18974 ↔ ISO 5230**: 9개 전용 항목 + 나머지는 5230 준용
- **Templates**: 다수 입증자료의 샘플 기반 (정책·프로세스 템플릿)
- **Tools**: 기업 가이드 4-tool 섹션과 연결
