#!/bin/bash
# test-guide.sh — "오픈소스 관리 자동화 환경 구성: cdxgen + Dependency-Track" 가이드 검증 스크립트
#
# 사용법:
#   bash test-guide.sh
#
# 사전 요건: Docker(또는 docker-compose), Node.js, npm, curl
# 검증 환경: Dependency-Track v4.14, cdxgen v12

DT_API="http://localhost:8081"
DT_FRONTEND="http://localhost:8080"
DT_DIR="$HOME/dependency-track-test"
TEST_DIR="/tmp/dt-guide-test"
ADMIN_PASSWORD="GuideTest123!"
PASS=0
FAIL=0
WARN_COUNT=0
RESULTS=()

ok()   { echo "  [PASS] $1"; RESULTS+=("PASS | $1"); PASS=$((PASS + 1)); }
fail() { echo "  [FAIL] $1"; RESULTS+=("FAIL | $1"); FAIL=$((FAIL + 1)); }
warn() { echo "  [WARN] $1"; RESULTS+=("WARN | $1"); WARN_COUNT=$((WARN_COUNT + 1)); }
section() { echo ""; echo "=== $1 ==="; }

# docker compose 호환 래퍼
dc() {
  if docker compose version >/dev/null 2>&1; then
    docker compose "$@"
  elif command -v docker-compose >/dev/null 2>&1; then
    docker-compose "$@"
  else
    echo "오류: docker compose / docker-compose를 찾을 수 없습니다." >&2
    exit 1
  fi
}

# ─── 테스트 1: 사전 요건 확인 ────────────────────────────────
section "테스트 1: 사전 요건 확인"

if docker --version >/dev/null 2>&1; then
  ok "Docker 설치됨 ($(docker --version | awk '{print $3}' | tr -d ','))"
else
  fail "Docker 미설치"
fi

if docker compose version >/dev/null 2>&1; then
  ok "docker compose 플러그인 사용 가능"
elif command -v docker-compose >/dev/null 2>&1; then
  warn "docker compose 플러그인 없음 — docker-compose(하이픈)로 대체 실행. 가이드 명령어 수정 필요"
else
  fail "docker compose / docker-compose 모두 없음"
fi

if command -v cdxgen >/dev/null 2>&1; then
  ok "cdxgen 설치됨 ($(cdxgen --version 2>/dev/null | head -1 | tr -d '\033[1m\033[0m' || echo 'version unknown'))"
else
  fail "cdxgen 미설치 (npm install -g @cyclonedx/cdxgen)"
fi

if command -v curl >/dev/null 2>&1; then
  ok "curl 사용 가능"
else
  fail "curl 없음"
fi

# ─── 테스트 2: Dependency-Track 설치 ─────────────────────────
section "테스트 2: Dependency-Track 설치 (섹션 2 검증)"

mkdir -p "$DT_DIR" && cd "$DT_DIR" || exit 1

if curl -sSfL -o docker-compose.yml https://dependencytrack.org/docker-compose.yml 2>/dev/null; then
  ok "docker-compose.yml 다운로드 성공"
else
  fail "docker-compose.yml 다운로드 실패"
  exit 1
fi

# DOCKER_HOST 설정 (Colima 환경 대응)
if [ -S "$HOME/.colima/default/docker.sock" ] && ! docker info >/dev/null 2>&1; then
  export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"
  warn "Colima 환경 감지 — DOCKER_HOST 자동 설정"
fi

if dc up -d 2>&1; then
  ok "컨테이너 시작 (docker compose up -d)"
else
  fail "컨테이너 시작 실패"
  exit 1
fi

# ─── 테스트 3: 기동 확인 ─────────────────────────────────────
section "테스트 3: 서버 기동 확인"

echo "  프론트엔드 기동 대기 (최대 180초)..."
READY=false
for i in $(seq 1 36); do
  CODE=$(curl -s -o /dev/null -w "%{http_code}" "$DT_FRONTEND" 2>/dev/null || echo "000")
  [ "$CODE" = "200" ] && { READY=true; break; }
  printf "  [%ds 경과]\r" "$((i * 5))"
  sleep 5
done

if $READY; then
  ok "http://localhost:8080 응답 확인"
else
  fail "프론트엔드 180초 타임아웃"
  exit 1
fi

API_READY=false
for i in $(seq 1 24); do
  CODE=$(curl -s -o /dev/null -w "%{http_code}" "$DT_API/api/version" 2>/dev/null || echo "000")
  [ "$CODE" = "200" ] && { API_READY=true; break; }
  sleep 5
done

if $API_READY; then
  DT_VER=$(curl -sf "$DT_API/api/version" 2>/dev/null | grep -o '"version":"[^"]*"' | cut -d'"' -f4)
  ok "API 서버 응답 확인 (DT v${DT_VER})"
else
  fail "API 서버 응답 없음 (localhost:8081)"
  exit 1
fi

# ─── 테스트 4: 초기 로그인 및 비밀번호 변경 ─────────────────
section "테스트 4: 초기 로그인 및 비밀번호 변경 (섹션 2 검증)"

# DT v4.x: admin/admin 로그인 시 HTTP 401 + 바디 "FORCE_PASSWORD_CHANGE" 반환
LOGIN_BODY=$(curl -s -X POST "$DT_API/api/v1/user/login" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "username=admin" --data-urlencode "password=admin" 2>/dev/null)
LOGIN_CODE=$(curl -s -o /dev/null -w "%{http_code}" -X POST "$DT_API/api/v1/user/login" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "username=admin" --data-urlencode "password=admin" 2>/dev/null)

if [ "$LOGIN_BODY" = "FORCE_PASSWORD_CHANGE" ]; then
  ok "초기 admin/admin 자격증명 유효 (FORCE_PASSWORD_CHANGE 응답 — 가이드 안내대로 비밀번호 변경 필요)"
else
  fail "초기 로그인 예상치 못한 응답: HTTP $LOGIN_CODE / $LOGIN_BODY"
fi

# forceChangePassword: confirmPassword 파라미터 필수
CHANGE_CODE=$(curl -s -o /dev/null -w "%{http_code}" \
  -X POST "$DT_API/api/v1/user/forceChangePassword" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "username=admin" \
  --data-urlencode "password=admin" \
  --data-urlencode "newPassword=$ADMIN_PASSWORD" \
  --data-urlencode "confirmPassword=$ADMIN_PASSWORD" 2>/dev/null)

if [ "$CHANGE_CODE" = "200" ]; then
  ok "비밀번호 변경 완료"
else
  fail "비밀번호 변경 실패 (HTTP $CHANGE_CODE)"
  exit 1
fi

TOKEN=$(curl -sf -X POST "$DT_API/api/v1/user/login" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "username=admin" \
  --data-urlencode "password=$ADMIN_PASSWORD" 2>/dev/null || echo "")

if echo "$TOKEN" | grep -q "^eyJ"; then
  ok "변경된 비밀번호로 로그인 성공 (JWT 토큰 발급)"
else
  fail "재로그인 실패"
  exit 1
fi

# ─── 테스트 5: API Key 발급 ───────────────────────────────────
section "테스트 5: API Key 발급 (섹션 5 검증)"

TEAM_RESP=$(curl -sf -X PUT "$DT_API/api/v1/team" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"name":"Automation Agents"}' 2>/dev/null || echo "")

if echo "$TEAM_RESP" | grep -q '"uuid"'; then
  ok "Automation Agents 팀 생성"
  TEAM_UUID=$(echo "$TEAM_RESP" | grep -o '"uuid":"[^"]*"' | head -1 | cut -d'"' -f4)
else
  fail "팀 생성 실패"
  TEAM_UUID=""
fi

API_KEY=""
if [ -n "$TEAM_UUID" ]; then
  KEY_RESP=$(curl -sf -X PUT "$DT_API/api/v1/team/$TEAM_UUID/key" \
    -H "Authorization: Bearer $TOKEN" 2>/dev/null || echo "")
  if echo "$KEY_RESP" | grep -q '"key"'; then
    API_KEY=$(echo "$KEY_RESP" | grep -o '"key":"[^"]*"' | cut -d'"' -f4)
    ok "API Key 발급 완료 (odt_publicId_... 형식 확인)"
  else
    fail "API Key 발급 실패"
  fi

  for PERM in BOM_UPLOAD PROJECT_CREATION_UPLOAD; do
    PERM_CODE=$(curl -s -o /dev/null -w "%{http_code}" \
      -X POST "$DT_API/api/v1/permission/$PERM/team/$TEAM_UUID" \
      -H "Authorization: Bearer $TOKEN" 2>/dev/null || echo "000")
    if [ "$PERM_CODE" = "200" ]; then
      ok "권한 부여: $PERM"
    else
      fail "권한 부여 실패: $PERM (HTTP $PERM_CODE)"
    fi
  done
fi

# ─── 테스트 6: 라이선스 정책 생성 ───────────────────────────
section "테스트 6: 라이선스 정책 생성 (섹션 4 검증)"

POLICY_RESP=$(curl -sf -X PUT "$DT_API/api/v1/policy" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"name":"Copyleft License Warning","operator":"ANY","violationState":"WARN"}' 2>/dev/null || echo "")

if echo "$POLICY_RESP" | grep -q '"uuid"'; then
  ok "Copyleft License Warning 정책 생성"
  POLICY_UUID=$(echo "$POLICY_RESP" | grep -o '"uuid":"[^"]*"' | head -1 | cut -d'"' -f4)
else
  fail "정책 생성 실패"
  POLICY_UUID=""
fi

if [ -n "$POLICY_UUID" ]; then
  COND_CODE=$(curl -s -o /dev/null -w "%{http_code}" -X PUT "$DT_API/api/v1/policy/$POLICY_UUID/condition" \
    -H "Authorization: Bearer $TOKEN" \
    -H "Content-Type: application/json" \
    -d '{"subject":"LICENSE","operator":"IS","value":"GPL-3.0-only"}' 2>/dev/null || echo "000")
  if [ "$COND_CODE" = "201" ]; then
    ok "정책 조건 추가: subject=LICENSE, operator=IS, value=GPL-3.0-only"
  else
    fail "정책 조건 추가 실패 (HTTP $COND_CODE)"
  fi
fi

# ─── 테스트 7: cdxgen SBOM 생성 ──────────────────────────────
section "테스트 7: cdxgen SBOM 생성 — spec v1.6 (섹션 5 검증)"

mkdir -p "$TEST_DIR"
cat > "$TEST_DIR/package.json" << 'EOF'
{
  "name": "dt-guide-test",
  "version": "1.0.0",
  "dependencies": { "lodash": "4.17.15" }
}
EOF
ok "테스트 프로젝트 생성 (lodash 4.17.15)"

cd "$TEST_DIR" || exit 1
cdxgen -r --spec-version 1.6 -o sbom.json . >/dev/null 2>&1
if [ -s sbom.json ]; then
  SPEC_VER=$(grep -o '"specVersion":"[^"]*"' sbom.json | cut -d'"' -f4 || echo "unknown")
  COMP_CNT=$(grep -c '"type":"library"' sbom.json 2>/dev/null || echo "0")
  if [ "$SPEC_VER" = "1.6" ]; then
    ok "SBOM 생성 완료 (specVersion=$SPEC_VER, 컴포넌트 ${COMP_CNT}개)"
  else
    fail "specVersion 불일치: 예상 1.6, 실제 $SPEC_VER — --spec-version 1.6 옵션 필요"
  fi
else
  fail "SBOM 생성 실패"
fi

# ─── 테스트 8: SBOM 업로드 ───────────────────────────────────
section "테스트 8: SBOM 업로드 (scan-upload.sh 검증)"

if [ -z "$API_KEY" ]; then
  fail "API Key 없음 — 업로드 건너뜀"
else
  UPLOAD_CODE=$(curl -s -o /tmp/dt_upload_resp.txt -w "%{http_code}" \
    -X POST "$DT_API/api/v1/bom" \
    -H "X-Api-Key: $API_KEY" \
    -F "autoCreate=true" \
    -F "projectName=guide-test-app" \
    -F "projectVersion=1.0.0" \
    -F "bom=@sbom.json" 2>/dev/null || echo "000")
  UPLOAD_BODY=$(cat /tmp/dt_upload_resp.txt 2>/dev/null)
  if [ "$UPLOAD_CODE" = "200" ] && echo "$UPLOAD_BODY" | grep -q '"token"'; then
    ok "SBOM 업로드 성공 (HTTP 200, token 반환 확인)"
  else
    fail "SBOM 업로드 실패 (HTTP $UPLOAD_CODE): $UPLOAD_BODY"
  fi
fi

# ─── 테스트 9: 프로젝트 자동 생성 확인 ──────────────────────
section "테스트 9: 프로젝트 자동 생성 확인 (섹션 5 검증)"

sleep 8
PROJ_RESP=$(curl -sf "$DT_API/api/v1/project?name=guide-test-app" \
  -H "Authorization: Bearer $TOKEN" 2>/dev/null || echo "[]")
if echo "$PROJ_RESP" | grep -q '"name":"guide-test-app"'; then
  ok "프로젝트 guide-test-app 자동 생성 확인"
else
  fail "프로젝트 생성 미확인: $PROJ_RESP"
fi

# ─── 정리 ────────────────────────────────────────────────────
cd "$HOME" || true
dc -f "$DT_DIR/docker-compose.yml" down -v >/dev/null 2>&1
rm -rf "$DT_DIR" "$TEST_DIR" /tmp/dt_upload_resp.txt
echo ""
echo "테스트 환경 정리 완료"

# ─── 최종 결과 ────────────────────────────────────────────────
echo ""
echo "=================================================="
echo " 검증 결과 요약"
echo "=================================================="
for r in "${RESULTS[@]}"; do echo "  $r"; done
echo ""
echo "  통과: $PASS | 경고: $WARN_COUNT | 실패: $FAIL"
echo ""
if [ $FAIL -eq 0 ]; then
  echo "  가이드 전 단계 검증 통과"
else
  echo "  실패 항목을 확인하고 가이드를 수정하세요."
fi
echo "=================================================="
