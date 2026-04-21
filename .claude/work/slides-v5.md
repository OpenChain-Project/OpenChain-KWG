---
marp: true
theme: default
paginate: true
style: |
  /* ===== 디자인 토큰 ===== */
  section {
    --c-blue:   #1A73E8;
    --c-orange: #F4A020;
    --c-purple: #6C3FC5;
    --c-green:  #1E8E5A;
    --c-warn:   #E8680A;
    --c-dark:   #0D47A1;
    --c-text:   #1C1C1E;
    --c-muted:  #444444;
    --c-bg:     #F5F7FA;
    --c-border: #E0E0E0;
    --r-card:   12px;
    --shadow:   0 2px 8px rgba(0,0,0,0.07);
  }

  /* ===== 기본 설정 ===== */
  section {
    font-family: 'Noto Sans KR', 'Apple SD Gothic Neo', 'Malgun Gothic', sans-serif;
    color: var(--c-text);
    background: #FFFFFF;
    padding: 48px 56px;
  }

  h1 {
    font-size: 40px;
    font-weight: 700;
    color: var(--c-text);
    margin-bottom: 24px;
    line-height: 1.25;
  }

  h2 {
    font-size: 32px;
    font-weight: 700;
    color: var(--c-text);
    margin-bottom: 20px;
    padding-left: 14px;
    border-left: 5px solid var(--c-blue);
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
  .blue { color: var(--c-blue); }
  .orange { color: var(--c-orange); }
  .purple { color: var(--c-purple); }
  .green { color: var(--c-green); }
  .warn { color: var(--c-warn); }
  .accent { color: var(--c-dark); font-weight: 700; }

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
  .badge-blue   { background: var(--c-blue); }
  .badge-orange { background: var(--c-orange); }
  .badge-purple { background: var(--c-purple); }
  .badge-green  { background: var(--c-green); }

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
    border-left: 5px solid var(--c-blue);
  }
  .callout-orange {
    background: #FFF3CD;
    border-left: 5px solid var(--c-orange);
  }
  .callout-green {
    background: #E6F4EC;
    border-left: 5px solid var(--c-green);
    color: var(--c-text);
  }
  .callout-purple-solid {
    background: var(--c-purple);
    color: #ffffff;
    border-radius: var(--r-card);
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
    background: var(--c-bg);
    border-radius: var(--r-card);
    border-top: 4px solid var(--c-blue);
    padding: 16px 18px;
    font-size: 20px;
    line-height: 1.45;
    box-shadow: var(--shadow);
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
    background: var(--c-bg);
    border-radius: var(--r-card);
    padding: 20px 18px;
    text-align: center;
    flex: 1;
    font-size: 20px;
    line-height: 1.45;
    box-shadow: var(--shadow);
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

  /* ===== 컬러 코딩 표 ===== */
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
    background: var(--c-bg);
    border-radius: var(--r-card);
    padding: 22px 18px;
    flex: 1;
    font-size: 20px;
    line-height: 1.5;
    border-top: 4px solid var(--c-blue);
    box-shadow: var(--shadow);
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

  /* ===== 요약 카드 ===== */
  .summary-row {
    display: flex;
    gap: 18px;
    margin-top: 20px;
  }
  .summary-card {
    border-radius: var(--r-card);
    padding: 22px 18px;
    flex: 1;
    font-size: 20px;
    line-height: 1.5;
    box-shadow: var(--shadow);
  }
  .summary-card-blue   { background: #E8F0FD; border-left: 5px solid var(--c-blue); }
  .summary-card-purple { background: #EDE7F6; border-left: 5px solid var(--c-purple); }
  .summary-card-green  { background: #E6F4EC; border-left: 5px solid var(--c-green); }
  .summary-card-orange { background: #FFF3E0; border-left: 5px solid var(--c-orange); }
  .summary-card .sc-icon { font-size: 28px; margin-bottom: 8px; display: block; }
  .summary-card .sc-title { font-weight: 700; font-size: 19px; margin-bottom: 6px; }
  .summary-card .sc-body  { font-size: 17px; color: #444; }

  .next-arrow {
    text-align: center;
    margin-top: 22px;
    font-size: 22px;
    color: var(--c-dark);
    font-weight: 700;
  }

  /* ===== 비교표 헤더 색상 ===== */
  .th-5230   { background: var(--c-blue)   !important; }
  .th-18974  { background: var(--c-orange) !important; }
  .th-42001  { background: var(--c-purple) !important; }
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
    color: var(--c-dark);
    font-weight: bold;
    padding: 10px 20px;
    border-left: 4px solid var(--c-blue);
    margin-top: 16px;
    font-size: 22px;
    border-radius: 0 var(--r-card) var(--r-card) 0;
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

  /* ===== 파트 3 전용 클래스 ===== */
  .callout-purple {
    background: #F3E8FF;
    border-left: 5px solid var(--c-purple);
    border-radius: 0 var(--r-card) var(--r-card) 0;
    padding: 16px 20px;
    font-size: 22px;
    line-height: 1.5;
    margin-top: 16px;
    color: #3B1F6E;
  }

  /* ===== 표지 슬라이드 ===== */
  .cover-title {
    font-size: 44px;
    font-weight: 800;
    color: #FFFFFF;
    line-height: 1.2;
    margin-bottom: 16px;
  }
  .cover-sub {
    font-size: 26px;
    color: #B3C8F0;
    margin-bottom: 40px;
  }
  .cover-meta {
    font-size: 20px;
    color: #B3C8F0;
    border-top: 1px solid rgba(255,255,255,0.3);
    padding-top: 20px;
  }
  .part-divider {
    background: #0D47A1;
    color: white;
  }
  .part-divider h1 { color: white; font-size: 48px; }
  .part-divider p  { color: #B3C8F0; font-size: 24px; }

  /* ===== 소형 표 (입증자료 목록) ===== */
  .ev-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 16px;
    margin-top: 12px;
  }
  .ev-table th {
    background: #1C1C1E;
    color: #fff;
    padding: 8px 10px;
    font-weight: 700;
    font-size: 15px;
  }
  .ev-table td {
    padding: 7px 10px;
    border-bottom: 1px solid #E8E8E8;
    font-size: 14px;
    line-height: 1.4;
  }
  .ev-table tr:nth-child(even) td { background: #F8F9FA; }
  .tag-org  { background: #E3F2FD; color: #0D47A1; padding: 1px 7px; border-radius: 10px; font-size: 12px; font-weight: 600; }
  .tag-pol  { background: #FFF3E0; color: #E65100; padding: 1px 7px; border-radius: 10px; font-size: 12px; font-weight: 600; }
  .tag-proc { background: #E8F5E9; color: #1B5E20; padding: 1px 7px; border-radius: 10px; font-size: 12px; font-weight: 600; }
  .tag-tool { background: #EDE7F6; color: #4A148C; padding: 1px 7px; border-radius: 10px; font-size: 12px; font-weight: 600; }
  .tag-edu  { background: #FFF8E1; color: #F57F17; padding: 1px 7px; border-radius: 10px; font-size: 12px; font-weight: 600; }
  .tag-conf { background: #E8F5E9; color: #1B5E20; padding: 1px 7px; border-radius: 10px; font-size: 12px; font-weight: 600; }
  .tag-star { color: #F4A020; font-weight: 700; }

  /* ===== 입증자료 박스 ===== */
  .evidence {
    background: #F0F4FF;
    border-left: 4px solid #1A73E8;
    padding: 10px 16px;
    font-size: 17px;
    color: #1C1C1E;
    margin-top: 14px;
    border-radius: 0 6px 6px 0;
    line-height: 1.6;
  }

  /* ===== 가이드 링크 ===== */
  .url-link {
    margin-top: 14px;
    font-size: 18px;
  }
  .url-link a { color: var(--c-blue); }
  .url-link a::before {
    content: '';
    display: inline-block;
    width: 13px;
    height: 13px;
    margin-right: 4px;
    vertical-align: -1px;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='%231A73E8' stroke-width='2.2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpath d='M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71'/%3E%3Cpath d='M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71'/%3E%3C/svg%3E");
    background-size: contain;
    background-repeat: no-repeat;
  }

  /* ===== 상태 뱃지 ===== */
  .badge-ok   { display:inline-block; background:var(--c-green);  color:#fff; border-radius:4px; padding:1px 8px; font-size:0.85em; font-weight:700; }
  .badge-no   { display:inline-block; background:#C62828;          color:#fff; border-radius:4px; padding:1px 8px; font-size:0.85em; font-weight:700; }
  .badge-warn { display:inline-block; background:var(--c-orange);  color:#fff; border-radius:4px; padding:1px 8px; font-size:0.85em; font-weight:700; }

  /* ===== 파트 4 전용 클래스 (Trusted OSS 데모) ===== */
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
---

<!-- 슬라이드 1: 표지 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->

<div class="cover-title">기업 오픈소스 거버넌스 구축 실무</div>
<div class="cover-sub">ISO 표준부터 AI 컴플라이언스까지</div>
<div class="cover-meta">
<!-- 강사: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
날짜: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
</div>

---

<!-- 슬라이드 2: 지금까지 / 오늘 배울 것

## 오늘 강의 포지셔닝

<div style="display:flex; gap:0; margin-top:12px;">
<div class="col-left" style="font-size:22px;">

**지금까지 배운 것**

- 오픈소스 라이선스의 종류와 의무
- Copyleft vs Permissive 구분
- 라이선스 검토·고지문 작성 실습
- 오픈소스 관리 플랫폼(Olive 등) 소개

</div>
<div class="col-right" style="font-size:22px;">

**오늘 배울 것**

- ISO 국제표준 기반 거버넌스 체계
- 6대 핵심 요소(조직·정책·프로세스·도구·교육·준수) 구축 방법
- AI 컴플라이언스 교차 요구사항
- 실제 기업의 인증 사례

</div>
</div>

<div class="key-message" style="margin-top:8px; font-size:20px;">
라이선스를 '아는 것'에서 → 조직이 '지속적으로 지키는 체계'로
</div>

--- -->

<!-- 슬라이드 3: 왜 거버넌스 체계가 필요한가 -->

## 왜 거버넌스 체계가 필요한가

- **2009년 Busybox 소송** — 배포만 한 기업도 소송 대상이 됨, <span class="warn">공급망 전체</span>가 동시에 리스크에 노출
- **개발자의 지식만으로는 부족** — 라이선스를 알아도 조직적 검토·기록 프로세스가 없으면 누락은 반드시 발생
- **ISO 국제표준** — 이 체계를 만들기 위한 검증된 프레임워크, 전 세계 공급망이 공통 언어로 인정

<div class="callout callout-orange">
"한 기업의 오픈소스 사고는 공급망 전체의 문제가 된다" — 개인 준수가 아닌 <strong>조직 체계</strong>가 답이다
</div>

---

<!-- 슬라이드 3: 오늘 강의에서 얻어갈 것 -->

## 오늘 강의에서 얻어갈 것

<div class="benefit-row">
<div class="benefit-card">
<div class="b-title">표준 이해</div>
<div class="b-body">ISO/IEC 5230·18974·42001 세 표준이 무엇이고 어떻게 서로 연결되는지 이해한다</div>
</div>
<div class="benefit-card">
<div class="b-title">체계 구축 방법</div>
<div class="b-body">6대 핵심 요소(조직·정책·프로세스·도구·교육·준수)로 실제 체계를 어떻게 구축하는지 안다</div>
</div>
<div class="benefit-card">
<div class="b-title">첫 번째 액션</div>
<div class="b-body">돌아 가서 바로 시작할 수 있는 첫 번째 실행 단계를 갖고 간다</div>
</div>
</div>

---

<!-- 슬라이드 4: 강의 구성 로드맵 -->

## 강의 구성 로드맵

<div class="timeline-5">
<div class="tl-box tl-active">
<strong>파트 1</strong>
<span class="tl-time">ISO 표준 이해</span>
<span class="tl-tag">35분</span>
</div>
<div class="tl-box">
<strong>파트 2</strong>
<span class="tl-time">6대 요소 구축</span>
<span class="tl-tag">115분</span>
</div>
<div class="tl-box tl-purple">
<strong>파트 3</strong>
<span class="tl-time">AI 컴플라이언스</span>
<span class="tl-tag">30분</span>
</div>
<div class="tl-box tl-green">
<strong>파트 4</strong>
<span class="tl-time">라이브 데모</span>
<span class="tl-tag">15분</span>
</div>
<div class="tl-box tl-gray">
<strong>파트 5</strong>
<span class="tl-time">마무리 + 로드맵</span>
<span class="tl-tag">10분</span>
</div>
</div>



---

<!-- 파트 1 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: part-divider -->

# 파트 1

## ISO 표준 이해

ISO/IEC 5230·18974·42001 세 표준이 무엇이고 왜 필요한지, 자가 인증 절차와 입증자료 체계를 살펴봅니다 (30분)

---

<!-- 슬라이드 5: OpenChain Project란? -->

## OpenChain Project란?

- **Linux Foundation**이 운영하는 오픈소스 컴플라이언스 국제 프로젝트
- 핵심 철학: <span class="accent">"공급망 전체가 함께 컴플라이언스를 지켜야만 한 기업이 안전하다"</span>
- 글로벌 참여 기업: Qualcomm, Siemens, ARM, Bosch, Toyota 등

<div class="bottom-bar">
<div class="item"><span class="num">①</span> 국제표준 규격<br><small style="font-size:16px;color:#666;">ISO/IEC 5230 · 18974</small></div>
<div class="item"><span class="num">②</span> 자가 인증 체크리스트<br><small style="font-size:16px;color:#666;">무료 온라인 신청</small></div>
<div class="item"><span class="num">③</span> 무료 가이드 자료<br><small style="font-size:16px;color:#666;">정책·프로세스 템플릿</small></div>
</div>


<div class="url-link" style="text-align:center;">
<a href="https://openchainproject.org/" style="color:#1A73E8;">OpenChain Project</a> | 
<a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/" style="color:#1A73E8;">OpenChain KWG 가이드: OpenChain 살펴보기</a>
</div>



---

<!-- 슬라이드 6: ISO/IEC 5230 — 라이선스 컴플라이언스 -->

## ISO/IEC 5230 — 라이선스 컴플라이언스

- **2020년 12월 제정** — 오픈소스 라이선스 컴플라이언스에 관한 <span class="accent">유일한 국제표준</span>
- OpenChain 규격(6가지 핵심 요구사항)이 ISO 표준으로 채택됨
- **공급망 연쇄 요구** — Bosch, Scania 등 대형 OEM이 공급자에게 준수를 요구하기 시작

<div class="callout callout-blue">
"기업 규모·업종과 무관하게 모든 기업에 적용 가능하도록 설계" — 25개 입증자료로 준수 여부를 확인
</div>



<div class="url-link" style="text-align:center;">
<a href="https://openchainproject.org/license-compliance" style="color:#1A73E8;">Learn more about ISO/IEC 5230</a>
</div>


---

<!-- 슬라이드 7: ISO/IEC 5230의 6가지 핵심 요구사항 -->

## ISO/IEC 5230의 6가지 핵심 요구사항

<span class="badge badge-blue">ISO/IEC 5230</span>

<div class="grid-6">
<div class="card">
<span class="num-badge">①</span>
<div class="card-title">프로그램 기반</div>
<div class="card-body">정책·프로세스·조직 구축</div>
</div>
<div class="card">
<span class="num-badge">②</span>
<div class="card-title">역할 정의 및 지원</div>
<div class="card-body">담당자 역할·책임·역량 정의</div>
</div>
<div class="card">
<span class="num-badge">③</span>
<div class="card-title">콘텐츠 검토 및 승인</div>
<div class="card-body">사용 오픈소스 식별·검토·기록(SBOM)</div>
</div>
<div class="card">
<span class="num-badge">④</span>
<div class="card-title">산출물 생성 및 전달</div>
<div class="card-body">고지문·소스코드 패키지 배포</div>
</div>
<div class="card">
<span class="num-badge">⑤</span>
<div class="card-title">커뮤니티 참여</div>
<div class="card-body">오픈소스 기여·공개 정책</div>
</div>
<div class="card card-green">
<span class="num-badge">⑥</span>
<div class="card-title">규격 준수 선언</div>
<div class="card-body">자가 인증 및 18개월 유효성 유지</div>
</div>
</div>


<div class="url-link" style="text-align:center;">
<a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/" style="color:#1A73E8;">OpenChain KWG 가이드: ISO/IEC 5230 준수 가이드</a>
</div>


---

<!-- 슬라이드 12: ISO 5230 입증자료 25개 한눈에 -->

## ISO/IEC 5230 요구사항 25개

<table class="ev-table" style="font-size:12px; width:100%;">
<thead>
<tr>
<th style="padding:4px 6px;">번호</th><th style="padding:4px 6px;">입증자료</th><th style="padding:4px 6px;">요소</th>
<th style="padding:4px 6px; border-left:2px solid #ccc;">번호</th><th style="padding:4px 6px;">입증자료</th><th style="padding:4px 6px;">요소</th>
</tr>
</thead>
<tbody>
<tr><td style="padding:4px 6px;">3.1.1.1</td><td style="padding:4px 6px;">문서화된 오픈소스 정책</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.2.2.4</td><td style="padding:4px 6px;">내부 책임 할당 절차</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td></tr>
<tr><td style="padding:4px 6px;">3.1.1.2</td><td style="padding:4px 6px;">정책 전파 절차</td><td style="padding:4px 6px;"><span class="tag-edu">교육</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.2.2.5</td><td style="padding:4px 6px;">미준수 사례 검토 및 수정 절차</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td></tr>
<tr><td style="padding:4px 6px;">3.1.2.1</td><td style="padding:4px 6px;">역할과 책임 목록</td><td style="padding:4px 6px;"><span class="tag-org">조직</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.3.1.1</td><td style="padding:4px 6px;">SBOM 관리 절차</td><td style="padding:4px 6px;"><span class="tag-proc">프로세스</span></td></tr>
<tr><td style="padding:4px 6px;">3.1.2.2</td><td style="padding:4px 6px;">역할별 역량 정의 문서</td><td style="padding:4px 6px;"><span class="tag-org">조직</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.3.1.2</td><td style="padding:4px 6px;">오픈소스 컴포넌트 기록 (SBOM)</td><td style="padding:4px 6px;"><span class="tag-tool">도구</span></td></tr>
<tr><td style="padding:4px 6px;">3.1.2.3</td><td style="padding:4px 6px;">역량 평가 증거</td><td style="padding:4px 6px;"><span class="tag-edu">교육</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.3.2.1</td><td style="padding:4px 6px;">라이선스 사용 사례 처리 절차</td><td style="padding:4px 6px;"><span class="tag-proc">프로세스</span></td></tr>
<tr><td style="padding:4px 6px;">3.1.3.1</td><td style="padding:4px 6px;">참여자 인식 평가 증거</td><td style="padding:4px 6px;"><span class="tag-edu">교육</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.4.1.1</td><td style="padding:4px 6px;">컴플라이언스 산출물 생성 절차</td><td style="padding:4px 6px;"><span class="tag-proc">프로세스</span></td></tr>
<tr><td style="padding:4px 6px;">3.1.4.1</td><td style="padding:4px 6px;">프로그램 적용 범위 문서</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.4.1.2</td><td style="padding:4px 6px;">컴플라이언스 산출물 보관 절차</td><td style="padding:4px 6px;"><span class="tag-proc">프로세스</span></td></tr>
<tr><td style="padding:4px 6px;">3.1.5.1</td><td style="padding:4px 6px;">라이선스 의무사항 검토 절차</td><td style="padding:4px 6px;"><span class="tag-proc">프로세스</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.5.1.1</td><td style="padding:4px 6px;">오픈소스 기여 정책</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td></tr>
<tr><td style="padding:4px 6px;">3.2.1.1</td><td style="padding:4px 6px;">외부 문의 공개 채널</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.5.1.2</td><td style="padding:4px 6px;">오픈소스 기여 관리 절차</td><td style="padding:4px 6px;"><span class="tag-proc">프로세스</span></td></tr>
<tr><td style="padding:4px 6px;">3.2.1.2</td><td style="padding:4px 6px;">외부 문의 내부 대응 절차</td><td style="padding:4px 6px;"><span class="tag-proc">프로세스</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.5.1.3</td><td style="padding:4px 6px;">기여 정책 인식 절차</td><td style="padding:4px 6px;"><span class="tag-edu">교육</span></td></tr>
<tr><td style="padding:4px 6px;">3.2.2.1</td><td style="padding:4px 6px;">역할 담당자 명시 문서</td><td style="padding:4px 6px;"><span class="tag-org">조직</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.6.1.1</td><td style="padding:4px 6px;">모든 요구사항 충족 확인 문서</td><td style="padding:4px 6px;"><span class="tag-conf">준수</span></td></tr>
<tr><td style="padding:4px 6px;">3.2.2.2</td><td style="padding:4px 6px;">인원 배치 및 예산 확인</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;">3.6.2.1</td><td style="padding:4px 6px;">18개월 이내 요구사항 충족 확인</td><td style="padding:4px 6px;"><span class="tag-conf">준수</span></td></tr>
<tr><td style="padding:4px 6px;">3.2.2.3</td><td style="padding:4px 6px;">법률 자문 접근 방법</td><td style="padding:4px 6px;"><span class="tag-pol">정책</span></td><td style="padding:4px 6px; border-left:2px solid #ccc;"></td><td style="padding:4px 6px;"></td><td style="padding:4px 6px;"></td></tr>
</tbody>
</table>

---


<!-- 슬라이드 8: ISO/IEC 18974 — 보안 보증 -->

## ISO/IEC 18974 — 보안 보증

<span class="badge badge-orange">ISO/IEC 18974</span>

- **2023년 제정** — 오픈소스 소프트웨어의 알려진 보안 취약점 관리를 위한 국제표준
- ISO/IEC 5230(라이선스)과 **쌍으로 운영** — 컴플라이언스 + 보안의 두 축
- CVE 모니터링, 취약점 대응 프로세스, SBOM 기반 보안 관리를 다룸

<div class="callout callout-orange">
5230 인증 보유 기업은 <span class="tag-star">추가 9개 항목</span>만 추가 준비하면 18974도 취득 가능
</div>



<div class="url-link" style="text-align:center;">
<a href="https://openchainproject.org/security-assurance" style="color:#1A73E8;">Learn more about ISO/IEC 18974</a>
</div>

---


<!-- 슬라이드 13: ISO 18974 전용 추가 항목 9개 -->

## ISO/IEC 18974 추가 항목 <span class="tag-star">9개</span>

<table class="ev-table">
<thead>
<tr><th>번호</th><th>입증자료</th><th>담당 요소</th></tr>
</thead>
<tbody>
<tr><td>4.1.2.3</td><td>참여자 목록 및 역할 매핑</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>4.1.2.5</td><td>프로그램 주기적 검토 및 변경 증거</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>4.1.2.6</td><td>내부 모범 사례 일치 검증</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>4.1.4.2</td><td>성과 메트릭 세트</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>4.1.4.3</td><td>지속적 개선 증거</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>4.1.5.1</td><td>8가지 취약점 처리 방법 문서화</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>4.2.2.3</td><td>취약점 해결 전문성 명시</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>4.3.2.1</td><td>취약점 탐지 및 해결 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>4.3.2.2</td><td>취약점 및 조치 기록</td><td><span class="tag-proc">프로세스</span></td></tr>
</tbody>
</table>

<div class="callout callout-orange" style="margin-top:16px; font-size:20px;">
ISO/IEC 5230 인증 보유 시 이 9개만 추가 준비하면 <strong>ISO/IEC 18974 인증도 취득 가능</strong>
</div>

---

<!-- 슬라이드 9: ISO/IEC 42001 — AI 관리 시스템 -->

## ISO/IEC 42001 — AI 관리 시스템

<span class="badge badge-purple">ISO/IEC 42001</span>

- **2023년 제정** — AI 시스템을 책임감 있게 개발·운영·관리하기 위한 AI 관리 시스템 표준
- ISO 9001, ISO 27001과 동일한 **경영 시스템 구조** (PDCA 사이클)
- 오픈소스 담당자 관점: §5.2(AI 역할 정의), §6.1.2(AI SBOM), §8.5(AI 공급망 검증) 등이 교차

<div class="callout-purple-solid">
이 강의는 ISO 42001 전체가 아닌 <strong>'오픈소스와 교차하는 요구사항'</strong>에 집중합니다 (파트 3)
</div>

---

<!-- 슬라이드 10: 세 표준 비교 한눈에 -->

## 세 표준 비교 한눈에

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
<td><strong>초점</strong></td>
<td>라이선스 컴플라이언스</td>
<td>보안 보증</td>
<td>AI 관리 시스템</td>
</tr>
<tr>
<td><strong>입증자료</strong></td>
<td>25개</td>
<td>25개 (전용 9개 추가)</td>
<td>체크포인트 방식</td>
</tr>
<tr>
<td><strong>인증 방법</strong></td>
<td>자가 / 독립 / 제3자</td>
<td>자가 / 독립 / 제3자</td>
<td>자가 / 제3자</td>
</tr>
<tr>
<td><strong>관계</strong></td>
<td>기반 표준</td>
<td>5230 확장</td>
<td>AI 교차 요건</td>
</tr>
</tbody>
</table>

---

<!-- 슬라이드 11: 자가 인증이란? -->

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
<a href="https://github.com/OpenChain-Project/Reference-Material/blob/master/OpenChain-Standards-Self-Certification/Checklist/ISO-IEC-5230/ko/iso-5230-2020-Self-Certification-Checklist.md" style="color:#1A73E8;">ISO/IEC 5230 자가 인증 체크리스트</a> | <a href="https://openchainproject.org/conformance-submission" style="color:#1A73E8;">Tell Us About Your Conformance</a>
</div>


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
      <td><span class="badge-ok">O</span></td>
    </tr>
    <tr class="row-yes">
      <td>역할 정의</td>
      <td>담당자의 역할과 책임이 문서화되어 있는가?</td>
      <td><span class="badge-ok">O</span></td>
    </tr>
    <tr class="row-no">
      <td>프로세스</td>
      <td>오픈소스 검토·승인 프로세스가 있는가?</td>
      <td><span class="badge-warn">!</span></td>
    </tr>
    <tr class="row-no">
      <td>SBOM 관리</td>
      <td>SBOM을 생성하고 유지하는가?</td>
      <td><span class="badge-warn">!</span></td>
    </tr>
    <tr class="row-yes">
      <td>교육</td>
      <td>담당자가 연 1회 이상 교육을 받는가?</td>
      <td><span class="badge-ok">O</span></td>
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
    <div class="b-title">공급망 신뢰 확보</div>
    <div class="b-body">글로벌 구매자·파트너에게 오픈소스 거버넌스 수준을 증명</div>
  </div>
  <div class="benefit-card" style="border-top-color: #1E8E5A;">
    <div class="b-title">내부 체계 완성</div>
    <div class="b-body">정책·프로세스·도구·교육이 갖춰진 지속 가능한 관리 체계</div>
  </div>
  <div class="benefit-card" style="border-top-color: #6C3FC5;">
    <div class="b-title">리스크 선제 대응</div>
    <div class="b-body">소송·보안 사고 발생 전에 취약점을 체계적으로 식별·해소</div>
  </div>
</div>

<p style="text-align: center; font-size: 20px; color: #555; margin-top: 22px;">
  OpenChain 인증 선언 기업: <strong>LG전자, 삼성전자, Kakao, SK텔레콤, 현대자동차</strong> 등 국내 다수 기업 포함
</p>


<div class="url-link" style="text-align:center;">
<a href="https://openchainproject.org/community-of-conformance" style="color:#1A73E8;">Community of Conformance</a>
</div>


---


<!-- 슬라이드 14: 파트 1 요약 -->

## 파트 1 요약

<div class="summary-row">
<div class="summary-card summary-card-blue">
<div class="sc-title">ISO/IEC 5230</div>
<div class="sc-body">라이선스 컴플라이언스 국제표준 (2020)<br>25개 입증자료 · 자가/독립/제3자 인증</div>
</div>
<div class="summary-card summary-card-purple">
<div class="sc-title">ISO/IEC 18974</div>
<div class="sc-body">보안 보증 국제표준 (2023)<br>5230 기반 + 전용 9개 항목 추가</div>
</div>
<div class="summary-card summary-card-green">
<div class="sc-title">AI까지 확장</div>
<div class="sc-body">ISO/IEC 42001로 AI 시스템의 오픈소스 관리까지 범위를 확장</div>
</div>
</div>

<div class="next-arrow">
다음: 6대 핵심 요소로 체계 구축하기 →
</div>

---

<!-- 파트 2 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: part-divider -->

# 파트 2

## 6대 핵심 요소 구축

조직·정책·프로세스·도구·교육·준수 6대 요소를 실제로 어떻게 구축하는지 단계별로 살펴봅니다 (90분)

---

<!-- 슬라이드 15: 6대 핵심 요소 전체 구조 -->

## 6대 핵심 요소 전체 구조

<div class="six-grid">
<div class="six-card">
<span class="six-num">1</span>
<div class="six-title">조직</div>
<div class="six-sub">역할 · 책임 · 역량 정의</div>
</div>
<div class="six-card">
<span class="six-num">2</span>
<div class="six-title">정책</div>
<div class="six-sub">원칙 · 범위 · 전파</div>
</div>
<div class="six-card">
<span class="six-num">3</span>
<div class="six-title">프로세스</div>
<div class="six-sub">검토 · 대응 · 기록</div>
</div>
<div class="six-card">
<span class="six-num">4</span>
<div class="six-title">도구</div>
<div class="six-sub">자동화 · SBOM · 취약점</div>
</div>
<div class="six-card">
<span class="six-num">5</span>
<div class="six-title">교육</div>
<div class="six-sub">인식 · 평가 · 개선</div>
</div>
<div class="six-card">
<span class="six-num">6</span>
<div class="six-title">준수</div>
<div class="six-sub">인증 · 모니터링 · 갱신</div>
</div>
</div>

<div class="six-center-label">
ISO/IEC 5230 + ISO/IEC 18974 두 표준을 함께 충족하는 체계
</div>

---

<!-- 소단원 1 전환 슬라이드 -->
<!-- _backgroundColor: #37474F -->
<!-- _color: white -->

# 1. 조직

## 역할·책임·역량을 정의하고 사람을 배치한다

---

<!-- 슬라이드 16: 오픈소스 관리 조직 (OSPO) -->

## 오픈소스 관리 조직 (OSPO)
<!-- 
<div class="img-placeholder" style="min-height:200px;">
📊 조직도: OSPO → [법무] [IT/보안] [개발팀] [제품/서비스팀]
<div class="url">참고: content/ko/guide/opensource_for_enterprise/1-teams/</div>
</div> -->

- **전담 OSPO** 또는 역할 담당자 지정 — 규모와 무관하게 반드시 책임자 존재해야 함
- 핵심 역할: 오픈소스 프로그램 매니저(PM), 법무, IT/보안, 개발 대표
- 규모에 따라 **1인 겸직 담당자 → 전담 팀**으로 성장 가능

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.2.1 역할과 책임 목록<br>-ISO/IEC 18974 §4.1.2.1 역할과 책임 식별</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/#1-%EC%A1%B0%EC%A7%81%EC%9D%98-%EC%97%AD%ED%95%A0%EA%B3%BC-%EC%B1%85%EC%9E%84-%EC%A0%95%EC%9D%98">조직: 1. 조직의 역할과 책임 정의</a></div>

---

<!-- 슬라이드 17: 규모별 조직 구성 예시 -->

## 규모별 조직 구성 예시

<table>
<thead>
<tr>
<th class="th-label">구분</th>
<th class="th-5230">소규모 (50인 이하)</th>
<th class="th-18974">중규모 (50–500인)</th>
<th class="th-42001">대규모 (500인+)</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>구성</strong></td>
<td>겸직 담당자 1인</td>
<td>OSPO 2–3인</td>
<td>전담 팀 5인+</td>
</tr>
<tr>
<td><strong>역할 분리</strong></td>
<td>PM 겸 법무 자문</td>
<td>PM + 법무 + IT</td>
<td>전 역할 분리</td>
</tr>
<tr>
<td><strong>도구</strong></td>
<td>오픈소스 기반</td>
<td>상용 + 오픈소스</td>
<td>커스텀 통합</td>
</tr>
<tr>
<td><strong>예산</strong></td>
<td>별도 예산 최소화</td>
<td>연간 예산 확보</td>
<td>전담 예산 운영</td>
</tr>
</tbody>
</table>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.1 역할 담당자 명시 문서<br>-ISO/IEC 18974 §4.2.2.1 역할 담당자 식별</div>
<div class="url-link"> <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/#3-%EB%8B%B4%EB%8B%B9%EC%9E%90-%EC%A7%80%EC%A0%95">조직: 3. 담당자 지정</a> | <a href="https://sktelecom.github.io/about/ospo/">SK텔레콤 OSPO</a></div>

---

<!-- 슬라이드 18: 담당자 역할 매트릭스 (RACI) -->

## 담당자 역할/책임 문서화

담당자 역할 매트릭스 

<table>
<thead>
<tr>
<th>활동</th>
<th>PM</th>
<th>법무</th>
<th>IT/보안</th>
<th>개발자</th>
</tr>
</thead>
<tbody>
<tr>
<td>오픈소스 정책 수립</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">R</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">A</td>
<td style="text-align:center;">C</td>
<td style="text-align:center;">I</td>
</tr>
<tr>
<td>라이선스 검토·승인</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">A</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">R</td>
<td style="text-align:center;">I</td>
<td style="text-align:center;">C</td>
</tr>
<tr>
<td>SBOM 생성·관리</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">A</td>
<td style="text-align:center;">I</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">R</td>
<td style="text-align:center;">C</td>
</tr>
<tr>
<td>취약점 대응</td>
<td style="text-align:center;">C</td>
<td style="text-align:center;">I</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">R/A</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">R</td>
</tr>
<tr>
<td>교육 실시</td>
<td style="text-align:center;font-weight:700;color:#1A73E8;">R/A</td>
<td style="text-align:center;">C</td>
<td style="text-align:center;">C</td>
<td style="text-align:center;">I</td>
</tr>
</tbody>
</table>

R=Responsible(실행) · A=Accountable(책임) · C=Consulted(자문) · I=Informed(통보)

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/#1-%EC%A1%B0%EC%A7%81%EC%9D%98-%EC%97%AD%ED%95%A0%EA%B3%BC-%EC%B1%85%EC%9E%84-%EC%A0%95%EC%9D%98">조직: 1. 조직의 역할과 책임 정의 | <a href="https://sktelecom.github.io/about/osrb/">SK텔레콤 OSRB</a></div>

---

<!-- 슬라이드 19: 역량 정의 및 평가 -->

## 역할별 역량 정의 및 평가

<table>
<thead>
<tr>
<th>역할</th>
<th>필요 역량</th>
<th>평가 방법</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>오픈소스 PM</strong></td>
<td>라이선스 해석, 취약점 대응 프로세스, 표준(ISO 5230/18974) 이해</td>
<td>연 1회 지식 테스트 + 실적 검토</td>
</tr>
<tr>
<td><strong>법무</strong></td>
<td>오픈소스 라이선스 법리, 계약 검토, GPL 컴플라이언스</td>
<td>외부 교육 이수 기록</td>
</tr>
<tr>
<td><strong>IT/보안</strong></td>
<td>SBOM 도구 운용, CVE 분석, 취약점 스캐닝</td>
<td>도구 자격증 또는 내부 평가</td>
</tr>
<tr>
<td><strong>개발자</strong></td>
<td>라이선스 분류, 오픈소스 사용 신고 절차</td>
<td>온보딩 교육 이수 확인</td>
</tr>
</tbody>
</table>

역량 평가 결과를 문서화하여 보관

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.2.2 역할별 역량 정의 / §3.1.2.3 역량 평가 증거<br>-ISO/IEC 18974 §4.1.2.2 역량 요건 식별 / §4.1.2.4 역량 평가 증거</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/#2-%ED%95%84%EC%9A%94-%EC%97%AD%EB%9F%89-%EC%A0%95%EC%9D%98">조직: 2. 필요 역량 정의
</a></div>

---

<!-- 슬라이드 20: 참여자 목록 및 역할 문서화 (★18974 전용) -->

## 참여자 목록 및 역할 문서화

- **참여자 전원 문서화** — 오픈소스 프로그램에 참여하는 모든 담당자의 이름·직함·담당 역할을 목록으로 관리
- **이력 관리** — 조직 변경·인사 이동 시마다 목록 갱신, 이전 버전 이력 보관
- **외부 참여자 포함** — 외부 법무 자문사, 오픈소스 컨설턴트 등 외부 참여자도 목록에 포함

<div class="callout callout-orange">
<strong>실제 이름이 명시된 참여자 목록</strong>이 필요
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.1 담당자 명단<br>-ISO/IEC 18974 §4.1.2.3 참여자 목록 및 역할 매핑, §4.2.2.1 담당자 명단 </div>

<div class="url-link"> <a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/#3-%EB%8B%B4%EB%8B%B9%EC%9E%90-%EC%A7%80%EC%A0%95">조직: 3. 담당자 지정</a> | <a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/appendix/">담당자 현황 template</a></div>

---


<!-- 소단원 2 전환 슬라이드 -->
<!-- _backgroundColor: #37474F -->
<!-- _color: white -->

# 2. 정책

## 모든 구성원이 따르는 성문화된 판단 기준을 만든다

---

<!-- 슬라이드 22: 2. 정책 — 왜 필요한가 -->

## 정책 — 판단 기준의 통일

- **담당자마다 다른 판단** — 같은 MIT 라이선스라도 누구는 허용, 누구는 재검토 요청 → 일관성 붕괴
- **정책은 공통 규칙서** — 모든 구성원이 동일한 기준으로 판단·행동하도록 성문화한 문서
- **ISO/IEC 5230·18974 공통 요구** — 두 표준 모두 <span class="accent">문서화된 오픈소스 정책</span>을 첫 번째 요구사항으로 규정

<div class="callout callout-orange">
정책 없이는 "잘 하고 싶어도 기준이 없다" — 좋은 의도가 일관된 결과로 이어지지 않는다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.1.1 문서화된 오픈소스 정책<br>-ISO/IEC 18974 §4.1.1.1 동일</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/">오픈소스 관리 가이드: 정책</a></div>

---

<!-- 슬라이드 23: 정책에 담아야 할 핵심 항목 -->

## 정책에 담아야 할 핵심 항목

<table>
<thead>
<tr><th>항목</th><th>핵심 내용</th></tr>
</thead>
<tbody>
<tr><td><strong>오픈소스 사용 원칙</strong></td><td>승인된 라이선스 목록, 검토·승인 절차, 금지 라이선스 기준</td></tr>
<tr><td><strong>컴플라이언스 의무</strong></td><td>SBOM 생성 형식(SPDX/CycloneDX), 고지문 작성·배포, 산출물 보관 기간</td></tr>
<tr><td><strong>보안 보증</strong></td><td>취약점 모니터링 의무, CVSS 기준 조치 기한, 고객 통보 기준</td></tr>
<tr><td><strong>오픈소스 기여</strong></td><td>기여 승인 절차, CLA(기여자 라이선스 동의) 정책, 기여 금지 항목</td></tr>
<tr><td><strong>외부 문의 대응</strong></td><td>공개 연락 채널, 초기 응답 기한(24시간), 처리 절차</td></tr>
</tbody>
</table>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.1.1 문서화된 오픈소스 정책</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/">오픈소스 관리 가이드: 정책</a></div>

---

<!-- 슬라이드 24: 라이선스 컴플라이언스 정책 상세 -->

## 라이선스 컴플라이언스 정책 — 상세 항목

<table>
<thead>
<tr><th>정책 항목</th><th>핵심 내용</th></tr>
</thead>
<tbody>
<tr><td><strong>오픈소스 식별·검토 절차</strong></td><td>모든 오픈소스 도입 전 라이선스 식별 및 PM 검토 의무화</td></tr>
<tr><td><strong>컴플라이언스 산출물 생성</strong></td><td>배포 제품마다 고지문(NOTICE) 및 SBOM 생성 의무화</td></tr>
<tr><td><strong>산출물 보관 기간</strong></td><td>제품 판매 종료 후 최소 3년 보관 (GPL written offer 기준)</td></tr>
<tr><td><strong>SBOM 형식 선언</strong></td><td>SPDX 2.3 또는 CycloneDX 1.5 중 하나를 조직 표준으로 선택</td></tr>
<tr><td><strong>라이선스 호환성 기준</strong></td><td>Copyleft 라이선스 조합 시 법무 검토 필수, 금지 라이선스 목록 유지</td></tr>
</tbody>
</table>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#1-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EB%9D%BC%EC%9D%B4%EC%84%A0%EC%8A%A4-%EC%BB%B4%ED%94%8C%EB%9D%BC%EC%9D%B4%EC%96%B8%EC%8A%A4-%EC%9B%90%EC%B9%99">정책: 오픈소스 라이선스 컴플라이언스 원칙</a></div>

---

<!-- 슬라이드 25: 보안 보증 정책 상세 -->

## 보안 보증 정책 — 상세 항목

<table>
<thead>
<tr><th>정책 항목</th><th>핵심 내용</th></tr>
</thead>
<tbody>
<tr><td><strong>알려진 취약점 대응 원칙</strong></td><td>배포 전 Critical/High 취약점 해결 완료 또는 예외 승인 필요</td></tr>
<tr><td><strong>CVSS 기준 조치 기한</strong></td><td>9.0+ (Critical): 7일 이내 · 7.0–8.9 (High): 30일 이내 · ~6.9: 다음 릴리스</td></tr>
<tr><td><strong>배포 후 모니터링</strong></td><td>신규 CVE 발행 시 출시 제품 SBOM과 자동 대조, 영향 분석 의무화</td></tr>
<tr><td><strong>고객 통보 기준</strong></td><td>CVSS 7.0 이상 취약점이 배포 버전에 영향 시 고객에게 통보</td></tr>
<tr><td><strong>취약점 해결 전문성</strong></td><td>취약점 분석·패치 담당자 지정, 외부 전문 자문 경로 명시</td></tr>
</tbody>
</table>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#2-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EB%B3%B4%EC%95%88-%EB%B3%B4%EC%A6%9D-%EC%9B%90%EC%B9%99">정책: 오픈소스 보안 보증 원칙</a></div>

---

<!-- 슬라이드 32: 내부 책임 할당 절차 -->

## 내부 책임 할당 절차

<table>
<thead>
<tr>
<th>상황</th>
<th>1차 담당</th>
<th>승인/검토</th>
<th>기록 보관</th>
</tr>
</thead>
<tbody>
<tr>
<td>신규 오픈소스 도입 요청</td>
<td>개발자</td>
<td>PM → 법무</td>
<td>PM</td>
</tr>
<tr>
<td>라이선스 의무 이행</td>
<td>PM</td>
<td>법무 확인</td>
<td>PM</td>
</tr>
<tr>
<td>보안 취약점 발견</td>
<td>IT/보안</td>
<td>PM 보고</td>
<td>IT/보안</td>
</tr>
<tr>
<td>외부 컴플라이언스 문의</td>
<td>PM</td>
<td>법무 지원</td>
<td>PM</td>
</tr>
<tr>
<td>미준수 사례 발생</td>
<td>PM</td>
<td>법무 + 경영진</td>
<td>PM</td>
</tr>
</tbody>
</table>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.4 내부 책임 할당 절차<br>-ISO/IEC 18974 §4.2.2.4 내부 책임 할당 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#5-%EC%9D%B8%EC%9B%90-%EC%98%88%EC%82%B0-%EC%A7%80%EC%9B%90">정책: 내부 책임 할당 절차</a></div>

---


<!-- 슬라이드 33: 미준수 사례 검토 및 시정 절차 -->

## 미준수 사례 검토 및 시정 절차

<div class="flow-row">
<div class="flow-step flow-step-warn">
<span class="flow-num">①</span>
<span class="flow-name">사례 접수</span>
<span class="flow-desc">내부 감사·외부 제보·자동 스캔으로 미준수 발견</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">②</span>
<span class="flow-name">원인 분석</span>
<span class="flow-desc">어느 단계에서 누락됐는지 프로세스 역추적</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">③</span>
<span class="flow-name">시정 조치</span>
<span class="flow-desc">라이선스 의무 이행, 배포 중단, 고지문 수정 등</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">④</span>
<span class="flow-name">재발 방지 기록</span>
<span class="flow-desc">원인·조치 결과를 문서화, 전사 공유</span>
</div>
</div>

<div class="callout callout-orange" style="margin-top:20px; font-size:20px;">
시정 조치 결과를 전사 공유 → 유사 사례 예방
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.5 미준수 사례 검토 및 수정 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#4-%EB%AF%B8%EC%A4%80%EC%88%98-%EC%82%AC%EB%A1%80-%EB%8C%80%EC%9D%91">정책: 미준수 사례 대응</a></div>

---

<!-- 슬라이드 30: 역할 배치 및 예산 확인 -->

## 역할 배치 및 예산 지원

- **담당자 지정 확인** — 각 역할(PM·법무·IT·개발 대표)에 실제 이름이 지정되어 있음을 문서로 확인
- **예산 승인 확인** — 도구 라이선스·외부 교육·법률 자문 등 프로그램 운영 예산이 승인되어 있음을 확인
- **백업 체계** — 핵심 담당자 부재(휴가·이직) 시 누가 역할을 대행하는지 정의

<div class="callout callout-blue">
역할에 담당자가 없거나 예산이 없으면 프로그램은 서류상 존재에 불과하다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.1 역할 담당자 명시 문서 / §3.2.2.2 인원 배치 및 예산 확인<br>-ISO/IEC 18974 §4.2.2.1 역할 담당자 명시 / §4.2.2.2 인원 배치 및 예산 확인</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#5-%EC%9D%B8%EC%9B%90-%EC%98%88%EC%82%B0-%EC%A7%80%EC%9B%90">정책: 인원, 예산 지원</a></div>

---



<!-- 슬라이드 31: 법률 자문 접근 방법 -->

## 전문 자문 제공 방법

- **자문 요청 절차** — 라이선스 해석·분쟁·계약 검토가 필요한 경우 내부 법무팀 또는 외부 전문 자문에 접근하는 절차를 문서화
- **자문 프로세스** — 요청 → 검토 → 회신 → 기록 보관 흐름 명시, 회신 기한(예: 영업일 5일) 설정
- **소규모 기업 대안** — 외부 로펌, OpenChain 파트너사 자문 서비스, 법무법인 오픈소스 전담팀 활용

<div class="callout callout-orange" style="font-size:20px;">
법무 자문 경로가 없으면 어려운 라이선스 판단이 현장에서 무작위로 결정된다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.2.3 법률 자문 제공 방법<br>-ISO/IEC 18974 §4.2.2.3 보안 자문 제공 방법</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#5-%EC%9D%B8%EC%9B%90-%EC%98%88%EC%82%B0-%EC%A7%80%EC%9B%90">정책: 전문 자문 제공</a></div>

---


<!-- 슬라이드 29: 프로그램 적용 범위 정의 -->

## 프로그램 적용 범위 정의

- **적용 대상 명시** — 어떤 제품·서비스·팀·공급 소프트웨어에 이 프로그램이 적용되는지 문서화
- **적용 제외 범위** — 내부 도구, 연구 목적 프로토타입, 폐기 예정 레거시 등 예외 범위 정의
- **정기 재검토** — 신제품 출시·조직 개편·사업 영역 변경 시마다 범위 최신화

<div class="callout callout-green">
범위가 명확하지 않으면 어떤 제품이 표준 대상인지 판단할 수 없다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.4.1 프로그램 적용 범위 문서<br>-ISO/IEC 18974 §4.1.4.1 프로그램 적용 범위</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#7-%EC%A0%81%EC%9A%A9-%EB%B2%94%EC%9C%84-%EC%A7%80%EC%A0%95">정책: 적용 범위 지정</a></div>

---

<!-- 슬라이드 26: 성과 메트릭 정의 (★18974 전용) -->

## <span class="badge badge-orange">18974 전용</span> 성과 메트릭 정의

<table>
<thead>
<tr><th>메트릭</th><th>목표값</th><th>측정 주기</th></tr>
</thead>
<tbody>
<tr><td><strong>SBOM 완전성</strong></td><td>100% (릴리스 시 모든 컴포넌트 기록)</td><td>릴리스마다</td></tr>
<tr><td><strong>Critical 취약점 조치 기한 준수율</strong></td><td>≥ 95%</td><td>월간</td></tr>
<tr><td><strong>외부 문의 초기 응답 시간</strong></td><td>24시간 이내</td><td>건별 측정</td></tr>
<tr><td><strong>신규 참여자 교육 이수율</strong></td><td>100% (온보딩 후 30일 이내)</td><td>분기별</td></tr>
<tr><td><strong>연 1회 프로그램 전체 감사</strong></td><td>완료 여부</td><td>연간</td></tr>
</tbody>
</table>

<div class="callout callout-orange" style="font-size:19px; margin-top:12px;">
"측정할 수 없으면 관리할 수 없다" — 메트릭 세트가 있어야 지속적 개선이 가능
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.1.4.2 성과 목표 및 메트릭 정의</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#7-%EC%A0%81%EC%9A%A9-%EB%B2%94%EC%9C%84-%EC%A7%80%EC%A0%95">정책: 적용 범위 지정</a></div>

---

<!-- 슬라이드 27: 지속적 개선 원칙 (★18974 전용) -->

## <span class="badge badge-orange">18974 전용</span> 지속적 개선 원칙

<div class="process-row">
<div class="process-step">
<span class="step-num">1</span>
<div class="step-title">현황 측정</div>
<div class="step-desc">메트릭 수집 및 KPI 달성률 확인</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">2</span>
<div class="step-title">갭 분석</div>
<div class="step-desc">목표 대비 미달 영역 및 원인 파악</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">3</span>
<div class="step-title">개선 목표 설정</div>
<div class="step-desc">우선순위화된 개선 과제와 담당자 지정</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">4</span>
<div class="step-title">결과 기록</div>
<div class="step-desc">개선 내용·효과를 문서화하여 보관</div>
</div>
</div>

<div class="callout callout-orange" style="margin-top:20px; font-size:20px;">
분기별 지표 점검 + 연 1회 전체 감사 → 지속적 개선 증거
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.1.4.3 지속적 개선 증거</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#7-%EC%A0%81%EC%9A%A9-%EB%B2%94%EC%9C%84-%EC%A7%80%EC%A0%95">정책: 적용 범위 지정</a></div>

---

<!-- 슬라이드 36: 외부 문의 공개 채널 운영 -->

## 외부 문의 공개 채널 운영

- **채널 예시** — `opensource@company.com`, 웹 문의 양식, GitHub 이슈, 전용 포털
- **채널 공개 위치** — 제품 패키지·웹사이트·오픈소스 고지문·앱 스토어 설명에 명시
- **채널 구분** — 라이선스 문의와 <span class="accent">보안 취약점 신고 채널을 분리</span>하여 운영 권장

<div class="callout callout-green">
채널이 있어도 어디에 있는지 모르면 없는 것과 같다 — <strong>발견 가능성(discoverability)</strong>이 핵심
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.1.1 외부 문의 공개 채널<br>-ISO/IEC 18974 §4.2.1.1 외부 문의 공개 채널</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#8-%EC%99%B8%EB%B6%80-%EB%AC%B8%EC%9D%98-%EB%8C%80%EC%9D%91">정책: 외부 문의 대응</a></div>

---

<!-- 슬라이드 34: 오픈소스 기여 정책 -->

## 오픈소스 기여 정책


- **기여 허용 범위** — 어떤 프로젝트·라이선스에 기여할 수 있는가 명확히 정의
- **사전 승인 절차** — 기여 전 PM·법무 검토 및 승인 필수
- **회사 IP·비밀정보 보호** — 내부 코드·알고리즘 포함 여부 사전 확인
- **기여자 계정 관리** — 회사 이메일 사용 및 CLA 서명 기준 명시

<div class="callout callout-green">
정책 없이 기여를 허용하면 <strong>IP 유출 · 법적 분쟁 · 귀속 불명확</strong> 리스크가 발생한다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.5.1.1 기여 정책</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#9-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EA%B8%B0%EC%97%AC-%EC%A0%95%EC%B1%85">정책: 오픈소스 기여 정책</a></div>

---

<!-- 슬라이드 35: 정책 템플릿 소개 -->

## 오픈소스 정책 템플릿

<table style="width:100%; font-size:17px; border-collapse:collapse; margin-bottom:8px;">
<tbody>
<tr><td style="width:6%; padding:5px 10px; color:#888;">1</td><td style="padding:5px 10px;">목적 및 적용 범위</td>
    <td style="width:6%; padding:5px 10px; color:#888;">2</td><td style="padding:5px 10px;">정의</td></tr>
<tr style="background:#f9f9f9;"><td style="padding:5px 10px; color:#888;">3</td><td style="padding:5px 10px;">역할 및 책임</td>
    <td style="padding:5px 10px; color:#888;">4</td><td style="padding:5px 10px;">라이선스 컴플라이언스</td></tr>
<tr><td style="padding:5px 10px; color:#888;">5</td><td style="padding:5px 10px;">보안 보증</td>
    <td style="padding:5px 10px; color:#888;">6</td><td style="padding:5px 10px;">교육 및 인식 제고</td></tr>
<tr style="background:#f9f9f9;"><td style="padding:5px 10px; color:#888;">7</td><td style="padding:5px 10px;">외부 프로젝트 기여</td>
    <td style="padding:5px 10px; color:#888;">8</td><td style="padding:5px 10px;">사내 프로젝트 오픈소스 공개</td></tr>
<tr><td style="padding:5px 10px; color:#888;">9</td><td style="padding:5px 10px;">외부 문의 대응</td>
    <td style="padding:5px 10px; color:#888;">10–11</td><td style="padding:5px 10px;">효과성 측정·ISO 준수 선언</td></tr>
</tbody>
</table>

- **ISO 5230 + 18974 모두 충족** 설계 — 25+9개 입증자료 요건 반영
- **라이선스 컴플라이언스·보안·기여·외부문의** 항목 포함
- CC BY 4.0 — 무료 사용·수정·배포 가능

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/">오픈소스 정책 템플릿 바로가기</a></div>

---

<!-- 소단원 3 전환 슬라이드 -->
<!-- _backgroundColor: #37474F -->
<!-- _color: white -->

# 3. 프로세스

## 정책이 실제로 작동하는 절차와 흐름을 설계한다

---

<!-- 슬라이드 35: 오픈소스 사용 프로세스 흐름도 -->

## 3. 프로세스 — 오픈소스 사용 흐름도

<div class="flow-row">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">오픈소스 선택</span>
<span class="flow-desc">라이선스·버전 확인, 대안 검토</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">②</span>
<span class="flow-name">라이선스 검토</span>
<span class="flow-desc">PM·법무 검토, 호환성 확인</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">③</span>
<span class="flow-name">SBOM 등록</span>
<span class="flow-desc">컴포넌트·버전·라이선스 기록</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">④</span>
<span class="flow-name">승인</span>
<span class="flow-desc">정책 적합 시 사용 승인</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">⑤</span>
<span class="flow-name">고지문 생성</span>
<span class="flow-desc">NOTICE 파일 작성</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">⑥</span>
<span class="flow-name">배포</span>
<span class="flow-desc">산출물과 함께 배포</span>
</div>
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#1-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4">오픈소스 가이드: 프로세스</a></div>

---

<!-- 슬라이드 36: 오픈소스 식별·검사·문제 해결 -->

## 오픈소스 식별·검사·문제 해결

<div class="flow-row">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">식별</span>
<span class="flow-desc">SCA 도구로 컴포넌트·버전·라이선스 탐지</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">②</span>
<span class="flow-name">라이선스 검사</span>
<span class="flow-desc">의무·제한·권리 검토 및 정책 적합성 판단</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">③</span>
<span class="flow-name">문제 식별</span>
<span class="flow-desc">비호환 라이선스·정책 위반 사례 목록화</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">④</span>
<span class="flow-name">문제 해결</span>
<span class="flow-desc">대체 컴포넌트 교체 또는 의무 이행 조치</span>
</div>
</div>

<div class="callout callout-green" style="margin-top:20px; font-size:20px;">
식별부터 해결까지의 절차를 <strong>문서화</strong>해야 입증자료로 인정된다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.5.1 라이선스 의무사항 검토 절차<br>-ISO/IEC 5230 §3.3.2.1 라이선스 사용 사례 처리 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#1-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EC%8B%9D%EB%B3%84-%EB%B0%8F-%EA%B2%80%EC%82%AC">프로세스: 오픈소스 식별 및 검사 | </a><a href="https://sktelecom.github.io/guide/use/obligation/">SKT 가이드: 오픈소스 라이선스별 의무사항</a>

</div>

---

<!-- 슬라이드 45: SBOM 수명주기 관리 절차 -->

## SBOM 수명주기 관리 절차

<div class="flow-row">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">개발 단계</span>
<span class="flow-desc">컴포넌트 도입 즉시 SBOM에 등록 (도구 자동화 권장)</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">②</span>
<span class="flow-name">빌드 단계</span>
<span class="flow-desc">빌드마다 최신 SBOM 자동 생성 (SPDX·CycloneDX)</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">③</span>
<span class="flow-name">배포 단계</span>
<span class="flow-desc">릴리스 SBOM 확정 및 아카이브 보관</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">④</span>
<span class="flow-name">배포 후 모니터링</span>
<span class="flow-desc">신규 CVE 발행 시 아카이브 SBOM과 자동 대조</span>
</div>
</div>

<div class="callout callout-blue" style="margin-top:20px; font-size:20px;">
SBOM은 만들어 두는 문서가 아닌 <strong>살아있는 보안 자산</strong> — 배포 후에도 계속 활용
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.3.1.1 SBOM 관리 절차<br>-ISO/IEC 5230 §3.3.1.2 오픈소스 컴포넌트 기록<br>-ISO/IEC 18974 §4.3.1.1 취약점 탐지 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#3-sbom-%EC%8B%9D%EB%B3%84-%EA%B2%80%ED%86%A0-%EB%B3%B4%EA%B4%80">프로세스: SBOM 식별, 검토, 보관</a></div>

---


<!-- 슬라이드 39: 컴플라이언스 산출물 준비·배포 -->

## 컴플라이언스 산출물 준비·배포

- **산출물 3종** — ① 오픈소스 고지문(NOTICE) ② 소스코드 패키지(GPL 등) ③ SBOM
- **배포 방법** — 제품 패키지 동봉, 공식 웹사이트 게시, 서면 요청 시 제공(written offer)
- **버전 관리** — 릴리스마다 별도 산출물 생성, 버전·배포처·날짜 기록

<div class="bottom-bar">
<div class="item"><span class="num">①</span> 고지문<br><small style="font-size:16px;color:#666;">NOTICE / LICENSE 파일</small></div>
<div class="item"><span class="num">②</span> 소스코드 패키지<br><small style="font-size:16px;color:#666;">GPL·LGPL 의무 이행</small></div>
<div class="item"><span class="num">③</span> SBOM<br><small style="font-size:16px;color:#666;">SPDX·CycloneDX 형식</small></div>
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.4.1.1 컴플라이언스 산출물 생성 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#4-%EB%9D%BC%EC%9D%B4%EC%84%A0%EC%8A%A4-%EC%BB%B4%ED%94%8C%EB%9D%BC%EC%9D%B4%EC%96%B8%EC%8A%A4-%EC%82%B0%EC%B6%9C%EB%AC%BC-%EC%83%9D%EC%84%B1">프로세스: 라이선스 컴플라이언스 산출물 생성 | </a><a href="https://sktelecom.github.io/compliance/">SKT 오픈소스 고지문 / 소스코드</a></div>

---

<!-- 슬라이드 41: 보안 취약점 대응 프로세스 -->

## 보안 취약점 대응 프로세스

<div class="flow-row">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">탐지</span>
<span class="flow-desc">CVE 피드, SBOM 자동 대조, 외부 신고</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">②</span>
<span class="flow-name">영향 분석</span>
<span class="flow-desc">CVSS 점수 확인, 영향 제품·버전 파악</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-red">
<span class="flow-num">③</span>
<span class="flow-name">우선순위 결정</span>
<span class="flow-desc">Critical/High: 긴급 패치 / 그 외: 일정 조정</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">④</span>
<span class="flow-name">조치·패치</span>
<span class="flow-desc">업그레이드, 패치 적용, 회피 방법 적용</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">⑤</span>
<span class="flow-name">기록·통보</span>
<span class="flow-desc">조치 결과 기록, 필요 시 고객 통보</span>
</div>
</div>


CVSS 기준 조치 기한

<table style="width:100%; margin-top:14px; border-collapse:collapse; font-size:17px;">
<thead>
<tr>
  <th style="padding:6px 12px; background:#f5f5f5; text-align:left;">Risk</th>
  <th style="padding:6px 12px; background:#f5f5f5; text-align:center;">CVSS 2.0</th>
  <th style="padding:6px 12px; background:#f5f5f5; text-align:center;">CVSS 3.0</th>
  <th style="padding:6px 12px; background:#f5f5f5; text-align:center;">조치 권고 일정</th>
</tr>
</thead>
<tbody>
<tr><td style="padding:6px 12px;">Low</td><td style="text-align:center;">0.0 – 3.9</td><td style="text-align:center;">0.0 – 3.9</td><td style="text-align:center;">—</td></tr>
<tr style="background:#f9f9f9;"><td style="padding:6px 12px;">Medium</td><td style="text-align:center;">4.0 – 6.9</td><td style="text-align:center;">4.0 – 6.9</td><td style="text-align:center;">—</td></tr>
<tr><td style="padding:6px 12px;"><strong>High</strong></td><td style="text-align:center;">7.0 – 10.0</td><td style="text-align:center;">7.0 – 8.9</td><td style="text-align:center;"><strong>4주 이내</strong></td></tr>
<tr style="background:#fff3e0;"><td style="padding:6px 12px;"><strong style="color:#e65100;">Critical</strong></td><td style="text-align:center;">—</td><td style="text-align:center;">9.0 – 10.0</td><td style="text-align:center;"><strong style="color:#e65100;">1주 이내</strong></td></tr>
</tbody>
</table>


<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.3.1.1 취약점 탐지·해결 절차, §4.3.2.1 취약점 및 조치 기록</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#2-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EB%B3%B4%EC%95%88-%EC%B7%A8%EC%95%BD%EC%A0%90-%EB%8C%80%EC%9D%91-%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4">프로세스: 오픈소스 보안 취약점 대응 프로세스</a></div>

---

<!-- 슬라이드 42: 취약점 처리 8가지 방법 (§4.1.5.1) -->

## <span class="badge badge-orange">18974 전용</span> 취약점 처리 8가지 방법

<div class="flow-row" style="gap:8px; margin-top:16px;">
<div class="flow-step flow-step-ok">
<span class="flow-num">①</span>
<span class="flow-name">구조적·기술적 위협 식별</span>
<span class="flow-desc">공급 소프트웨어에 대한 구조적 및 기술적 위협을 식별하는 방법</span>
</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">②</span>
<span class="flow-name">알려진 취약점 탐지</span>
<span class="flow-desc">공급 소프트웨어에서 알려진 취약점 존재 여부를 탐지하는 방법

</span>
</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">③</span>
<span class="flow-name">취약점 후속 조치</span>
<span class="flow-desc">확인된 알려진 취약점에 대한 후속 조치 방법</span>
</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">④</span>
<span class="flow-name">고객 통보</span>
<span class="flow-desc">확인된 알려진 취약점을 보증 대상인 고객에게 알리는 방법</span>
</div>
</div>

<div class="flow-row" style="gap:8px; margin-top:10px;">
<div class="flow-step flow-step-ok">
<span class="flow-num">⑤</span>
<span class="flow-name">배포 후 신규 취약점 분석</span>
<span class="flow-desc">취약점이 공개되었을 때 이미 배포된 소프트웨어에 존재하는지 확인하는 방법</span>
</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">⑥</span>
<span class="flow-name">지속적 보안 테스트</span>
<span class="flow-desc">지속적이고 반복적인 보안 테스트가 출시 전에 적용되기 위한 방법</span>
</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">⑦</span>
<span class="flow-name">위험 해결 검증</span>
<span class="flow-desc">식별된 위험이 출시 전에 해결되었는지 확인하는 방법</span>
</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">⑧</span>
<span class="flow-name">위험 정보 보고</span>
<span class="flow-desc">식별된 위험에 대한 정보를 제3자에게 적절하게 내보내는 방법</span>
</div>
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.1.5.1 취약점 처리 8가지 방법 (정책 명시 필수)</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#2-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EB%B3%B4%EC%95%88-%EC%B7%A8%EC%95%BD%EC%A0%90-%EB%8C%80%EC%9D%91-%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4">오픈소스 보안 취약점 대응 프로세스</a></div>

---

<!-- 슬라이드 43: 취약점 및 조치 기록 -->

## 취약점 및 조치 기록

<table>
<thead>
<tr><th>CVE ID</th><th>CVSS</th><th>영향 컴포넌트</th><th>조치 방법</th><th>완료일</th><th>담당자</th></tr>
</thead>
<tbody>
<tr>
<td>CVE-2024-1234</td>
<td style="font-weight:700;color:#E8680A;">9.8</td>
<td>log4j 2.14</td>
<td>2.17로 업그레이드</td>
<td>2024-01-10</td>
<td>홍길동</td>
</tr>
<tr>
<td>CVE-2024-5678</td>
<td style="font-weight:700;color:#F4A020;">7.5</td>
<td>openssl 1.1.1</td>
<td>패치 적용</td>
<td>2024-02-20</td>
<td>김철수</td>
</tr>
<tr>
<td>CVE-2024-9012</td>
<td>4.3</td>
<td>lodash 4.17.19</td>
<td>다음 릴리스에 반영</td>
<td>예정</td>
<td>이영희</td>
</tr>
</tbody>
</table>

<div class="callout callout-orange" style="margin-top:16px; font-size:19px;">
<strong>"탐지 없음"도 기록</strong> — 스캔 실행 일시·결과를 기록해야 "모니터링했다"는 증거가 됨
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.3.2.1 취약점 및 조치 기록<br>-ISO/IEC 18974 §4.3.2.2 취약점 해결 기록</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/">오픈소스 관리 가이드: 프로세스</a></div>

---


<!-- 슬라이드 44: 오픈소스 기여 프로세스 -->

## 오픈소스 기여 프로세스

<div class="flow-row">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">기여 의향 신고</span>
<span class="flow-desc">개발자가 기여 대상·내용을 PM에게 신고</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">②</span>
<span class="flow-name">검토·승인</span>
<span class="flow-desc">PM·법무가 IP 침해·비밀정보 포함 여부 확인</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">③</span>
<span class="flow-name">기여 실행</span>
<span class="flow-desc">승인된 계정·이메일로 PR/패치 제출</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">④</span>
<span class="flow-name">기록 보관</span>
<span class="flow-desc">기여 URL·날짜·담당자 기록</span>
</div>
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.5.1.1 기여 정책<br>-ISO/IEC 5230 §3.5.1.2 기여 관리 절차<br>-ISO/IEC 5230 §3.5.1.3 기여 정책 인식 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#4-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EA%B8%B0%EC%97%AC-%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4">오픈소스 기여 프로세스</a></div>

---



<!-- 슬라이드 37: 외부 문의 내부 대응 절차 -->

## 외부 문의 내부 대응 절차

<div class="flow-row">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">접수 확인</span>
<span class="flow-desc">24시간 이내 접수 확인 회신</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">②</span>
<span class="flow-name">담당자 배정</span>
<span class="flow-desc">문의 유형에 따라 PM·법무·보안 배정</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">③</span>
<span class="flow-name">검토·분석</span>
<span class="flow-desc">라이선스 위반 / 소스코드 요청 / 취약점 신고 분류</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">④</span>
<span class="flow-name">회신·기록</span>
<span class="flow-desc">30일 이내 최종 회신, 처리 결과 보관</span>
</div>
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.2.1.2 외부 문의 내부 대응 절차<br>-ISO/IEC 18974 §4.2.1.2 동일</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/#8-%EC%99%B8%EB%B6%80-%EB%AC%B8%EC%9D%98-%EB%8C%80%EC%9D%91">정책: 외부 문의 대응</a></div>

---

<!-- 슬라이드 46: 주기적 검토 및 변경 증거 (★18974 전용) -->

## <span class="badge badge-orange">18974 전용</span> 주기적 검토 및 변경

- **정기 검토 의무** — 프로그램의 역할·역량·절차·도구를 정기적으로 검토하고 변경 이력을 기록
- **최소 검토 주기** — 연 1회 이상 (조직 변경·신규 표준 발행·보안 사고 발생 시 수시 검토)
- **변경 사항 문서화** — 검토 일시, 참여자, 변경 내용, 변경 이유를 기록하여 보관

<div class="callout callout-orange">
"검토했다"는 구두 확인이 아닌 <strong>날짜·내용이 담긴 문서 증거</strong>가 필요
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.1.2.5 프로그램 주기적 검토 및 변경 증거</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#5-%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4-%ED%98%84%ED%96%89%ED%99%94">프로세스 현행화</a></div>

---


<!-- 슬라이드 21: 내부 모범 사례 일치 검증 (★18974 전용) -->

## <span class="badge badge-orange">18974 전용</span> 내부 모범 사례 일치 검증

- **검증 대상** — 조직의 보안 관련 내부 모범 사례가 오픈소스 보안 보증 프로그램과 일치하는지 확인
- **모범 사례 출처** — OpenChain 권고사항, NIST SSDF(Secure Software Development Framework), OWASP Top 10 등
- **불일치 시 조정** — 내부 모범 사례와 표준 요구사항 간 차이가 발견되면 조정 절차와 결과를 문서화

<div class="callout callout-orange">
"우리 내부 보안 기준이 이미 있다"는 것과 "표준과 일치함을 검증했다"는 것은 다르다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 18974 §4.1.2.6 내부 모범 사례 일치 검증</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/#5-%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4-%ED%98%84%ED%96%89%ED%99%94">프로세스 현행화</a></div>

---


<!-- 슬라이드 47: 프로세스 템플릿 소개 -->

## 프로세스 템플릿 — 바로 사용 가능한 절차서

<table style="width:100%; font-size:17px; border-collapse:collapse; margin-bottom:8px;">
<tbody>
<tr><td style="width:6%; padding:5px 10px; color:#888;">1</td><td style="padding:5px 10px;">오픈소스 프로세스</td>
    <td style="width:6%; padding:5px 10px; color:#888;">2</td><td style="padding:5px 10px;">보안 취약점 관리 프로세스</td></tr>
<tr style="background:#f9f9f9;"><td style="padding:5px 10px; color:#888;">3</td><td style="padding:5px 10px;">외부 문의 대응 프로세스</td>
    <td style="padding:5px 10px; color:#888;">4</td><td style="padding:5px 10px;">오픈소스 기여 프로세스</td></tr>
<tr><td style="padding:5px 10px; color:#888;">5</td><td style="padding:5px 10px;">사내 프로젝트 공개 프로세스</td>
    <td style="padding:5px 10px; color:#888;">6</td><td style="padding:5px 10px;">교육·평가 실행 프로세스</td></tr>
</tbody>
</table>

- **포함 절차**: 오픈소스 사용·검토·배포 / 외부 문의 대응 / 취약점 대응 / SBOM 관리 / 기여·공개
- **ISO 5230·18974 입증자료 매핑** 포함 — 어떤 절차가 어떤 입증자료를 커버하는지 명시
- CC BY 4.0 — 무료 사용·수정 가능

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/">오픈소스 프로세스 템플릿 바로가기</a></div>

---

<!-- 소단원 4 전환 슬라이드 -->
<!-- _backgroundColor: #37474F -->
<!-- _color: white -->

# 4. 도구

## 사람이 감당할 수 없는 규모를 자동화로 해결한다

---

<!-- 슬라이드 48: 4. 도구 — 왜 필요한가 -->

## 4. 도구 — 수작업의 한계

<table style="width:100%; margin-top:16px; border-collapse:collapse;">
<thead>
<tr>
  <th style="width:50%; text-align:left; padding:8px 12px; background:#f5f5f5;">Before: 수작업 관리</th>
  <th style="width:50%; text-align:left; padding:8px 12px; background:#e8f5e9;">After: 도구 자동화</th>
</tr>
</thead>
<tbody>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">개발자가 직접 라이선스 확인 → <span class="warn">누락 빈번</span></td>
  <td style="padding:6px 12px; vertical-align:top;">SCA 도구로 자동 라이선스 검출</td>
</tr>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">스프레드시트로 SBOM 관리 → 버전 불일치</td>
  <td style="padding:6px 12px; vertical-align:top;">빌드마다 SBOM 자동 생성</td>
</tr>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">배포 후 취약점 발견 → <span class="warn">뒤늦은 대응</span></td>
  <td style="padding:6px 12px; vertical-align:top;">CVE 피드 자동 대조 → 실시간 알림</td>
</tr>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">담당자 이직 시 지식 유실</td>
  <td style="padding:6px 12px; vertical-align:top;">이력이 시스템에 누적 보관</td>
</tr>
</tbody>
</table>

<div class="key-message">
도구 없이는 규모가 커질수록 사람이 감당할 수 없다 — 자동화가 체계의 지속 가능성을 만든다
</div>


---

<!-- 슬라이드 49: 도구 생태계 지도 -->

## 오픈소스 거버넌스 도구 생태계

<table>
<thead>
<tr><th>카테고리</th><th>도구</th><th>역할</th><th>라이선스</th></tr>
</thead>
<tbody>
<tr>
<td><strong>소스코드 스캔</strong></td>
<td>FOSSology · SCANOSS</td>
<td>라이선스 식별, 저작권 분석</td>
<td>오픈소스</td>
</tr>
<tr>
<td><strong>SBOM 생성</strong></td>
<td>cdxgen · Syft· FOSSLight</td>
<td>패키지 의존성 → SBOM 자동 생성</td>
<td>오픈소스</td>
</tr>
<tr>
<td><strong>거버넌스·추적</strong></td>
<td>SW360 · Dependency-Track· FOSSLight</td>
<td>오픈소스 컴포넌트 관리·승인·추적</td>
<td>오픈소스</td>
</tr>
<tr>
<td><strong>취약점 탐지</strong></td>
<td>OSV-SCALIBR · Dependency-Track· FOSSLight</td>
<td>SBOM 기반 CVE 자동 대조</td>
<td>오픈소스</td>
</tr>
<tr>
<td><strong>산출물 생성</strong></td>
<td>onot</td>
<td>SPDX SBOM → 오픈소스 고지문 자동 변환</td>
<td>오픈소스</td>
</tr>
</tbody>
</table>

<div class="callout callout-blue" style="font-size:19px; margin-top:12px;">
소개된 모든 도구는 <strong>무료 오픈소스</strong> — 예산 없이도 도입 가능<br>
<small>참고 사례: SK텔레콤은 <a href="https://sktelecom.github.io/">오픈소스 웹사이트</a>를 통해 컴플라이언스 산출물을 공개 보관하고 있습니다.</small>
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/">오픈소스 관리 가이드: 도구</a></div>

---

<!-- 슬라이드 50: 소스코드 스캔 도구 -->

## 소스코드 스캔: FOSSology & SCANOSS

<div class="benefit-row">
<div class="benefit-card">
<div class="b-title">FOSSology</div>
<div class="b-body">
Linux Foundation 운영<br>
소스코드 라이선스·저작권 자동 식별<br>
웹 UI 기반 검토·승인 워크플로우<br>
SW360과 연동 가능
</div>
</div>
<div class="benefit-card">
<div class="b-title">SCANOSS</div>
<div class="b-body">
오픈소스 컴포넌트 스캔 전문<br>
파일 단위 스니펫 매칭 지원<br>
SBOM 자동 생성 기능 내장<br>
REST API·CLI로 CI/CD 통합 용이
</div>
</div>
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/1-fossology/">도구 가이드: FOSSology</a> | <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/9-scanoss/">도구 가이드: SCANOSS</a></div>

---

<!-- 슬라이드 51: SBOM 생성 도구 -->

## SBOM 생성 도구

<div class="benefit-row">
<div class="benefit-card">
<div class="b-title">cdxgen</div>
<div class="b-body">
OWASP 운영, Apache 2.0<br>
50+ 언어·패키지 매니저 지원<br>
CycloneDX 형식 SBOM 생성<br>
CI/CD 파이프라인 통합 용이
</div>
</div>
<div class="benefit-card">
<div class="b-title">Syft</div>
<div class="b-body">
Anchore 개발, Apache 2.0<br>
컨테이너 이미지·파일시스템 스캔<br>
SPDX·CycloneDX 양 형식 지원<br>
Grype(취약점 스캐너)와 연동
</div>
</div>
<div class="benefit-card">
<div class="b-title">SKT SBOM Scanner</div>
<div class="b-body">
SK텔레콤 개발, Apache 2.0<br>
Docker 기반 — 별도 설치 불필요<br>
9개 언어 동시 분석 (Easy Mode)<br>
소스코드·Docker 이미지·펌웨어 지원
</div>
</div>
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/5-cdxgen/">도구 가이드: cdxgen</a> | <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/6-syft/">도구 가이드: Syft</a> | <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/8-cdxgen-dt/">cdxgen + Dependency-Track 자동화 가이드</a></div>

---

<!-- 슬라이드 52: 거버넌스·SBOM 관리 도구 -->

## 거버넌스·SBOM 관리: FOSSLight & Dependency-Track

<div class="benefit-row">
<div class="benefit-card">
<div class="b-title">FOSSLight</div>
<div class="b-body">
LG전자 개발, Apache 2.0<br>
소스·바이너리·패키지 통합 스캔<br>
라이선스 검토·승인·고지문 생성<br>
한국어 지원, 국내 기업 활용도 높음
</div>
</div>
<div class="benefit-card">
<div class="b-title">Dependency-Track</div>
<div class="b-body">
OWASP, Apache 2.0<br>
SBOM 수신 → CVE 자동 대조<br>
정책 기반 알림·빌드 차단<br>
Slack·Webhook 연동 가능
</div>
</div>
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/3-fosslight/">도구 가이드: FOSSLight</a> | <a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/7-dependency-track/">도구 가이드: Dependency-Track</a></div>

---

<!-- 슬라이드 52-2: 산출물 생성 — onot -->

## 산출물 생성: onot

<div class="benefit-row">
<div class="benefit-card" style="flex:1;">
<div class="b-title">onot이란?</div>
<div class="b-body">
SK텔레콤 개발·오픈소스 공개 (카카오 공동 기여)<br>
SPDX 형식 SBOM → 오픈소스 고지문 자동 변환<br>
Python 기반 — 설치·사용이 가볍고 간단<br>
<a href="https://github.com/sktelecom/onot">github.com/sktelecom/onot</a>
</div>
</div>
<div class="benefit-card" style="flex:1;">
<div class="b-title">사용 흐름</div>
<div class="b-body">
① SBOM 생성 (cdxgen / Syft 등)<br>
② onot 실행 → SPDX 파일 입력<br>
③ 오픈소스 고지문(NOTICE) 자동 출력<br>
④ 산출물 배포 패키지에 포함
</div>
</div>
</div>

<div class="callout callout-green" style="margin-top:16px; font-size:19px;">
SBOM이 있다면 고지문 생성은 <strong>명령어 한 줄</strong>로 자동화할 수 있다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.4.1.1 컴플라이언스 산출물 준비 및 배포 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/#5-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EC%BB%B4%ED%94%8C%EB%9D%BC%EC%9D%B4%EC%96%B8%EC%8A%A4-%EC%82%B0%EC%B6%9C%EB%AC%BC-%EC%83%9D%EC%84%B1-%EB%8F%84%EA%B5%AC">도구 가이드: onot</a></div>

---

<!-- 슬라이드 52-3: 산출물 공개·보관 — SKT 오픈소스 웹사이트 -->

## 산출물 공개·보관: 오픈소스 웹사이트 구축

- **왜 필요한가** — GPL·LGPL 등은 배포 후 <span class="accent">최소 3년간</span> 소스코드 제공 의무 (ISO/IEC 5230 §3.4.1.2)
- **보관 방법** — GitHub Pages로 전용 오픈소스 웹사이트 구축 → 외부에서 언제든 접근 가능
- **보관 항목** — 오픈소스 고지문 · GPL 소스코드 패키지 · SBOM · 정책 문서

<div class="callout callout-blue" style="margin-top:16px; font-size:19px;">
참고 사례: SK텔레콤은 <strong><a href="https://sktelecom.github.io/compliance/">sktelecom.github.io/compliance</a></strong> 를 통해 산출물을 공개 보관 중<br>
<small>웹사이트 소스코드도 오픈소스 공개 — 다른 기업이 그대로 활용 가능</small>
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.4.1.2 컴플라이언스 산출물 보관 절차</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/#6-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EC%BB%B4%ED%94%8C%EB%9D%BC%EC%9D%B4%EC%96%B8%EC%8A%A4-%EC%82%B0%EC%B6%9C%EB%AC%BC-%EB%B3%B4%EA%B4%80">도구 가이드: 산출물 보관</a></div>

---

<!-- 슬라이드 53: CI/CD 파이프라인 연동 -->

## CI/CD 파이프라인 연동 아키텍처

<div class="flow-row" style="font-size:0.82em;">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">소스코드 커밋</span>
<span class="flow-desc">개발자 PR</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">②</span>
<span class="flow-name">SBOM 자동 생성</span>
<span class="flow-desc">cdxgen / Syft</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">③</span>
<span class="flow-name">취약점 대조</span>
<span class="flow-desc">Dependency-Track</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-red">
<span class="flow-num">④</span>
<span class="flow-name">정책 게이트</span>
<span class="flow-desc">Critical 발견 시 빌드 차단</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">⑤</span>
<span class="flow-name">배포 승인</span>
<span class="flow-desc">SBOM 아카이브 저장</span>
</div>
</div>

<div class="callout callout-blue" style="margin-top:20px; font-size:20px;">
Critical 취약점이 포함된 빌드가 배포되는 것을 <strong>파이프라인 단계에서 자동 차단</strong>
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/#7-%EC%A7%80%EC%86%8D%EC%A0%81-%ED%86%B5%ED%95%A9%EB%B0%B0%ED%8F%ACcicd-%EB%8F%84%EA%B5%AC%EC%99%80%EC%9D%98-%EC%97%B0%EB%8F%99">지속적 통합/배포(CI/CD) 도구와의 연동</a></div>

---


<!-- 슬라이드 52-1: cdxgen + Dependency-Track 자동화 -->

## cdxgen + Dependency-Track: 하루 만에 자동화 환경 구축

<div style="text-align:center; margin:12px 0; font-size:0.88em;">
소스코드 커밋 → <strong>cdxgen</strong> 스캔 → CycloneDX SBOM → <strong>Dependency-Track</strong> 분석 → CVE·라이선스 경보
</div>

<table style="width:100%; border-collapse:collapse; font-size:0.88em; margin-top:8px;">
<thead>
<tr>
  <th style="width:25%; text-align:left; padding:7px 10px; background:#2b6cb0; color:#fff;">항목</th>
  <th style="width:37%; text-align:left; padding:7px 10px; background:#2b6cb0; color:#fff;">cdxgen</th>
  <th style="width:38%; text-align:left; padding:7px 10px; background:#2b6cb0; color:#fff;">Dependency-Track</th>
</tr>
</thead>
<tbody>
<tr>
  <td style="padding:6px 10px;"><strong>역할</strong></td>
  <td style="padding:6px 10px;">SBOM 자동 생성</td>
  <td style="padding:6px 10px;">취약점·라이선스 지속 모니터링</td>
</tr>
<tr style="background:#f7fafc;">
  <td style="padding:6px 10px;"><strong>지원 범위</strong></td>
  <td style="padding:6px 10px;">20개 이상 언어·패키지 매니저</td>
  <td style="padding:6px 10px;">CVE 자동 대조, 정책 위반 알림</td>
</tr>
<tr>
  <td style="padding:6px 10px;"><strong>출력 형식</strong></td>
  <td style="padding:6px 10px;">CycloneDX JSON (ISO 5230 충족)</td>
  <td style="padding:6px 10px;">대시보드 + REST API + Webhook</td>
</tr>
<tr style="background:#f7fafc;">
  <td style="padding:6px 10px;"><strong>비용</strong></td>
  <td style="padding:6px 10px;">무료 (Apache-2.0)</td>
  <td style="padding:6px 10px;">무료 (Apache-2.0)</td>
</tr>
</tbody>
</table>

<div class="key-message">
초기 설정 복잡도가 낮아 오픈소스 관리를 처음 시작하는 기업에 권장하는 조합
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/tools/8-cdxgen-dt/">cdxgen + Dependency-Track 자동화 환경 구성 가이드</a></div>


---

<!-- 소단원 5 전환 슬라이드 -->
<!-- _backgroundColor: #37474F -->
<!-- _color: white -->

# 5. 교육

## 체계가 현장에서 작동하려면 사람이 알고 있어야 한다

---

<!-- 슬라이드 55: 5. 교육 — 목적과 대상 -->

## 5. 교육 — 체계의 마지막 퍼즐

- **정책·프로세스의 한계** — 아무리 잘 만들어도 구성원이 인식하지 않으면 현장에서 작동하지 않는다
- **교육 대상** — 공급 소프트웨어의 개발·배포에 관여하는 <span class="accent">모든 직원</span> (개발자·PM·법무·경영진 포함)
- **ISO 요구 3가지** — ① 오픈소스 정책의 존재 인식 ② 정책의 목적 이해 ③ 미준수 시 영향 인지

<div class="callout callout-green">
"교육을 실시했다"는 구두 확인이 아닌 <strong>이수 기록·평가 결과 보관</strong>이 입증자료가 된다
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/5-training/">오픈소스 관리 가이드: 교육</a></div>

---

<!-- 슬라이드 28: 정책 전파 절차 -->

## 정책 전파 절차

- **전파 방법** — 신규 입사자 온보딩, 내부 위키/인트라넷 게시, 정기 교육(연 1회 이상)
- **전파 대상** — 공급 소프트웨어의 개발·배포·검토에 관여하는 <span class="accent">모든 직원</span>에게 전파
- **전파 확인** — 교육 이수 서명, Learning Management System 완료 기록, 온보딩 체크리스트로 확인 및 보관

<div class="callout callout-blue">
정책을 만들어 두는 것과 전 직원이 <strong>알고 있다는 것을 증명</strong>하는 것은 다르다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.1.2 정책 전파 절차<br>-ISO/IEC 18974 §4.1.1.2 동일</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/5-training/#1-%EA%B5%90%EC%9C%A1">오픈소스 관리 가이드: 교육</a></div>

---


<!-- 슬라이드 58: 교육 효과 측정 및 인식 평가 -->

## 교육 효과 측정 및 인식 평가

<table>
<thead>
<tr><th>측정 항목</th><th>방법</th><th>주기</th></tr>
</thead>
<tbody>
<tr>
<td><strong>정책 인식</strong></td>
<td>오픈소스 정책 인지 여부 설문 (5문항 이하)</td>
<td>연 1회</td>
</tr>
<tr>
<td><strong>미준수 영향 이해</strong></td>
<td>가상 시나리오 퀴즈 — 미준수 발생 시 대응 선택</td>
<td>연 1회</td>
</tr>
<tr>
<td><strong>역량 평가</strong></td>
<td>도구 사용 실습 테스트 또는 온라인 퀴즈</td>
<td>역할 변경 시</td>
</tr>
<tr>
<td><strong>교육 이력 보관</strong></td>
<td>LMS 이수 기록 또는 서명 대장</td>
<td>최소 3년 보관</td>
</tr>
</tbody>
</table>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.1.3.1 참여자 인식 평가 증거<br>-ISO/IEC 5230 §3.1.2.3 역량 평가 증거</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/5-training/#2-%ED%8F%89%EA%B0%80">오픈소스 관리 가이드: 평가</a></div>

---

<!-- 슬라이드 59: 교육 자료 및 참고 링크 -->

## 교육 자료 — 무료로 시작하기

- **NIPA 오픈소스 라이선스 가이드** — 국내 기업 대상 실무 해설
- **SKT 오픈소스 교육 슬라이드** — 개발자 대상 오픈소스 사용·기여·보안 교육 자료 (CC BY 4.0)

<div class="bottom-bar">
<div class="item"><span class="num">②</span> NIPA 오픈소스SW 라이선스 가이드<br><small style="font-size:14px;color:#666;">국내 실무 중심 해설</small></div>
<div class="item"><span class="num">③</span> SKT 오픈소스 교육 슬라이드<br><small style="font-size:14px;color:#666;">개발자 오픈소스 교육 자료</small></div>
</div>

<div class="url-link"><a href="https://www.oss.kr/pages/12/4245?page=1&pageSize=10&searchKeyword=&searchType=">NIPA 오픈소스SW 라이선스 가이드</a> | <a href="https://sktelecom.github.io/guide/education/">SKT 오픈소스 교육 슬라이드</a></div>

---

<!-- 슬라이드 59-1: SK텔레콤 오픈소스 가이드 -->

## SK텔레콤 오픈소스 가이드

기업이 공개한 실무 중심 오픈소스 가이드 — 사용·기여·공개·공급망 보안을 단계별로 안내

<table style="width:100%; border-collapse:collapse; margin-top:16px; font-size:0.88em;">
<thead>
<tr>
  <th style="width:28%; text-align:left; padding:7px 12px; background:#0066cc; color:#fff;">주제</th>
  <th style="text-align:left; padding:7px 12px; background:#0066cc; color:#fff;">주요 내용</th>
</tr>
</thead>
<tbody>
<tr>
  <td style="padding:6px 12px;"><strong>오픈소스 사용하기</strong></td>
  <td style="padding:6px 12px;">라이선스별 의무사항(MIT·GPL·Apache 등 20개), SBOM 관리, 보안 대응</td>
</tr>
<tr style="background:#f7fafc;">
  <td style="padding:6px 12px;"><strong>오픈소스 기여하기</strong></td>
  <td style="padding:6px 12px;">외부 프로젝트 기여 절차·혜택·주의사항</td>
</tr>
<tr>
  <td style="padding:6px 12px;"><strong>오픈소스 공개하기</strong></td>
  <td style="padding:6px 12px;">사내 소프트웨어 오픈소스화 절차 — 이름 결정, 저작권 표시, 공개 승인</td>
</tr>
<tr style="background:#f7fafc;">
  <td style="padding:6px 12px;"><strong>공급망 보안</strong></td>
  <td style="padding:6px 12px;">SBOM 개념·표준, 공급사 가이드, 취약점 관리</td>
</tr>
</tbody>
</table>

<div class="url-link"><a href="https://sktelecom.github.io/guide/">SK텔레콤 오픈소스 가이드</a></div>

---

<!-- 소단원 6 전환 슬라이드 -->
<!-- _backgroundColor: #37474F -->
<!-- _color: white -->

# 6. 준수·개선

## 갖춘 체계를 공식 확인하고 지속적으로 유지한다

---

<!-- 슬라이드 60: 6. 준수 선언이란? -->

## 6. 준수·개선 — 준수 선언이란?

<div class="process-row">
<div class="process-step">
<span class="step-num">1</span>
<div class="step-title">입증자료 준비 확인</div>
<div class="step-desc">25개(+9개) 항목 모두 준비 완료 여부 점검</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">2</span>
<div class="step-title">준수 확인 문서 작성</div>
<div class="step-desc">오픈소스 PM + 경영진 승인으로 준수 확인서 작성</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">3</span>
<div class="step-title">자가 인증 신청 또는 공개 선언</div>
<div class="step-desc">openchainproject.org/conformance-submission 제출 또는 공개 웹사이트 게재</div>
</div>
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.6.1.1 모든 요구사항 충족 확인 문서<br>-ISO/IEC 18974 §4.4.1.1 동일</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드: 준수 선언</a></div>

---

<!-- 슬라이드 61: 자가 인증 절차 상세 -->

## 자가 인증 절차 상세

<div class="flow-row">
<div class="flow-step">
<span class="flow-num">①</span>
<span class="flow-name">자체 점검</span>
<span class="flow-desc">25개 항목 체크리스트 작성, 부족 항목 파악</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-warn">
<span class="flow-num">②</span>
<span class="flow-name">부족 항목 보완</span>
<span class="flow-desc">미충족 입증자료 준비 (가이드·템플릿 활용)</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">③</span>
<span class="flow-name">온라인 인증 제출</span>
<span class="flow-desc">openchainproject.org/conformance-submission 체크리스트 제출</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">④</span>
<span class="flow-name">인증 목록 등재</span>
<span class="flow-desc">공개 인증 조직 목록에 등재, 공급망 증명 가능</span>
</div>
</div>

<div class="callout callout-green" style="margin-top:20px; font-size:19px;">
비용 없음, 언제든 신청 가능
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.6.1.1 모든 요구사항 충족 확인 문서</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드: 준수 선언</a></div>

---

<!-- 슬라이드 62: 주기적 검토 및 18개월 유지 -->

## 인증 후 18개월 유지 의무

- **18개월 재확인** — 인증 취득 후 18개월 이내에 모든 요구사항을 여전히 충족하고 있음을 재확인
- **연 1회 내부 감사** — 25개(+9개) 입증자료 현행화 여부 점검, 담당자 변경·프로세스 갱신 반영
- **표준 버전 갱신 대응** — 새 버전 발행 시 18개월 유예 기간 내 갱신 권장

<div class="callout callout-blue">
인증은 "한번 받으면 영구"가 아니다 — <strong>살아있는 체계</strong>임을 지속적으로 확인해야 한다
</div>

<div class="evidence">입증자료: <br>-ISO/IEC 5230 §3.6.2.1 18개월 이내 요구사항 충족 확인 문서<br>-ISO/IEC 18974 §4.4.2.1 동일</div>
<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/#2-%EC%A7%80%EC%86%8D%EC%A0%81-%EC%A4%80%EC%88%98-%EB%B3%B4%EC%9E%A5-%EC%84%A0%EC%96%B8">지속적 준수 보장 선언</a></div>

---

<!-- 슬라이드 65: ISO 5230 + 18974 통합 준수 체크 -->

## ISO 5230 + 18974 통합 준수 체크

<table class="ev-table">
<thead>
<tr><th>입증자료</th><th>설명</th><th style="text-align:center;">5230</th><th style="text-align:center;">18974</th></tr>
</thead>
<tbody>
<tr><td>3.1.1.1 / 4.1.1.1</td><td>문서화된 오픈소스 정책</td><td style="text-align:center;"><span class="badge-ok">O</span></td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>3.1.2.1 / 4.1.2.1</td><td>역할과 책임 목록</td><td style="text-align:center;"><span class="badge-ok">O</span></td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>3.1.2.3 / 4.1.2.4</td><td>역량 평가 증거</td><td style="text-align:center;"><span class="badge-ok">O</span></td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>3.3.1.1 / 4.3.1.1</td><td>SBOM 관리 절차</td><td style="text-align:center;"><span class="badge-ok">O</span></td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>3.4.1.1 / 3.4.1.2</td><td>산출물 생성·보관 절차</td><td style="text-align:center;"><span class="badge-ok">O</span></td><td style="text-align:center;">—</td></tr>
<tr><td>4.1.2.3</td><td>참여자 목록 및 역할 매핑</td><td style="text-align:center;">—</td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>4.1.4.2</td><td>성과 메트릭 세트</td><td style="text-align:center;">—</td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>4.1.5.1</td><td>8가지 취약점 처리 방법</td><td style="text-align:center;">—</td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>4.3.2.1 / 4.3.2.2</td><td>취약점 탐지·해결·기록</td><td style="text-align:center;">—</td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
<tr><td>3.6.1.1 / 4.4.1.1</td><td>모든 요구사항 충족 확인 문서</td><td style="text-align:center;"><span class="badge-ok">O</span></td><td style="text-align:center;"><span class="badge-ok">O</span></td></tr>
</tbody>
</table>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/">오픈소스 관리 가이드: 준수 선언</a></div>

---

<!-- 슬라이드 66: 파트 2 요약 + 참고 링크 -->

## 파트 2 요약

<div class="summary-row">
<div class="summary-card summary-card-blue">
<div class="sc-title">조직 · 정책</div>
<div class="sc-body">체계의 뼈대<br>역할 정의 + 문서화된 원칙으로 판단 기준 통일</div>
</div>
<div class="summary-card summary-card-green">
<div class="sc-title">프로세스 · 도구</div>
<div class="sc-body">체계의 실행<br>자동화 + 지속적 기록으로 사람 의존 탈피</div>
</div>
<div class="summary-card summary-card-purple">
<div class="sc-title">교육 · 준수</div>
<div class="sc-body">체계의 지속<br>인식 제고 + 정기 확인으로 18개월 유효성 유지</div>
</div>
</div>

<div class="bottom-bar" style="margin-top:16px;">
<div class="item"><span class="num">①</span> <a href="#" style="color:#1C1C1E;">기업 오픈소스 가이드</a></div>
<div class="item"><span class="num">②</span> <a href="#" style="color:#1C1C1E;">정책 템플릿</a></div>
<div class="item"><span class="num">③</span> <a href="#" style="color:#1C1C1E;">프로세스 템플릿</a></div>
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/">OpenChain KWG 전체 가이드</a></div>

---

<!-- 파트 3 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: part-divider -->

# 파트 3

## AI 컴플라이언스

ISO/IEC 42001 오픈소스 교차 요구사항 — 기존 거버넌스 체계가 AI 시대에 어떻게 확장되는지 살펴봅니다 (30분)

---

<!-- 슬라이드 67: 기존 거버넌스로 충분한가? -->

## AI 컴플라이언스 — 기존 거버넌스로 충분한가?

<table style="width:100%; margin-top:16px; border-collapse:collapse;">
<thead>
<tr>
  <th style="width:50%; text-align:left; padding:8px 12px; background:#e8f5e9;">기존 거버넌스가 커버하는 것</th>
  <th style="width:50%; text-align:left; padding:8px 12px; background:#fff3e0;">기존 거버넌스로 커버되지 않는 것</th>
</tr>
</thead>
<tbody>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">PyPI, npm, Maven 등 표준 패키지</td>
  <td style="padding:6px 12px; vertical-align:top;"><span class="warn">AI 모델 커스텀 라이선스</span> (Llama, Mistral 등)</td>
</tr>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">GitHub 오픈소스 라이브러리</td>
  <td style="padding:6px 12px; vertical-align:top;"><span class="warn">학습 데이터셋 라이선스</span> (CC-BY, CC-BY-NC 등)</td>
</tr>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">컨테이너 이미지 내 패키지</td>
  <td style="padding:6px 12px; vertical-align:top;">AI 공급망 검증 (외부 모델 출처 확인)</td>
</tr>
<tr>
  <td style="padding:6px 12px; vertical-align:top;">CI/CD 파이프라인 의존성</td>
  <td style="padding:6px 12px; vertical-align:top;">AI-BOM (AI 구성요소 명세서)</td>
</tr>
</tbody>
</table>

<div class="callout callout-orange">
AI 시스템에는 <strong>3가지 오픈소스 레이어</strong>가 존재한다 — 기존 체계를 확장해야 한다
</div>

---

<!-- 슬라이드 68: AI 시스템 오픈소스 3대 영역 -->

## AI 시스템 오픈소스 3대 영역

<div class="benefit-row">
<div class="benefit-card">
<div class="b-title"><span class="blue">① AI 프레임워크·라이브러리</span></div>
<div class="b-body">
PyTorch, TensorFlow, LangChain 등<br>
<strong>표준 오픈소스 라이선스</strong> (Apache 2.0, MIT, BSD)<br>
→ 기존 ISO 5230 프로세스 그대로 적용
</div>
</div>
<div class="benefit-card" style="border-top-color:#F4A020;">
<div class="b-title"><span class="orange">② 사전 훈련 AI 모델</span></div>
<div class="b-body">
Llama, Mistral, Falcon, BERT 등<br>
<strong>커스텀/제한 라이선스</strong> (모델별 개별 확인)<br>
→ 별도 검토 절차 추가 필요
</div>
</div>
<div class="benefit-card" style="border-top-color:#1E8E5A;">
<div class="b-title"><span class="green">③ 학습 데이터셋</span></div>
<div class="b-body">
CC-BY, CC0, 자체 라이선스 등<br>
<strong>데이터 라이선스</strong> (오픈소스 라이선스와 다름)<br>
→ AI-BOM에 출처·라이선스 기록
</div>
</div>
</div>


<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/">오픈소스 가이드: AI 컴플라이언스</a></div>

---

<!-- 슬라이드 69: AI 프레임워크 라이선스 관리 -->

## AI 프레임워크 라이선스 관리


<span class="badge badge-purple">① AI 프레임워크</span>

- **기존 프로세스 그대로 적용** — AI 개발에 사용하는 오픈소스 프레임워크는 일반 소프트웨어와 동일하게 ISO/IEC 5230 프로세스를 적용
- **기존 도구 활용** — cdxgen, Syft 등 기존 스캔 도구로 AI 코드 저장소도 분석 가능
- **SBOM에 포함** — SBOM에 AI 프레임워크·라이브러리와 버전 정보를 반드시 포함

<div class="callout callout-blue">
AI 프레임워크는 <strong>기존 오픈소스 거버넌스를 확장하는 것</strong>으로 충분하다 — 새 체계 불필요
</div>


<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/#1-ai-%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC--%EB%9D%BC%EC%9D%B4%EB%B8%8C%EB%9F%AC%EB%A6%AC-%EA%B4%80%EB%A6%AC">AI 프레임워크 · 라이브러리 관리</a></div>

---

<!-- 슬라이드 70: AI 프레임워크 주요 라이선스 표 -->

## AI 프레임워크 주요 라이선스

<span class="badge badge-purple">① AI 프레임워크</span>

<table>
<thead>
<tr><th>프레임워크</th><th>라이선스</th><th style="text-align:center;">상업적 사용</th><th>주요 의무</th></tr>
</thead>
<tbody>
<tr class="row-yes">
<td><strong>PyTorch</strong></td>
<td>BSD 3-Clause</td>
<td style="text-align:center;"><span class="badge-ok">O</span></td>
<td>저작권 표시</td>
</tr>
<tr class="row-yes">
<td><strong>TensorFlow</strong></td>
<td>Apache 2.0</td>
<td style="text-align:center;"><span class="badge-ok">O</span></td>
<td>저작권 표시, NOTICE 파일</td>
</tr>
<tr class="row-yes">
<td><strong>LangChain</strong></td>
<td>MIT</td>
<td style="text-align:center;"><span class="badge-ok">O</span></td>
<td>저작권 표시</td>
</tr>
<tr class="row-yes">
<td><strong>Hugging Face Transformers</strong></td>
<td>Apache 2.0</td>
<td style="text-align:center;"><span class="badge-ok">O</span></td>
<td>저작권 표시, NOTICE 파일</td>
</tr>
</tbody>
</table>

<div class="callout callout-blue" style="font-size:19px; margin-top:14px;">
AI 프레임워크는 대부분 허용적 라이선스 — <strong>기존 프로세스로 관리 가능</strong>
</div>


---

<!-- 슬라이드 71: 오픈소스 AI 모델 라이선스 관리 -->

## 오픈소스 AI 모델 라이선스 관리

<span class="badge badge-orange">② 사전 훈련 모델</span>

- **커스텀 라이선스 주의** — 사전 훈련 모델은 일반 오픈소스와 달리 모델별 커스텀 라이선스를 사용하는 경우가 많음
- **다양한 제한 조건** — 상업적 사용 제한, 사용자 수(MAU) 기반 제한, 파생 모델 공개 의무 등 조건이 모델마다 다름
- **개별 직접 확인 필수** — Hugging Face 모델 허브에서 모델 카드(Model Card)와 라이선스를 반드시 직접 확인

<div class="callout callout-orange">
<strong>주의: AI 모델 라이선스는 표준화되지 않았습니다</strong><br>
기존 라이선스 가이드로 자동 판단하지 말고, 모델별로 법무팀과 개별 확인이 필요합니다
</div>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/#2-%EC%82%AC%EC%A0%84-%ED%9B%88%EB%A0%A8-%EB%AA%A8%EB%8D%B8-pre-trained-model-%EA%B4%80%EB%A6%AC">AI 컴플라이언스 가이드: 사전 훈련 모델 (Pre-trained Model) 관리</a></div>

---

<!-- 슬라이드 72: AI 모델 라이선스 유형 비교 -->

## AI 모델 라이선스 유형 비교

<span class="badge badge-orange">② 사전 훈련 모델</span>

<table>
<thead>
<tr><th>라이선스 유형</th><th>대표 모델</th><th style="text-align:center;">상업적 사용</th><th>파생 모델</th></tr>
</thead>
<tbody>
<tr class="row-yes">
<td><strong>Apache 2.0</strong></td>
<td>Falcon, Mistral 7B</td>
<td style="text-align:center;"><span class="badge-ok">가능</span></td>
<td>공개 불필요</td>
</tr>
<tr class="row-yes">
<td><strong>MIT</strong></td>
<td>GPT-2, GPT-J</td>
<td style="text-align:center;"><span class="badge-ok">가능</span></td>
<td>공개 불필요</td>
</tr>
<tr>
<td><strong>Llama Community License</strong></td>
<td>Llama 3</td>
<td style="text-align:center;"><span class="badge-warn">조건부</span><br><small>(MAU 7억 이하 무료)</small></td>
<td>공개 불필요</td>
</tr>
<tr>
<td><strong>CC-BY-NC</strong></td>
<td>일부 연구 모델</td>
<td style="text-align:center;"><span class="badge-no">비상업적</span></td>
<td>저작자 표시</td>
</tr>
</tbody>
</table>

<div class="callout callout-green" style="font-size:19px; margin-top:12px;">
Apache 2.0 · MIT 모델을 우선 선택하면 <strong>컴플라이언스 부담이 낮습니다</strong><br>
</div>


<div class="callout callout-orange" style="font-size:19px; margin-top:12px;">
<small>단, 모델 릴리스 라이선스만으로 판단하지 말 것 — <strong>학습 데이터의 NC 여부</strong>와 <strong>base pretrained 모델의 라이선스</strong>를 반드시 별도 확인해야 합니다</small>
</div>


<div class="url-link"><a href="https://sktelecom.github.io/guide/use/obligation/#7-ai-model-%EB%9D%BC%EC%9D%B4%EC%84%A0%EC%8A%A4">SKT 가이드: AI Model 라이선스</a></div>

---

<!-- 슬라이드 73: 학습 데이터셋 관리 -->

## 학습 데이터셋 라이선스 관리

<span class="badge badge-green">③ 학습 데이터셋</span>

<table>
<thead>
<tr><th>라이선스</th><th style="text-align:center;">저작자 표시</th><th style="text-align:center;">상업적 사용</th><th style="text-align:center;">동일조건변경허락</th></tr>
</thead>
<tbody>
<tr class="row-yes">
<td><strong>CC0 (퍼블릭 도메인)</strong></td>
<td style="text-align:center;"><span class="badge-no">불필요</span></td>
<td style="text-align:center;"><span class="badge-ok">가능</span></td>
<td style="text-align:center;"><span class="badge-no">불필요</span></td>
</tr>
<tr class="row-yes">
<td><strong>CC-BY 4.0</strong></td>
<td style="text-align:center;"><span class="badge-ok">필요</span></td>
<td style="text-align:center;"><span class="badge-ok">가능</span></td>
<td style="text-align:center;"><span class="badge-no">불필요</span></td>
</tr>
<tr>
<td><strong>CC-BY-SA 4.0</strong></td>
<td style="text-align:center;"><span class="badge-ok">필요</span></td>
<td style="text-align:center;"><span class="badge-ok">가능</span></td>
<td style="text-align:center;"><span class="badge-ok">필요</span></td>
</tr>
<tr class="row-no">
<td><strong>CC-BY-NC 4.0</strong></td>
<td style="text-align:center;"><span class="badge-ok">필요</span></td>
<td style="text-align:center;"><span class="badge-no">비상업적</span></td>
<td style="text-align:center;"><span class="badge-no">불필요</span></td>
</tr>
</tbody>
</table>

<div class="callout callout-orange" style="font-size:19px; margin-top:12px;">
AI-BOM에 학습 데이터셋과 라이선스 기록 · CC-BY-SA 사용 시 파생 모델 라이선스 법무 협의 필수<br>
</div>


<div class="callout callout-green" style="font-size:19px; margin-top:12px;">
<small>CC-BY-NC 데이터로 학습된 모델은 라이선스 표기와 무관하게 <strong>상업적 배포의 적법성이 불명확</strong>할 수 있습니다 — 데이터 출처와 라이선스를 AI-BOM에 반드시 기록하세요</small>
</div>


<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/#3-%ED%95%99%EC%8A%B5-%EB%8D%B0%EC%9D%B4%ED%84%B0%EC%85%8B-%EA%B4%80%EB%A6%AC">AI 컴플라이언스 가이드: 학습 데이터셋 관리</a></div>

---

<!-- 슬라이드 74: AI-BOM이란? -->

## AI-BOM (AI SBOM)이란?

- **일반 SBOM의 AI 버전** — AI 시스템의 구성 요소(프레임워크·모델·데이터셋)를 명세한 문서
- **SPDX 3.0 AI Profile** — 국제 표준 형식으로 AI-BOM을 작성하면 공급망 신뢰 확보 가능
- **ISO/IEC 42001 §7.5 직접 대응** — AI 시스템 문서화 요구사항을 AI-BOM으로 충족

<div class="callout callout-blue" style="font-size:19px; margin-top:16px;">
<strong>AI-BOM = AI 시스템의 구성 요소 명세서</strong><br>
├── 오픈소스 프레임워크 목록 + 버전 + 라이선스<br>
├── 사전 훈련 모델 + 라이선스 + 출처<br>
└── 학습 데이터셋 + 라이선스 + 출처
</div>


<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/4-operation/2-ai-sbom/">ISO/IEC 42001 가이드: AI SBOM</a></div>

---

<!-- 슬라이드 75: AI-BOM 실제 예시 -->

## AI-BOM 실제 예시 (SPDX 3.0 AI Profile)

<style scoped>
pre, code { font-size: 0.74em; }
</style>

```yaml
# AI SBOM 모델 항목 예시 (SPDX 3.0 AI Profile 기반)
- name: "meta-llama/Llama-3.1-8B"
  version: "3.1"
  license: "Llama Community License Agreement"
  primaryPurpose: "inference"
  hyperparameter:
    contextWindow: 131072
  modelCard: "https://huggingface.co/meta-llama/Meta-Llama-3.1-8B"

- name: "CommonCrawl-2024Q1"
  type: "dataset"
  license: "CC0-1.0"
  source: "https://commoncrawl.org/"

- name: "torch"
  version: "2.3.0"
  license: "BSD-3-Clause"
  type: "framework"
```

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/4-operation/2-ai-sbom/#ai-sbom-spdx-30-%EC%98%88%EC%8B%9C">ISO/IEC 42001 가이드: AI SBOM SPDX 3.0 예시</a></div>

---


<!-- 슬라이드 77: ISO 42001 오픈소스 교차 조항 & 체크포인트 -->

## ISO/IEC 42001 — 오픈소스 담당자 교차 조항 & 체크포인트

<style scoped>
table { font-size: 0.66em; }
</style>

<table>
<thead>
<tr><th style="width:18%;">조항</th><th style="width:37%;">오픈소스 담당자 역할</th><th style="width:45%;">체크 항목</th></tr>
</thead>
<tbody>
<tr>
<td><strong>§5.2 AI 정책</strong></td>
<td>AI 정책에 오픈소스 AI 모델 사용 원칙 포함</td>
<td>AI 정책에 "오픈소스 AI 모델 사용 원칙" 항목이 있는가?</td>
</tr>
<tr>
<td><strong>§6.1.2 AI 리스크 평가</strong></td>
<td>오픈소스 라이선스·취약점 리스크를 AI 리스크 평가에 포함</td>
<td>AI 프로젝트 리스크 평가 시 OSS 라이선스 리스크를 포함하는가?</td>
</tr>
<tr>
<td><strong>§7.5 문서화</strong></td>
<td>AI-BOM(AI SBOM) 수립 및 최신 상태 유지</td>
<td>AI-BOM을 작성하고 최신 상태로 유지하는가?</td>
</tr>
<tr>
<td><strong>§8.5 AI 생애주기</strong></td>
<td>개발 단계별 오픈소스 컴플라이언스 검토 단계 포함</td>
<td>개발 단계별 OSS 컴플라이언스 검토 단계가 프로세스에 있는가?</td>
</tr>
<tr>
<td><strong>§8.6 AI 데이터</strong></td>
<td>학습 데이터셋 라이선스 관리 절차 수립</td>
<td>학습 데이터셋의 라이선스를 확인하고 AI-BOM에 기록하는가?</td>
</tr>
<tr>
<td><strong>§8.8 외부 AI 조달</strong></td>
<td>외부 오픈소스 AI 모델 공급망 검증 절차</td>
<td>외부에서 조달한 오픈소스 AI 모델의 라이선스를 검증하는 절차가 있는가?</td>
</tr>
</tbody>
</table>

<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/compare/#5-%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4-%EA%B4%80%EB%A0%A8%EC%84%B1-%EB%B9%84%EA%B5%90">오픈소스 관련성 비교</a></div>


---

<!-- 슬라이드 78: AI 코딩 도구의 새로운 위험 -->

## AI 코딩 도구 — 새로운 컴플라이언스 위험

<div class="col-left">

**GitHub Copilot · Claude Code · Cursor · Windsurf**  
AI 코딩 도구는 생산성을 높이지만 새로운 위험을 함께 가져온다

- **라이선스 혼입 위험** — AI가 오픈소스를 학습해 유사 코드 생성 → GPL 코드가 무심코 혼입될 수 있다
- **취약 패키지 추천** — 학습 데이터 기준의 오래된 버전 추천 → 알려진 CVE가 포함된 패키지 도입
- **의존성 SBOM 누락** — AI가 제안하는 패키지도 SBOM·취약점 관리 대상

</div>

<div class="callout callout-orange">
<strong>핵심 원칙</strong><br>
AI가 코드를 빠르게 생성할수록<br>
검증 자동화의 중요성은 더 커진다
</div>


<div class="url-link"><a href="https://trustedoss.github.io/ai-coding/intro">Trusted OSS: AI 코딩 도구와 오픈소스 컴플라이언스</a></div>



---

<!-- 슬라이드 79: 4단계 보장 전략 -->

## AI 코딩 도구 — 보장 수준별 4단계 전략

<style scoped>
table { font-size: 0.72em; }
</style>

| 단계 | 핵심 수단 | 보장 수준 | 권장 대상 |
|------|-----------|:---------:|-----------|
| **1단계**: 프롬프트 의존 | 없음 (개인 기억) | 낮음 | 개인 실험 |
| **2단계**: AI 규칙 내재화 | CLAUDE.md · .cursorrules 등 | 중간 | 팀 공동작업 |
| **3단계**: CI/CD 자동 차단 | syft · grype · ORT | 높음 | 팀·조직 |
| **4단계**: 지속적 모니터링 | Dependabot · Renovate + AI | 매우 높음 | 조직·전사 |

<div class="callout callout-blue">
<strong>2단계부터 팀 적용 가능</strong> — CLAUDE.md에 허용·금지 라이선스 목록을 명시하면 AI가 코드 생성 시 자동 인지<br>
<strong>3단계부터 Hard Block</strong> — PR 병합 전 syft·grype로 SBOM 생성 및 CVE·금지 라이선스 자동 차단
</div>

<div class="url-link"><a href="https://trustedoss.github.io/ai-coding/strategy">Trusted OSS: 보장 수준별 4단계 전략</a></div>

---

<!-- 슬라이드 80: 파트 3 요약 -->

## 파트 3 요약

<div class="summary-row">
<div class="summary-card summary-card-blue">
<div class="sc-title">AI 프레임워크</div>
<div class="sc-body">Apache 2.0·MIT 위주<br>기존 ISO 5230 거버넌스 그대로 적용</div>
</div>
<div class="summary-card summary-card-orange">
<div class="sc-title">AI 모델</div>
<div class="sc-body">커스텀 라이선스 다수<br>모델별 개별 확인 + 법무 검토 절차 추가</div>
</div>
<div class="summary-card summary-card-green">
<div class="sc-title">데이터셋 + AI-BOM</div>
<div class="sc-body">CC 라이선스 관리<br>AI-BOM 생성으로 ISO 42001 §7.5 충족</div>
</div>
<div class="summary-card summary-card-purple">
<div class="sc-title">AI 코딩 도구</div>
<div class="sc-body">라이선스 혼입·취약 패키지 위험<br>Rules 내재화 + CI/CD 자동 차단</div>
</div>
</div>

<div class="next-arrow">
다음: KWG 가이드 데모 + 나만의 체계 구축 로드맵 →
</div>

---

<!-- 파트 4 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: part-divider -->

# 파트 4

## Trusted OSS 라이브 데모

---

<!-- 슬라이드 81: Trusted OSS란? -->

# Trusted OSS란?

*AI Agent와 대화하며 오픈소스 거버넌스 체계를 스스로 구축하는 셀프스터디 플랫폼*

- ISO/IEC 5230·18974 기반 **셀프스터디 모드** 제공
- Agent와 대화하며 우리 회사 상황에 맞는 **정책·프로세스** 설계
- 가이드 링크와 템플릿을 **실시간으로 안내**받으며 진행

<div class="url-link"><a href="https://trustedoss.github.io/">Trusted OSS</a></div>

---

<!-- 슬라이드 82: 데모 시나리오 미리보기 -->

## 데모 시나리오 미리보기

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

---

<!-- 슬라이드 83: 라이브 데모 -->

<div class="img-placeholder" style="min-height:450px; font-size:28px;">
🖥️ 라이브 데모

</div>

---

<!-- 슬라이드 84: 혼자서 따라가는 방법 -->

# 데모 후: 혼자서 따라가는 방법

1. <span class="badge-blue">Step 1</span> **trustedoss.github.io/docs** 접속
2. <span class="badge-blue">Step 2</span> 셀프스터디 모드에서 현재 상황 입력 (팀 규모, 현재 체계 수준)
3. <span class="badge-blue">Step 3</span> Agent 안내에 따라 가이드·템플릿 활용
4. <span class="badge-blue">Step 4</span> 자가 인증 체크리스트로 진행 현황 점검

<div class="callout callout-green">
오늘 배운 내용 + Trusted OSS 셀프스터디 = <strong>혼자서 체계 구축 가능</strong>
</div>

<div class="url-link"><a href="https://trustedoss.github.io/docs">Trusted OSS: 체계 구축 가이드</a></div>

---

<!-- 파트 5 전환 슬라이드 -->
<!-- _backgroundColor: #0D47A1 -->
<!-- _color: white -->
<!-- _class: part-divider -->

# 파트 5

## Review

오늘 배운 내용을 바탕으로 내일부터 시작할 수 있는 첫 번째 액션을 정합니다 (20분)

---

<!-- 슬라이드 85: 오늘 배운 핵심 3가지 -->

## 오늘 배운 핵심 3가지

<div class="summary-row">
<div class="summary-card summary-card-blue">
<div class="sc-title">두 표준이 함께 완성</div>
<div class="sc-body">ISO 5230(라이선스) + ISO 18974(보안) = 오픈소스 거버넌스의 두 축<br>5230 인증 후 9개 추가로 18974 취득 가능</div>
</div>
<div class="summary-card summary-card-green">
<div class="sc-title">6대 요소 = 설계도</div>
<div class="sc-body">조직·정책·프로세스·도구·교육·준수<br>이 순서대로 구축하면 50개 입증자료가 갖춰진다</div>
</div>
<div class="summary-card summary-card-purple">
<div class="sc-title">AI = 기존 체계 확장</div>
<div class="sc-body">AI 시스템 3개 레이어(프레임워크·모델·데이터셋)<br>기존 거버넌스를 확장하면 ISO 42001 교차 요건 충족</div>
</div>
</div>

---

<!-- 슬라이드 86: OpenChain KWG 소개 -->

## OpenChain KWG — 함께 만드는 오픈소스 컴플라이언스

<div class="benefit-row" style="margin-top:16px;">
<div class="benefit-card">
<div class="b-title">목적</div>
<div class="b-body">한국 기업 오픈소스 컴플라이언스 담당자 커뮤니티<br>협업과 공유로 효과적인 컴플라이언스 달성 방법을 함께 고민</div>
</div>
<div class="benefit-card">
<div class="b-title">멤버십</div>
<div class="b-body">소프트웨어를 개발·배포하는 한국 기업·기관의<br>오픈소스 컴플라이언스 담당자 누구나 참여 가능</div>
</div>
<div class="benefit-card">
<div class="b-title">주요 산출물</div>
<div class="b-body">ISO 5230·18974 준수 가이드<br>정책·프로세스 템플릿 · 도구 가이드 · AI 컴플라이언스 가이드</div>
</div>
</div>


<div class="url-link"><a href="https://openchain-project.github.io/OpenChain-KWG/">openchain-project.github.io/OpenChain-KWG</a></div>

