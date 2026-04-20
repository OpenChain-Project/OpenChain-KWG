---
marp: true
theme: default
paginate: true
style: |
  /* ===== 기본 설정 ===== */
  section {
    font-family: 'Noto Sans KR', 'Apple SD Gothic Neo', 'Malgun Gothic', sans-serif;
    color: #1C1C1E;
    background: #FFFFFF;
    padding: 48px 56px;
  }

  h1 {
    font-size: 40px;
    font-weight: 700;
    color: #1C1C1E;
    margin-bottom: 24px;
    line-height: 1.25;
  }

  h2 {
    font-size: 32px;
    font-weight: 700;
    color: #1C1C1E;
    margin-bottom: 16px;
  }

  p, li {
    font-size: 24px;
    line-height: 1.6;
  }

  ul {
    padding-left: 1.2em;
  }

  li {
    margin-bottom: 12px;
  }

  /* ===== 색상 유틸리티 ===== */
  .blue { color: #1A73E8; }
  .orange { color: #F4A020; }
  .purple { color: #6C3FC5; }
  .green { color: #1E8E5A; }
  .warn { color: #E8680A; }
  .accent { color: #0D47A1; font-weight: 700; }

  /* ===== 배지 ===== */
  .badge {
    display: inline-block;
    padding: 4px 14px;
    border-radius: 20px;
    font-size: 18px;
    font-weight: 700;
    color: #fff;
    margin-right: 10px;
    vertical-align: middle;
  }
  .badge-blue   { background: #1A73E8; }
  .badge-orange { background: #F4A020; }
  .badge-purple { background: #6C3FC5; }
  .badge-green  { background: #1E8E5A; }

  /* ===== Callout 박스 ===== */
  .callout {
    border-radius: 8px;
    padding: 16px 20px;
    font-size: 22px;
    line-height: 1.5;
    margin-top: 20px;
  }
  .callout-blue {
    background: #E8F0FD;
    border-left: 5px solid #1A73E8;
  }
  .callout-orange {
    background: #FFF3CD;
    border-left: 5px solid #F4A020;
  }
  .callout-green {
    background: #E6F4EC;
    border-left: 5px solid #1E8E5A;
    color: #1C1C1E;
  }
  .callout-purple-solid {
    background: #6C3FC5;
    color: #ffffff;
    border-radius: 8px;
    padding: 18px 22px;
    font-size: 22px;
    margin-top: 20px;
  }

  /* ===== 하단 바 (bottom-bar) ===== */
  .bottom-bar {
    display: flex;
    justify-content: space-around;
    background: #F5F7FA;
    border-radius: 8px;
    padding: 18px 12px;
    margin-top: 24px;
  }
  .bottom-bar .item {
    text-align: center;
    font-size: 22px;
    font-weight: 600;
    color: #1C1C1E;
    flex: 1;
    padding: 0 8px;
  }
  .bottom-bar .item .num {
    display: inline-block;
    background: #1A73E8;
    color: #fff;
    border-radius: 50%;
    width: 30px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    font-size: 16px;
    font-weight: 700;
    margin-right: 6px;
  }

  /* ===== 인포그래픽 그리드 (슬라이드 8) ===== */
  .grid-6 {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 14px;
    margin-top: 20px;
  }
  .card {
    background: #F5F7FA;
    border-radius: 8px;
    border-top: 4px solid #1A73E8;
    padding: 16px 18px;
    font-size: 20px;
    line-height: 1.45;
  }
  .card-green {
    border-top-color: #1E8E5A;
  }
  .card .num-badge {
    display: inline-block;
    background: #1A73E8;
    color: #fff;
    border-radius: 50%;
    width: 28px;
    height: 28px;
    line-height: 28px;
    text-align: center;
    font-size: 15px;
    font-weight: 700;
    margin-bottom: 6px;
  }
  .card-green .num-badge {
    background: #1E8E5A;
  }
  .card .card-title {
    font-weight: 700;
    font-size: 19px;
    color: #1C1C1E;
    margin-bottom: 4px;
  }
  .card .card-body {
    font-size: 17px;
    color: #444;
  }

  /* ===== 3단계 프로세스 다이어그램 ===== */
  .process-row {
    display: flex;
    align-items: stretch;
    justify-content: center;
    gap: 0;
    margin-top: 24px;
  }
  .process-step {
    background: #F5F7FA;
    border-radius: 8px;
    padding: 20px 18px;
    text-align: center;
    flex: 1;
    font-size: 20px;
    line-height: 1.45;
  }
  .process-step .step-num {
    display: block;
    width: 36px;
    height: 36px;
    line-height: 36px;
    border-radius: 50%;
    background: #1E8E5A;
    color: #fff;
    font-size: 18px;
    font-weight: 700;
    margin: 0 auto 10px;
  }
  .process-step .step-title {
    font-weight: 700;
    font-size: 20px;
    margin-bottom: 6px;
    color: #1C1C1E;
  }
  .process-step .step-desc {
    font-size: 17px;
    color: #555;
  }
  .process-arrow {
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 28px;
    color: #1E8E5A;
    padding: 0 10px;
    font-weight: 700;
  }

  /* ===== 이미지 placeholder ===== */
  .img-placeholder {
    background: #E8E8E8;
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    color: #666;
    font-size: 22px;
    text-align: center;
    padding: 32px;
    min-height: 300px;
    margin-top: 20px;
    border: 2px dashed #BDBDBD;
  }
  .img-placeholder .url {
    font-size: 18px;
    color: #1A73E8;
    margin-top: 10px;
    font-style: italic;
  }

  /* ===== 컬러 코딩 표 (Yes/No) ===== */
  table {
    width: 100%;
    border-collapse: collapse;
    font-size: 20px;
    margin-top: 16px;
  }
  th {
    background: #1C1C1E;
    color: #fff;
    padding: 12px 14px;
    text-align: left;
    font-weight: 700;
  }
  td {
    padding: 11px 14px;
    border-bottom: 1px solid #E0E0E0;
  }
  .row-yes td { background: #E6F4EC; }
  .row-no  td { background: #FFF3E0; }

  /* ===== 3열 이점 카드 ===== */
  .benefit-row {
    display: flex;
    gap: 18px;
    margin-top: 20px;
  }
  .benefit-card {
    background: #F5F7FA;
    border-radius: 10px;
    padding: 22px 18px;
    flex: 1;
    font-size: 20px;
    line-height: 1.5;
    border-top: 4px solid #1A73E8;
  }
  .benefit-card .icon {
    font-size: 32px;
    margin-bottom: 10px;
    display: block;
  }
  .benefit-card .b-title {
    font-weight: 700;
    font-size: 20px;
    color: #1C1C1E;
    margin-bottom: 6px;
  }
  .benefit-card .b-body {
    font-size: 18px;
    color: #444;
  }

  /* ===== 요약 카드 (슬라이드 16) ===== */
  .summary-row {
    display: flex;
    gap: 18px;
    margin-top: 20px;
  }
  .summary-card {
    border-radius: 10px;
    padding: 22px 18px;
    flex: 1;
    font-size: 20px;
    line-height: 1.5;
  }
  .summary-card-blue   { background: #E8F0FD; border-left: 5px solid #1A73E8; }
  .summary-card-purple { background: #EDE7F6; border-left: 5px solid #6C3FC5; }
  .summary-card-green  { background: #E6F4EC; border-left: 5px solid #1E8E5A; }
  .summary-card .sc-icon { font-size: 28px; margin-bottom: 8px; display: block; }
  .summary-card .sc-title { font-weight: 700; font-size: 19px; margin-bottom: 6px; }
  .summary-card .sc-body  { font-size: 17px; color: #444; }

  .next-arrow {
    text-align: center;
    margin-top: 22px;
    font-size: 22px;
    color: #0D47A1;
    font-weight: 700;
  }

  /* ===== 비교표 헤더 색상 ===== */
  .th-5230   { background: #1A73E8 !important; }
  .th-18974  { background: #F4A020 !important; }
  .th-42001  { background: #6C3FC5 !important; }
  .th-label  { background: #37474F !important; }

  /* ===== 하이라이트 박스 ===== */
  .highlight-yellow {
    background: #FFF3CD;
    padding: 2px 6px;
    border-radius: 4px;
  }

  /* ===== 파트 0 전용 클래스 ===== */
  .col-left {
    flex: 1;
    background: #F5F7FA;
    padding: 16px 20px;
    border-radius: 6px;
    margin-right: 12px;
  }
  .col-right {
    flex: 1;
    background: #FFFFFF;
    padding: 16px 20px;
    border-radius: 6px;
    border: 1px solid #E3EAF8;
    margin-left: 12px;
  }
  .key-message {
    background: #E3F2FD;
    color: #0D47A1;
    font-weight: bold;
    padding: 10px 20px;
    border-left: 4px solid #1A73E8;
    margin-top: 16px;
    font-size: 22px;
    border-radius: 0 4px 4px 0;
  }
  .tag-warning {
    background: #FFF3E0;
    color: #E8680A;
    padding: 0.1em 0.4em;
    border-radius: 3px;
    font-weight: bold;
  }
  .solution {
    color: #1E8E5A;
    font-weight: bold;
  }
  .timeline-5 {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 6px;
    margin-top: 24px;
  }
  .tl-box {
    flex: 1;
    background: #EAF3FF;
    border: 1px solid #90CAF9;
    border-radius: 6px;
    padding: 12px 8px;
    text-align: center;
    font-size: 18px;
  }
  .tl-active {
    background: #E3F2FD;
    border: 2px solid #1A73E8;
    font-weight: bold;
    position: relative;
  }
  .tl-purple { background: #F3E8FF; border-color: #CE93D8; }
  .tl-green  { background: #E8F5E9; border-color: #A5D6A7; }
  .tl-gray   { background: #F5F7FA; border-color: #CED4DA; }
  .tl-time   { display: block; color: #555555; font-size: 16px; margin-top: 6px; }
  .tl-tag    { display: block; color: #777777; font-size: 14px; margin-top: 4px; }

  /* ===== 파트 2 전용 클래스 ===== */
  /* 6대 요소 그리드 (슬라이드 17) */
  .six-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 12px;
    margin-top: 10px;
  }
  .six-card {
    background: #F5F7FA;
    border-radius: 8px;
    padding: 14px 14px 14px 36px;
    position: relative;
    border-top: 4px solid #1A73E8;
  }
  .six-num {
    position: absolute;
    top: 10px; left: 10px;
    background: #1A73E8;
    color: white;
    border-radius: 50%;
    width: 22px; height: 22px;
    display: inline-flex; align-items: center; justify-content: center;
    font-size: 0.72em; font-weight: bold;
  }
  .six-title { font-weight: 700; font-size: 1em; color: #1C1C1E; margin-bottom: 4px; }
  .six-sub   { font-size: 0.76em; color: #555; }
  .six-center-label {
    text-align: center; font-size: 0.8em; color: #0D47A1;
    font-weight: bold; margin-top: 8px;
    background: #E3F2FD; padding: 6px 12px; border-radius: 4px;
  }
  /* 플로우차트 공통 (슬라이드 24·25·26·33) */
  .flow-row {
    display: flex; align-items: stretch; gap: 0;
    margin-top: 16px;
  }
  .flow-step {
    flex: 1;
    background: #F5F7FA;
    border-top: 3px solid #1A73E8;
    border-radius: 6px;
    padding: 10px 8px;
    text-align: center;
    font-size: 0.78em;
  }
  .flow-step-warn { border-top-color: #F4A020; background: #FFF8EE; }
  .flow-step-ok   { border-top-color: #1E8E5A; background: #EDFAF3; }
  .flow-step-red  { border-top-color: #E8680A; background: #FFF0EB; }
  .flow-num  { display: block; font-weight: 700; color: #1A73E8; font-size: 1em; }
  .flow-name { display: block; font-weight: 600; font-size: 0.9em; margin: 2px 0; }
  .flow-desc { display: block; font-size: 0.72em; color: #666; }
  .flow-arr  { display: flex; align-items: center; color: #BBB; font-size: 1.2em; padding: 0 2px; }
  /* CVSS 박스 (슬라이드 25) */
  .cvss-row { display: flex; gap: 10px; margin-top: 10px; }
  .cvss-box {
    flex: 1; border-radius: 6px; padding: 10px 12px;
    text-align: center; font-size: 0.8em;
  }
  .cvss-crit { background: #FDECEA; border: 1px solid #E57373; }
  .cvss-high { background: #FFF3E0; border: 1px solid #FFB74D; }
  .cvss-med  { background: #F5F7FA; border: 1px solid #90CAF9; }
  .cvss-score    { font-weight: 700; font-size: 1.1em; display: block; }
  .cvss-deadline { font-size: 0.85em; display: block; margin-top: 4px; }
  /* Before/After (슬라이드 28) */
  .ba-before { color: #E8680A; font-weight: 700; margin-bottom: 8px; }
  .ba-after  { color: #1E8E5A; font-weight: 700; margin-bottom: 8px; }
  /* 도구 생태계 2×2 그리드 (슬라이드 29) */
  .eco-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 12px; margin-top: 10px;
  }
  .eco-card {
    border-radius: 8px; padding: 14px 16px;
    border-top: 4px solid #1A73E8;
  }
  .eco-scan  { background: #E3F2FD; border-color: #1A73E8; }
  .eco-sbom  { background: #E8F5E9; border-color: #1E8E5A; }
  .eco-gov   { background: #F3E8FF; border-color: #6C3FC5; }
  .eco-vuln  { background: #FFF3E0; border-color: #F4A020; }
  .eco-title { font-weight: 700; font-size: 0.88em; margin-bottom: 6px; color: #1C1C1E; }
  .eco-tools { font-size: 0.78em; font-weight: 600; color: #333; }
  /* CI/CD 파이프라인 (슬라이드 33) */
  .cicd-pipe {
    display: flex; align-items: center;
    gap: 0; margin-top: 12px; flex-wrap: nowrap;
    overflow-x: auto;
  }
  .cicd-step {
    flex: 1; min-width: 0;
    background: #F5F7FA; border-top: 3px solid #1A73E8;
    border-radius: 6px; padding: 8px 4px;
    text-align: center; font-size: 0.68em;
  }
  .cicd-sbom   { border-color: #1E8E5A; background: #EDFAF3; }
  .cicd-scan   { border-color: #6C3FC5; background: #F3E8FF; }
  .cicd-vuln   { border-color: #F4A020; background: #FFF8EE; }
  .cicd-gate   { border-color: #E8680A; background: #FFF0EB; }
  .cicd-name   { display: block; font-weight: 600; font-size: 1em; }
  .cicd-sub    { display: block; font-size: 0.85em; color: #666; margin-top: 2px; }
  .cicd-arr    { color: #BBB; font-size: 1.2em; padding: 0 1px; flex-shrink: 0; }
  /* 커리큘럼 그리드 (슬라이드 36) */
  .curr-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 12px; margin-top: 10px; }
  .curr-card { border-radius: 8px; overflow: hidden; }
  .curr-header { padding: 10px 14px; font-weight: 700; font-size: 0.88em; color: white; }
  .curr-dev  { background: #1A73E8; }
  .curr-ospm { background: #6C3FC5; }
  .curr-exec { background: #1E8E5A; }
  .curr-body { background: #F5F7FA; padding: 10px 14px; font-size: 0.76em; }
  .curr-body li { margin-bottom: 6px; }
  /* 체크리스트 그리드 (슬라이드 38) */
  .checklist-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px; margin-top: 12px; }
  .cl-item { background: #F5F7FA; border-radius: 8px; padding: 12px 14px; border-left: 4px solid #1A73E8; }
  .cl-last { border-left-color: #1E8E5A; }
  .cl-label { font-weight: 700; font-size: 0.84em; color: #0D47A1; margin-bottom: 4px; display: block; }
  .cl-check { font-size: 0.72em; color: #555; line-height: 1.4; display: block; }
  /* QR 2개 가로배치 (슬라이드 38) */
  .qr-row { display: flex; justify-content: center; gap: 40px; margin-top: 14px; }
  .qr-item { display: flex; flex-direction: column; align-items: center; gap: 4px; }
  .qr-box { width: 80px; height: 80px; background: #E0E0E0; border-radius: 4px; display: flex; align-items: center; justify-content: center; font-size: 0.65em; color: #777; }
  .qr-label { font-weight: 700; font-size: 0.78em; }
  .qr-url { font-size: 0.62em; color: #888; font-style: italic; }

  /* ===== 파트 3 전용 클래스 ===== */
  /* callout-purple (슬라이드 39) */
  .callout-purple {
    background: #F3E8FF;
    border-left: 5px solid #6C3FC5;
    border-radius: 0 8px 8px 0;
    padding: 16px 20px;
    font-size: 22px;
    line-height: 1.5;
    margin-top: 16px;
    color: #3B1F6E;
  }
  /* AI 시스템 트리 (슬라이드 40) */
  .ai-tree { margin-top: 16px; }
  .ai-tree-root {
    text-align: center;
    background: #6C3FC5;
    color: white;
    font-weight: 700;
    font-size: 1em;
    padding: 10px 24px;
    border-radius: 8px;
    display: inline-block;
    margin-bottom: 16px;
  }
  .ai-tree-branches {
    display: flex;
    gap: 16px;
    justify-content: center;
  }
  .ai-branch {
    flex: 1;
    background: #F5F7FA;
    border-top: 4px solid #6C3FC5;
    border-radius: 8px;
    padding: 14px 14px 14px 38px;
    position: relative;
  }
  .branch-num {
    position: absolute;
    top: 10px; left: 10px;
    width: 22px; height: 22px;
    border-radius: 50%;
    background: #6C3FC5;
    color: white;
    display: inline-flex; align-items: center; justify-content: center;
    font-size: 0.72em; font-weight: bold;
  }
  .ai-branch-2 .branch-num { background: #F4A020; }
  .ai-branch-3 .branch-num { background: #1E8E5A; }
  .branch-title { font-weight: 700; font-size: 0.9em; margin-bottom: 6px; }
  .branch-tag {
    display: inline-block;
    padding: 2px 10px;
    border-radius: 20px;
    font-size: 0.72em;
    font-weight: 600;
  }
  .tag-blue   { background: #E3F2FD; color: #1A73E8; }
  .tag-amber  { background: #FFF3E0; color: #E65100; }
  .tag-green  { background: #E8F5E9; color: #1E8E5A; }
  .branch-examples { font-size: 0.7em; color: #777; margin-top: 6px; }
  /* 경고 박스 (슬라이드 43) */
  .warn-box {
    background: #FFF8E1;
    border: 2px solid #F59E0B;
    border-radius: 8px;
    padding: 14px 18px;
    font-size: 20px;
    margin-top: 16px;
    color: #78350F;
  }
  .warn-box::before {
    content: "⚠️ ";
    font-size: 1.1em;
  }
  /* AI-BOM 트리 (슬라이드 46) */
  .aibom-tree {
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 12px;
  }
  .aibom-node {
    display: flex;
    align-items: center;
    gap: 12px;
    background: #F3E8FF;
    border-left: 4px solid #6C3FC5;
    border-radius: 0 8px 8px 0;
    padding: 12px 16px;
  }
  .aibom-icon { font-size: 1.4em; }
  .aibom-label { font-weight: 700; font-size: 0.9em; }
  .aibom-detail { font-size: 0.76em; color: #555; margin-top: 3px; }
  /* ISO 조항 배지 (슬라이드 49) */
  .iso-clause {
    display: inline-block;
    background: #6C3FC5;
    color: white;
    font-size: 0.72em;
    font-weight: 700;
    padding: 2px 8px;
    border-radius: 4px;
    margin-right: 6px;
  }
  /* 파트 3 요약 카드 (슬라이드 51) */
  .summary-card-purple {
    background: #F3E8FF;
    border-top: 4px solid #6C3FC5;
    border-radius: 8px;
    padding: 16px 20px;
    flex: 1;
  }
  .next-part-box {
    border: 2px dashed #6C3FC5;
    border-radius: 8px;
    padding: 12px 20px;
    text-align: center;
    color: #6C3FC5;
    font-weight: 600;
    font-size: 0.9em;
    margin-top: 16px;
  }

  /* ===== 파트 4·5 전용 클래스 ===== */
  /* 데모 시나리오 카드 (슬라이드 53) */
  .demo-scenario { display: flex; flex-direction: column; gap: 12px; margin-top: 12px; }
  .demo-card { display: flex; gap: 0; border-radius: 8px; overflow: hidden; }
  .demo-step-num {
    background: #1A73E8; color: white;
    font-weight: 700; font-size: 1em;
    min-width: 36px; display: flex; align-items: center; justify-content: center;
  }
  .demo-question {
    flex: 1; background: #E8F0FE;
    padding: 10px 14px; font-size: 0.82em;
    border-right: 1px solid #C5D5F5;
  }
  .demo-answer {
    flex: 1; background: #FFF8E1;
    padding: 10px 14px; font-size: 0.82em;
  }
  .demo-q-label { font-weight: 700; color: #1A73E8; font-size: 0.78em; margin-bottom: 3px; }
  .demo-a-label { font-weight: 700; color: #E65100; font-size: 0.78em; margin-bottom: 3px; }
  /* 3열 로드맵 (슬라이드 56) */
  .roadmap-3col { display: grid; grid-template-columns: repeat(3, 1fr); gap: 16px; margin-top: 14px; }
  .roadmap-col { border-radius: 8px; padding: 16px; }
  .col-blue   { background: #E3F2FD; border-top: 4px solid #1A73E8; }
  .col-orange { background: #FFF3E0; border-top: 4px solid #F4A020; }
  .col-green  { background: #E8F5E9; border-top: 4px solid #1E8E5A; }
  .roadmap-badge {
    display: inline-block; padding: 3px 12px;
    border-radius: 20px; font-weight: 700; font-size: 0.78em;
    color: white; margin-bottom: 10px;
  }
  .badge-week   { background: #1A73E8; }
  .badge-month  { background: #F4A020; }
  .badge-3month { background: #1E8E5A; }
  .roadmap-col li { font-size: 0.78em; margin-bottom: 6px; list-style: none; }
  .roadmap-col li::before { content: "☐ "; }
  .roadmap-foot {
    text-align: center; font-size: 0.78em; color: #555;
    margin-top: 14px; font-style: italic;
  }
  /* QR 5개 그리드 (슬라이드 57) */
  .qr-grid-5 { display: flex; flex-direction: column; gap: 12px; margin-top: 10px; }
  .qr-row-top { display: flex; justify-content: center; gap: 20px; }
  .qr-row-bot { display: flex; justify-content: center; gap: 20px; }
  .qr-card {
    display: flex; flex-direction: column; align-items: center;
    gap: 4px; width: 140px;
  }
  .qr-card .qr-box { width: 70px; height: 70px; }
  .qr-num {
    font-weight: 700; font-size: 0.72em; color: #0D47A1;
  }
  .qr-card .qr-label { font-size: 0.72em; font-weight: 600; text-align: center; }
  .qr-card .qr-url { font-size: 0.58em; color: #888; text-align: center; }
  .qr-highlight .qr-box { border: 2px solid #F4A020; }

  /* ===== 링크 및 표준번호 축소 폰트 (추가) ===== */
  .url-link {
    font-size: 13px;
    color: #888888;
    margin-top: 14px;
    word-break: break-all;
  }
  .url-link a { color: #1A73E8; text-decoration: none; }
  .std-num {
    font-size: 14px;
    color: #777777;
    font-weight: 400;
  }
  /* 입증자료 푸터 */
  .evidence {
    font-size: 12px;
    color: #888888;
    margin-top: 14px;
    padding-top: 6px;
    border-top: 1px solid #EEEEEE;
    line-height: 1.5;
  }
---

<!-- Slide 1: 표지 -->
<!-- _class: lead -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->

# 기업 오픈소스 거버넌스 구축 실무

## — ISO 표준부터 AI 컴플라이언스까지

<br>

 오픈소스 AI 매니지먼트 아카데미 | 2026. 4. 21


---

<!-- Slide 2: 지금까지 배운 것 → 오늘 배울 것 -->

# 지금까지 배운 것 → 오늘 배울 것

<div class="columns">
<div class="col-left">

<p style="font-weight:700; color:#555555; margin-bottom:12px;">앞선 강의에서 배운 것</p>

- 오픈소스·AI 모델 라이선스의 종류와 의무사항
- Olive 플랫폼으로 컴플라이언스 관리하는 방법
- 카카오의 오픈소스 AI 모델 관리 사례

</div>
<div class="col-right">

<p style="font-weight:700; color:#1A73E8; margin-bottom:12px;">이번 강의에서 배울 것</p>

- ISO 국제표준 기반 거버넌스 체계를 어떻게 구축하는가
- 조직·정책·프로세스·도구·교육·준수를 어떻게 갖추는가
- AI 컴플라이언스까지 확장하는 방법

</div>
</div>

<div class="key-message">
라이선스를 <strong>'아는 것'</strong>에서 조직이 <strong>'지속적으로 지키는 체계'</strong>로
</div>

---

<!-- Slide 3: 왜 거버넌스 체계가 필요한가 -->

# 라이선스를 알아도 체계 없이는 사고가 난다

- <span class="tag-warning">2009년 Busybox 소송</span> — 제품을 *배포만 한* 회사도 소송 대상이 됐다. 공급망 전체가 리스크
- 개발자가 라이선스를 알아도, **조직적 검토 프로세스**가 없으면 배포 전 마지막 관문에서 누락이 발생한다
- <span class="solution">**ISO 국제표준**은 이 체계를 만들기 위한 검증된 프레임워크를 제공한다</span>

---

<!-- Slide 4: 오늘 강의에서 얻어갈 것 -->

# 오늘 강의에서 얻어갈 것

1. <span style="color:#1A73E8">**ISO 5230**</span> · <span style="color:#F4A020">**ISO 18974**</span> · <span style="color:#6C3FC5">**ISO 42001**</span> 세 표준이 무엇이고 어떻게 연결되는지 안다
2. <span style="color:#1A73E8; font-weight:bold;">6대 핵심 요소</span>(조직·정책·프로세스·도구·교육·준수)로 체계를 어떻게 구축하는지 안다

<div class="callout callout-green">
→ 돌아 가서 <strong>바로 시작할 수 있는 첫 번째 액션</strong>을 갖고 돌아간다
</div>

---

<!-- Slide 5: 강의 구성 Roadmap -->

# 강의 구성 — Roadmap

<div class="timeline-5">
  <div class="tl-box tl-active">
    <strong>파트 1</strong><br>ISO 표준 이해
    <span class="tl-tag">오픈소스·보안·AI 표준</span>
    <span class="tl-time">20분</span>
  </div>
  <div class="tl-box">
    <strong>파트 2</strong><br>6대 요소 구축
    <span class="tl-tag">조직·정책·프로세스 등</span>
    <span class="tl-time">40분</span>
  </div>
  <div class="tl-box tl-purple">
    <strong>파트 3</strong><br>AI 컴플라이언스
    <span class="tl-tag">AI SBOM·ISO 42001</span>
    <span class="tl-time">20분</span>
  </div>
  <div class="tl-box tl-green">
    <strong>파트 4</strong><br>Trusted OSS 데모
    <span class="tl-tag">도구 실습</span>
    <span class="tl-time">20분</span>
  </div>
  <div class="tl-box tl-gray">
    <strong>파트 5</strong><br>Q&amp;A + 시작 로드맵
    <span class="tl-tag">액션 플랜</span>
    <span class="tl-time">15분</span>
  </div>
</div>



---

<!-- Slide Part2-Intro: 파트 2 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: lead -->

# 파트 1

## ISO 표준으로 거버넌스 이해하기

<br>

<!-- 슬라이드 17~38 · 40분 -->

---



<!-- Slide 6: OpenChain Project란? -->

# OpenChain Project란?

- Linux Foundation이 운영하는 오픈소스 컴플라이언스 **국제 프로젝트**
- **"<span class="accent">공급망</span> 전체가 함께 컴플라이언스를 지켜야만 한 기업이 안전하다"**
- Qualcomm, Siemens, ARM, Bosch 등 글로벌 기업이 정책·프로세스를 **공개 공유**

<div class="bottom-bar">
  <div class="item"><span class="num">①</span> 국제표준 규격</div>
  <div class="item"><span class="num">②</span> 자가 인증 체크리스트</div>
  <div class="item"><span class="num">③</span> 무료 문서 자료</div>
</div>


<div class="url-link" style="text-align:center;">
🔗 <a href="https://openchainproject.org/" style="color:#1A73E8;">OpenChain Project</a> | 
🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/" style="color:#1A73E8;">OpenChain KWG 가이드: OpenChain 살펴보기</a>
</div>


---

<!-- Slide 7: ISO/IEC 5230 — 라이선스 컴플라이언스 -->

# ISO/IEC 5230 — 라이선스 컴플라이언스

<span class="badge badge-blue">ISO/IEC 5230</span>

- **2020년 12월 제정**: 오픈소스 컴플라이언스에 관한 <span class="accent">유일한 국제표준</span>
- OpenChain 규격(6가지 핵심 요구사항)이 ISO 표준으로 채택
- 공급망에서 **구매자가 공급자에게 준수를 요구**하기 시작
  - 사례: Bosch, Scania 등 완성차·제조 기업이 공급자에게 ISO/IEC 5230 준수 요청

<div class="callout callout-blue">
  기업 규모·업종과 무관하게 <strong>모든 기업에 적용 가능</strong>하도록 설계된 표준입니다.
</div>

<div class="url-link" style="text-align:center;">
🔗 <a href="https://openchainproject.org/license-compliance" style="color:#1A73E8;">Learn more about ISO/IEC 5230</a>
</div>

---

<!-- Slide 8: ISO/IEC 5230의 6가지 핵심 요구사항 -->

# ISO/IEC 5230 — 6가지 핵심 요구사항

<span class="badge badge-blue">ISO/IEC 5230</span>

<div class="grid-6">
  <div class="card">
    <span class="num-badge">①</span>
    <div class="card-title">프로그램 기반</div>
    <div class="card-body">정책·프로세스·조직 구축</div>
  </div>
  <div class="card">
    <span class="num-badge">②</span>
    <div class="card-title">관련 업무 정의 및 지원</div>
    <div class="card-body">역할·책임·역량 정의</div>
  </div>
  <div class="card">
    <span class="num-badge">③</span>
    <div class="card-title">오픈소스 콘텐츠 검토 및 승인</div>
    <div class="card-body">사용 오픈소스 식별·검토</div>
  </div>
  <div class="card">
    <span class="num-badge">④</span>
    <div class="card-title">컴플라이언스 산출물 생성 및 전달</div>
    <div class="card-body">고지문·소스코드 패키지</div>
  </div>
  <div class="card">
    <span class="num-badge">⑤</span>
    <div class="card-title">오픈소스 커뮤니티 참여 이해</div>
    <div class="card-body">기여·공개 원칙</div>
  </div>
  <div class="card card-green">
    <span class="num-badge">⑥</span>
    <div class="card-title">규격 요구사항 준수</div>
    <div class="card-body">자가 인증 및 선언</div>
  </div>
</div>


<div class="url-link" style="text-align:center;">
🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/" style="color:#1A73E8;">OpenChain KWG 가이드: ISO/IEC 5230 준수 가이드</a>
</div>

---

<!-- Slide 9: ISO/IEC 18974 — 보안 보증 -->

# ISO/IEC 18974 — 보안 보증

<span class="badge badge-orange">ISO/IEC 18974</span>

- **2023년 제정**: 오픈소스 소프트웨어의 **알려진 보안 취약점 관리** 국제표준
- ISO/IEC 5230(라이선스)과 <span class="highlight-yellow"><strong>쌍으로 운영</strong></span> — 컴플라이언스 + 보안의 두 축
- CVE 모니터링 · 취약점 대응 프로세스 · **SBOM 기반** 보안 관리

<div class="callout callout-orange">
  <strong>국내 사례</strong>: LG전자는 <strong>2023년 4월</strong> ISO/IEC 18974 인증을 획득했습니다. 
  국내 첫 사례 중 하나로, 이미 한국 기업이 이 표준을 실행하고 있습니다.
</div>


<div class="url-link" style="text-align:center;">
🔗 <a href="https://openchainproject.org/security-assurance" style="color:#1A73E8;">Learn more about ISO/IEC 18974</a>
</div>


---

<!-- Slide 10: ISO/IEC 42001 — AI 관리 시스템 -->

# ISO/IEC 42001 — AI 관리 시스템

<span class="badge badge-purple">ISO/IEC 42001</span>

- **2023년 제정**: AI 시스템을 책임감 있게 개발·운영·관리하기 위한 **AIMS** 표준
- ISO 9001, ISO 27001과 동일한 **경영 시스템 구조** — AI 거버넌스 전반
- 오픈소스 담당자 관점: 특정 조항(<code>§5.2</code>, <code>§6.1.2</code>, <code>§8.5</code>)이 오픈소스 관리와 **직접 교차**

<div class="callout-purple-solid">
  이 강의는 ISO 42001 전체가 아닌 <strong>"오픈소스와 교차하는 요구사항"</strong>에 집중합니다.
</div>

---

<!-- Slide 11: 세 표준 비교 한눈에 -->

# 세 표준 비교 한눈에

<table>
  <thead>
    <tr>
      <th class="th-label">항목</th>
      <th class="th-5230">ISO/IEC 5230</th>
      <th class="th-18974">ISO/IEC 18974</th>
      <th class="th-42001">ISO/IEC 42001</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>주제</strong></td>
      <td>오픈소스 라이선스 컴플라이언스</td>
      <td>오픈소스 보안 보증</td>
      <td>AI 관리 시스템</td>
    </tr>
    <tr>
      <td><strong>제정 연도</strong></td>
      <td>2020</td>
      <td>2023</td>
      <td>2023</td>
    </tr>
    <tr>
      <td><strong>운영 주체</strong></td>
      <td>OpenChain (Linux Foundation)</td>
      <td>OpenChain (Linux Foundation)</td>
      <td>ISO/IEC JTC 1 SC 42</td>
    </tr>
    <tr>
      <td><strong>자가 인증</strong></td>
      <td><span class="green">✅ 무료 체크리스트</span></td>
      <td><span class="green">✅ 무료 체크리스트</span></td>
      <td><span class="warn">❌ 없음 (갭 분석)</span></td>
    </tr>
    <tr>
      <td><strong>오픈소스 담당자 관련성</strong></td>
      <td><strong> 핵심</strong></td>
      <td><strong> 핵심</strong></td>
      <td><strong> 교차 요구사항</strong></td>
    </tr>
  </tbody>
</table>

---

<!-- Slide 12: 자가 인증이란? -->

# 자가 인증이란?

<div class="process-row">
  <div class="process-step">
    <span class="step-num">①</span>
    <div class="step-title">체크리스트 확인</div>
    <div class="step-desc">certification.openchainproject.org에서<br>Yes / No 질문에 답변</div>
  </div>
  <div class="process-arrow">→</div>
  <div class="process-step">
    <span class="step-num">②</span>
    <div class="step-title">결과 제출</div>
    <div class="step-desc">모든 항목 Yes이면<br>Conforming Submission 제출</div>
  </div>
  <div class="process-arrow">→</div>
  <div class="process-step">
    <span class="step-num">③</span>
    <div class="step-title">인증 선언</div>
    <div class="step-desc">Linux Foundation 확인 후<br>ISO/IEC 5230 준수 선언 가능</div>
  </div>
</div>

<div class="callout callout-green" style="margin-top: 24px;">
  <strong>비용 없음 · 온라인으로 진행 · OpenChain이 가장 권장하는 방법</strong>
</div>


<div class="url-link" style="text-align:center;">
🔗 <a href="https://github.com/OpenChain-Project/Reference-Material/blob/master/OpenChain-Standards-Self-Certification/Checklist/ISO-IEC-5230/ko/iso-5230-2020-Self-Certification-Checklist.md" style="color:#1A73E8;">ISO/IEC 5230 자가 인증 체크리스트</a>
</div>


<!-- --- -->

<!-- Slide 13: [화면 시연] 자가 인증 체크리스트 -->
<!-- 
# [화면 시연] 자가 인증 체크리스트

<div class="img-placeholder">
  <strong>[ 발표자 화면 시연 영역 ]</strong>
  <span class="url">certification.openchainproject.org</span>
</div>

<p style="text-align: center; font-size: 20px; color: #666; margin-top: 14px;">
  실제 자가 인증 체크리스트 웹사이트를 직접 시연합니다
</p> -->

---

<!-- Slide 14: 자가 인증 결과 예시 -->

# 자가 인증 결과 예시

<table>
  <thead>
    <tr>
      <th>항목</th>
      <th>질문 예시</th>
      <th>판정</th>
    </tr>
  </thead>
  <tbody>
    <tr class="row-yes">
      <td>정책 문서화</td>
      <td>오픈소스 정책이 문서화되어 있는가?</td>
      <td><span class="green"><strong>✅ Yes</strong></span></td>
    </tr>
    <tr class="row-yes">
      <td>역할 정의</td>
      <td>담당자의 역할과 책임이 문서화되어 있는가?</td>
      <td><span class="green"><strong>✅ Yes</strong></span></td>
    </tr>
    <tr class="row-no">
      <td>프로세스</td>
      <td>오픈소스 검토·승인 프로세스가 있는가?</td>
      <td><span class="warn"><strong>⚠️ No (개선 필요)</strong></span></td>
    </tr>
    <tr class="row-no">
      <td>SBOM 관리</td>
      <td>SBOM을 생성하고 유지하는가?</td>
      <td><span class="warn"><strong>⚠️ No (개선 필요)</strong></span></td>
    </tr>
    <tr class="row-yes">
      <td>교육</td>
      <td>담당자가 연 1회 이상 교육을 받는가?</td>
      <td><span class="green"><strong>✅ Yes</strong></span></td>
    </tr>
  </tbody>
</table>

<div class="callout callout-orange" style="margin-top: 16px;">
  No 항목 = 보완해야 할 영역 → <strong>이 강의의 파트 2에서 해결 방법을 다룹니다</strong>
</div>

---

<!-- Slide 15: 인증 후 얻을 수 있는 것 -->

# 인증 후 얻을 수 있는 것

<div class="benefit-row">
  <div class="benefit-card">
    <span class="icon">🌐</span>
    <div class="b-title">공급망 신뢰 확보</div>
    <div class="b-body">글로벌 구매자·파트너에게 오픈소스 거버넌스 수준을 증명</div>
  </div>
  <div class="benefit-card" style="border-top-color: #1E8E5A;">
    <span class="icon">🏗️</span>
    <div class="b-title">내부 체계 완성</div>
    <div class="b-body">정책·프로세스·도구·교육이 갖춰진 지속 가능한 관리 체계</div>
  </div>
  <div class="benefit-card" style="border-top-color: #6C3FC5;">
    <span class="icon">🛡️</span>
    <div class="b-title">리스크 선제 대응</div>
    <div class="b-body">소송·보안 사고 발생 전에 취약점을 체계적으로 식별·해소</div>
  </div>
</div>

<p style="text-align: center; font-size: 20px; color: #555; margin-top: 22px;">
  OpenChain 인증 선언 기업: <strong>LG전자, Kakao, SK텔레콤, 현대자동차</strong> 등 국내 다수 기업 포함
</p>

---

<!-- Slide 16: 파트 1 요약 -->

# 파트 1 요약

<div class="summary-row">
  <div class="summary-card summary-card-blue">
    <span class="sc-icon">📋</span>
    <div class="sc-title">라이선스 + 보안 거버넌스</div>
    <div class="sc-body">ISO/IEC 5230·18974로 라이선스·보안 거버넌스를 국제표준 수준으로 구축</div>
  </div>
  <div class="summary-card summary-card-purple">
    <span class="sc-icon">🤖</span>
    <div class="sc-title">AI까지 확장</div>
    <div class="sc-body">ISO/IEC 42001로 AI 시스템의 오픈소스 관리까지 범위를 확장</div>
  </div>
  <div class="summary-card summary-card-green">
    <span class="sc-icon">✅</span>
    <div class="sc-title">지금 당장 진단 가능</div>
    <div class="sc-body">자가 인증 체크리스트로 우리 기업의 현황을 즉시 확인</div>
  </div>
</div>

<div class="next-arrow">
  다음: 6대 핵심 요소별로 어떻게 구축하는가 →
</div>


---

<!-- Slide Part2-Intro: 파트 2 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: lead -->

# 파트 2

## 6대 핵심 요소로 체계 구축하기

<br>

<!-- 슬라이드 17~38 · 40분 -->

---

<!-- Slide 17: 6대 핵심 요소 전체 구조 -->

# 6대 핵심 요소 전체 구조

<div class="six-grid">
  <div class="six-card">
    <span class="six-num">1</span>
    <div class="six-title">조직</div>
    <div class="six-sub">OSPO · 담당자 지정</div>
  </div>
  <div class="six-card">
    <span class="six-num">2</span>
    <div class="six-title">정책</div>
    <div class="six-sub">라이선스 · 보안 · 기여 정책</div>
  </div>
  <div class="six-card">
    <span class="six-num">3</span>
    <div class="six-title">프로세스</div>
    <div class="six-sub">사용 · 기여 · 배포 흐름</div>
  </div>
  <div class="six-card">
    <span class="six-num">4</span>
    <div class="six-title">도구</div>
    <div class="six-sub">스캔 · SBOM · 취약점 관리</div>
  </div>
  <div class="six-card">
    <span class="six-num">5</span>
    <div class="six-title">교육</div>
    <div class="six-sub">역할별 인식 제고</div>
  </div>
  <div class="six-card">
    <span class="six-num">6</span>
    <div class="six-title">준수</div>
    <div class="six-sub">자가 인증 선언 및 갱신</div>
  </div>
</div>

<div class="six-center-label">ISO/IEC 5230 + 18974 요구사항</div>

---

<!-- Slide 18: 오픈소스 관리 조직 (OSPO) -->

# 1. 조직 

## 오픈소스 관리 조직 (OSPO)

- **OSPO**(Open Source Program Office): 기업의 오픈소스 전담 조직 또는 가상 위원회(OSRB)
- 핵심 역할: 오픈소스 프로그램 매니저 · 법무 · IT · 보안 · 개발 문화 담당
- 소규모 기업은 **1인이 전 역할 담당 가능** — 중요한 것은 역할과 책임을 '문서화'하는 것

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.2.1 역할·책임 문서화 / §3.1.2.2 역할별 역량 요건 <br>-ISO/IEC 18974 §4.1.2.1 역할·책임 식별 / §4.1.2.2 역량 요건 식별</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드: 조직 구성</a></div>

---

<!-- Slide 19: 규모별 조직 구성 예시 -->

# 규모별 조직 구성 예시

| 구분 | 소규모 (스타트업·중소기업) | 중규모 | 대규모 |
|------|------------------------|-------|-------|
| 구성 | 1인 담당자 (겸직) | 오픈소스 프로그램 매니저 + 법무 | 전담 OSPO팀 (5인 이상) |
| 법무 지원 | 외부 자문 활용 | 사내 법무팀 협업 | 전담 법무 담당 |
| 도구 운영 | 오픈소스 도구 (무료) | IT팀 협업 | 전담 IT 담당 |
| 참고 사례 | — | SK텔레콤 OSRB | LG전자, Kakao |

<div class="url-link">🔗 <a href="https://sktelecom.github.io/about/">SK텔레콤 조직 구성</a></div>


---

<!-- Slide 20: 담당자 역할 매트릭스 -->

# 담당자 역할 매트릭스

| 역할 | 주요 책임 | 필요 역량 |
|------|---------|---------|
| 오픈소스 프로그램 매니저 | 오픈소스 프로그램 총괄 책임 | 컴플라이언스 전문 지식, 커뮤니케이션 |
| 법무 담당 | 라이선스 해석, 법적 위험 자문 | 저작권·오픈소스 라이선스 전문 지식 |
| IT 담당 | 스캔 도구 운영, CI/CD 자동화 | 오픈소스 도구 이해, 인프라 전문 지식 |
| 보안 담당 | 취약점 분석 도구 운영, CVE 대응 | DevSecOps, SBOM 관리 |
| 개발 문화 담당 | 사내 개발자 오픈소스 활용 지원 | 오픈소스 커뮤니티 참여 경험 |
| 사업 부서 | 정책·프로세스 준수 | 라이선스 기본 지식 |

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.1 역할 식별 <br>-ISO/IEC 18974 §4.2.2.1 역할 식별</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드: 조직 구성</a></div>

---

<!-- Slide 21 (신규): 역량 평가 및 기록 -->

# 역량 평가 및 기록

- 역할별 필요 역량을 사전 정의하고, 각 담당자의 현재 역량 수준을 평가한다
- 교육 이수 기록과 역량 평가 결과를 문서화하여 보관한다 (연 1회 이상 갱신)
- 역량이 부족한 경우 교육·훈련을 통해 보완하고 그 결과를 기록한다

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.2.3 역량 달성 증거 <br>-ISO/IEC 18974 §4.1.2.4 역량 달성 증거</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드: 조직 구성</a></div>

---

<!-- Slide 22 (신규): 프로그램 적용 범위 -->

# 프로그램 적용 범위

- 오픈소스 프로그램이 적용되는 제품군·서비스·부서의 범위를 명확히 문서화한다
- 적용 범위는 정책 문서에 명시하고, 프로그램 참여자 모두에게 공지한다
- 범위 변경 시 정책을 업데이트하고 담당자에게 재공지한다

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.4.1 프로그램 적용 범위 문서 <br>-ISO/IEC 18974 §4.1.4.1 프로그램 적용 범위 문서</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/">정책 템플릿</a></div>

---

<!-- Slide 23 (신규): 역할 배치 및 예산 확인 -->

# 역할 배치 및 예산 확인

- 오픈소스 프로그램 수행에 필요한 역할이 실제 인력에 배치되어 있는지 확인한다
- 충분한 예산이 배정되어 있는지 확인하고 문서화한다 (인력·도구·교육 예산 포함)
- 예산 및 자원 현황을 경영진 보고 문서에 포함한다

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.2 역할 담당자 및 자원 확인 <br>-ISO/IEC 18974 §4.2.2.2 역할 담당자 및 자원 확인</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드: 조직 구성</a></div>

---

<!-- Slide 24 (신규): 법률 자문 접근 방법 -->

# 법률 자문 접근 방법

- 오픈소스 라이선스 해석이 필요한 경우 내부 법무팀 또는 외부 전문 자문에 접근하는 방법을 정의한다
- 법률 자문 프로세스(요청→검토→회신)를 문서화하고 담당자에게 공지한다
- 소규모 기업은 외부 로펌 또는 OpenChain 파트너사의 자문 서비스를 활용할 수 있다

<div class="evidence">입증자료: ISO/IEC 5230 §3.2.2.3 법률 전문성 접근 프로세스</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드: 조직 구성</a></div>

---

<!-- Slide 25 (신규): 내부 책임 할당 절차 (RACI) -->

# 내부 책임 할당 절차 (RACI)

| 활동 | 프로그램 매니저 | 법무 | IT | 개발 부서 |
|------|:------------:|:---:|:--:|:--------:|
| 오픈소스 검토·승인 | R(Responsible: 담당자) / A(Accountable: 책임자) | C(Consluted: 조언자) | I(Informed: 통보 대상자) | I |
| 취약점 대응 | A | I | R | C |
| 정책 수립·업데이트 | R/A | C | I | I |
| 도구 운영 | A | I | R | I |


<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.4 내부 책임 할당 확인 <br>-ISO/IEC 18974 §4.2.2.4 내부 책임 할당 확인</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/">정책 템플릿</a></div>

---

<!-- Slide 26 (신규): 참여자 목록 및 역할 문서화 -->

# 참여자 목록 및 역할 문서화

- 오픈소스 프로그램에 참여하는 모든 담당자의 이름·직함·역할을 문서화한다
- 참여자 목록은 조직 변경 시마다 업데이트하고 이력을 보관한다
- 외부 협력사·자문 등 외부 참여자도 목록에 포함한다

<div class="evidence">입증자료: <span class="std-num">4.1.2.3</span> (ISO 18974 전용) 프로그램 참여자 식별 및 역할 명세</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/2-competence/">ISO 18974 가이드</a></div>

---

<!-- Slide 27 (신규): 취약점 해결 전문성 명시 -->

# 취약점 해결 전문성 명시

- 오픈소스 보안 취약점을 평가·해결할 수 있는 전문성을 보유한 담당자 또는 자원을 지정한다
- 보안 전문성이 내부에 없는 경우, 외부 전문 자원에 접근하는 방법을 문서화한다
- 취약점 분석 역량(CVSS 해석, 패치 적용 등)을 역량 요건에 명시한다

<div class="evidence">입증자료: <span class="std-num">§4.2.2.3</span> (ISO 18974 전용) 취약점 해결 전문성 접근 방법</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/2-relevant-tasks/2-resourced/">ISO 18974 가이드</a></div>

---

<!-- Slide 28 (구 21): 오픈소스 정책이 필요한 이유 -->

# 2. 정책

## 정책 없이는 동일한 사건도 사람마다 다르게 판단된다

- 같은 오픈소스 라이선스라도 담당자마다 판단 기준이 달라지면 일관성이 없어진다
- 정책은 모든 구성원이 동일한 기준으로 판단하도록 하는 **'공통 규칙서'**
- ISO/IEC 5230 §3.1.1.1: **문서화된 오픈소스 정책**을 필수 요구사항으로 규정

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.1.1 오픈소스 정책 문서 <br>-ISO/IEC 18974 §4.1.1.1 오픈소스 정책 문서</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/">오픈소스 관리 가이드: 정책</a></div>

---

<!-- Slide 22: 정책에 담아야 할 핵심 항목 -->

# 정책에 담아야 할 핵심 항목

| 항목 | 내용 |
|------|------|
| ① 라이선스 컴플라이언스 | 오픈소스 식별·검토·의무이행 원칙, SBOM 생성·관리 원칙 |
| ② 보안 보증 | 알려진 취약점 탐지·대응 원칙, CVSS 기준 조치 기한 |
| ③ 외부 기여 | 사내 개발자가 외부 오픈소스 프로젝트에 기여하는 원칙 |
| ④ 오픈소스 공개 | 회사 소프트웨어를 오픈소스로 공개하는 원칙 |
| ⑤ 외부 문의 대응 | 제3자 오픈소스 관련 문의를 접수·처리하는 절차 |

<div class="callout callout-blue">
정책은 정기적으로 검토·업데이트되어야 하며, 전 구성원에게 전파되어야 합니다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.1.2 정책 전파 확인 <br>-ISO/IEC 18974 §4.1.1.2 정책 전파 확인</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/">오픈소스 관리 가이드: 정책</a></div>

---

<!-- Slide 23: 정책 템플릿 소개 -->

# 정책 템플릿 소개 — OpenChain KWG 무료 제공

OpenChain Korea Work Group이 제공하는 무료 정책 템플릿

- 라이선스 컴플라이언스·보안·기여·공개·외부문의 항목 포함
- ISO/IEC 5230·18974 요구사항을 모두 충족하도록 설계
- CC BY 4.0 — 자유롭게 수정·활용 가능

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/">템플릿: 오픈소스 정책</a></div>

---

<!-- Slide 24: 오픈소스 사용 프로세스 흐름도 -->

# 3. 프로세스 

## 오픈소스 사용 프로세스

<div class="flow-row">
  <div class="flow-step">
    <span class="flow-num">①</span>
    <span class="flow-name">오픈소스 식별</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step">
    <span class="flow-num">②</span>
    <span class="flow-name">라이선스 검토</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-warn">
    <span class="flow-num">③</span>
    <span class="flow-name">취약점 확인</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-warn">
    <span class="flow-num">④</span>
    <span class="flow-name">승인/반려</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-ok">
    <span class="flow-num">⑤</span>
    <span class="flow-name">의무 이행</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-ok">
    <span class="flow-num">⑥</span>
    <span class="flow-name">SBOM 업데이트</span>
  </div>
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.3.1.1 오픈소스 사용 프로세스 <br>-ISO/IEC 5230 §3.3.2.1 라이선스 컴플라이언스 절차</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드: 프로세스</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/">프로세스 템플릿</a></div>

---

<!-- Slide 32 (신규): 외부 문의 공개 채널 운영 -->

# 외부 문의 공개 채널 운영

- 제3자가 오픈소스 컴플라이언스 및 보안 취약점에 관해 문의할 수 있는 공개 채널을 운영한다
- 채널 예시: 공개 이메일(opensource@company.com), 웹 문의 양식, GitHub 이슈 트래커
- 공개 채널 URL을 제품 문서, 웹사이트, 오픈소스 고지문에 명시한다

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.1.1 외부 문의 공개 채널 <br>-ISO/IEC 18974 §4.2.1.1 외부 문의 공개 채널</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/2-relevant-tasks/1-access/">ISO 5230 가이드</a></div>

---

<!-- Slide 33 (신규): 외부 문의 내부 대응 절차 -->

# 외부 문의 내부 대응 절차

- 접수된 외부 문의를 어떻게 내부에서 처리하는지 절차를 문서화한다
- 대응 절차: 접수 확인(24시간) → 담당자 배정 → 검토 → 회신(30일 이내)
- 문의 유형별 (라이선스 위반 주장 / 소스코드 요청 / 취약점 신고) 대응 방법을 구분한다

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.1.2 외부 문의 내부 처리 절차 <br>-ISO/IEC 18974 §4.2.1.2 외부 문의 내부 처리 절차</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/">프로세스 템플릿</a></div>

---

<!-- Slide 34 (신규): 미준수 사례 검토·시정 절차 -->

# 미준수 사례 검토·시정 절차

- 오픈소스 정책·프로세스 미준수 사례가 발생했을 때 이를 검토하고 시정하는 절차를 정의한다
- 절차: 사례 접수 → 원인 분석 → 시정 조치 → 재발 방지책 수립 → 기록 보관
- 시정 조치 결과를 문서화하고, 유사 사례 예방을 위해 전사에 공유한다

<div class="evidence">입증자료: ISO/IEC 5230 §3.2.2.5 미준수 사례 시정 프로세스</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/2-relevant-tasks/2-resourced/">ISO 5230 가이드</a></div>

---

<!-- Slide 35 (신규): 컴플라이언스 산출물 준비·배포 -->

# 컴플라이언스 산출물 준비·배포

- 컴플라이언스 산출물: 오픈소스 의무이행을 증명하는 문서 — 고지문(NOTICE), 소스코드 패키지, SBOM
- 제품 출시 전 산출물을 준비하고 고객·파트너·최종 사용자에게 배포하는 절차를 정의한다
- 배포 방법: 제품 패키지 동봉, 웹사이트 게시, 서면 요청 대응

<div class="evidence">입증자료: ISO/IEC 5230 §3.4.1.1 컴플라이언스 산출물 생성 및 배포 절차</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/4-artifacts/1-compliance-artifacts/">ISO 5230 가이드</a></div>

---

<!-- Slide 36 (신규): 컴플라이언스 산출물 보관 절차 -->

# 컴플라이언스 산출물 보관 절차

- 배포된 컴플라이언스 산출물(고지문, SBOM, 소스코드 패키지)의 사본을 보관한다
- 보관 기간: 제품 판매 종료 후 최소 3년 (라이선스에 따라 더 길 수 있음)
- 보관 방법: 버전 관리 시스템, 아카이브 스토리지, 문서 관리 시스템

<div class="evidence">입증자료: ISO/IEC 5230 §3.4.1.2 컴플라이언스 산출물 사본 보관</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/">프로세스 템플릿</a></div>

---

<!-- Slide 25 (구 24): 보안 취약점 대응 프로세스 -->

# 보안 취약점 대응 프로세스

<div class="flow-row">
  <div class="flow-step">
    <span class="flow-num">①</span>
    <span class="flow-name">CVE 모니터링</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step">
    <span class="flow-num">②</span>
    <span class="flow-name">영향도 평가 (CVSS)</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-warn">
    <span class="flow-num">③</span>
    <span class="flow-name">조치 결정</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step">
    <span class="flow-num">④</span>
    <span class="flow-name">조치 이행</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-ok">
    <span class="flow-num">⑤</span>
    <span class="flow-name">기록 보관</span>
  </div>
</div>

<div class="cvss-row">
  <div class="cvss-box cvss-crit">
    <span class="cvss-score">CVSS 9.0 이상</span>
    <span class="cvss-deadline">즉시 대응 (7일 이내)</span>
  </div>
  <div class="cvss-box cvss-high">
    <span class="cvss-score">CVSS 7.0~8.9</span>
    <span class="cvss-deadline">30일 이내 패치</span>
  </div>
  <div class="cvss-box cvss-med">
    <span class="cvss-score">CVSS 7.0 미만</span>
    <span class="cvss-deadline">다음 릴리스에 포함</span>
  </div>
</div>

<div class="evidence">입증자료: -ISO/IEC 18974 §4.3.2.1 취약점 탐지 해결 절차</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/3-content-review/2-security-assurance/">ISO/IEC 18974: 보안 보증</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/">프로세스 템플릿</a></div>

---

<!-- Slide 38 (신규): 취약점 대응 8가지 방법 -->

# 취약점 대응 8가지 방법 (ISO 18974 요구사항)

1. 구조적·기술적 위협 식별
2. 알려진 취약점 탐지
3. 취약점 후속 조치
4. 고객 통보
5. 배포 후 신규 취약점 분석
6. 지속적 보안 테스트
7. 위험 해결 검증
8. 위험 정보 보고

<div class="evidence">입증자료: <span class="std-num">§4.1.5.1</span> (ISO 18974 전용) 취약점 처리 방법 8가지를 포함한 프로세스</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/5-standard-practice/">ISO 18974 가이드</a></div>

---

<!-- Slide 39 (신규): 취약점 및 조치 기록 -->

# 취약점 및 조치 기록

- 식별된 모든 취약점과 해당 조치 내용을 기록하고 보관한다
- 기록 항목: CVE ID, CVSS 점수, 영향 컴포넌트, 조치 방법, 조치 완료일, 담당자
- 취약점 기록은 컴플라이언스 감사·사후 검토 시 증거 자료로 활용된다

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.3.2.1 취약점 탐지 및 해결 절차 <br>-ISO/IEC 18974 §4.3.2.2 취약점 처리 기록 보관</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/3-content-review/2-security-assurance/">ISO 18974 가이드</a></div>

---

<!-- Slide 26 (구 25): 오픈소스 기여 프로세스 -->

# 오픈소스 기여 프로세스

<div class="flow-row">
  <div class="flow-step">
    <span class="flow-num">①</span>
    <span class="flow-name">기여 의향 확인</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-warn">
    <span class="flow-num">②</span>
    <span class="flow-name">사내 검토 (IP·라이선스)</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-warn">
    <span class="flow-num">③</span>
    <span class="flow-name">법무 승인</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-ok">
    <span class="flow-num">④</span>
    <span class="flow-name">기여 및 기록</span>
  </div>
</div>

<div class="callout callout-blue">
회사 IP(특허, 영업비밀) 포함 여부 사전 확인 필수 · CLA 서명 여부 확인
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.5.1.1 기여 정책 / §3.5.1.2 커뮤니티 참여 정책 / §3.5.1.3 기여 프로세스</div>


<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#4-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EA%B8%B0%EC%97%AC-%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/#7-%EC%99%B8%EB%B6%80-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EA%B8%B0%EC%97%AC">오픈 소스 기여 정책</a></div>

---

<!-- Slide 27: 프로세스 템플릿 소개 -->

# 프로세스 템플릿 소개 — OpenChain KWG 무료 제공

- 오픈소스 사용·보안취약점대응·기여·공개 프로세스 포함
- ISO/IEC 5230·18974 입증자료로 활용 가능


<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/">템플릿: 오픈소스 프로세스</a></div>

---

<!-- Slide 28: 왜 도구가 필요한가 -->

# 4. 도구
## 왜 도구가 필요한가

<div class="columns">
  <div class="col-left">
    <div class="ba-before">❌ Before — 도구 없음</div>

- 개발자가 수동으로 오픈소스 목록 정리, 보안/라이선스 검토를 매번 처음부터
- 릴리스 직전에야 문제 발견
- 취약점 공지를 개인이 구독해서 확인
  </div>
  
  <div class="col-right">
    <div class="ba-after">✅ After — 도구 도입</div>

- CI/CD 파이프라인에서 자동 스캔 / 개발 초기에 리스크 감지
- SBOM이 자동 생성·업데이트
- CVE 모니터링 자동화
  </div>
</div>

---

<!-- Slide 29: 도구 생태계 지도 -->

# 오픈소스 도구 생태계

<div class="eco-grid">
  <div class="eco-card eco-scan">
    <div class="eco-title">🔍 소스코드 스캔</div>
    <div class="eco-tools">FOSSology, SCANOSS</div>
  </div>
  <div class="eco-card eco-sbom">
    <div class="eco-title">📋 Dependency 스캔 & SBOM 생성</div>
    <div class="eco-tools">cdxgen (CycloneDX), Syft (SPDX/CycloneDX)</div>
  </div>
  <div class="eco-card eco-gov">
    <div class="eco-title">🏛 거버넌스·SBOM 관리</div>
    <div class="eco-tools">SW360, FOSSLight, DependencyTrack</div>
  </div>
  <div class="eco-card eco-vuln">
    <div class="eco-title">🛡 취약점 관리</div>
    <div class="eco-tools">DependencyTrack, OSV-SCALIBR, Grype</div>
  </div>
</div>

<div class="callout callout-blue">
모두 오픈소스 — 무료로 도입 가능
</div>

---

<!-- Slide 30: FOSSology & FOSSLight -->

# 소스코드 스캔: FOSSology & SCANOSS

<div class="columns">
  <div class="col-left">

**FOSSology**
- Linux Foundation 운영 오픈소스 도구
- 소스코드 스캔 + 라이선스·저작권 정보 추출
- 웹 기반 UI — 대규모 코드베이스 분석 지원

  </div>
  
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/1-fossology/">가이드: FOSSology</a></div>


---

<!-- Slide 31: cdxgen & Syft -->

# Dependency 스캔 & SBOM 생성: cdxgen & Syft

<div class="columns">
  <div class="col-left">

**cdxgen**
- OWASP CycloneDX 프로젝트 공식 도구: 20여 개 언어·생태계 지원 (Java, JS, Python, Go, Rust 등)
- CycloneDX 및 SPDX 형식 SBOM 생성
- GitHub Actions, Jenkins CI/CD 통합 지원

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/5-cdxgen/">가이드: cdxgen</a></div>

  </div>

  <div class="col-right">

**Syft**
- Anchore 개발 오픈소스 SBOM 생성 도구: 컨테이너 이미지·파일시스템·아카이브 분석
- SPDX, CycloneDX, Syft JSON 포맷 지원
- Grype(취약점 스캐너)와 연동 가능

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/6-syft/">가이드: Syft</a></div>

  </div>

</div>



---

<!-- Slide 32: SW360 & DependencyTrack -->

# 거버넌스·SBOM 관리: SW360 & DependencyTrack

<div class="columns">
  <div class="col-left">

**SW360**
- Eclipse Foundation 오픈소스 프로젝트 : 컴포넌트·라이선스·프로젝트 중앙 관리
- 컴플라이언스 산출물 생성·보관

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/2-sw360/">가이드: SW360</a></div>

  </div>
  <div class="col-right">

**DependencyTrack**
- OWASP 프로젝트 — SBOM 기반 리스크 관리
- SBOM 업로드 → 취약점 자동 분석
- CVE·EPSS·VEX 연동 지원
- CI/CD API 통합으로 지속 모니터링

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/7-dependency-track/">가이드: DependencyTrack</a></div>

  </div>
</div>

---

<!-- Slide 33: CI/CD 파이프라인 연동 -->

# CI/CD 파이프라인 연동

<div class="cicd-pipe">
  <div class="cicd-step">
    <span class="cicd-name">①소스코드</span>
    <span class="cicd-sub">커밋</span>
  </div>
  <span class="cicd-arr">→</span>
  <div class="cicd-step">
    <span class="cicd-name">②CI 빌드</span>
    <span class="cicd-sub">컴파일·테스트</span>
  </div>
  <span class="cicd-arr">→</span>
  <div class="cicd-step cicd-sbom">
    <span class="cicd-name">③SBOM 생성</span>
    <span class="cicd-sub">cdxgen / Syft</span>
  </div>
  <span class="cicd-arr">→</span>
  <div class="cicd-step cicd-scan">
    <span class="cicd-name">④라이선스 스캔</span>
    <span class="cicd-sub">FOSSology 등</span>
  </div>
  <span class="cicd-arr">→</span>
  <div class="cicd-step cicd-vuln">
    <span class="cicd-name">⑤취약점 분석</span>
    <span class="cicd-sub">DependencyTrack</span>
  </div>
  <span class="cicd-arr">→</span>
  <div class="cicd-step">
    <span class="cicd-name">⑥결과 리포트</span>
    <span class="cicd-sub">DependencyTrack</span>
  </div>
  <span class="cicd-arr">→</span>
  <div class="cicd-step cicd-gate">
    <span class="cicd-name">⑦승인/차단</span>
    <span class="cicd-sub">Policy Gate</span>
  </div>
</div>

<div class="callout callout-blue">
개발자가 코드를 올리는 순간 자동으로 오픈소스 검토가 시작됨 — 릴리스 직전 사고 예방
</div>

---

<!-- Slide 34: 도구 선택 가이드 -->

# 도구 선택 가이드

| 필요 기능 | 추천 도구 | 비고 |
|---------|---------|------|
| 소스코드 라이선스 스캔 | FOSSology 또는 SCANOSS | 둘 다 무료 오픈소스 |
| Dependency 분석 & SBOM 자동 생성 | cdxgen 또는 Syft | CI/CD 통합 용이 |
| SBOM 중앙 관리·취약점 연동 | DependencyTrack | OWASP 프로젝트 |
| 컴플라이언스 산출물 통합 관리 | FOSSLight | LG전자 |
| 컨테이너 이미지 분석 | Syft + Grype | 컨테이너 환경에 최적 |

<div class="callout callout-green">
처음 시작이라면: <strong>cdxgen(SBOM 생성) + DependencyTrack(관리)</strong> 조합을 권장
</div>

---

<!-- Slide 35: 교육 및 인식 제고 -->

# 교육 및 인식 제고

| 대상 | 교육 내용 | 주기 |
|------|---------|------|
| 경영진 | 오픈소스 거버넌스의 비즈니스 리스크·가치 | 연 1회 |
| 오픈소스 담당자 | 라이선스 컴플라이언스·보안 전문 교육 | 연 1회 이상 |
| 개발자 | 라이선스 기초, 프로세스 준수 방법, 도구 사용법 | 신규 입사 시 + 연 1회 |
| 법무 담당 | 오픈소스 라이선스 법적 해석, 분쟁 사례 | 연 1회 |

<div class="callout callout-blue">
ISO/IEC 5230 §3.1.3: 교육 이수 및 평가 기록 유지 필요
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.2.2 역할별 역량 요건 / §3.1.3.1 교육 이수 기록 <br>-ISO/IEC 18974 §4.1.2.1 역할·책임 식별 / §4.1.2.2 역량 요건 식별</div>

---

<!-- Slide 36: 교육 커리큘럼 예시 -->

# 교육 커리큘럼 예시

<div class="curr-grid">
  <div class="curr-card">
    <div class="curr-header curr-dev">개발자 과정</div>
    <div class="curr-body">
      <ul>
        <li>오픈소스 라이선스 기초</li>
        <li>사내 프로세스 사용법</li>
        <li>도구 사용법 (실습)</li>
        <li>오픈소스 기여 원칙</li>
      </ul>
    </div>
  </div>
  <div class="curr-card">
    <div class="curr-header curr-ospm">담당자 과정</div>
    <div class="curr-body">
      <ul>
        <li>ISO/IEC 5230·18974 전체</li>
        <li>자가 인증 방법 실습</li>
        <li>도구 운영 및 자동화</li>
        <li>외부 문의 대응 절차</li>
      </ul>
    </div>
  </div>
  <div class="curr-card">
    <div class="curr-header curr-exec">경영진 과정</div>
    <div class="curr-body">
      <ul>
        <li>오픈소스 리스크와 기회</li>
        <li>공급망 컴플라이언스 동향</li>
        <li>인증 획득의 비즈니스 가치</li>
      </ul>
    </div>
  </div>
</div>

<div class="callout callout-blue">
OpenChain은 무료 교육 자료와 커리큘럼을 CC-0 라이선스로 제공합니다
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/resource/">Resource</a></div>

---

<!-- Slide 37: 준수 선언 (Conformance) -->

# 준수 선언 (Conformance)

<div class="flow-row">
  <div class="flow-step">
    <span class="flow-num">①</span>
    <span class="flow-name">자가 인증 완료</span>
    <span class="flow-desc">certification.openchainproject.org</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-warn">
    <span class="flow-num">②</span>
    <span class="flow-name">준수 확인 문서 작성</span>
    <span class="flow-desc">"요구사항 충족" 선언문</span>
  </div>
  <div class="flow-arr">→</div>
  <div class="flow-step flow-step-ok">
    <span class="flow-num">③</span>
    <span class="flow-name">외부 공개 선언</span>
    <span class="flow-desc">OpenChain 웹사이트 또는 오픈소스 포털</span>
  </div>
</div>

<div class="callout callout-blue">
인증 후 <strong>18개월마다 갱신</strong> 확인 필요 (ISO/IEC 5230 §3.6.2.1)
</div>

<div class="callout callout-green">
준수 선언 기업: SK텔레콤 · LG전자 · Kakao · KT · 삼성전자 등
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.6.1.1 자가 인증 문서 <br>-ISO/IEC 5230 §3.6.2.1 인증 갱신 기록 <br>-ISO/IEC 18974 §4.4.1.1 준수 선언 <br>-ISO/IEC 18974 §4.4.2.1 인증 갱신</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드: 준수·개선</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/6-conformance/1-conformance/">ISO 5230 가이드</a></div>

---

<!-- Slide 52 (신규): 주기적 검토 및 프로세스 변경 증거 -->

# 주기적 검토 및 프로세스 변경 증거

- 오픈소스 보안 프로그램을 연 1회 이상 검토하여 현행화한다
- 검토 시 고려 항목: 신규 취약점 동향, 프로세스 효과성, 도구 업데이트, 법적 환경 변화
- 검토 결과와 변경 사항을 문서화하여 지속적 개선의 증거로 보관한다

<div class="evidence">입증자료: <span class="std-num">§4.1.2.5</span> (ISO 18974 전용) 프로그램 주기적 검토 및 변경 증거</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/2-competence/">ISO 18974 가이드</a></div>

---

<!-- Slide 53 (신규): 내부 모범 사례 일치 검증 -->

# 내부 모범 사례 일치 검증

- 운영 중인 오픈소스 보안 프로그램이 회사 내부 모범 사례와 일치하는지 주기적으로 검증한다
- 검증 방법: 자가 진단 체크리스트, 내부 감사, 외부 전문가 검토
- 불일치 사항은 개선 계획을 수립하고 추적 관리한다

<div class="evidence">입증자료: <span class="std-num">§4.1.2.6</span> (ISO 18974 전용) 내부 모범 사례와의 일치 여부 검증</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/2-competence/">ISO 18974 가이드</a></div>

---

<!-- Slide 54 (신규): 성과 메트릭 세트 -->

# 성과 메트릭 세트

| 측정 항목 | 측정 방법 | 목표 |
|---------|---------|------|
| 취약점 대응 속도 | 발견~패치 평균 일수 | CVSS 9+ ≤ 7일 |
| SBOM 커버리지 | SBOM에 포함된 컴포넌트 비율 | 100% |
| 교육 이수율 | 담당자 연간 교육 이수 비율 | 100% |
| 미준수 사례 재발률 | 동일 유형 반복 발생 건수 | 0건 |

<div class="evidence">입증자료: <span class="std-num">§4.1.4.2</span> (ISO 18974 전용) 프로그램 성과 측정 메트릭 세트</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/4-scope/">ISO 18974 가이드</a></div>

---

<!-- Slide 55 (신규): 지속적 개선 증거 -->

# 지속적 개선 증거

- 성과 메트릭 결과를 분석하여 개선 영역을 식별하고 구체적 개선 계획을 수립한다
- 개선 계획 실행 결과를 문서화하고, 경영진에게 주기적으로 보고한다
- 지속적 개선 사이클(PDCA: Plan-Do-Check-Act)을 오픈소스 프로그램에 적용한다

<div class="evidence">입증자료: <span class="std-num">§4.1.4.3</span> (ISO 18974 전용) 지속적 개선 수행의 증거</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/4-scope/">ISO 18974 가이드</a></div>

---

<!-- Slide 38 (구 37): 파트 2 요약 -->

# 파트 2 요약: 6대 핵심 요소 점검

<div class="checklist-grid">
  <div class="cl-item">
    <span class="cl-label">① 조직</span>
    <span class="cl-check">OSPM이 지정되어 있는가?</span>
  </div>
  <div class="cl-item">
    <span class="cl-label">② 정책</span>
    <span class="cl-check">라이선스·보안 정책 문서가 있는가?</span>
  </div>
  <div class="cl-item">
    <span class="cl-label">③ 프로세스</span>
    <span class="cl-check">사용·기여 승인 흐름이 정의되었는가?</span>
  </div>
  <div class="cl-item">
    <span class="cl-label">④ 도구</span>
    <span class="cl-check">SBOM 생성 도구가 CI/CD에 연동되었는가?</span>
  </div>
  <div class="cl-item">
    <span class="cl-label">⑤ 교육</span>
    <span class="cl-check">역할별 교육이 연 1회 이상 실시되는가?</span>
  </div>
  <div class="cl-item cl-last">
    <span class="cl-label">⑥ 준수</span>
    <span class="cl-check">자가 인증 또는 준수 선언 계획이 있는가?</span>
  </div>
</div>

---

<!-- 파트 3 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: lead -->

# 파트 3

## AI 컴플라이언스 확장

<!-- 슬라이드 39~51 · 20분 -->

---

<!-- Slide 39: 기존 거버넌스로 충분한가? -->

# 기존 거버넌스로 충분한가?

<div class="columns">
<div class="col-left">

<p style="color:#1A73E8; font-weight:700;">✓ 기존 오픈소스 거버넌스로 커버</p>

- 오픈소스 라이브러리·프레임워크 관리
- 소스코드 스캔, 라이선스 검토 & 보안 취약점(CVE) 대응

</div>
<div class="col-right">

<p style="color:#6C3FC5; font-weight:700;"> AI 시스템에서 새로 필요</p>

- 사전 훈련 모델의 **커스텀 라이선스** 검토
- 학습 데이터셋의 **오픈 데이터 라이선스** 관리
- **AI-BOM**(AI 구성요소 명세서) 작성·유지

</div>
</div>

<div class="callout-purple">
기존 체계를 AI 영역으로 <strong>확장</strong>해야 합니다
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드: AI 컴플라이언스</a></div>

---

<!-- Slide 40: AI 시스템의 오픈소스 3대 영역 -->

# AI 시스템의 오픈소스 3대 영역

<div class="ai-tree">
  <div style="text-align:center;">
    <span class="ai-tree-root">AI 시스템</span>
  </div>
  <div class="ai-tree-branches">
    <div class="ai-branch ai-branch-1">
      <span class="branch-num">①</span>
      <div class="branch-title">AI 프레임워크·라이브러리</div>
      <span class="branch-tag tag-blue">ISO 5230 적용</span>
      <div class="branch-examples">PyTorch, TensorFlow, LangChain 등</div>
    </div>
    <div class="ai-branch ai-branch-2">
      <span class="branch-num">②</span>
      <div class="branch-title">사전 훈련 모델</div>
      <span class="branch-tag tag-amber">커스텀 라이선스 확인</span>
      <div class="branch-examples">Llama, Mistral, Falcon, BERT 등</div>
    </div>
    <div class="ai-branch ai-branch-3">
      <span class="branch-num">③</span>
      <div class="branch-title">학습 데이터셋</div>
      <span class="branch-tag tag-green">오픈 데이터 라이선스</span>
      <div class="branch-examples">Common Crawl, Wikipedia, CC-BY 데이터 등</div>
    </div>
  </div>
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드: AI 컴플라이언스</a></div>

---

<!-- Slide 41: AI 프레임워크 라이선스 관리 -->

# AI 프레임워크 라이선스 관리

<span class="badge badge-purple">① AI 프레임워크</span>

- AI 개발에 사용하는 오픈소스 프레임워크는 일반 소프트웨어와 동일하게 **ISO/IEC 5230 프로세스**를 적용한다
- 기존 스캔 도구(FOSSology, cdxgen, Syft 등)로 AI 코드 저장소도 분석한다
- SBOM에 AI 프레임워크·라이브러리와 버전 정보를 포함한다

<div class="callout callout-green">
이미 갖춰진 오픈소스 거버넌스 체계를 <strong>그대로 활용</strong>할 수 있습니다
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드: AI 컴플라이언스</a></div>

---

<!-- Slide 42: AI 프레임워크 주요 라이선스 -->

# AI 프레임워크 주요 라이선스

<span class="badge badge-purple">① AI 프레임워크</span>

| 프레임워크 | 라이선스 | 상업적 사용 | 주요 의무 |
|---|---|:---:|---|
| PyTorch | BSD 3-Clause | ✅ | 저작권 표시 |
| TensorFlow | Apache 2.0 | ✅ | 저작권 표시, 변경 고지 |
| Hugging Face Transformers | Apache 2.0 | ✅ | 저작권 표시 |
| LangChain | MIT | ✅ | 저작권 표시 |
| scikit-learn | BSD 3-Clause | ✅ | 저작권 표시 |

<div class="callout callout-green">
AI 프레임워크는 대부분 <strong>허용적 라이선스</strong> — 기존 프로세스로 관리 가능
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드: AI 컴플라이언스</a></div>

---

<!-- Slide 43: 오픈소스 AI 모델 라이선스 관리 -->

# 오픈소스 AI 모델 라이선스 관리

<span class="badge badge-purple">② 사전 훈련 모델</span>

- 사전 훈련 모델은 일반 오픈소스와 달리 **커스텀 라이선스**를 사용하는 경우가 많다
- 상업적 사용 제한, MAU 기반 제한, 파생 모델 공개 의무 등 **조건이 모델마다 다르다**
- Hugging Face 모델 허브에서 **모델 카드(Model Card)** 와 라이선스를 반드시 직접 확인해야 한다

<div class="warn-box">
AI 모델 라이선스는 표준화되지 않았습니다. 기존 라이선스 가이드로 자동 판단하지 말고, <strong>모델별로 개별 확인</strong>이 필요합니다
</div>

---

<!-- Slide 44: AI 모델 라이선스 유형 비교 -->

# AI 모델 라이선스 유형 비교

<span class="badge badge-purple">② 사전 훈련 모델</span>

| 라이선스 유형 | 대표 모델 | 상업적 사용 | 파생 모델 공개 |
|---|---|:---:|:---:|
| Apache 2.0 | Falcon, Mistral 7B | ✅ 가능 | ❌ 불필요 |
| MIT | GPT-2, GPT-J | ✅ 가능 | ❌ 불필요 |
| Llama Community License | Llama 3 | ⚠️ 조건부 (MAU 7억 이하) | ❌ 불필요 |
| CC-BY 4.0 | 일부 학술 모델 | ✅ 가능 | 저작자 표시 필요 |
| CC-BY-NC | 일부 연구 모델 | ❌ 비상업 한정 | — |

<div class="callout callout-blue">
Apache 2.0·MIT 모델을 <strong>우선 선택</strong>하면 컴플라이언스 부담이 낮습니다
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드: AI 컴플라이언스</a></div>

---

<!-- Slide 45: 학습 데이터셋 관리 -->

# 학습 데이터셋 관리

<span class="badge badge-green">③ 학습 데이터셋</span>

| 라이선스 | 저작자 표시 | 상업적 사용 | 동일 조건 변경 허락 |
|---|:---:|:---:|:---:|
| CC0 | ❌ 불필요 | ✅ 가능 | ❌ 불필요 |
| CC-BY 4.0 | ✅ 필요 | ✅ 가능 | ❌ 불필요 |
| CC-BY-SA 4.0 | ✅ 필요 | ✅ 가능 | ✅ 필요 |
| CC-BY-NC 4.0 | ✅ 필요 | ❌ 비상업 한정 | ❌ 불필요 |

<div class="callout callout-blue">

- AI SBOM에 학습 데이터셋과 라이선스를 기록한다
- CC-BY 계열 데이터 사용 시 모델 카드에 출처를 명시한다
- **CC-BY-SA 조건 데이터** 학습 사용 시 파생 모델 라이선스를 법무팀과 협의한다

</div>

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.3.1.1 SBOM 생성 절차 (AI SBOM 포함)</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드: AI 컴플라이언스</a></div>

---

<!-- Slide 46: AI-BOM이란? -->

# AI-BOM (AI SBOM)이란?

<div class="aibom-tree">
  <div class="aibom-node">
    <span class="aibom-icon">🔧</span>
    <div>
      <div class="aibom-label">오픈소스 프레임워크 목록</div>
      <div class="aibom-detail">이름 + 버전 + 라이선스</div>
    </div>
  </div>
  <div class="aibom-node">
    <span class="aibom-icon">🤖</span>
    <div>
      <div class="aibom-label">사전 훈련 모델</div>
      <div class="aibom-detail">모델명 + 라이선스 + 출처(Hugging Face 등)</div>
    </div>
  </div>
  <div class="aibom-node">
    <span class="aibom-icon">📊</span>
    <div>
      <div class="aibom-label">학습 데이터셋</div>
      <div class="aibom-detail">데이터셋명 + 라이선스 + 출처</div>
    </div>
  </div>
</div>

- 일반 SBOM의 AI 버전 — AI 시스템의 투명성과 **공급망 신뢰** 확보
- **SPDX 3.0 AI Profile** 형식을 사용하면 국제 표준과 호환 가능
- ISO/IEC 42001 §7.5: AI 시스템의 문서화 요구사항에 **직접 대응**

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.3.1.2 SBOM 정확성 검토 / §4.3.2.1 취약점 식별·추적</div>
<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드</a> · <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/">ISO 42001 가이드</a></div>

---

<!-- Slide 47: AI-BOM 실제 예시 -->

# AI-BOM 실제 예시

상단: SPDX 3.0 AI Profile 기반 AI-BOM 모델 항목 예시

```yaml
# AI SBOM 모델 항목 예시 (SPDX 3.0 AI Profile 기반)
- name: "meta-llama/Llama-3.1-8B"
  version: "3.1"
  license: "Llama Community License Agreement"
  primaryPurpose: "inference"
  hyperparameter:
    contextWindow: 131072
  modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B"
```



<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/4-operation/2-ai-sbom/">ISO/IEC 42001 가이드: AI SBOM</a> </div>



---

<!-- Slide 49: ISO 42001 오픈소스 교차 조항 -->

# ISO 42001 오픈소스 교차 조항

| ISO 42001 조항 | 오픈소스 담당자 역할 |
|---|---|
| §5.2 AI 정책 | AI 정책에 오픈소스 사용 원칙 포함 |
| §6.1.2 AI 리스크 평가 | OSS 라이선스·취약점 리스크 식별·평가 |
| §7.5 문서화 | AI SBOM 수립·유지 |
| §8.5 AI 생애주기 | 개발 단계별 OSS 컴플라이언스 검토 |
| §8.6 AI 데이터 | 데이터셋 라이선스 관리 |
| §8.8 외부 AI 조달 | 외부 오픈소스 모델 공급망 검증 |

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/">ISO 42001 가이드</a></div>

---

<!-- Slide 50: ISO 42001 체크포인트 실무 예시 -->

# ISO 42001 체크포인트 실무 예시

| 조항 | 체크 항목 | 확인 방법 |
|---|---|---|
| §5.2 | AI 정책에 "오픈소스 AI 모델 사용 원칙" 항목이 있는가? | 정책 문서 검토 |
| §6.1.2 | AI 프로젝트 리스크 평가 시 OSS 라이선스 리스크를 포함하는가? | 리스크 평가 양식 확인 |
| §7.5 | AI-BOM을 작성하고 최신 상태로 유지하는가? | AI-BOM 문서 확인 |
| §8.5 | 개발 단계별 OSS 컴플라이언스 검토가 프로세스에 포함되어 있는가? | 프로세스 문서 확인 |
| §8.8 | 외부에서 조달한 오픈소스 AI 모델의 라이선스 검증 절차가 있는가? | 조달 절차 문서 확인 |

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/">ISO 42001 가이드</a></div>

---

<!-- Slide 51: 파트 3 요약 -->

# 파트 3 요약

<div class="summary-cards" style="display:flex; gap:16px; margin-top:16px;">
  <div class="summary-card-purple">
    AI 시스템의 오픈소스는 <strong>3가지 영역</strong> — 프레임워크·모델·데이터셋
  </div>
  <div class="summary-card-purple">
    기존 <strong>ISO/IEC 5230 체계</strong>를 AI 영역으로 확장하면 대부분 커버됨
  </div>
  <div class="summary-card-purple">
    <strong>AI-BOM + ISO 42001</strong> 교차 조항 점검으로 AI 거버넌스 완성
  </div>
</div>

<div class="next-part-box">
다음: Trusted OSS로 혼자서 체계를 구축하는 방법 →
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 관리 가이드: AI 컴플라이언스</a></div>

---

<!-- 파트 4 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: lead -->

# 파트 4

## Trusted OSS 라이브 데모

---

<!-- Slide 52: Trusted OSS란? -->

# Trusted OSS란?

*AI Agent와 대화하며 오픈소스 거버넌스 체계를 스스로 구축하는 셀프스터디 플랫폼*


- ISO/IEC 5230·18974 기반 **셀프스터디 모드** 제공
- Agent와 대화하며 우리 회사 상황에 맞는 **정책·프로세스** 설계
- 가이드 링크와 템플릿을 **실시간으로 안내**받으며 진행

<div class="url-link">🔗 <a href="https://trustedoss.github.io/docs">trustedoss.github.io/docs</a></div>

</div>
</div>

---

<!-- Slide 53: 데모 시나리오 미리보기 -->

# 데모 시나리오 미리보기

<div class="demo-scenario">
  <div class="demo-card">
    <div class="demo-step-num">①</div>
    <div class="demo-question">
      <div class="demo-q-label">Agent 메시지</div>
      "안녕하세요! 조직/담당자 산출물을 생성하는 agent입니다. 6개 질문에 답변하시면 3개의 산출물 파일이 자동으로 생성됩니다."
    </div>
    <div class="demo-answer">
      <div class="demo-a-label">산출물</div>
      역할과 책임 정의, 외부 문의 채널<br>RACI 매트릭스, 역할별 담당자<br>담당자 임명장 템플릿
    </div>
  </div>
  <div class="demo-card">
    <div class="demo-step-num">②</div>
    <div class="demo-question">
      <div class="demo-q-label">Agent 메시지</div>
      "안녕하세요! 오픈소스 정책 산출물을 생성하는 agent입니다. 5개 질문에 답변하시면 정책 문서 2개가 자동으로 생성됩니다."
    </div>
    <div class="demo-answer">
      <div class="demo-a-label">산출물</div>
      오픈소스 정책 문서 (목적, 적용 범위, 의무사항)<br>배포 방식별 허용 라이선스 목록
    </div>
  </div>
  <div class="demo-card">
    <div class="demo-step-num">③</div>
    <div class="demo-question">
      <div class="demo-q-label">Agent 메시지</div>
      "안녕하세요! 오픈소스 프로세스 산출물을 생성하는 agent입니다. 7개 질문에 답변하시면 프로세스 문서 4~7개가 자동으로 생성됩니다."
    </div>
    <div class="demo-answer">
      <div class="demo-a-label">Agent</div>
      오픈소스 도입 승인 양식 및 절차<br>배포 전 컴플라이언스 체크리스트<br>취약점 대응 절차서<br>외부 라이선스·보안 문의 대응 절차<br>오픈소스 기여 & 사내 프로젝트 공개 절차
    </div>
  </div>
</div>

<div class="callout callout-blue">
데모에서 이 흐름을 실제로 보여드리겠습니다
</div>

---

<!-- Slide 55: 데모 후: 혼자서 따라가는 방법 -->

# 데모 후: 혼자서 따라가는 방법

1. <span class="badge-blue">Step 1</span> **trustedoss.github.io/docs** 접속
2. <span class="badge-blue">Step 2</span> 셀프스터디 모드에서 현재 상황 입력 (팀 규모, 현재 체계 수준)
3. <span class="badge-blue">Step 3</span> Agent 안내에 따라 가이드·템플릿 활용
4. <span class="badge-blue">Step 4</span> 자가 인증 체크리스트로 진행 현황 점검

<div class="callout callout-green">
오늘 배운 내용 + Trusted OSS 셀프스터디 = <strong>혼자서 체계 구축 가능</strong>
</div>

<div class="url-link">🔗 <a href="https://trustedoss.github.io/docs">trustedoss.github.io/docs</a></div>

---

<!-- 파트 5 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: lead -->

# 파트 5

## 마무리


---

<!-- Slide 74 (신규): 오늘 배운 핵심 3가지 -->

# 오늘 배운 핵심 3가지

<div class="summary-cards" style="display:flex; gap:16px; margin-top:16px;">
  <div class="sc-card">
    <div class="sc-icon">①</div>
    <div class="sc-title">두 축의 거버넌스</div>
    <div class="sc-body">ISO/IEC 5230·18974로 라이선스·보안 두 축의 거버넌스 체계 구축 가능</div>
  </div>
  <div class="sc-card">
    <div class="sc-icon">②</div>
    <div class="sc-title">50개 입증자료</div>
    <div class="sc-body">6대 요소(조직·정책·프로세스·도구·교육·준수) + 50개 입증자료 = 완성된 체계</div>
  </div>
  <div class="sc-card">
    <div class="sc-icon">③</div>
    <div class="sc-title">AI 확장</div>
    <div class="sc-body">AI 시스템도 기존 체계를 확장하면 ISO 42001 교차 요구사항 충족 가능</div>
  </div>
</div>

<div class="callout callout-blue" style="margin-top:20px;">
어디서 무엇을 시작할지 이제 알고 있습니다
</div>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/">오픈소스 관리 가이드: 기업 오픈소스 관리</a></div>

---

<!-- Slide 56 (구): 단계별 시작 로드맵 -->

# 단계별 시작 로드맵

<div class="roadmap-3col">
  <div class="roadmap-col col-blue">
    <span class="roadmap-badge badge-week">1주차</span>
    <ul>
      <li>자가 인증 체크리스트로 현황 진단</li>
      <li>Trusted OSS 셀프스터디 시작</li>
      <li>부족한 항목 파악 및 우선순위 결정</li>
    </ul>
  </div>
  <div class="roadmap-col col-orange">
    <span class="roadmap-badge badge-month">1개월</span>
    <ul>
      <li>오픈소스 정책 초안 작성 (KWG 템플릿)</li>
      <li>오픈소스 프로세스 초안 작성</li>
      <li>담당자 역할·책임 문서화</li>
    </ul>
  </div>
  <div class="roadmap-col col-green">
    <span class="roadmap-badge badge-3month">2개월</span>
    <ul>
      <li>스캔 도구 1개 도입 (cdxgen 또는 Syft)</li>
      <li>첫 번째 SBOM 생성</li>
      <li>자가 인증 재점검 및 보완</li>
    </ul>
  </div>
</div>

<p class="roadmap-foot">완벽하지 않아도 됩니다. 시작하는 것이 중요합니다.</p>

<div class="url-link">🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/">오픈소스 관리 가이드: 기업 오픈소스 관리</a></div>

---

<!-- Slide 57 → 76 (구): 참고 가이드 링크 모음 -->

# 참고 가이드 링크 모음

<div style="display:grid; grid-template-columns: repeat(2, 1fr); gap:20px; margin-top:24px;">
  <div style="background:#F5F7FA; border-radius:8px; padding:16px; border-left:4px solid #1A73E8;">
    <div style="font-size:18px; font-weight:700; color:#0D47A1; margin-bottom:8px;">① 기업 오픈소스 관리 가이드</div>
    <div class="url-link">
      🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/">https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/</a>
    </div>
  </div>
  <div style="background:#F5F7FA; border-radius:8px; padding:16px; border-left:4px solid #1E8E5A;">
    <div style="font-size:18px; font-weight:700; color:#0D47A1; margin-bottom:8px;">② 정책 템플릿</div>
    <div class="url-link">
      🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/">https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/</a>
    </div>
  </div>
  <div style="background:#F5F7FA; border-radius:8px; padding:16px; border-left:4px solid #6C3FC5;">
    <div style="font-size:18px; font-weight:700; color:#0D47A1; margin-bottom:8px;">③ 프로세스 템플릿</div>
    <div class="url-link">
      🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/">openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/</a>
    </div>
  </div>
  <div style="background:#F5F7FA; border-radius:8px; padding:16px; border-left:4px solid #F4A020;">
    <div style="font-size:18px; font-weight:700; color:#0D47A1; margin-bottom:8px;">④ ISO 42001 가이드 (오픈소스 관점)</div>
    <div class="url-link">
      🔗 <a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/">openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/</a>
    </div>
  </div>
</div>
<div style="background:#FFF3E0; border-radius:8px; padding:16px; border:2px solid #F4A020; margin-top:12px;">
  <div style="font-size:18px; font-weight:700; color:#E65100; margin-bottom:8px;">⑤ Trusted OSS 셀프스터디</div>
  <div class="url-link">
    🔗 <a href="https://trustedoss.github.io/docs">trustedoss.github.io/docs</a>
  </div>
</div>

<div class="callout callout-blue">
모든 가이드와 템플릿은 <strong>CC BY 4.0</strong> — 무료로 활용 가능합니다
</div>

---

<!-- Slide 58: Q&A -->
<!-- _class: lead -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->

# Q&A

https://openchain-project.github.io/OpenChain-KWG/

---
