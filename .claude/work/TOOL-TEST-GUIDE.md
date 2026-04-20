# 오픈소스 관리 도구 가이드 테스트 매뉴얼

`content/ko/guide/tools/` 가이드의 정확성을 검증하기 위한 테스트 절차서입니다.
테스트 결과는 `TOOL-TEST-REPORT.md`에 기록합니다.

---

## 테스트 전 준비

```bash
# 프로젝트 루트로 이동
cd ~/projects/OpenChain-KWG

# 스크립트 실행 권한 확인
ls -l .claude/work/tool-test-scripts/
```

**필요 환경**: macOS / Linux, Docker, Node.js/npm, Python/pip, Go

---

## 도구별 테스트 절차

---

### 1. FOSSology
**가이드**: `content/ko/guide/tools/1-fossology/_index.md`  
**테스트 유형**: 수동 (Docker)

#### 테스트 단계

| 단계 | 명령 / 동작 | 기대 결과 |
|------|------------|---------|
| 1. 실행 | `docker run -p 8081:80 fossology/fossology` | 컨테이너 정상 시작 |
| 2. 접속 | 브라우저에서 `http://localhost:8081/repo` 접속 | FOSSology 로그인 화면 표시 |
| 3. 로그인 | ID: `fossy` / PW: `fossy` | 대시보드 진입 |
| 4. 업로드 | Menu → Upload → From File → 임의 소스 파일 업로드 | 업로드 완료 메시지 |
| 5. 분석 확인 | Menu → Jobs → My Recent Jobs | 분석 Job 목록 표시 |
| 6. 결과 확인 | Menu → Browse → 업로드 파일 선택 | 라이선스 텍스트 검출 결과 표시 |

#### 이슈 보고 방법
```
/guide-improve tools fossology
발견된 이슈: (이슈 내용)
```

---

### 2. SW360
**가이드**: `content/ko/guide/tools/2-sw360/_index.md`  
**테스트 유형**: 수동 (Docker, 복잡)

> **주의**: SW360은 초기 설정이 복잡합니다. 가이드의 코드 단계별로 실행하며 오류 발생 여부를 기록합니다.

#### 테스트 단계

| 단계 | 명령 / 동작 | 기대 결과 |
|------|------------|---------|
| 1. 코드 클론 | `git clone -b docker_build https://github.com/haksungjang/sw360.git` | 클론 성공 |
| 2. 빌드 | `cd sw360 && ./docker_build.sh` | 이미지 빌드 성공 (수십 분 소요) |
| 3. 실행 | `docker compose up` | 3개 컨테이너 정상 기동 |
| 4. 접속 | `http://localhost:8080` | Liferay 초기 화면 |
| 5. 초기 설정 | 가이드의 설정 절차 수행 | SW360 메인 화면 진입 |

#### 이슈 보고 방법
```
/guide-improve tools sw360
발견된 이슈: (이슈 내용)
```

---

### 3. FOSSLight
**가이드**: `content/ko/guide/tools/3-fosslight/_index.md`

#### 3-A. Dependency Scanner — 자동화 스크립트

```bash
bash .claude/work/tool-test-scripts/test-fosslight-dep.sh
```

#### 스크립트가 검증하는 항목

| 항목 | 내용 |
|------|------|
| Python 버전 확인 | 3.10 미만이면 경고 (3.9에서도 동작하나 구버전 설치) |
| 설치 확인 | `fosslight_dependency` 실행 파일 탐색, 없으면 pip 자동 설치 |
| user install 대응 | `~/Library/Python/3.x/bin/` 경로 자동 탐색 |
| 스캔 실행 | 샘플 requirements.txt 생성 → yaml 형식으로 출력 |
| 출력 파일 검증 | `fosslight_report_dep_*.yaml` 존재 및 항목 수 확인 |

> **참고**: NPM 프로젝트 스캔은 `npm install -g license-checker` 선행 설치 필요

#### 3-B. FOSSLight Hub — 수동 테스트 (Docker Compose, 소스 빌드 필요)

> **주의**: Hub는 Gradle 소스 빌드 포함으로 첫 실행 시 10~20분 소요됩니다.

| 단계 | 명령 / 동작 | 기대 결과 |
|------|------------|---------|
| 1. 클론 | `git clone https://github.com/fosslight/fosslight.git && cd fosslight` | 클론 성공 |
| 2. 실행 | `docker compose up -d db web` | DB + 웹 컨테이너 기동 |
| 3. 접속 | 브라우저에서 `http://localhost:8180` | FOSSLight Hub 로그인 화면 |
| 4. 로그인 | ID: `admin` / PW: `admin` | 대시보드 진입, 비밀번호 변경 |
| 5. 프로젝트 생성 | Projects → Create → 스캔 결과 업로드 | 라이선스·취약점 정보 표시 |

#### 컨테이너 종료

```bash
cd fosslight && docker compose down
```

#### 이슈 보고 방법
```
/guide-improve tools fosslight
발견된 이슈: (이슈 내용)
```

---

### 4. OSV-SCALIBR
**가이드**: `content/ko/guide/tools/4-osvscalibr/_index.md`  
**테스트 유형**: 자동화 스크립트

#### 자동 테스트 실행

```bash
bash .claude/work/tool-test-scripts/test-osvscalibr.sh
```

#### 스크립트가 검증하는 항목

| 항목 | 내용 |
|------|------|
| 바이너리 존재 여부 | `scalibr` 명령 또는 `/tmp/scalibr` 바이너리 |
| 자동 다운로드 | GitHub Releases에서 플랫폼별 바이너리 다운로드 |
| 파일시스템 스캔 | `/tmp` 디렉토리 스캔 → `/tmp/scalibr-result.json` 생성 |
| 결과 파일 검증 | JSON 파싱 및 패키지 수 출력 |

#### 수동 추가 확인 (스크립트 성공 후)

```bash
# 로컬 프로젝트 스캔 후 CycloneDX SBOM 생성
scalibr --root=/path/to/project -o cdx-json=sbom.cdx.json

# SPDX SBOM 생성
scalibr --root=/path/to/project -o spdx23-json=sbom.spdx.json

# 원격 컨테이너 이미지 스캔
scalibr --remote-image=ubuntu:22.04 --result=result.textproto -o cdx-json=sbom.cdx.json
```

#### 이슈 보고 방법
```
/guide-improve tools osvscalibr
발견된 이슈: (이슈 내용)
```

---

### 5. cdxgen
**가이드**: `content/ko/guide/tools/5-cdxgen/_index.md`  
**테스트 유형**: 자동화 스크립트

#### 자동 테스트 실행

```bash
bash .claude/work/tool-test-scripts/test-cdxgen.sh
```

#### 스크립트가 검증하는 항목

| 항목 | 내용 |
|------|------|
| 설치 확인 | `cdxgen` 명령 존재 여부, 없으면 npm 자동 설치 |
| `--help` 실행 | 기본 동작 확인 |
| 스캔 실행 | 현재 디렉토리 스캔 → `/tmp/cdxgen-test.json` 생성 |
| 출력 검증 | `bomFormat: CycloneDX` 확인, components 수 출력 |

#### 수동 추가 확인 (스크립트 성공 후)

```bash
# 컨테이너 이미지 스캔
cdxgen -t docker -o /tmp/cdxgen-docker.json ubuntu:22.04

# GitHub 저장소 스캔 (GITHUB_TOKEN 필요)
export GITHUB_TOKEN=your_token
cdxgen -t github -o /tmp/cdxgen-github.json https://github.com/org/repo
```

#### 이슈 보고 방법
```
/guide-improve tools cdxgen
발견된 이슈: (이슈 내용)
```

---

### 6. Syft
**가이드**: `content/ko/guide/tools/6-syft/_index.md`  
**테스트 유형**: 자동화 스크립트

#### 자동 테스트 실행

```bash
bash .claude/work/tool-test-scripts/test-syft.sh
```

#### 스크립트가 검증하는 항목

| 항목 | 내용 |
|------|------|
| 설치 확인 | `syft` 명령 존재 여부, 없으면 install.sh로 자동 설치 |
| version 출력 | `syft version` 정상 실행 |
| SPDX JSON 생성 | 로컬 디렉토리 스캔 → `/tmp/syft-spdx.json` |
| CycloneDX JSON 생성 | 로컬 디렉토리 스캔 → `/tmp/syft-cdx.json` |
| 출력 파일 검증 | packages / components 수 출력 |

#### 수동 추가 확인 (스크립트 성공 후)

```bash
# 컨테이너 이미지 스캔
syft ubuntu:22.04 -o spdx-json=sbom.spdx.json

# Grype와 연동
syft ubuntu:22.04 -o json | grype
```

#### 이슈 보고 방법
```
/guide-improve tools syft
발견된 이슈: (이슈 내용)
```

---

### 7. Dependency-Track
**가이드**: `content/ko/guide/tools/7-dependency-track/_index.md`  
**테스트 유형**: 자동화 스크립트 (Docker Compose)

#### 자동 테스트 실행

```bash
bash .claude/work/tool-test-scripts/test-dependency-track.sh
```

API Key 발급 후 전체 테스트:
```bash
DT_API_KEY=발급받은키 bash .claude/work/tool-test-scripts/test-dependency-track.sh
```

#### 스크립트가 검증하는 항목

| 항목 | 내용 |
|------|------|
| Docker 설치 확인 | `docker --version` |
| Docker Compose 실행 | API 서버(8081) + 프론트엔드(8080) 기동 |
| API 서버 헬스 체크 | `GET /api/version` 응답 확인 (최대 2분 대기) |
| API Key 검증 | `GET /api/v1/project` 200 응답 확인 (API Key 있을 때) |

#### 수동 추가 확인 (스크립트 성공 후)

1. `http://localhost:8080` 접속 → 로그인 화면 확인
2. `admin` / `admin` 로그인 → 비밀번호 변경 화면 확인
3. Projects → Create Project → SBOM 업로드 워크플로우 확인

#### 컨테이너 종료

```bash
cd /tmp/dependency-track-test && docker compose down
```

#### 이슈 보고 방법
```
/guide-improve tools dependency-track
발견된 이슈: (이슈 내용)
```

---

### 8. cdxgen + Dependency-Track (통합 가이드)
**가이드**: `content/ko/guide/tools/8-cdxgen-dt/_index.md`  
**테스트 유형**: 수동 (통합 워크플로우)

> Dependency-Track이 설치된 상태에서 진행합니다 (7번 테스트 선행 필요).

#### 테스트 단계

| 단계 | 명령 / 동작 | 기대 결과 |
|------|------------|---------|
| 1. DT 기동 | `cd ~/dependency-track && docker compose up -d` | API 서버 + 프론트엔드 기동 |
| 2. API Key 발급 | 웹 UI → Administration → Teams → API Key 생성 | `odt_...` 형식 키 발급 |
| 3. SBOM 생성 및 업로드 | 가이드의 `scan-upload.sh` 스크립트 실행 | "업로드 완료" 메시지 |
| 4. 결과 확인 | `http://localhost:8080` → Projects | 자동 생성된 프로젝트 확인 |
| 5. 라이선스 정책 | Policy Management → 정책 생성 | 정책 적용 후 위반 항목 표시 |

#### 이슈 보고 방법
```
/guide-improve tools cdxgen-dt
발견된 이슈: (이슈 내용)
```

---

### 9. SCANOSS
**가이드**: `content/ko/guide/tools/9-scanoss/_index.md`  
**테스트 유형**: 자동화 스크립트

#### 자동 테스트 실행

```bash
# PATH 설정 후 실행 (user install인 경우)
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
bash .claude/work/tool-test-scripts/test-scanoss.sh
```

#### 스크립트가 검증하는 항목

| 항목 | 내용 |
|------|------|
| 설치 확인 | `scanoss-py` 명령 존재 여부, 없으면 pip 자동 설치 |
| `--help` 실행 | 기본 동작 확인 |
| 디렉토리 스캔 | `scanoss-py scan . --output /tmp/scanoss-result.json` |
| SBOM 변환 | `scanoss-py convert --input ... --format cyclonedx --output ...` |
| 출력 파일 검증 | 결과 JSON 파일 존재 및 파싱 확인 |

#### 수동 추가 확인 (스크립트 성공 후)

```bash
# 결과 파일 내용 확인
cat /tmp/scanoss-result.json | python3 -c "
import json, sys
data = json.load(sys.stdin)
for f, matches in data.items():
    for m in matches:
        if m.get('id') != 'none':
            print(f\"{f}: {m.get('component','?')} ({m.get('licenses','?')})\")
"
```

#### 이슈 보고 방법
```
/guide-improve tools scanoss
발견된 이슈: (이슈 내용)
```

---

## 이슈 발견 시 Claude에게 보고하는 방법

```
/guide-improve tools {도구명}
발견된 이슈:
- {단계}: {기대 결과} → {실제 결과}
- 예시) [3] 스캔 실행: 정상 완료 기대 → "command not found" 오류 발생
```

---

## 테스트 현황 추적

결과는 `.claude/work/TOOL-TEST-REPORT.md` 에 누적 기록됩니다.

| 기호 | 의미 |
|------|------|
| ✅ | 정상 동작 확인 |
| ⚠️ | 동작하나 가이드와 차이 있음 |
| ❌ | 가이드대로 실행 불가 |
| - | 미테스트 |
