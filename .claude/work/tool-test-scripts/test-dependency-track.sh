#!/usr/bin/env bash
# Dependency-Track 통합 테스트
# 가이드: content/ko/guide/tools/7-dependency-track/_index.md

set -euo pipefail

PASS=0; FAIL=0; WARN=0
ok()   { echo "  ✅ $1"; ((PASS++)) || true; }
warn() { echo "  ⚠️  $1"; ((WARN++)) || true; }
fail() { echo "  ❌ $1"; ((FAIL++)) || true; }

DT_HOST="${DT_HOST:-http://localhost:8080}"
DT_API_KEY="${DT_API_KEY:-}"

echo "=== Dependency-Track 통합 테스트 ==="
echo "  대상 호스트: $DT_HOST"
echo ""

# 1. Docker 확인
echo "[1] Docker 확인"
if ! command -v docker &>/dev/null; then
  fail "Docker가 설치되지 않았습니다"
  exit 1
fi
ok "Docker 설치됨: $(docker --version)"

# 2. Docker Compose 파일 생성 (없으면)
echo ""
echo "[2] Docker Compose 설정"
DT_DIR="/tmp/dependency-track-test"
mkdir -p "$DT_DIR"

if [ ! -f "$DT_DIR/docker-compose.yml" ]; then
  cat > "$DT_DIR/docker-compose.yml" <<'EOF'
version: '3'
volumes:
  dependency-track:
services:
  dtrack-apiserver:
    image: dependencytrack/apiserver:latest
    environment:
      - EXTRA_JAVA_OPTIONS=-Xmx4g
    deploy:
      resources:
        limits:
          memory: 12288m
        reservations:
          memory: 8192m
      restart_policy:
        condition: on-failure
    ports:
      - "8081:8080"
    volumes:
      - dependency-track:/data
    restart: unless-stopped
  dtrack-frontend:
    image: dependencytrack/frontend:latest
    depends_on:
      - dtrack-apiserver
    environment:
      - API_BASE_URL=http://localhost:8081
    ports:
      - "8080:8080"
    restart: unless-stopped
EOF
  ok "docker-compose.yml 생성됨: $DT_DIR/"
else
  ok "docker-compose.yml 이미 존재"
fi

# 3. 컨테이너 시작
echo ""
echo "[3] 컨테이너 시작 (약 1~2분 소요)"
cd "$DT_DIR"
if docker compose up -d 2>/dev/null || docker-compose up -d 2>/dev/null; then
  ok "컨테이너 시작됨"
else
  fail "컨테이너 시작 실패"
  exit 1
fi

# 4. 헬스 체크 (최대 2분 대기)
echo ""
echo "[4] API 서버 헬스 체크 (최대 2분 대기)"
MAX_WAIT=120
WAITED=0
until curl -sf "$DT_HOST/api/version" &>/dev/null || [ $WAITED -ge $MAX_WAIT ]; do
  sleep 5
  WAITED=$((WAITED + 5))
  echo "  대기 중... (${WAITED}초)"
done

if curl -sf "$DT_HOST/api/version" &>/dev/null; then
  DT_VER=$(curl -sf "$DT_HOST/api/version" | python3 -c "import json,sys; print(json.load(sys.stdin).get('version','unknown'))" 2>/dev/null || echo "unknown")
  ok "API 서버 응답: 버전 $DT_VER"
else
  fail "API 서버 응답 없음 (${MAX_WAIT}초 초과)"
  echo "  힌트: 포트 8080/8081 충돌 여부 확인"
  exit 1
fi

# 5. API 키 확인
echo ""
echo "[5] API 키 확인"
if [ -z "$DT_API_KEY" ]; then
  warn "DT_API_KEY 환경변수 미설정 — API 호출 테스트 건너뜀"
  echo "  힌트: 웹 UI(${DT_HOST}) → 관리자 로그인 → Automation 팀 API 키 복사 후"
  echo "        DT_API_KEY=<키값> bash test-dependency-track.sh 로 재실행"
else
  # 프로젝트 목록 조회
  STATUS=$(curl -sf -o /dev/null -w "%{http_code}" \
    -H "X-Api-Key: $DT_API_KEY" \
    "$DT_HOST/api/v1/project" 2>/dev/null || echo "000")
  if [ "$STATUS" = "200" ]; then
    ok "API 키 유효, 프로젝트 목록 조회 성공"
  else
    fail "API 키 유효하지 않거나 요청 실패 (HTTP $STATUS)"
  fi
fi

# 6. 결과 요약
echo ""
echo "=== 결과 요약 ==="
echo "  ✅ 통과: $PASS  ⚠️ 경고: $WARN  ❌ 실패: $FAIL"
echo ""
echo "웹 UI 접근: $DT_HOST"
echo "초기 계정: admin / admin (첫 로그인 시 변경 필요)"
echo ""
echo "컨테이너 종료: cd $DT_DIR && docker compose down"
echo ""
echo "결과를 대화창에 붙여넣고 /guide-test-tools dependency-track --type full 를 실행하세요."
