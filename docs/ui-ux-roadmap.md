# UI/UX 고도화 로드맵 — 글로벌 SaaS 수준 지향

> OpenChain-KWG 사이트를 Linear·Stripe·Vercel·ai.google.dev 같은 상위 SaaS 수준의
> "고급스러운 인상"으로 끌어올리기 위한 단계별 계획.

## 원칙
- "고급스러운 인상"의 8할은 **① 절제된 모션 ② 좋은 비주얼 1~2개 ③ 정밀한 여백**에서 나온다.
- 우리는 제품 SaaS가 아니라 커뮤니티 문서 사이트 — 복잡한 인터랙션·백엔드 기능은 과투자.
- 모든 모션은 `prefers-reduced-motion`을 존중(접근성).

## 제약
- **Docsy 모듈 유지**: 테마 레이아웃·SCSS 오버라이드는 최소화(업그레이드 회귀 위험). 현재 오버라이드: `navbar.html`, `meeting/baseof.html`, `hooks/head-end.html`.
- **정적 사이트**(GitHub Pages): 백엔드 의존 기능 불가.
- **JS는 허용**: `layouts/_partials/hooks/body-end.html`(Docsy 공식 훅) 또는 `assets/js/`+Hugo Pipes로 추가하면 업그레이드와 무관. (과거 "JS 쓰면 업그레이드 안 됨"은 오해였음.)

## 단계 (권장 실행 순서)

### Phase 1 — 모션·마이크로인터랙션 ⭐ [진행 중]
가장 적은 비용으로 최대 체감 변화. 전 페이지 인상 향상.
- 스크롤 등장: 순수 CSS `animation-timeline: view()` (섹션·카드·미팅 컴포넌트 fade/slide-in)
- hover·focus 트랜지션 정교화
- (옵션) `@view-transition` 페이지 전환
- `prefers-reduced-motion` + `@supports` 가드 → 미지원/모션감소 시 정적(점진적 향상)

### Phase 2 — 디자인 토큰 정밀화
- spacing scale(4/8pt)을 변수로(`--space-*`)
- 타입 스케일 일관화(흩어진 `rem`·`clamp` → 토큰)
- `_variables_project.scss` 확장 → `.kwg-*` 치환

### Phase 3 — 비주얼 에셋 업그레이드 (사용자 협업 필요)
- 홈 히어로·핵심 섹션에 고품질 일러스트/3D 1~2개(AI PNG 제작 → 삽입)
- 손코딩 SVG 5종 교체/보강, 아이콘 세트 통일

### Phase 4 — 다크모드 일관성 + 컴포넌트 시스템
- 라이트/다크 완전 대응 점검(홈 다크 고정 vs 문서 토글 정리)
- `.kwg-*` + Docsy 기본을 토큰 기반 단일 시스템으로 통일

### Phase 5 — 디테일·접근성·완성도
- 404·빈 상태·검색 결과 페이지 다듬기
- 접근성 audit(ARIA·키보드·WCAG AA 대비)
- 성능(이미지 lazy-load, 폰트 최적화)

## 진행 현황
- [x] Phase 1 — 모션 (CSS `animation-timeline` 스크롤 등장, 미배포)
- [x] Phase 2 — 토큰 (spacing/type scale 정의 + 미팅·홈 전면 적용, 미배포)
- [~] Phase 3 — 에셋: CSS 추상 비주얼(홈 메시 그라데이션) + 아이콘 통일(FA→인라인 SVG) 완료. **회화적 일러스트/3D PNG만 협업 잔여**.
- [~] Phase 5 — 접근성·디테일: 404 다국어+브랜드 빈상태, 발표자 사진 lazy-load, 폰트 swap 확인 완료. **색대비/스크린리더 정밀 audit(Lighthouse 등)는 도구 필요**.
- [~] Phase 4 — 다크·컴포넌트: 다크 모드 보정(그림자→면/테두리 구분) 완료. 홈 다크 고정은 의도된 패턴이라 유지, 컴포넌트는 맥락 차이로 억지 통일 안 함.

각 Phase는 독립 PR로 점진 배포한다.
