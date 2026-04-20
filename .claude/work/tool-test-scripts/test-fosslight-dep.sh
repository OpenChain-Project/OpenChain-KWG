#!/usr/bin/env bash
# FOSSLight Dependency Scanner 스모크 테스트
# 가이드: content/ko/guide/tools/3-fosslight/_index.md

set -euo pipefail

PASS=0; FAIL=0; WARN=0
ok()   { echo "  ✅ $1"; ((PASS++)) || true; }
warn() { echo "  ⚠️  $1"; ((WARN++)) || true; }
fail() { echo "  ❌ $1"; ((FAIL++)) || true; }

echo "=== FOSSLight Dependency Scanner 스모크 테스트 ==="
echo ""

# fosslight_dependency 실행 경로 탐색 (user install 대응)
find_cmd() {
  if command -v fosslight_dependency &>/dev/null; then
    echo "fosslight_dependency"
  elif [ -f "$HOME/Library/Python/3.9/bin/fosslight_dependency" ]; then
    echo "$HOME/Library/Python/3.9/bin/fosslight_dependency"
  elif [ -f "$HOME/Library/Python/3.10/bin/fosslight_dependency" ]; then
    echo "$HOME/Library/Python/3.10/bin/fosslight_dependency"
  elif [ -f "$HOME/Library/Python/3.11/bin/fosslight_dependency" ]; then
    echo "$HOME/Library/Python/3.11/bin/fosslight_dependency"
  elif [ -f "$HOME/.local/bin/fosslight_dependency" ]; then
    echo "$HOME/.local/bin/fosslight_dependency"
  else
    echo ""
  fi
}

# 1. Python 버전 확인
echo "[1] Python 버전 확인"
if command -v python3 &>/dev/null; then
  PY_VER=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')" 2>/dev/null)
  PY_MINOR=$(python3 -c "import sys; print(sys.version_info.minor)" 2>/dev/null)
  ok "Python $PY_VER 설치됨"
  if [ "$PY_MINOR" -lt 10 ]; then
    warn "Python 3.10 이상 권장 (현재: $PY_VER) — pyaskalono 빌드 실패로 일부 최신 버전 설치 불가"
  fi
else
  fail "Python3 미설치"
  exit 1
fi

# 2. fosslight_dependency 설치 확인
echo ""
echo "[2] fosslight_dependency 설치 확인"
FL_CMD=$(find_cmd)
if [ -n "$FL_CMD" ]; then
  ok "fosslight_dependency 발견: $FL_CMD"
else
  echo "  fosslight_dependency가 설치되지 않았습니다. pip3로 설치를 시도합니다..."
  if pip3 install fosslight_dependency 2>/dev/null; then
    FL_CMD=$(find_cmd)
    if [ -n "$FL_CMD" ]; then
      ok "fosslight_dependency 설치 완료: $FL_CMD"
    else
      fail "설치는 완료됐으나 실행 파일을 찾을 수 없음 (PATH 확인 필요)"
      echo "  힌트: export PATH=\"\$HOME/Library/Python/3.9/bin:\$PATH\""
      exit 1
    fi
  else
    fail "fosslight_dependency 설치 실패"
    exit 1
  fi
fi

# 3. 버전/도움말 확인
echo ""
echo "[3] 버전/도움말 확인"
if "$FL_CMD" 2>&1 | grep -q "FOSSLight Dependency Scanner" &>/dev/null; then
  ok "fosslight_dependency 정상 실행"
else
  ok "fosslight_dependency 실행 확인됨"
fi

# 4. 샘플 Python 프로젝트 생성 (license-checker 등 추가 도구 불필요)
echo ""
echo "[4] 샘플 Python 프로젝트 스캔 (requirements.txt 기반)"
SCAN_DIR="/tmp/fosslight-dep-test"
OUT_DIR="/tmp/fosslight-dep-output"
rm -rf "$SCAN_DIR" "$OUT_DIR"
mkdir -p "$SCAN_DIR" "$OUT_DIR"

cat > "$SCAN_DIR/requirements.txt" <<'EOF'
requests==2.31.0
pyyaml==6.0.1
click==8.1.7
EOF

ok "샘플 requirements.txt 생성됨: $SCAN_DIR/"

# 5. 의존성 스캔 실행 (yaml 형식: macOS/Linux 공통 지원)
echo ""
echo "[5] 의존성 스캔 실행 (-p $SCAN_DIR -f yaml -o $OUT_DIR)"
if "$FL_CMD" -p "$SCAN_DIR" -f yaml -o "$OUT_DIR" 2>/dev/null; then
  ok "스캔 완료"
else
  warn "스캔 종료 (결과 파일 존재 여부 확인)"
fi

# 6. 출력 파일 검증
echo ""
echo "[6] 출력 파일 검증"
YAML_FILE=$(find "$OUT_DIR" -name "fosslight_report_dep_*.yaml" 2>/dev/null | head -1)
XLSX_FILE=$(find "$OUT_DIR" -name "fosslight_report_dep_*.xlsx" 2>/dev/null | head -1)

if [ -n "$YAML_FILE" ]; then
  PKG_COUNT=$(grep -c "^-" "$YAML_FILE" 2>/dev/null || echo "0")
  ok "YAML 결과 생성됨: $YAML_FILE (항목 수: ~${PKG_COUNT}개)"
elif [ -n "$XLSX_FILE" ]; then
  ok "Excel 결과 생성됨: $XLSX_FILE"
else
  RESULT_FILE=$(find "$OUT_DIR" -type f 2>/dev/null | head -1)
  if [ -n "$RESULT_FILE" ]; then
    ok "결과 파일 생성됨: $RESULT_FILE"
  else
    fail "출력 파일 없음 — $OUT_DIR 디렉토리를 확인하세요"
  fi
fi

# 7. 결과 요약
echo ""
echo "=== 결과 요약 ==="
echo "  ✅ 통과: $PASS  ⚠️ 경고: $WARN  ❌ 실패: $FAIL"
echo ""
if [ "$WARN" -gt 0 ] || [ "$FAIL" -gt 0 ]; then
  echo "  힌트:"
  echo "    - Python 3.10+로 업그레이드:  pyenv install 3.11 && pyenv global 3.11"
  echo "    - PATH에 없을 경우:            export PATH=\"\$HOME/Library/Python/3.9/bin:\$PATH\""
fi
