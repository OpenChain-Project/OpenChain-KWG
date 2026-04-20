#!/usr/bin/env bash
# cdxgen 스모크 테스트
# 가이드: content/ko/guide/tools/5-cdxgen/_index.md

set -euo pipefail

PASS=0; FAIL=0; WARN=0
ok()   { echo "  ✅ $1"; ((PASS++)) || true; }
warn() { echo "  ⚠️  $1"; ((WARN++)) || true; }
fail() { echo "  ❌ $1"; ((FAIL++)) || true; }

echo "=== cdxgen 스모크 테스트 ==="
echo ""

# 1. 설치 확인
echo "[1] 설치 확인"
if command -v cdxgen &>/dev/null; then
  VER=$(cdxgen --version 2>/dev/null || echo "unknown")
  ok "cdxgen 설치됨 (버전: $VER)"
else
  echo "  cdxgen이 설치되지 않았습니다. npm으로 설치를 시도합니다..."
  if npm install -g @cyclonedx/cdxgen 2>/dev/null; then
    ok "cdxgen 설치 완료"
  else
    fail "cdxgen 설치 실패"
    exit 1
  fi
fi

# 2. --help 실행
echo ""
echo "[2] --help 실행"
if cdxgen --help &>/dev/null; then
  ok "--help 정상 출력"
else
  fail "--help 실행 실패"
fi

# 3. 샘플 프로젝트 스캔
echo ""
echo "[3] 샘플 스캔 (현재 디렉토리 → /tmp/cdxgen-test.json)"
SCAN_DIR="${1:-.}"
if cdxgen -o /tmp/cdxgen-test.json "$SCAN_DIR" 2>/dev/null; then
  ok "스캔 완료: /tmp/cdxgen-test.json"
else
  warn "스캔 중 경고 발생 (결과 파일 존재 여부 확인)"
fi

# 4. 출력 파일 검증
echo ""
echo "[4] 출력 파일 검증"
if [ -f /tmp/cdxgen-test.json ]; then
  COMP_COUNT=$(python3 -c "import json; d=json.load(open('/tmp/cdxgen-test.json')); print(len(d.get('components',[])))" 2>/dev/null) || COMP_COUNT="파싱 오류"
  ok "CycloneDX JSON 생성됨 (components: ${COMP_COUNT}개)"

  FORMAT=$(python3 -c "import json; print(json.load(open('/tmp/cdxgen-test.json')).get('bomFormat','없음'))" 2>/dev/null) || FORMAT="확인 불가"
  if [ "$FORMAT" = "CycloneDX" ]; then
    ok "bomFormat: CycloneDX 확인됨"
  else
    warn "bomFormat: $FORMAT"
  fi
else
  fail "출력 파일 없음: /tmp/cdxgen-test.json"
fi

# 5. 결과 요약
echo ""
echo "=== 결과 요약 ==="
echo "  ✅ 통과: $PASS  ⚠️ 경고: $WARN  ❌ 실패: $FAIL"
