#!/usr/bin/env bash
# Syft 스모크 테스트
# 가이드: content/ko/guide/tools/6-syft/_index.md

set -euo pipefail

PASS=0; FAIL=0; WARN=0
ok()   { echo "  ✅ $1"; ((PASS++)) || true; }
warn() { echo "  ⚠️  $1"; ((WARN++)) || true; }
fail() { echo "  ❌ $1"; ((FAIL++)) || true; }

echo "=== Syft 스모크 테스트 ==="
echo ""

# 1. 설치 확인
echo "[1] 설치 확인"
if command -v syft &>/dev/null; then
  VER=$(syft version 2>/dev/null | head -1 || echo "unknown")
  ok "syft 설치됨: $VER"
else
  echo "  syft가 설치되지 않았습니다. 설치를 시도합니다..."
  if curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin 2>/dev/null; then
    ok "syft 설치 완료"
  else
    fail "syft 설치 실패 (수동 설치: brew install syft)"
    exit 1
  fi
fi

# 2. version 확인
echo ""
echo "[2] version 명령"
if syft version &>/dev/null; then
  ok "version 정상 출력"
else
  fail "version 실행 실패"
fi

# 3. 로컬 디렉토리 스캔 → SPDX JSON
echo ""
echo "[3] 로컬 디렉토리 스캔 → SPDX JSON (/tmp/syft-spdx.json)"
SCAN_DIR="${1:-.}"
if syft dir:"$SCAN_DIR" -o spdx-json=/tmp/syft-spdx.json 2>/dev/null; then
  ok "SPDX JSON 생성됨: /tmp/syft-spdx.json"
else
  warn "스캔 중 경고 발생"
fi

# 4. 로컬 디렉토리 스캔 → CycloneDX JSON
echo ""
echo "[4] 로컬 디렉토리 스캔 → CycloneDX JSON (/tmp/syft-cdx.json)"
if syft dir:"$SCAN_DIR" -o cyclonedx-json=/tmp/syft-cdx.json 2>/dev/null; then
  ok "CycloneDX JSON 생성됨: /tmp/syft-cdx.json"
else
  warn "CycloneDX 출력 중 경고 발생"
fi

# 5. 출력 파일 검증
echo ""
echo "[5] 출력 파일 검증"
if [ -f /tmp/syft-spdx.json ]; then
  PKG_COUNT=$(python3 -c "import json; d=json.load(open('/tmp/syft-spdx.json')); print(len(d.get('packages',[])))" 2>/dev/null) || PKG_COUNT="파싱 오류"
  ok "SPDX packages: ${PKG_COUNT}개"
else
  fail "SPDX 출력 파일 없음"
fi

if [ -f /tmp/syft-cdx.json ]; then
  COMP_COUNT=$(python3 -c "import json; d=json.load(open('/tmp/syft-cdx.json')); print(len(d.get('components',[])))" 2>/dev/null) || COMP_COUNT="파싱 오류"
  ok "CycloneDX components: ${COMP_COUNT}개"
else
  warn "CycloneDX 출력 파일 없음"
fi

# 6. 결과 요약
echo ""
echo "=== 결과 요약 ==="
echo "  ✅ 통과: $PASS  ⚠️ 경고: $WARN  ❌ 실패: $FAIL"
echo ""
echo "결과를 대화창에 붙여넣고 /guide-test-tools syft --type smoke 를 실행하세요."
