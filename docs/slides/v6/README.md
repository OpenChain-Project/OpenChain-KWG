# OpenChain KWG 교육 슬라이드 (v6, Slidev)

기업 오픈소스 거버넌스 구축 실무 4시간 교육 슬라이드.
ISO/IEC 5230 · ISO/IEC 18974 · ISO/IEC 42001 · AI 컴플라이언스를 다룬다.

## 작업 진행 관리

이 디렉토리의 작업은 단계별로 진행된다. 새 세션에서 작업을 이어갈 때 사용:

```
/slides-resume
```

작업 메타는 `SLIDES-WORK/` 디렉토리에서 추적된다:

- `PHASE.md` — 현재 Phase + 종료 조건
- `TODO.md` — 작업 체크박스 큐
- `DECISIONS.md` — 확정 결정 사항 + 변경 이력

## 디렉토리 구조

```
docs/slides/v6/
├── SLIDES-WORK/     # 작업 메타 (Phase·TODO·결정)
├── components/      # Vue 도메인 컴포넌트
├── styles/          # 디자인 토큰
├── public/          # 정적 자산 (이미지·아이콘)
├── snippets/        # 코드 스니펫 (데모용)
├── slides.md        # Slidev 메인 본문
├── package.json     # @slidev/cli 의존성
└── README.md        # 이 파일
```

## 로컬 개발

```bash
cd docs/slides/v6
npm install
npm run dev          # 로컬 미리보기 (http://localhost:3030)
npm run build        # static/slides/enterprise-oss-governance/ 출력
```

## 빌드 산출물

`npm run build`는 `static/slides/enterprise-oss-governance/`에 SPA(HTML+JS+CSS)를 출력한다.
Hugo 사이트에서 `content/ko/guide/training-slides/_index.md`의 iframe이 이 경로를 임베드한다.

## 라이선스

CC-BY-4.0 (슬라이드 본문 · 디자인 토큰).
컴포넌트 코드는 Apache-2.0 (저장소 라이선스 따름).
