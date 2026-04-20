# /project:guide-test-tools
# guide/tools 가이드 검증 커맨드

## 사용법

```
/guide-test-tools [도구명|all] [--type static|smoke|full]
```

### 도구명 값
`fossology` | `sw360` | `fosslight` | `osvscalibr` | `cdxgen` | `syft` | `dependency-track` | `cdxgen-dt` | `scanoss` | `all` (기본값)

### --type 값
- `static` (기본값): 가이드 문서 정적 검증 (도구 실행 불필요)
- `smoke`: CLI 도구 설치 및 기본 실행 확인
- `full`: Docker 포함 전체 테스트

---

## 도구별 가이드 파일 경로

| 도구명 | 경로 | 테스트 수준 |
|--------|------|------------|
| fossology | `content/ko/guide/tools/1-fossology/_index.md` | full (Docker) |
| sw360 | `content/ko/guide/tools/2-sw360/_index.md` | 수동 (복잡) |
| fosslight | `content/ko/guide/tools/3-fosslight/_index.md` | full (Docker Compose) |
| osvscalibr | `content/ko/guide/tools/4-osvscalibr/_index.md` | smoke (Go/바이너리) |
| cdxgen | `content/ko/guide/tools/5-cdxgen/_index.md` | smoke (npm) |
| syft | `content/ko/guide/tools/6-syft/_index.md` | smoke (스크립트) |
| dependency-track | `content/ko/guide/tools/7-dependency-track/_index.md` | full (Docker Compose) |
| cdxgen-dt | `content/ko/guide/tools/8-cdxgen-dt/_index.md` | full (Docker Compose) |
| scanoss | `content/ko/guide/tools/9-scanoss/_index.md` | smoke (pip) |

---

## 서브커맨드별 실행 순서

### `--type static` (정적 검증)

대상 가이드 파일을 읽고 아래 항목을 점검한다. 도구 실행 없이 문서만 분석한다.

**점검 항목:**

1. **코드 블록 언어 태그**: ` ```bash`, ` ```yaml`, ` ```json` 등 명시 여부
2. **명령어 문법**: 주요 CLI 명령어가 현재 버전과 일치하는지 (가이드 내 버전 표기와 비교)
3. **URL 유효성**: 가이드 내 외부 링크(GitHub, 공식 문서 등) 형식 정상 여부
4. **섹션 구조**: `## 주요 특징 → ## 설치 방법 → ## 기본 사용법 → ## 참고 자료` 순서 존재 여부
5. **설치 커맨드 완결성**: 설치 후 실행까지 이어지는 명령어 흐름 확인
6. **버전 명시**: Docker 이미지 태그, 패키지 버전 등에 `latest` 외 구체적 버전 권장 여부

**출력 형식:**

```
## 정적 검증 결과: {도구명}

| 항목 | 결과 | 비고 |
|------|------|------|
| 코드 블록 언어 태그 | ✅/⚠️/❌ | ... |
| 명령어 문법 | ✅/⚠️/❌ | ... |
| URL 형식 | ✅/⚠️/❌ | ... |
| 섹션 구조 | ✅/⚠️/❌ | ... |
| 설치 흐름 완결성 | ✅/⚠️/❌ | ... |
| 버전 명시 | ✅/⚠️/❌ | ... |

### 발견된 이슈
1. {이슈 설명}
   - 위치: {파일}:{줄번호 또는 섹션}
   - 제안: {수정 방향}

### 권장 다음 명령
/guide-improve tools {도구명}
테스트에서 발견된 이슈: {이슈 요약}
```

`all` 지정 시 9개 도구를 순서대로 점검하고 도구별 결과를 출력한다.
결과를 `.claude/work/TOOL-TEST-REPORT.md`에 누적 기록한다.

---

### `--type smoke` (스모크 테스트)

**대상 도구**: cdxgen, syft, osvscalibr, scanoss  
(Docker 전용 도구는 `--type full` 사용)

실행 순서:

1. 해당 도구의 가이드 파일에서 설치 명령어와 기본 사용 예시를 추출한다.
2. `.claude/work/tool-test-scripts/test-{도구명}.sh` 스크립트를 실행하도록 안내한다.
3. 사용자가 스크립트 실행 결과를 붙여넣으면 가이드 예상 결과와 비교 분석한다.
4. 차이가 있으면 이슈로 등록하고 `/guide-improve` 호출을 제안한다.

**스크립트 위치**: `.claude/work/tool-test-scripts/`

**출력 형식:**

```
## 스모크 테스트: {도구명}

### 테스트 스크립트 실행
다음 명령으로 테스트를 실행하세요:
! bash .claude/work/tool-test-scripts/test-{도구명}.sh

결과를 이 대화에 붙여넣어 주시면 분석합니다.
```

---

### `--type full` (통합 테스트)

**대상 도구**: fossology, fosslight, dependency-track, cdxgen-dt  
(SW360 제외: 엔터프라이즈급 복잡도)

실행 순서:

1. 해당 도구의 Docker Compose 기반 설치 명령을 가이드에서 추출한다.
2. `.claude/work/tool-test-scripts/test-{도구명}.sh` 스크립트를 제시한다.
3. 사용자가 스크립트를 실행하고 결과(로그, 스크린샷 설명)를 보고하면 분석한다.
4. 가이드와 실제 동작 차이를 이슈로 정리한다.

---

## 테스트 결과 기록

모든 테스트 결과는 `.claude/work/TOOL-TEST-REPORT.md`에 누적 기록한다.

---

## 워크플로우 예시

```bash
# 1단계: 전체 정적 검증 (빠른 시작)
/guide-test-tools all --type static

# 2단계: CLI 도구 스모크 테스트 (하나씩)
/guide-test-tools cdxgen --type smoke
/guide-test-tools syft --type smoke
/guide-test-tools scanoss --type smoke
/guide-test-tools osvscalibr --type smoke

# 3단계: Docker 도구 통합 테스트
/guide-test-tools dependency-track --type full
/guide-test-tools fosslight --type full

# 가이드 보완 (이슈 발견 시)
/guide-improve tools cdxgen
테스트에서 발견된 이슈: {발견 내용}
```
