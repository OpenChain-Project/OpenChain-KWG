#!/usr/bin/env bash
# SCANOSS 스모크 테스트
# 가이드: content/ko/guide/tools/9-scanoss/_index.md

set -euo pipefail

PASS=0; FAIL=0; WARN=0
ok()   { echo "  ✅ $1"; ((PASS++)) || true; }
warn() { echo "  ⚠️  $1"; ((WARN++)) || true; }
fail() { echo "  ❌ $1"; ((FAIL++)) || true; }

echo "=== SCANOSS 스모크 테스트 ==="
echo ""

# 1. 설치 확인
echo "[1] 설치 확인"
if command -v scanoss-py &>/dev/null || python3 -m scanoss --help &>/dev/null 2>&1; then
  VER=$(scanoss-py --version 2>/dev/null || python3 -m scanoss --version 2>/dev/null || echo "unknown")
  ok "scanoss 설치됨: $VER"
elif pip3 show scanoss &>/dev/null 2>&1; then
  ok "scanoss pip 패키지 존재 (실행 경로 확인 필요)"
else
  echo "  scanoss가 설치되지 않았습니다. pip으로 설치를 시도합니다..."
  if pip3 install scanoss 2>/dev/null; then
    ok "scanoss 설치 완료"
  else
    fail "scanoss 설치 실패"
    exit 1
  fi
fi

# 2. --help 실행
echo ""
echo "[2] --help 실행"
if scanoss-py --help &>/dev/null 2>&1 || python3 -m scanoss --help &>/dev/null 2>&1; then
  ok "--help 정상 출력"
else
  warn "--help 출력 실패 (scanoss-py 명령어 경로 확인 필요)"
fi

# 3. 디렉토리 스캔
echo ""
echo "[3] 디렉토리 스캔 (현재 디렉토리 → /tmp/scanoss-result.json)"
SCAN_DIR="${1:-.}"

SCAN_CMD=""
if command -v scanoss-py &>/dev/null; then
  SCAN_CMD="scanoss-py"
elif python3 -m scanoss --help &>/dev/null 2>&1; then
  SCAN_CMD="python3 -m scanoss"
fi

if [ -n "$SCAN_CMD" ]; then
  if $SCAN_CMD scan "$SCAN_DIR" -o /tmp/scanoss-result.json 2>/dev/null; then
    ok "스캔 완료: /tmp/scanoss-result.json"
  else
    warn "스캔 중 오류 발생 (네트워크 연결 또는 API 키 필요할 수 있음)"
  fi
else
  fail "scanoss 실행 명령어를 찾을 수 없음"
fi

# 4. SBOM 생성 (CycloneDX)
echo ""
echo "[4] CycloneDX SBOM 생성 (/tmp/scanoss-sbom.json)"
if [ -n "$SCAN_CMD" ] && [ -f /tmp/scanoss-result.json ]; then
  if $SCAN_CMD convert --input /tmp/scanoss-result.json --format cyclonedx --output /tmp/scanoss-sbom.json 2>/dev/null; then
    ok "CycloneDX SBOM 생성됨"
  else
    warn "SBOM 변환 실패 (형식 옵션 확인 필요)"
  fi
else
  warn "이전 단계 실패로 SBOM 생성 건너뜀"
fi

# 5. 출력 파일 검증
echo ""
echo "[5] 출력 파일 검증"
if [ -f /tmp/scanoss-result.json ]; then
  ok "스캔 결과 파일 존재"
  python3 -c "import json; d=json.load(open('/tmp/scanoss-result.json')); print(f'  파일 수: {len(d)}개')" 2>/dev/null || warn "JSON 파싱 실패"
else
  warn "스캔 결과 파일 없음"
fi

# 6. 결과 요약
echo ""
echo "=== 결과 요약 ==="
echo "  ✅ 통과: $PASS  ⚠️ 경고: $WARN  ❌ 실패: $FAIL"
echo ""
echo "결과를 대화창에 붙여넣고 /guide-test-tools scanoss --type smoke 를 실행하세요."
