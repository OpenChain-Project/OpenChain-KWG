# Tool Test Report

`content/ko/guide/tools/` 가이드 검증 결과를 누적 기록합니다.

---

## 테스트 현황

| 도구 | 정적 검증 | 스모크/통합 | 최근 테스트 | 발견 이슈 | 수정 상태 |
|------|-----------|------------|------------|-----------|-----------|
| FOSSology | ✅ | - | 2026-04-20 | 코드 블록 text→bash, 외부 이미지 5개 제거 | ✅ 완료 |
| SW360 | - | 수동 | - | - | - |
| FOSSLight | ✅ | ✅ | 2026-04-21 | 가이드 전면 재작성 + Dep Scanner 자동화: 포트 8080→8180, -f cyclonedx→yaml(macOS 호환), PATH 탐색 추가 | ✅ 완료 |
| OSV-SCALIBR | ✅ | ✅ | 2026-04-20 | scan 서브커맨드 없음, --output/--image 플래그 오류, go build 경로 오류 | ✅ 완료 |
| cdxgen | ✅ | ✅ | 2026-04-20 | SECURE MODE 경고 안내 추가 | ✅ 완료 |
| Syft | ✅ | ✅ | 2026-04-20 | 이슈 없음 | ✅ 완료 |
| Dependency-Track | ✅ | ✅ | 2026-04-20 | docker-compose.yml URL 302→직접 GitHub Raw URL 교체 | ✅ 완료 |
| cdxgen+DT | ✅ | - | 2026-04-20 | docker-compose.yml URL 302→직접 GitHub Raw URL 교체 | ✅ 완료 |
| SCANOSS | ✅ | ✅ | 2026-04-20 | `component crypto` → `convert` 명령어 수정 | ✅ 완료 |

**결과 범례**: ✅ 통과 / ⚠️ 경고 / ❌ 실패 / - 미실시

---

## 테스트 기록

<!-- 테스트 실행 후 아래 형식으로 추가됩니다 -->

### {도구명} — {날짜}

**테스트 유형**: static | smoke | full  
**환경**: macOS / Linux, Docker x.x, Node x.x 등

#### 결과

| 항목 | 결과 | 비고 |
|------|------|------|
| ... | ... | ... |

#### 발견 이슈

1. {이슈 설명}
   - 위치: `파일명:섹션`
   - 제안: {수정 방향}
   - 수정 상태: 미수정 / PR #{번호} / 완료

---

## 스크립트 위치

| 스크립트 | 대상 도구 | 실행 방법 |
|---------|---------|---------|
| `test-cdxgen.sh` | cdxgen | `bash .claude/work/tool-test-scripts/test-cdxgen.sh` |
| `test-syft.sh` | Syft | `bash .claude/work/tool-test-scripts/test-syft.sh` |
| `test-osvscalibr.sh` | OSV-SCALIBR | `bash .claude/work/tool-test-scripts/test-osvscalibr.sh` |
| `test-scanoss.sh` | SCANOSS | `bash .claude/work/tool-test-scripts/test-scanoss.sh` |
| `test-dependency-track.sh` | Dependency-Track | `bash .claude/work/tool-test-scripts/test-dependency-track.sh` |
| `test-fosslight-dep.sh` | FOSSLight Dependency Scanner | `bash .claude/work/tool-test-scripts/test-fosslight-dep.sh` |
