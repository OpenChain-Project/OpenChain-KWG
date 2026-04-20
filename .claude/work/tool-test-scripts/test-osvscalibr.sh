#!/usr/bin/env bash
# OSV-SCALIBR 스모크 테스트
# 가이드: content/ko/guide/tools/4-osvscalibr/_index.md

set -euo pipefail

PASS=0; FAIL=0; WARN=0
ok()   { echo "  ✅ $1"; ((PASS++)) || true; }
warn() { echo "  ⚠️  $1"; ((WARN++)) || true; }
fail() { echo "  ❌ $1"; ((FAIL++)) || true; }

echo "=== OSV-SCALIBR 스모크 테스트 ==="
echo ""

# 1. 바이너리 확인 또는 설치
echo "[1] 바이너리 확인"
SCALIBR=""
if command -v scalibr &>/dev/null; then
  SCALIBR=$(command -v scalibr)
  ok "scalibr 시스템 경로에 존재: $SCALIBR"
elif [ -f "$(go env GOPATH)/bin/scalibr" ]; then
  SCALIBR="$(go env GOPATH)/bin/scalibr"
  ok "scalibr Go bin 경로에 존재: $SCALIBR"
else
  echo "  scalibr 바이너리가 없습니다. go install로 설치를 시도합니다..."
  if command -v go &>/dev/null; then
    if go install github.com/google/osv-scalibr/binary/scalibr@latest 2>/dev/null; then
      SCALIBR="$(go env GOPATH)/bin/scalibr"
      ok "go install 완료: $SCALIBR"
    else
      fail "go install 실패"
      exit 1
    fi
  else
    fail "Go 미설치 — go install로 설치 필요"
    exit 1
  fi
fi

# 2. 버전 확인
echo ""
echo "[2] 버전 확인"
VER=$("$SCALIBR" --version 2>&1 || echo "버전 정보 없음")
ok "버전: $VER"

# 3. 파일시스템 스캔 (CycloneDX JSON)
echo ""
echo "[3] 파일시스템 스캔 (--root=/tmp -o cdx-json=/tmp/scalibr-sbom.cdx.json)"
if "$SCALIBR" \
    --root=/tmp \
    --extractors=go,javascript,python \
    -o cdx-json=/tmp/scalibr-sbom.cdx.json \
    --result=/tmp/scalibr-result.textproto \
    2>/dev/null; then
  ok "스캔 완료"
else
  warn "스캔 중 오류 발생"
fi

# 4. 출력 파일 검증
echo ""
echo "[4] 출력 파일 검증"
if [ -f /tmp/scalibr-sbom.cdx.json ]; then
  COMP_COUNT=$(python3 -c "import json; d=json.load(open('/tmp/scalibr-sbom.cdx.json')); print(len(d.get('components', [])))" 2>/dev/null || echo "파싱 오류")
  ok "CycloneDX JSON 생성됨 (components: ${COMP_COUNT}개)"
else
  fail "CycloneDX 출력 파일 없음: /tmp/scalibr-sbom.cdx.json"
fi

if [ -f /tmp/scalibr-result.textproto ]; then
  ok "결과 파일 존재: /tmp/scalibr-result.textproto (textproto 형식)"
else
  warn "result.textproto 없음"
fi

# 5. SPDX JSON 출력 확인
echo ""
echo "[5] SPDX JSON 출력 확인 (-o spdx23-json=/tmp/scalibr-sbom.spdx.json)"
if "$SCALIBR" \
    --root=/tmp \
    -o spdx23-json=/tmp/scalibr-sbom.spdx.json \
    2>/dev/null; then
  if [ -f /tmp/scalibr-sbom.spdx.json ]; then
    PKG_COUNT=$(python3 -c "import json; d=json.load(open('/tmp/scalibr-sbom.spdx.json')); print(len(d.get('packages', [])))" 2>/dev/null || echo "파싱 오류")
    ok "SPDX JSON 생성됨 (packages: ${PKG_COUNT}개)"
  else
    warn "SPDX 출력 파일 없음"
  fi
else
  warn "SPDX 출력 중 오류"
fi

# 6. 결과 요약
echo ""
echo "=== 결과 요약 ==="
echo "  ✅ 통과: $PASS  ⚠️ 경고: $WARN  ❌ 실패: $FAIL"
