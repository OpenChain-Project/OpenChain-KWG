# CLAUDE.md

> **작업 시작 전 이 파일을 읽고 컨텍스트를 파악할 것.**
> 반복 작업은 `.claude/commands/`의 해당 command를 사용할 것.
> 파일 전체를 읽기 전에 필요한 섹션만 먼저 확인할 것.

---

## 프로젝트 개요

- **사이트명**: OpenChain KWG (Korea Work Group) 공식 웹사이트
- **URL**: https://openchain-project.github.io/OpenChain-KWG
- **목적**: 한국 기업 오픈소스 컴플라이언스 담당자 커뮤니티
- **기술 스택**: Hugo + Docsy 테마, GitHub Pages 배포
- **언어**: 한국어(ko) / 영어(en) 다국어 지원

---

## 디렉토리 구조

```
OpenChain-KWG/
├── CLAUDE.md
├── CONTRIBUTING.md
├── hugo.toml                  # 메인 Hugo 설정 (언어·파라미터·모듈)
├── config.yaml                # Hugo 버전 호환성 확인용 (수정 불필요)
├── archetypes/
│   └── meeting.md             # 미팅 페이지 아키타입 (단일 파일)
├── content/
│   ├── ko/                    # 한국어 콘텐츠 (기본 언어)
│   │   ├── about/             # 소개 (메뉴 weight: 10)
│   │   ├── meeting/           # 정기 미팅 (메뉴 weight: 20)
│   │   │   └── YYYY/NNth/     # 연도/회차별 디렉토리
│   │   ├── guide/             # 가이드 (메뉴 weight: 30)
│   │   │   ├── iso5230_guide/
│   │   │   ├── iso18974_guide/
│   │   │   ├── opensource_for_enterprise/
│   │   │   ├── tools/         # 도구 소개 페이지
│   │   │   └── templates/
│   │   ├── resource/          # 리소스 (메뉴 weight: 40)
│   │   │   ├── SBOM_work_group/
│   │   │   ├── AI_work_group/
│   │   │   └── Telco_work_group/
│   │   ├── subgroup/          # 서브그룹 (메뉴 weight: 50)
│   │   └── blog/              # 블로그 (메뉴 weight: 60)
│   │       └── YYYY/          # 연도별 포스트
│   └── en/                    # 영어 콘텐츠 (ko와 구조 동일)
├── static/                    # 정적 파일 (발표자료 업로드 금지)
├── assets/scss/               # 커스텀 스타일
├── layouts/                   # 커스텀 레이아웃 (Docsy 오버라이드)
└── .claude/
    └── commands/              # Claude Code 커스텀 커맨드
```

---

## 핵심 운영 규칙

### 메뉴 구조 관리

- **메뉴 설정 위치**: `config/_default/menus.*.toml` 파일이 없음
- 메뉴는 각 섹션 `_index.md` 프런트매터의 `menu: main: weight:` 블록에서 정의
- 예시: `content/ko/meeting/_index.md`의 `menu: main: weight: 20`
- 메뉴 변경 시 ko와 en 양쪽 `_index.md` 모두 수정 필요

### 발표자료 관리 (2026-03 변경)

- 발표자료(PDF, PPTX 등)는 **Git 저장소에 커밋하지 않는다**
- GitHub Pages 용량 한도(1GB) 초과 방지를 위해 GitHub Releases로 이전
- 업로드 절차: `/upload-slides` command 참고
- GitHub Releases 태그 규칙: `meeting-slides-YYYY` (연도 단위)
- 파일 URL 형식: `https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf`
- 자세한 절차: `CONTRIBUTING.md` 참고

### 다국어 동기화

- `content/ko/`와 `content/en/` 양쪽을 항상 동기화해야 한다
- 페이지 생성/수정 시 두 언어 버전 모두 반영 확인 필수
- 동기화 점검: `/sync-check` command 사용

### 태그 관리

- 태그 형식: YAML 인라인 배열 `tags: ["태그1", "태그2"]`
- 태그 표준화 작업 스크립트: `.claude/work/` 디렉토리 참고
  - `extract_tags.py` — 전체 태그 현황 추출 → `current_tags.json` (gitignore)
  - `analyze_tags.py` — 태그 분석 및 표준화 사전 생성 → `tag_mapping.json` (gitignore), `tag_analysis_report.md`
  - `update_tags.py` — 태그 일괄 적용 (`--dry-run` 플래그로 미리보기)
- 태그 수정 시 **본문과 다른 프론트매터 속성은 절대 변경하지 않는다**
- 적용 전 반드시 `--dry-run` 먼저 실행하여 변경 목록 확인
- 표준 태그 현황: `.claude/skills/hugo-taxonomy.md` 참고
- 태그 규칙: `.claude/rules/tag-management.md` 참고

### 브랜치 및 배포

- `master` 브랜치에 push하면 GitHub Actions가 자동으로 빌드 및 배포
- 작업은 feature 브랜치에서 하고 PR로 merge
- 브랜치 규칙: `meeting/NNth`, `slides/NNth`, `blog/주제키워드`, `fix/설명`
- 배포 전 체크: `/deploy-check` command 사용

---

## 자주 쓰는 명령어

```bash
# 로컬 미리보기 (Draft 포함)
hugo server -D

# 미팅 페이지 생성 (archetypes/meeting.md 아키타입 사용)
# 파일은 content/ko/meeting/YYYY/NNth/_index.ko.md 로 생성됨
hugo new meeting/YYYY/NNth/_index.ko.md

# 빌드 테스트
hugo --minify
```

---

## .claude/commands 목록

| Command | 용도 |
|---------|------|
| `/new-meeting` | 새 정기 미팅 페이지 생성 (ko+en) |
| `/upload-slides` | 발표자료 GitHub Releases 업로드 및 링크 연결 |
| `/sync-check` | ko/en 콘텐츠 동기화 점검 |
| `/deploy-check` | 배포 전 체크리스트 실행 |
| `/guide-improve` | 가이드 개선 오케스트레이터 — audit / section / links / evidence / status |
| `/guide-resume` | guide 작업 세션 재개 (TODO.md 기반) |
| `/guide-new-tool-page` | guide/tools 새 도구 페이지 추가 |
| `/guide-check-policy` | 정책 템플릿 ISO 조항 충족 여부 점검 |
| `/guide-check-sbom-process` | SBOM 프로세스 페이지 점검 |
| `/guide-check-links` | 가이드 내 링크 유효성 검사 |
| `/guide-verify-evidence` | 입증자료 충족 여부 검증 (단건) |

---

## 주의사항

- `static/` 디렉토리에 발표자료 파일 추가 금지
- 새 미팅 페이지 생성 시 반드시 Archetype 템플릿 사용 (`archetypes/meeting.md`)
- ko/en 콘텐츠 한쪽만 수정하고 PR 올리지 않도록 주의
- `config.yaml`은 수정하지 않음 (Hugo 버전 호환성 확인용 테스트 파일)
