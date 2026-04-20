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

  /* ===== 요약 카드 ===== */
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
    border-left: 5px solid #6C3FC5;
    border-radius: 0 8px 8px 0;
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
    color: #0D47A1;
    line-height: 1.2;
    margin-bottom: 16px;
  }
  .cover-sub {
    font-size: 26px;
    color: #444;
    margin-bottom: 40px;
  }
  .cover-meta {
    font-size: 20px;
    color: #888;
    border-top: 1px solid #E0E0E0;
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
---

<!-- 슬라이드 1: 표지 -->

<div class="cover-title">기업 오픈소스 거버넌스 구축 실무</div>
<div class="cover-sub">ISO 표준부터 AI 컴플라이언스까지</div>
<div class="cover-meta">
강사: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
날짜: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
OpenChain Korea Work Group
</div>

---

<!-- 슬라이드 2: 지금까지 / 오늘 배울 것 -->

## 오늘 강의 포지셔닝

<div style="display:flex; gap:0; margin-top:16px;">
<div class="col-left">

**지금까지 배운 것**

- 오픈소스 라이선스의 종류와 의무
- Copyleft vs Permissive 구분
- 라이선스 검토·고지문 작성 실습
- 오픈소스 관리 플랫폼(Olive 등) 소개

</div>
<div class="col-right">

**오늘 배울 것**

- ISO 국제표준 기반 거버넌스 체계
- 6대 핵심 요소(조직·정책·프로세스·도구·교육·준수) 구축 방법
- AI 컴플라이언스 교차 요구사항
- 실제 기업의 인증 사례

</div>
</div>

<div class="key-message">
라이선스를 '아는 것'에서 → 조직이 '지속적으로 지키는 체계'로
</div>

---

<!-- 슬라이드 3: 왜 거버넌스 체계가 필요한가 -->

## 왜 거버넌스 체계가 필요한가

- **2009년 Busybox 소송** — 배포만 한 기업도 소송 대상이 됨, <span class="warn">공급망 전체</span>가 동시에 리스크에 노출
- **개발자의 지식만으로는 부족** — 라이선스를 알아도 조직적 검토·기록 프로세스가 없으면 누락은 반드시 발생
- **ISO 국제표준** — 이 체계를 만들기 위한 검증된 프레임워크, 전 세계 공급망이 공통 언어로 인정

<div class="callout callout-orange">
"한 기업의 오픈소스 사고는 공급망 전체의 문제가 된다" — 개인 준수가 아닌 <strong>조직 체계</strong>가 답이다
</div>

---

<!-- 슬라이드 4: 오늘 강의에서 얻어갈 것 -->

## 오늘 강의에서 얻어갈 것

<div class="benefit-row">
<div class="benefit-card">
<span class="icon">📋</span>
<div class="b-title">표준 이해</div>
<div class="b-body">ISO/IEC 5230·18974·42001 세 표준이 무엇이고 어떻게 서로 연결되는지 이해한다</div>
</div>
<div class="benefit-card">
<span class="icon">🏗️</span>
<div class="b-title">체계 구축 방법</div>
<div class="b-body">6대 핵심 요소(조직·정책·프로세스·도구·교육·준수)로 실제 체계를 어떻게 구축하는지 안다</div>
</div>
<div class="benefit-card">
<span class="icon">🚀</span>
<div class="b-title">첫 번째 액션</div>
<div class="b-body">오늘 집에 가서 바로 시작할 수 있는 첫 번째 실행 단계를 갖고 간다</div>
</div>
</div>

---

<!-- 슬라이드 5: 강의 구성 로드맵 -->

## 강의 구성 로드맵 (4시간)

<div class="timeline-5">
<div class="tl-box tl-active">
<strong>파트 1</strong>
<span class="tl-time">35분</span>
<span class="tl-tag">ISO 표준 이해</span>
</div>
<div class="tl-box">
<strong>파트 2</strong>
<span class="tl-time">115분</span>
<span class="tl-tag">6대 요소 구축</span>
</div>
<div class="tl-box tl-purple">
<strong>파트 3</strong>
<span class="tl-time">30분</span>
<span class="tl-tag">AI 컴플라이언스</span>
</div>
<div class="tl-box tl-green">
<strong>파트 4</strong>
<span class="tl-time">15분</span>
<span class="tl-tag">라이브 데모</span>
</div>
<div class="tl-box tl-gray">
<strong>파트 5</strong>
<span class="tl-time">10분</span>
<span class="tl-tag">마무리 + 로드맵</span>
</div>
</div>

<div class="callout callout-blue" style="margin-top:28px; font-size:20px;">
중간 휴식 2회 — 파트 1 종료 후(10분) · 파트 2 중반부(10분)
</div>

---

<!-- 슬라이드 6: OpenChain Project란? -->

## OpenChain Project란?

- **Linux Foundation**이 운영하는 오픈소스 컴플라이언스 국제 프로젝트
- 핵심 철학: <span class="accent">"공급망 전체가 함께 컴플라이언스를 지켜야만 한 기업이 안전하다"</span>
- 글로벌 참여 기업: Qualcomm, Siemens, ARM, Bosch, Toyota, SK텔레콤, 카카오, KT 등

<div class="bottom-bar">
<div class="item"><span class="num">①</span> 국제표준 규격<br><small style="font-size:16px;color:#666;">ISO/IEC 5230 · 18974</small></div>
<div class="item"><span class="num">②</span> 자가 인증 체크리스트<br><small style="font-size:16px;color:#666;">무료 온라인 신청</small></div>
<div class="item"><span class="num">③</span> 무료 가이드 자료<br><small style="font-size:16px;color:#666;">정책·프로세스 템플릿</small></div>
</div>

---

<!-- 슬라이드 7: ISO/IEC 5230 — 라이선스 컴플라이언스 -->

## ISO/IEC 5230 — 라이선스 컴플라이언스

- **2020년 12월 제정** — 오픈소스 라이선스 컴플라이언스에 관한 <span class="accent">유일한 국제표준</span>
- OpenChain 규격(6가지 핵심 요구사항)이 ISO 표준으로 채택됨
- **공급망 연쇄 요구** — Bosch, Scania 등 대형 OEM이 공급자에게 준수를 요구하기 시작

<div class="callout callout-blue">
"기업 규모·업종과 무관하게 모든 기업에 적용 가능하도록 설계" — 25개 입증자료로 준수 여부를 확인
</div>

---

<!-- 슬라이드 8: ISO/IEC 5230의 6가지 핵심 요구사항 -->

## ISO/IEC 5230의 6가지 핵심 요구사항

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

---

<!-- 슬라이드 9: ISO/IEC 18974 — 보안 보증 -->

## ISO/IEC 18974 — 보안 보증

- **2023년 제정** — 오픈소스 소프트웨어의 알려진 보안 취약점 관리를 위한 국제표준
- ISO/IEC 5230(라이선스)과 **쌍으로 운영** — 컴플라이언스 + 보안의 두 축
- CVE 모니터링, 취약점 대응 프로세스, SBOM 기반 보안 관리를 다룸

<div class="callout callout-orange">
<strong>국내 사례</strong>: KT는 2024년 10월 ISO/IEC 18974 인증 획득 (국내 첫 사례 중 하나)<br>
5230 인증 보유 기업은 <span class="tag-star">★ 전용 9개 항목</span>만 추가 준비하면 18974도 취득 가능
</div>

---

<!-- 슬라이드 10: ISO/IEC 42001 — AI 관리 시스템 -->

## ISO/IEC 42001 — AI 관리 시스템

- **2023년 제정** — AI 시스템을 책임감 있게 개발·운영·관리하기 위한 AI 관리 시스템 표준
- ISO 9001, ISO 27001과 동일한 **경영 시스템 구조** (PDCA 사이클)
- 오픈소스 담당자 관점: §5.2(AI 역할 정의), §6.1.2(AI SBOM), §8.5(AI 공급망 검증) 등이 교차

<div class="callout-purple-solid">
이 강의는 ISO 42001 전체가 아닌 <strong>'오픈소스와 교차하는 요구사항'</strong>에 집중합니다 (파트 3)
</div>

---

<!-- 슬라이드 11: 세 표준 비교 한눈에 -->

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

<!-- 슬라이드 12: 자가 인증이란? -->

## 자가 인증이란?

<div class="process-row">
<div class="process-step">
<span class="step-num">1</span>
<div class="step-title">입증자료 준비</div>
<div class="step-desc">25개(+9개) 항목 충족 여부 자체 점검 및 문서화</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">2</span>
<div class="step-title">온라인 신청</div>
<div class="step-desc">certification.openchainproject.org 체크리스트 제출</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">3</span>
<div class="step-title">인증 획득</div>
<div class="step-desc">공개 인증 목록 등재, 공급망에 준수 증명</div>
</div>
</div>

<div class="callout callout-green">
비용 없음, 언제든지 시작 가능 — <strong>내부 점검 도구로도 즉시 활용 가능</strong>
</div>

---

<!-- 슬라이드 13: [화면 시연] 자가 인증 체크리스트 -->

## [화면 시연] 자가 인증 체크리스트

<div class="img-placeholder">
📸 자가 인증 플랫폼 화면 캡처
<div class="url">https://certification.openchainproject.org/</div>
</div>

- 실제 25개 항목 체크리스트 구조 및 한국어 지원 여부 확인
- ISO/IEC 5230 · 18974 항목 구분 확인

---

<!-- 슬라이드 14: 자가 인증 결과 예시 -->

## 자가 인증 결과 — 국내 인증 기업 사례

<table>
<thead>
<tr>
<th>기업</th>
<th>인증 표준</th>
<th>인증 방식</th>
<th>비고</th>
</tr>
</thead>
<tbody>
<tr class="row-yes">
<td>SK텔레콤</td>
<td>ISO/IEC 5230</td>
<td>자가 인증</td>
<td>국내 최초, 공개 포털 운영</td>
</tr>
<tr class="row-yes">
<td>카카오</td>
<td>ISO/IEC 5230</td>
<td>자가 인증</td>
<td>오픈소스 포털 공개</td>
</tr>
<tr class="row-yes">
<td>KT</td>
<td>ISO/IEC 5230 + 18974</td>
<td>제3자 인증</td>
<td>2024년 18974 국내 첫 취득</td>
</tr>
<tr>
<td>삼성전자</td>
<td>ISO/IEC 5230</td>
<td>자가 인증</td>
<td>글로벌 공급망 요구 대응</td>
</tr>
</tbody>
</table>

---

<!-- 슬라이드 15: 인증 후 얻을 수 있는 것 -->

## 인증 후 얻을 수 있는 것

<div class="benefit-row">
<div class="benefit-card">
<span class="icon">🔗</span>
<div class="b-title">공급망 신뢰 확보</div>
<div class="b-body">글로벌 고객·파트너에게 오픈소스 준수를 객관적으로 증명 가능</div>
</div>
<div class="benefit-card">
<span class="icon">🛡️</span>
<div class="b-title">내부 리스크 감소</div>
<div class="b-body">라이선스 위반·보안 취약점 사고 예방 체계가 완성되어 리스크 관리 수준 향상</div>
</div>
<div class="benefit-card">
<span class="icon">📜</span>
<div class="b-title">공식 인증서 취득</div>
<div class="b-body">제3자 인증 방식 선택 시 공식 인증서 발행 및 국제 인증 목록 등재</div>
</div>
</div>

---

<!-- 슬라이드 16: ISO 5230 입증자료 25개 한눈에 -->

## ISO/IEC 5230 입증자료 25개 한눈에

<table class="ev-table">
<thead>
<tr><th>번호</th><th>입증자료</th><th>담당 요소</th></tr>
</thead>
<tbody>
<tr><td>3.1.1.1</td><td>문서화된 오픈소스 정책</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>3.1.1.2</td><td>정책 전파 절차</td><td><span class="tag-edu">교육</span></td></tr>
<tr><td>3.1.2.1</td><td>역할과 책임 목록</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>3.1.2.2</td><td>역할별 역량 정의 문서</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>3.1.2.3</td><td>역량 평가 증거</td><td><span class="tag-edu">교육</span></td></tr>
<tr><td>3.1.3.1</td><td>참여자 인식 평가 증거</td><td><span class="tag-edu">교육</span></td></tr>
<tr><td>3.1.4.1</td><td>프로그램 적용 범위 문서</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>3.1.5.1</td><td>라이선스 의무사항 검토 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.2.1.1</td><td>외부 문의 공개 채널</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>3.2.1.2</td><td>외부 문의 내부 대응 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.2.2.1</td><td>역할 담당자 명시 문서</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>3.2.2.2</td><td>인원 배치 및 예산 확인</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>3.2.2.3</td><td>법률 자문 접근 방법</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>3.2.2.4</td><td>내부 책임 할당 절차</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>3.2.2.5</td><td>미준수 사례 검토 및 수정 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.3.1.1</td><td>SBOM 관리 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.3.1.2</td><td>오픈소스 컴포넌트 기록 (SBOM)</td><td><span class="tag-tool">도구</span></td></tr>
<tr><td>3.3.2.1</td><td>라이선스 사용 사례 처리 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.4.1.1</td><td>컴플라이언스 산출물 생성 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.4.1.2</td><td>컴플라이언스 산출물 보관 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.5.1.1</td><td>오픈소스 기여 정책</td><td><span class="tag-pol">정책</span></td></tr>
<tr><td>3.5.1.2</td><td>오픈소스 기여 관리 절차</td><td><span class="tag-proc">프로세스</span></td></tr>
<tr><td>3.5.1.3</td><td>기여 정책 인식 절차</td><td><span class="tag-edu">교육</span></td></tr>
<tr><td>3.6.1.1</td><td>모든 요구사항 충족 확인 문서</td><td><span class="tag-conf">준수</span></td></tr>
<tr><td>3.6.2.1</td><td>18개월 이내 요구사항 충족 확인 문서</td><td><span class="tag-conf">준수</span></td></tr>
</tbody>
</table>

---

<!-- 슬라이드 17: ISO 18974 전용 추가 항목 9개 -->

## ISO/IEC 18974 전용 추가 항목 <span class="tag-star">★ 9개</span>

<table class="ev-table">
<thead>
<tr><th>번호</th><th>입증자료</th><th>담당 요소</th></tr>
</thead>
<tbody>
<tr><td>4.1.2.3</td><td>참여자 목록 및 역할 매핑</td><td><span class="tag-org">조직</span></td></tr>
<tr><td>4.1.2.5</td><td>프로그램 주기적 검토 및 변경 증거</td><td><span class="tag-org">조직</span></td></tr>
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

<!-- 슬라이드 18: 파트 1 요약 -->

## 파트 1 요약

<div class="summary-row">
<div class="summary-card summary-card-blue">
<span class="sc-icon">📘</span>
<div class="sc-title">ISO/IEC 5230</div>
<div class="sc-body">라이선스 컴플라이언스 국제표준 (2020)<br>25개 입증자료 · 자가/독립/제3자 인증</div>
</div>
<div class="summary-card summary-card-purple">
<span class="sc-icon">🔒</span>
<div class="sc-title">ISO/IEC 18974</div>
<div class="sc-body">보안 보증 국제표준 (2023)<br>5230 기반 + 전용 9개 항목 추가</div>
</div>
<div class="summary-card summary-card-green">
<span class="sc-icon">✅</span>
<div class="sc-title">자가 인증</div>
<div class="sc-body">무료 · 즉시 시작 가능<br>certification.openchainproject.org</div>
</div>
</div>

<div class="next-arrow">
다음: 6대 핵심 요소로 체계 구축하기 →
</div>

---

<!-- 슬라이드 19: 6대 핵심 요소 전체 구조 -->

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

<!-- 슬라이드 20: 오픈소스 관리 조직 (OSPO) -->

## 1. 조직 — 오픈소스 관리 조직 (OSPO)

<div class="img-placeholder" style="min-height:200px;">
📊 조직도: OSPO → [법무] [IT/보안] [개발팀] [제품/서비스팀]
<div class="url">참고: content/ko/guide/opensource_for_enterprise/1-teams/</div>
</div>

- **전담 OSPO** 또는 역할 담당자 지정 — 규모와 무관하게 반드시 책임자 존재해야 함
- 핵심 역할: 오픈소스 프로그램 매니저(PM), 법무, IT/보안, 개발 대표
- 규모에 따라 **1인 겸직 담당자 → 전담 팀**으로 성장 가능

<div class="callout callout-blue" style="font-size:20px;">
<strong>입증자료</strong>: §3.1.2.1 역할과 책임 목록 · §4.1.2.1
</div>

---

<!-- 슬라이드 21: 규모별 조직 구성 예시 -->

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

---

<!-- 슬라이드 22: 담당자 역할 매트릭스 (RACI) -->

## 담당자 역할 매트릭스

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

<div style="font-size:17px; color:#888; margin-top:10px;">R=Responsible(실행) · A=Accountable(책임) · C=Consulted(자문) · I=Informed(통보)</div>

<div class="callout callout-blue" style="font-size:19px; margin-top:12px;">
<strong>입증자료</strong>: §3.1.2.1 역할과 책임 목록 · §4.1.2.1
</div>

---

<!-- 슬라이드 23: 역량 정의 및 평가 -->

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

<div class="callout callout-blue" style="font-size:19px; margin-top:12px;">
역량 평가 결과를 문서화하여 보관 → <strong>입증자료 §3.1.2.2 · §3.1.2.3 · §4.1.2.2 · §4.1.2.4</strong>
</div>

---

<!-- 슬라이드 24: 프로그램 적용 범위 정의 -->

## 프로그램 적용 범위 정의

- **적용 대상 명시** — 어떤 제품·서비스·팀·공급 소프트웨어에 이 프로그램이 적용되는지 문서화
- **적용 제외 범위** — 내부 도구, 연구 목적 프로토타입, 폐기 예정 레거시 등 예외 범위 정의
- **정기 재검토** — 신제품 출시·조직 개편·사업 영역 변경 시마다 범위 최신화

<div class="callout callout-green">
범위가 명확하지 않으면 어떤 제품이 표준 대상인지 판단할 수 없다<br>
<strong>입증자료</strong>: §3.1.4.1 프로그램 적용 범위 문서 · §4.1.4.1
</div>

---

<!-- 슬라이드 25: 역할 배치 및 예산 확인 -->

## 역할 배치 및 예산 확인

- **담당자 지정 확인** — 각 역할(PM·법무·IT·개발 대표)에 실제 이름이 지정되어 있음을 문서로 확인
- **예산 승인 확인** — 도구 라이선스·외부 교육·법률 자문 등 프로그램 운영 예산이 승인되어 있음을 확인
- **백업 체계** — 핵심 담당자 부재(휴가·이직) 시 누가 역할을 대행하는지 정의

<div class="callout callout-blue">
역할에 담당자가 없거나 예산이 없으면 프로그램은 서류상 존재에 불과하다<br>
<strong>입증자료</strong>: §3.2.2.1 · §3.2.2.2 · §4.2.2.1 · §4.2.2.2
</div>

---

<!-- 슬라이드 26: 법률 자문 접근 방법 -->

## 법률 자문 접근 방법

- **자문 요청 절차** — 라이선스 해석·분쟁·계약 검토가 필요한 경우 내부 법무팀 또는 외부 전문 자문에 접근하는 절차를 문서화
- **자문 프로세스** — 요청 → 검토 → 회신 → 기록 보관 흐름 명시, 회신 기한(예: 영업일 5일) 설정
- **소규모 기업 대안** — 외부 로펌, OpenChain 파트너사 자문 서비스, 법무법인 오픈소스 전담팀 활용

<div class="callout callout-orange" style="font-size:20px;">
법무 자문 경로가 없으면 어려운 라이선스 판단이 현장에서 무작위로 결정된다<br>
<strong>입증자료</strong>: §3.2.2.3 법률 자문 접근 방법
</div>

---

<!-- 슬라이드 27: 내부 책임 할당 절차 -->

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

<div class="callout callout-blue" style="font-size:19px; margin-top:12px;">
<strong>입증자료</strong>: §3.2.2.4 내부 책임 할당 절차 · §4.2.2.4
</div>

---

<!-- 슬라이드 28: 미준수 사례 검토 및 시정 절차 -->

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
시정 조치 결과를 전사 공유 → 유사 사례 예방 + <strong>입증자료 §3.2.2.5</strong>
</div>

---

<!-- 슬라이드 29: 참여자 목록 및 역할 문서화 (★18974 전용) -->

## <span class="badge badge-orange">★ 18974 전용</span> 참여자 목록 및 역할 문서화

- **참여자 전원 문서화** — 오픈소스 프로그램에 참여하는 모든 담당자의 이름·직함·담당 역할을 목록으로 관리
- **이력 관리** — 조직 변경·인사 이동 시마다 목록 갱신, 이전 버전 이력 보관
- **외부 참여자 포함** — 외부 법무 자문사, 오픈소스 컨설턴트 등 외부 참여자도 목록에 포함

<div class="callout callout-orange">
ISO/IEC 5230의 역할 문서에서 한 걸음 더 — <strong>실제 이름이 명시된 참여자 목록</strong>이 필요<br>
<strong>입증자료</strong>: §4.1.2.3 ★
</div>

---

<!-- 슬라이드 30: 주기적 검토 및 변경 증거 (★18974 전용) -->

## <span class="badge badge-orange">★ 18974 전용</span> 주기적 검토 및 변경 증거

- **정기 검토 의무** — 프로그램의 역할·역량·절차·도구를 정기적으로 검토하고 변경 이력을 기록
- **최소 검토 주기** — 연 1회 이상 (조직 변경·신규 표준 발행·보안 사고 발생 시 수시 검토)
- **변경 사항 문서화** — 검토 일시, 참여자, 변경 내용, 변경 이유를 기록하여 보관

<div class="callout callout-orange">
"검토했다"는 구두 확인이 아닌 <strong>날짜·내용이 담긴 문서 증거</strong>가 필요<br>
<strong>입증자료</strong>: §4.1.2.5 ★
</div>

---

<!-- 슬라이드 31: 내부 모범 사례 일치 검증 (★18974 전용) -->

## <span class="badge badge-orange">★ 18974 전용</span> 내부 모범 사례 일치 검증

- **검증 대상** — 조직의 보안 관련 내부 모범 사례가 오픈소스 보안 보증 프로그램과 일치하는지 확인
- **모범 사례 출처** — OpenChain 권고사항, NIST SSDF(Secure Software Development Framework), OWASP Top 10 등
- **불일치 시 조정** — 내부 모범 사례와 표준 요구사항 간 차이가 발견되면 조정 절차와 결과를 문서화

<div class="callout callout-orange">
"우리 내부 보안 기준이 이미 있다"는 것과 "표준과 일치함을 검증했다"는 것은 다르다<br>
<strong>입증자료</strong>: §4.1.2.6 ★
</div>

---

<!-- 슬라이드 32: 2. 정책 — 왜 필요한가 -->

## 2. 정책 — 판단 기준의 통일

- **담당자마다 다른 판단** — 같은 MIT 라이선스라도 누구는 허용, 누구는 재검토 요청 → 일관성 붕괴
- **정책은 공통 규칙서** — 모든 구성원이 동일한 기준으로 판단·행동하도록 성문화한 문서
- **ISO/IEC 5230·18974 공통 요구** — 두 표준 모두 <span class="accent">문서화된 오픈소스 정책</span>을 첫 번째 요구사항으로 규정

<div class="callout callout-orange">
정책 없이는 "잘 하고 싶어도 기준이 없다" — 좋은 의도가 일관된 결과로 이어지지 않는다<br>
<strong>입증자료</strong>: §3.1.1.1 · §4.1.1.1
</div>

---

<!-- 슬라이드 33: 정책에 담아야 할 핵심 항목 -->

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

<div class="callout callout-blue" style="font-size:19px; margin-top:12px;">
<strong>입증자료</strong>: §3.1.1.1 문서화된 오픈소스 정책 · §4.1.1.1
</div>

---

<!-- 슬라이드 34: 라이선스 컴플라이언스 정책 상세 -->

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

<div class="callout callout-blue" style="font-size:19px; margin-top:12px;">
<strong>입증자료</strong>: §3.1.1.1 · §3.1.5.1 라이선스 의무사항 검토 절차
</div>

---

<!-- 슬라이드 35: 보안 보증 정책 상세 -->

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

<div class="callout callout-orange" style="font-size:19px; margin-top:12px;">
<strong>입증자료</strong>: §4.1.1.1 · §4.1.5.1 ★ 8가지 취약점 처리 방법 문서화 · §4.2.2.3 ★
</div>

---

<!-- 슬라이드 36: 성과 메트릭 정의 (★18974 전용) -->

## <span class="badge badge-orange">★ 18974 전용</span> 성과 메트릭 정의

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
"측정할 수 없으면 관리할 수 없다" — 메트릭 세트가 있어야 지속적 개선이 가능<br>
<strong>입증자료</strong>: §4.1.4.2 ★ 성과 메트릭 세트
</div>

---

<!-- 슬라이드 37: 지속적 개선 원칙 (★18974 전용) -->

## <span class="badge badge-orange">★ 18974 전용</span> 지속적 개선 원칙

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
분기별 지표 점검 + 연 1회 전체 감사 → <strong>입증자료 §4.1.4.3 ★ 지속적 개선 증거</strong>
</div>

---

<!-- 슬라이드 38: 정책 전파 절차 -->

## 정책 전파 절차

- **전파 방법** — 신규 입사자 온보딩, 내부 위키/인트라넷 게시, 정기 교육(연 1회 이상)
- **전파 대상** — 공급 소프트웨어의 개발·배포·검토에 관여하는 <span class="accent">모든 직원</span>에게 전파
- **전파 확인** — 교육 이수 서명, LMS 완료 기록, 온보딩 체크리스트로 확인 및 보관

<div class="callout callout-blue">
정책을 만들어 두는 것과 전 직원이 <strong>알고 있다는 것을 증명</strong>하는 것은 다르다<br>
<strong>입증자료</strong>: §3.1.1.2 · §4.1.1.2 정책 전파 절차
</div>

---

<!-- 슬라이드 39: 정책 템플릿 소개 -->

## 정책 템플릿 — 바로 사용 가능한 출발점

<div class="img-placeholder" style="min-height:180px;">
📄 OpenChain KWG 오픈소스 정책 템플릿 미리보기
<div class="url">openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/</div>
</div>

- **ISO 5230 + 18974 모두 충족** 설계 — 25+9개 입증자료 요건 반영
- **라이선스 컴플라이언스·보안·기여·외부문의** 항목 포함
- CC BY 4.0 — 무료 사용·수정·배포 가능

---

<!-- 슬라이드 40: 오픈소스 사용 프로세스 흐름도 -->

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

<div class="callout callout-blue" style="margin-top:20px; font-size:20px;">
<strong>입증자료</strong>: §3.3.1.1 SBOM 관리 절차 · §3.3.2.1 라이선스 사용 사례 처리 절차
</div>

---

<!-- 슬라이드 41: 외부 문의 공개 채널 운영 -->

## 외부 문의 공개 채널 운영

- **채널 예시** — `opensource@company.com`, 웹 문의 양식, GitHub 이슈, 전용 포털
- **채널 공개 위치** — 제품 패키지·웹사이트·오픈소스 고지문·앱 스토어 설명에 명시
- **채널 구분** — 라이선스 문의와 <span class="accent">보안 취약점 신고 채널을 분리</span>하여 운영 권장

<div class="callout callout-green">
채널이 있어도 어디에 있는지 모르면 없는 것과 같다 — <strong>발견 가능성(discoverability)</strong>이 핵심<br>
<strong>입증자료</strong>: §3.2.1.1 · §4.2.1.1 외부 문의 공개 채널
</div>

---

<!-- 슬라이드 42: 외부 문의 내부 대응 절차 -->

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

<div class="callout callout-blue" style="margin-top:20px; font-size:20px;">
<strong>입증자료</strong>: §3.2.1.2 · §4.2.1.2 외부 문의 내부 대응 절차
</div>

---

<!-- 슬라이드 43: 미준수 사례 검토·시정 (프로세스 관점) -->

## 미준수 사례 — 프로세스 관점

- **발견 경로** — 내부 스캔, 외부 제보, 법적 통보, 공급망 감사
- **시정 조치 유형** — 라이선스 의무 즉시 이행, 배포 일시 중단 후 수정, 제3자와 합의
- **기록 의무** — 미준수 원인·시정 내용·완료 일시를 문서화, 담당 임원 보고 및 전사 공유

<div class="callout callout-orange">
미준수 발생 자체보다 <strong>발견 즉시 대응하고 재발을 방지하는 체계</strong>가 표준이 요구하는 것<br>
<strong>입증자료</strong>: §3.2.2.5 미준수 사례 검토 및 수정 절차
</div>

---

<!-- 슬라이드 44: 컴플라이언스 산출물 준비·배포 -->

## 컴플라이언스 산출물 준비·배포

- **산출물 3종** — ① 오픈소스 고지문(NOTICE) ② 소스코드 패키지(GPL 등) ③ SBOM
- **배포 방법** — 제품 패키지 동봉, 공식 웹사이트 게시, 서면 요청 시 제공(written offer)
- **버전 관리** — 릴리스마다 별도 산출물 생성, 버전·배포처·날짜 기록

<div class="bottom-bar">
<div class="item"><span class="num">①</span> 고지문<br><small style="font-size:16px;color:#666;">NOTICE / LICENSE 파일</small></div>
<div class="item"><span class="num">②</span> 소스코드 패키지<br><small style="font-size:16px;color:#666;">GPL·LGPL 의무 이행</small></div>
<div class="item"><span class="num">③</span> SBOM<br><small style="font-size:16px;color:#666;">SPDX·CycloneDX 형식</small></div>
</div>

<div style="font-size:19px; margin-top:12px; color:#555;"><strong>입증자료</strong>: §3.4.1.1 컴플라이언스 산출물 생성 절차</div>

---

<!-- 슬라이드 45: 컴플라이언스 산출물 보관 절차 -->

## 컴플라이언스 산출물 보관 절차

- **보관 기간** — 제품 판매 종료 후 <span class="accent">최소 3년</span> (GPL §3 written offer 유효 기간 기준)
- **보관 방법** — 버전 관리 시스템(Git), 아카이브 스토리지, 클라우드 백업으로 이중 보관
- **기록 항목** — 버전·배포 일자·배포처·제공 방법별로 언제 어떤 산출물을 제공했는지 이력 유지

<div class="callout callout-blue">
감사나 법적 분쟁이 발생했을 때 <strong>"당시에 의무를 이행했다"는 증거</strong>가 보관된 산출물이다<br>
<strong>입증자료</strong>: §3.4.1.2 컴플라이언스 산출물 보관 절차
</div>

---

<!-- 슬라이드 46: 보안 취약점 대응 프로세스 -->

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

<div class="callout callout-orange" style="margin-top:16px; font-size:19px;">
<strong>CVSS 기준 조치 기한</strong>: 9.0+ → 7일 이내 · 7.0–8.9 → 30일 이내 · ~6.9 → 다음 릴리스<br>
<strong>입증자료</strong>: §4.3.1.1 · §4.3.2.1 ★ 취약점 탐지 및 해결 절차
</div>

---

<!-- 슬라이드 47: 취약점 대응 8가지 방법 (§4.1.5.1) -->

## <span class="badge badge-orange">★ 18974 전용</span> 취약점 처리 8가지 방법

<div style="display:grid; grid-template-columns: 1fr 1fr; gap:12px; margin-top:16px;">
<div class="callout callout-blue" style="margin:0; font-size:19px;">
<strong>① 업그레이드</strong><br>취약점이 수정된 버전으로 패키지 업그레이드
</div>
<div class="callout callout-blue" style="margin:0; font-size:19px;">
<strong>② 패치 적용</strong><br>공급사 또는 커뮤니티 제공 패치 직접 적용
</div>
<div class="callout callout-orange" style="margin:0; font-size:19px;">
<strong>③ 회피 방법 (Workaround)</strong><br>취약한 기능을 비활성화하거나 우회
</div>
<div class="callout callout-orange" style="margin:0; font-size:19px;">
<strong>④ 대체 컴포넌트 사용</strong><br>동일 기능의 다른 오픈소스로 교체
</div>
<div class="callout callout-blue" style="margin:0; font-size:19px;">
<strong>⑤ 제거</strong><br>취약 컴포넌트 자체를 제품에서 제거
</div>
<div class="callout callout-blue" style="margin:0; font-size:19px;">
<strong>⑥ 위험 수용</strong><br>영향 없음을 분석 후 문서화하여 수용
</div>
<div class="callout callout-orange" style="margin:0; font-size:19px;">
<strong>⑦ 서비스 종료</strong><br>영향받는 제품·버전의 지원 중단 선언
</div>
<div class="callout callout-orange" style="margin:0; font-size:19px;">
<strong>⑧ 기타 방법</strong><br>위 방법 외 다른 처리 방법 선택 (사유 문서화 필수)
</div>
</div>

<div style="font-size:18px; margin-top:12px; color:#555;"><strong>입증자료</strong>: §4.1.5.1 ★ — 8가지 방법을 정책에 명시해야 함</div>

---

<!-- 슬라이드 48: 취약점 및 조치 기록 -->

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
<strong>"탐지 없음"도 기록</strong> — 스캔 실행 일시·결과를 기록해야 "모니터링했다"는 증거가 됨<br>
<strong>입증자료</strong>: §4.3.2.1 ★ · §4.3.2.2 ★ 취약점 및 조치 기록
</div>

---

<!-- 슬라이드 49: 오픈소스 기여 프로세스 -->

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

<div class="callout callout-blue" style="margin-top:20px; font-size:20px;">
<strong>입증자료</strong>: §3.5.1.1 오픈소스 기여 정책 · §3.5.1.2 기여 관리 절차 · §3.5.1.3 기여 정책 인식 절차
</div>

---

<!-- 슬라이드 50: SBOM 수명주기 관리 절차 -->

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
SBOM은 만들어 두는 문서가 아닌 <strong>살아있는 보안 자산</strong> — 배포 후에도 계속 활용<br>
<strong>입증자료</strong>: §3.3.1.1 · §3.3.1.2 · §4.3.1.1
</div>

---

<!-- 슬라이드 51: 프로세스 템플릿 소개 -->

## 프로세스 템플릿 — 바로 사용 가능한 절차서

<div class="img-placeholder" style="min-height:180px;">
📋 OpenChain KWG 오픈소스 프로세스 템플릿 미리보기
<div class="url">openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/</div>
</div>

- **포함 절차**: 오픈소스 사용·검토·배포 / 외부 문의 대응 / 취약점 대응 / SBOM 관리 / 기여·공개
- **ISO 5230·18974 입증자료 매핑** 포함 — 어떤 절차가 어떤 입증자료를 커버하는지 명시
- CC BY 4.0 — 무료 사용·수정 가능

---

<!-- 슬라이드 52: 4. 도구 — 왜 필요한가 -->

## 4. 도구 — 수작업의 한계

<div style="display:flex; gap:0; margin-top:16px;">
<div class="col-left">

**Before: 수작업 관리**

- 개발자가 직접 라이선스 확인 → <span class="warn">누락 빈번</span>
- 스프레드시트로 SBOM 관리 → 버전 불일치
- 배포 후 취약점 발견 → <span class="warn">뒤늦은 대응</span>
- 담당자 이직 시 지식 유실

</div>
<div class="col-right">

**After: 도구 자동화**

- SCA 도구로 자동 라이선스 검출
- 빌드마다 SBOM 자동 생성
- CVE 피드 자동 대조 → 실시간 알림
- 이력이 시스템에 누적 보관

</div>
</div>

<div class="key-message">
도구 없이는 규모가 커질수록 사람이 감당할 수 없다 — 자동화가 체계의 지속 가능성을 만든다
</div>

---

<!-- 슬라이드 53: 도구 생태계 지도 -->

## 오픈소스 거버넌스 도구 생태계

<table>
<thead>
<tr><th>카테고리</th><th>도구</th><th>역할</th><th>라이선스</th></tr>
</thead>
<tbody>
<tr>
<td><strong>소스코드 스캔</strong></td>
<td>FOSSology · FOSSLight · SCANOSS</td>
<td>라이선스 식별, 저작권 분석</td>
<td>오픈소스</td>
</tr>
<tr>
<td><strong>SBOM 생성</strong></td>
<td>cdxgen · Syft</td>
<td>패키지 의존성 → SBOM 자동 생성</td>
<td>오픈소스</td>
</tr>
<tr>
<td><strong>거버넌스·추적</strong></td>
<td>SW360 · Dependency-Track</td>
<td>오픈소스 컴포넌트 관리·승인·추적</td>
<td>오픈소스</td>
</tr>
<tr>
<td><strong>취약점 탐지</strong></td>
<td>OSV-SCALIBR · Dependency-Track</td>
<td>SBOM 기반 CVE 자동 대조</td>
<td>오픈소스</td>
</tr>
</tbody>
</table>

<div class="callout callout-blue" style="font-size:19px; margin-top:12px;">
소개된 모든 도구는 <strong>무료 오픈소스</strong> — 예산 없이도 도입 가능
</div>

---

<!-- 슬라이드 54: 소스코드 스캔 도구 -->

## 소스코드 스캔: FOSSology & FOSSLight

<div class="benefit-row">
<div class="benefit-card">
<span class="icon">🔍</span>
<div class="b-title">FOSSology</div>
<div class="b-body">
Linux Foundation 운영<br>
소스코드 라이선스·저작권 자동 식별<br>
웹 UI 기반 검토·승인 워크플로우<br>
SW360과 연동 가능
</div>
</div>
<div class="benefit-card">
<span class="icon">💡</span>
<div class="b-title">FOSSLight</div>
<div class="b-body">
LG전자 개발, Apache 2.0<br>
소스·바이너리·패키지 통합 스캔<br>
고지문 자동 생성 포함<br>
한국어 지원, 국내 기업 활용도 높음
</div>
</div>
</div>

<div style="font-size:18px; margin-top:14px; color:#555;">상세 가이드 → <span class="blue">openchain-project.github.io/OpenChain-KWG/guide/tools/</span></div>

---

<!-- 슬라이드 55: SBOM 생성 도구 -->

## SBOM 생성: cdxgen & Syft

<div class="benefit-row">
<div class="benefit-card">
<span class="icon">📦</span>
<div class="b-title">cdxgen</div>
<div class="b-body">
OWASP 운영, Apache 2.0<br>
50+ 언어·패키지 매니저 지원<br>
CycloneDX 형식 SBOM 생성<br>
CI/CD 파이프라인 통합 용이
</div>
</div>
<div class="benefit-card">
<span class="icon">🔧</span>
<div class="b-title">Syft</div>
<div class="b-body">
Anchore 개발, Apache 2.0<br>
컨테이너 이미지·파일시스템 스캔<br>
SPDX·CycloneDX 양 형식 지원<br>
Grype(취약점 스캐너)와 연동
</div>
</div>
</div>

<div style="font-size:18px; margin-top:14px; color:#555;">상세 가이드 → <span class="blue">openchain-project.github.io/OpenChain-KWG/guide/tools/</span></div>

---

<!-- 슬라이드 56: 거버넌스·SBOM 관리 도구 -->

## 거버넌스·SBOM 관리: SW360 & Dependency-Track

<div class="benefit-row">
<div class="benefit-card">
<span class="icon">🗂️</span>
<div class="b-title">SW360</div>
<div class="b-body">
Eclipse Foundation, EPL-2.0<br>
오픈소스 컴포넌트 데이터베이스<br>
라이선스·의무·승인 이력 관리<br>
FOSSology·Jira 연동 지원
</div>
</div>
<div class="benefit-card">
<span class="icon">🛡️</span>
<div class="b-title">Dependency-Track</div>
<div class="b-body">
OWASP, Apache 2.0<br>
SBOM 수신 → CVE 자동 대조<br>
정책 기반 알림·빌드 차단<br>
Slack·Webhook 연동 가능
</div>
</div>
</div>

<div style="font-size:18px; margin-top:14px; color:#555;">상세 가이드 → <span class="blue">openchain-project.github.io/OpenChain-KWG/guide/tools/</span></div>

---

<!-- 슬라이드 57: CI/CD 파이프라인 연동 -->

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

---

<!-- 슬라이드 58: 도구 선택 가이드 -->

## 규모별 도구 선택 가이드

<table>
<thead>
<tr>
<th class="th-label">규모</th>
<th class="th-5230">추천 스택</th>
<th class="th-18974">핵심 기능</th>
<th class="th-label">예산</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>소규모</strong><br><small>50인 이하</small></td>
<td>FOSSLight + cdxgen</td>
<td>라이선스 스캔 + SBOM 생성</td>
<td>무료</td>
</tr>
<tr>
<td><strong>중규모</strong><br><small>50–500인</small></td>
<td>SW360 + Syft + Dependency-Track</td>
<td>컴포넌트 관리 + 취약점 자동 대조</td>
<td>무료</td>
</tr>
<tr>
<td><strong>대규모</strong><br><small>500인+</small></td>
<td>상용 SCA + 커스텀 통합</td>
<td>전사 통합 · 대시보드 · SLA 지원</td>
<td>유료</td>
</tr>
</tbody>
</table>

<div class="callout callout-green" style="font-size:19px; margin-top:14px;">
소규모 기업도 <strong>무료 오픈소스 스택만으로 ISO 5230 + 18974 입증자료를 모두 갖출 수 있다</strong>
</div>

---

<!-- 슬라이드 59: 5. 교육 — 목적과 대상 -->

## 5. 교육 — 체계의 마지막 퍼즐

- **정책·프로세스의 한계** — 아무리 잘 만들어도 구성원이 인식하지 않으면 현장에서 작동하지 않는다
- **교육 대상** — 공급 소프트웨어의 개발·배포에 관여하는 <span class="accent">모든 직원</span> (개발자·PM·법무·경영진 포함)
- **ISO 요구 3가지** — ① 오픈소스 정책의 존재 인식 ② 정책의 목적 이해 ③ 미준수 시 영향 인지

<div class="callout callout-green">
"교육을 실시했다"는 구두 확인이 아닌 <strong>이수 기록·평가 결과 보관</strong>이 입증자료가 된다<br>
<strong>입증자료</strong>: §3.1.1.2 · §3.1.3.1
</div>

---

<!-- 슬라이드 60: 역할별 교육 커리큘럼 -->

## 역할별 교육 커리큘럼

<table>
<thead>
<tr><th>역할</th><th>필수 교육</th><th>권장 교육</th><th>빈도</th></tr>
</thead>
<tbody>
<tr>
<td><strong>개발자</strong></td>
<td>라이선스 기초, 오픈소스 사용 절차, SBOM 도구 사용</td>
<td>취약점 분석 기초</td>
<td>연 1회</td>
</tr>
<tr>
<td><strong>오픈소스 PM</strong></td>
<td>전체 프로세스, 입증자료 관리, 표준 이해</td>
<td>인증 절차 실습</td>
<td>연 1회 + 신규 채용 시</td>
</tr>
<tr>
<td><strong>법무</strong></td>
<td>라이선스 해석 심화, GPL 컴플라이언스</td>
<td>판례·사례 스터디</td>
<td>연 1회</td>
</tr>
<tr>
<td><strong>경영진</strong></td>
<td>표준 개요, 인증 의의, 리스크 관리</td>
<td>공급망 사례 공유</td>
<td>2년 1회</td>
</tr>
</tbody>
</table>

<div style="font-size:18px; margin-top:10px; color:#555;"><strong>입증자료</strong>: §3.1.2.2 역할별 역량 정의 문서</div>

---

<!-- 슬라이드 61: 신규 입사자 교육 설계 -->

## 신규 입사자 교육 설계

<div class="process-row">
<div class="process-step">
<span class="step-num">1</span>
<div class="step-title">오리엔테이션 (1일 차)</div>
<div class="step-desc">오픈소스 정책 소개, 내부 가이드 안내, 담당 PM 소개</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">2</span>
<div class="step-title">실습 (1~2주 이내)</div>
<div class="step-desc">오픈소스 검토 도구 사용법, 승인 절차 시뮬레이션</div>
</div>
<div class="process-arrow">→</div>
<div class="process-step">
<span class="step-num">3</span>
<div class="step-title">이해도 확인</div>
<div class="step-desc">온라인 퀴즈 또는 서명으로 인식 확인 후 기록 보관</div>
</div>
</div>

<div class="callout callout-blue" style="margin-top:20px; font-size:20px;">
신규 입사자도 <strong>30일 이내 교육 완료</strong>를 의무화 → 온보딩 체크리스트에 포함
</div>

---

<!-- 슬라이드 62: 교육 효과 측정 및 인식 평가 -->

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

<div class="callout callout-green" style="margin-top:14px; font-size:19px;">
<strong>입증자료</strong>: §3.1.3.1 참여자 인식 평가 증거 · §3.1.2.3 역량 평가 증거
</div>

---

<!-- 슬라이드 63: 교육 자료 및 참고 링크 -->

## 교육 자료 — 무료로 시작하기

- **OpenChain KWG 가이드** — 정책·프로세스 템플릿, 입증자료 체크리스트, 조항별 가이드
- **NIPA 오픈소스 라이선스 가이드** — 국내 기업 대상 실무 해설
- **한국저작권위원회 오픈소스 해설서** — GPL·Apache·MIT 등 주요 라이선스 한국어 해설

<div class="bottom-bar">
<div class="item"><span class="num">①</span> KWG 가이드<br><small style="font-size:14px;color:#666;">무료 정책·프로세스 템플릿</small></div>
<div class="item"><span class="num">②</span> NIPA 가이드<br><small style="font-size:14px;color:#666;">국내 실무 중심 해설</small></div>
<div class="item"><span class="num">③</span> 저작권위원회<br><small style="font-size:14px;color:#666;">라이선스 한국어 해설</small></div>
</div>

---

<!-- 슬라이드 64: 6. 준수 선언이란? -->

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
<div class="step-desc">certification.openchainproject.org 제출 또는 공개 웹사이트 게재</div>
</div>
</div>

<div class="callout callout-green" style="margin-top:20px; font-size:20px;">
<strong>입증자료</strong>: §3.6.1.1 모든 요구사항 충족 확인 문서 · §4.4.1.1
</div>

---

<!-- 슬라이드 65: 자가 인증 절차 상세 -->

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
<span class="flow-desc">certification.openchainproject.org 체크리스트 제출</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">④</span>
<span class="flow-name">인증 목록 등재</span>
<span class="flow-desc">공개 인증 조직 목록에 등재, 공급망 증명 가능</span>
</div>
</div>

<div class="callout callout-green" style="margin-top:20px; font-size:19px;">
비용 없음, 언제든 신청 가능 — <strong>입증자료</strong>: §3.6.1.1
</div>

---

<!-- 슬라이드 66: 주기적 검토 및 18개월 유지 -->

## 인증 후 18개월 유지 의무

- **18개월 재확인** — 인증 취득 후 18개월 이내에 모든 요구사항을 여전히 충족하고 있음을 재확인
- **연 1회 내부 감사** — 25개(+9개) 입증자료 현행화 여부 점검, 담당자 변경·프로세스 갱신 반영
- **표준 버전 갱신 대응** — 새 버전 발행 시 18개월 유예 기간 내 갱신 권장

<div class="callout callout-blue">
인증은 "한번 받으면 영구"가 아니다 — <strong>살아있는 체계</strong>임을 지속적으로 확인해야 한다<br>
<strong>입증자료</strong>: §3.6.2.1 · §4.4.2.1 — 18개월 이내 요구사항 충족 확인 문서
</div>

---

<!-- 슬라이드 67: 성과 메트릭 측정 및 개선 -->

## 성과 메트릭 측정 및 개선

<table>
<thead>
<tr><th>메트릭</th><th>현재 (예시)</th><th>목표</th><th>조치</th></tr>
</thead>
<tbody>
<tr>
<td><strong>SBOM 완전성</strong></td>
<td>92%</td>
<td>100%</td>
<td>빌드 파이프라인 자동화 강화</td>
</tr>
<tr>
<td><strong>Critical 취약점 기한 준수</strong></td>
<td>88%</td>
<td>≥95%</td>
<td>알림 시스템 개선, 담당자 추가 지정</td>
</tr>
<tr>
<td><strong>외부 문의 초기 응답</strong></td>
<td>36시간</td>
<td>24시간</td>
<td>자동 접수 확인 이메일 도입</td>
</tr>
<tr>
<td><strong>교육 이수율</strong></td>
<td>85%</td>
<td>100%</td>
<td>미이수자 개별 독려 + 온보딩 필수화</td>
</tr>
</tbody>
</table>

<div style="font-size:18px; margin-top:10px; color:#555;"><strong>입증자료</strong>: §4.1.4.2 ★ 성과 메트릭 세트 · §4.1.4.3 ★ 지속적 개선 증거</div>

---

<!-- 슬라이드 68: 지속적 개선 증거 수집 -->

## 지속적 개선 증거 수집

- **개선 활동 기록** — 무엇을 왜 변경했는지 문서화 (변경 전 상태 → 변경 후 상태 → 효과)
- **연 1회 전체 프로그램 리뷰** — 6대 요소 전체를 점검하고 개선 보고서 작성, 경영진 보고
- **개선 전·후 메트릭 비교** — 수치로 효과를 증명 → "개선했다"는 주장이 아닌 증거

<div class="callout callout-green">
개선 보고서 한 장이 <strong>"프로그램이 살아있다"</strong>는 가장 강력한 증거<br>
<strong>입증자료</strong>: §4.1.4.3 ★ 지속적 개선 증거
</div>

---

<!-- 슬라이드 69: ISO 5230 + 18974 통합 준수 체크 -->

## ISO 5230 + 18974 통합 준수 체크

<table class="ev-table">
<thead>
<tr><th>입증자료</th><th>설명</th><th style="text-align:center;">5230</th><th style="text-align:center;">18974</th></tr>
</thead>
<tbody>
<tr><td>3.1.1.1 / 4.1.1.1</td><td>문서화된 오픈소스 정책</td><td style="text-align:center;">✅</td><td style="text-align:center;">✅</td></tr>
<tr><td>3.1.2.1 / 4.1.2.1</td><td>역할과 책임 목록</td><td style="text-align:center;">✅</td><td style="text-align:center;">✅</td></tr>
<tr><td>3.1.2.3 / 4.1.2.4</td><td>역량 평가 증거</td><td style="text-align:center;">✅</td><td style="text-align:center;">✅</td></tr>
<tr><td>3.3.1.1 / 4.3.1.1</td><td>SBOM 관리 절차</td><td style="text-align:center;">✅</td><td style="text-align:center;">✅</td></tr>
<tr><td>3.4.1.1 / 3.4.1.2</td><td>산출물 생성·보관 절차</td><td style="text-align:center;">✅</td><td style="text-align:center;">—</td></tr>
<tr><td>4.1.2.3</td><td>참여자 목록 및 역할 매핑 <span class="tag-star">★</span></td><td style="text-align:center;">—</td><td style="text-align:center;">✅</td></tr>
<tr><td>4.1.4.2</td><td>성과 메트릭 세트 <span class="tag-star">★</span></td><td style="text-align:center;">—</td><td style="text-align:center;">✅</td></tr>
<tr><td>4.1.5.1</td><td>8가지 취약점 처리 방법 <span class="tag-star">★</span></td><td style="text-align:center;">—</td><td style="text-align:center;">✅</td></tr>
<tr><td>4.3.2.1 / 4.3.2.2</td><td>취약점 탐지·해결·기록 <span class="tag-star">★</span></td><td style="text-align:center;">—</td><td style="text-align:center;">✅</td></tr>
<tr><td>3.6.1.1 / 4.4.1.1</td><td>모든 요구사항 충족 확인 문서</td><td style="text-align:center;">✅</td><td style="text-align:center;">✅</td></tr>
</tbody>
</table>

<div style="font-size:17px; margin-top:10px; color:#555;">전체 50개 항목 체크리스트 → enterprise 가이드 입증자료 커버리지 표 참고</div>

---

<!-- 슬라이드 70: 파트 2 요약 + 참고 링크 -->

## 파트 2 요약

<div class="summary-row">
<div class="summary-card summary-card-blue">
<span class="sc-icon">🏛️</span>
<div class="sc-title">조직 · 정책</div>
<div class="sc-body">체계의 뼈대<br>역할 정의 + 문서화된 원칙으로 판단 기준 통일</div>
</div>
<div class="summary-card summary-card-green">
<span class="sc-icon">⚙️</span>
<div class="sc-title">프로세스 · 도구</div>
<div class="sc-body">체계의 실행<br>자동화 + 지속적 기록으로 사람 의존 탈피</div>
</div>
<div class="summary-card summary-card-purple">
<span class="sc-icon">📈</span>
<div class="sc-title">교육 · 준수</div>
<div class="sc-body">체계의 지속<br>인식 제고 + 정기 확인으로 18개월 유효성 유지</div>
</div>
</div>

<div class="bottom-bar" style="margin-top:16px;">
<div class="item"><span class="num">①</span> <a href="#" style="color:#1C1C1E;">기업 오픈소스 가이드</a></div>
<div class="item"><span class="num">②</span> <a href="#" style="color:#1C1C1E;">정책 템플릿</a></div>
<div class="item"><span class="num">③</span> <a href="#" style="color:#1C1C1E;">프로세스 템플릿</a></div>
</div>

---

<!-- 슬라이드 71: 기존 거버넌스로 충분한가? -->

## 파트 3: AI 컴플라이언스 — 기존 거버넌스로 충분한가?

<div style="display:flex; gap:0; margin-top:16px;">
<div class="col-left">

**기존 거버넌스가 커버하는 것**

- PyPI, npm, Maven 등 표준 패키지
- GitHub 오픈소스 라이브러리
- 컨테이너 이미지 내 패키지
- CI/CD 파이프라인 의존성

</div>
<div class="col-right">

**기존 거버넌스로 커버되지 않는 것**

- <span class="warn">AI 모델 커스텀 라이선스</span> (Llama, Mistral 등)
- <span class="warn">학습 데이터셋 라이선스</span> (CC-BY, CC-BY-NC 등)
- AI 공급망 검증 (외부 모델 출처 확인)
- AI-BOM (AI 구성요소 명세서)

</div>
</div>

<div class="callout callout-orange">
AI 시스템에는 <strong>3가지 오픈소스 레이어</strong>가 존재한다 — 기존 체계를 확장해야 한다
</div>

---

<!-- 슬라이드 72: AI 시스템 오픈소스 3대 영역 -->

## AI 시스템 오픈소스 3대 영역

<div class="benefit-row">
<div class="benefit-card">
<span class="icon">🔧</span>
<div class="b-title"><span class="blue">① AI 프레임워크·라이브러리</span></div>
<div class="b-body">
PyTorch, TensorFlow, LangChain 등<br>
<strong>표준 오픈소스 라이선스</strong> (Apache 2.0, MIT, BSD)<br>
→ 기존 ISO 5230 프로세스 그대로 적용
</div>
</div>
<div class="benefit-card" style="border-top-color:#F4A020;">
<span class="icon">🤖</span>
<div class="b-title"><span class="orange">② 사전 훈련 AI 모델</span></div>
<div class="b-body">
Llama, Mistral, Falcon, BERT 등<br>
<strong>커스텀/제한 라이선스</strong> (모델별 개별 확인)<br>
→ 별도 검토 절차 추가 필요
</div>
</div>
<div class="benefit-card" style="border-top-color:#1E8E5A;">
<span class="icon">🗃️</span>
<div class="b-title"><span class="green">③ 학습 데이터셋</span></div>
<div class="b-body">
CC-BY, CC0, 자체 라이선스 등<br>
<strong>데이터 라이선스</strong> (오픈소스 라이선스와 다름)<br>
→ AI-BOM에 출처·라이선스 기록
</div>
</div>
</div>

---

<!-- 슬라이드 73: AI 프레임워크 라이선스 관리 -->

## AI 프레임워크 라이선스 관리

- **기존 프로세스 그대로 적용** — AI 개발에 사용하는 오픈소스 프레임워크는 일반 소프트웨어와 동일하게 ISO/IEC 5230 프로세스를 적용
- **기존 도구 활용** — FOSSology, FOSSLight 등 기존 스캔 도구로 AI 코드 저장소도 분석 가능
- **SBOM에 포함** — SBOM에 AI 프레임워크·라이브러리와 버전 정보를 반드시 포함

<div class="callout callout-blue">
AI 프레임워크는 <strong>기존 오픈소스 거버넌스를 확장하는 것</strong>으로 충분하다 — 새 체계 불필요
</div>

---

<!-- 슬라이드 74: AI 프레임워크 주요 라이선스 표 -->

## AI 프레임워크 주요 라이선스

<table>
<thead>
<tr><th>프레임워크</th><th>라이선스</th><th style="text-align:center;">상업적 사용</th><th>주요 의무</th></tr>
</thead>
<tbody>
<tr class="row-yes">
<td><strong>PyTorch</strong></td>
<td>BSD 3-Clause</td>
<td style="text-align:center;">✅</td>
<td>저작권 표시</td>
</tr>
<tr class="row-yes">
<td><strong>TensorFlow</strong></td>
<td>Apache 2.0</td>
<td style="text-align:center;">✅</td>
<td>저작권 표시, NOTICE 파일</td>
</tr>
<tr class="row-yes">
<td><strong>LangChain</strong></td>
<td>MIT</td>
<td style="text-align:center;">✅</td>
<td>저작권 표시</td>
</tr>
<tr class="row-yes">
<td><strong>Hugging Face Transformers</strong></td>
<td>Apache 2.0</td>
<td style="text-align:center;">✅</td>
<td>저작권 표시, NOTICE 파일</td>
</tr>
</tbody>
</table>

<div class="callout callout-blue" style="font-size:19px; margin-top:14px;">
AI 프레임워크는 대부분 허용적 라이선스 — <strong>기존 프로세스로 관리 가능</strong>
</div>

---

<!-- 슬라이드 75: 오픈소스 AI 모델 라이선스 관리 -->

## 오픈소스 AI 모델 라이선스 관리

- **커스텀 라이선스 주의** — 사전 훈련 모델은 일반 오픈소스와 달리 모델별 커스텀 라이선스를 사용하는 경우가 많음
- **다양한 제한 조건** — 상업적 사용 제한, 사용자 수(MAU) 기반 제한, 파생 모델 공개 의무 등 조건이 모델마다 다름
- **개별 직접 확인 필수** — Hugging Face 모델 허브에서 모델 카드(Model Card)와 라이선스를 반드시 직접 확인

<div class="callout callout-orange">
⚠️ <strong>AI 모델 라이선스는 표준화되지 않았습니다</strong><br>
기존 라이선스 가이드로 자동 판단하지 말고, 모델별로 법무팀과 개별 확인이 필요합니다
</div>

---

<!-- 슬라이드 76: AI 모델 라이선스 유형 비교 -->

## AI 모델 라이선스 유형 비교

<table>
<thead>
<tr><th>라이선스 유형</th><th>대표 모델</th><th style="text-align:center;">상업적 사용</th><th>파생 모델</th></tr>
</thead>
<tbody>
<tr class="row-yes">
<td><strong>Apache 2.0</strong></td>
<td>Falcon, Mistral 7B</td>
<td style="text-align:center;">✅ 가능</td>
<td>공개 불필요</td>
</tr>
<tr class="row-yes">
<td><strong>MIT</strong></td>
<td>GPT-2, GPT-J</td>
<td style="text-align:center;">✅ 가능</td>
<td>공개 불필요</td>
</tr>
<tr>
<td><strong>Llama Community License</strong></td>
<td>Llama 3</td>
<td style="text-align:center;">⚠️ 조건부<br><small>(MAU 7억 이하 무료)</small></td>
<td>공개 불필요</td>
</tr>
<tr>
<td><strong>CC-BY-NC</strong></td>
<td>일부 연구 모델</td>
<td style="text-align:center;">❌ 비상업적</td>
<td>저작자 표시</td>
</tr>
</tbody>
</table>

<div class="callout callout-green" style="font-size:19px; margin-top:12px;">
Apache 2.0 · MIT 모델을 우선 선택하면 <strong>컴플라이언스 부담이 낮습니다</strong>
</div>

---

<!-- 슬라이드 77: 학습 데이터셋 관리 -->

## 학습 데이터셋 라이선스 관리

<table>
<thead>
<tr><th>라이선스</th><th style="text-align:center;">저작자 표시</th><th style="text-align:center;">상업적 사용</th><th style="text-align:center;">동일조건변경허락</th></tr>
</thead>
<tbody>
<tr class="row-yes">
<td><strong>CC0 (퍼블릭 도메인)</strong></td>
<td style="text-align:center;">❌ 불필요</td>
<td style="text-align:center;">✅ 가능</td>
<td style="text-align:center;">❌ 불필요</td>
</tr>
<tr class="row-yes">
<td><strong>CC-BY 4.0</strong></td>
<td style="text-align:center;">✅ 필요</td>
<td style="text-align:center;">✅ 가능</td>
<td style="text-align:center;">❌ 불필요</td>
</tr>
<tr>
<td><strong>CC-BY-SA 4.0</strong></td>
<td style="text-align:center;">✅ 필요</td>
<td style="text-align:center;">✅ 가능</td>
<td style="text-align:center;">✅ 필요</td>
</tr>
<tr class="row-no">
<td><strong>CC-BY-NC 4.0</strong></td>
<td style="text-align:center;">✅ 필요</td>
<td style="text-align:center;">❌ 비상업적</td>
<td style="text-align:center;">❌ 불필요</td>
</tr>
</tbody>
</table>

<div class="callout callout-orange" style="font-size:19px; margin-top:12px;">
AI-BOM에 학습 데이터셋과 라이선스 기록 · CC-BY-SA 사용 시 파생 모델 라이선스 법무 협의 필수
</div>

---

<!-- 슬라이드 78: AI-BOM이란? -->

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

---

<!-- 슬라이드 79: AI-BOM 실제 예시 -->

## AI-BOM 실제 예시 (SPDX 3.0 AI Profile)

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

<div style="font-size:18px; margin-top:10px; color:#555;">상세 가이드 → <span class="blue">openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/</span></div>

---

<!-- 슬라이드 80: OpenChain AI-BOM 가이드 소개 -->

## OpenChain KWG AI Work Group 산출물

<div class="img-placeholder" style="min-height:160px;">
📄 OpenChain KWG AI-BOM 가이드 미리보기
<div class="url">openchain-project.github.io/OpenChain-KWG/resource/AI_work_group/</div>
</div>

- **SPDX 3.0 AI Profile 기반** — AI 시스템 구성 요소를 표준 형식으로 문서화하는 방법 안내
- **즉시 적용 가능한 템플릿** — 실제 기업 환경에 바로 사용할 수 있는 AI-BOM 샘플 제공
- CC BY 4.0 — 무료로 활용·수정 가능

---

<!-- 슬라이드 81: ISO 42001 오픈소스 교차 조항 -->

## ISO/IEC 42001 — 오픈소스 담당자 교차 조항

<table>
<thead>
<tr><th>ISO 42001 조항</th><th>오픈소스 담당자 역할</th></tr>
</thead>
<tbody>
<tr>
<td><strong>§5.2 AI 정책</strong></td>
<td>AI 정책에 오픈소스 AI 모델 사용 원칙 포함</td>
</tr>
<tr>
<td><strong>§6.1.2 AI 리스크 평가</strong></td>
<td>오픈소스 라이선스·취약점 리스크를 AI 리스크 평가에 포함</td>
</tr>
<tr>
<td><strong>§7.5 문서화</strong></td>
<td>AI-BOM(AI SBOM) 수립 및 최신 상태 유지</td>
</tr>
<tr>
<td><strong>§8.5 AI 생애주기</strong></td>
<td>개발 단계별 오픈소스 컴플라이언스 검토 단계 포함</td>
</tr>
<tr>
<td><strong>§8.6 AI 데이터</strong></td>
<td>학습 데이터셋 라이선스 관리 절차 수립</td>
</tr>
<tr>
<td><strong>§8.8 외부 AI 조달</strong></td>
<td>외부 오픈소스 AI 모델 공급망 검증 절차</td>
</tr>
</tbody>
</table>

<div style="font-size:18px; margin-top:10px; color:#555;">상세 가이드 → <span class="blue">openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/</span></div>

---

<!-- 슬라이드 82: ISO 42001 체크포인트 실무 예시 -->

## ISO 42001 체크포인트 — 오픈소스 담당자 실무

<table>
<thead>
<tr><th>조항</th><th>체크 항목</th><th>확인 방법</th></tr>
</thead>
<tbody>
<tr>
<td><strong>§5.2</strong></td>
<td>AI 정책에 "오픈소스 AI 모델 사용 원칙" 항목이 있는가?</td>
<td>정책 문서 검토</td>
</tr>
<tr>
<td><strong>§6.1.2</strong></td>
<td>AI 프로젝트 리스크 평가 시 OSS 라이선스 리스크를 포함하는가?</td>
<td>리스크 평가 양식 확인</td>
</tr>
<tr>
<td><strong>§7.5</strong></td>
<td>AI-BOM을 작성하고 최신 상태로 유지하는가?</td>
<td>AI-BOM 문서 확인</td>
</tr>
<tr>
<td><strong>§8.5</strong></td>
<td>개발 단계별 OSS 컴플라이언스 검토 단계가 프로세스에 있는가?</td>
<td>프로세스 문서 확인</td>
</tr>
<tr>
<td><strong>§8.8</strong></td>
<td>외부에서 조달한 오픈소스 AI 모델의 라이선스를 검증하는 절차가 있는가?</td>
<td>조달 절차 문서 확인</td>
</tr>
</tbody>
</table>

---

<!-- 슬라이드 83: AI 컴플라이언스 로드맵 -->

## AI 컴플라이언스 도입 로드맵

<div class="timeline-5">
<div class="tl-box tl-active">
<strong>1단계</strong>
<span class="tl-time">즉시 시작</span>
<span class="tl-tag">기존 거버넌스 확장</span>
</div>
<div class="tl-box" style="font-size:15px; padding:10px 4px; flex:0.3; background:#E3F2FD; border:1px solid #90CAF9;">→</div>
<div class="tl-box tl-active">
<strong>2단계</strong>
<span class="tl-time">1–3개월</span>
<span class="tl-tag">AI 모델 검토 절차</span>
</div>
<div class="tl-box" style="font-size:15px; padding:10px 4px; flex:0.3; background:#E3F2FD; border:1px solid #90CAF9;">→</div>
<div class="tl-box tl-purple">
<strong>3단계</strong>
<span class="tl-time">3–6개월</span>
<span class="tl-tag">AI-BOM + 데이터셋 관리</span>
</div>
</div>

<div class="benefit-row" style="margin-top:20px;">
<div class="benefit-card" style="font-size:18px;">
<div class="b-title">1단계: 기존 확장</div>
<div class="b-body">SBOM에 AI 의존성 포함, AI 프레임워크 스캔 도구 적용</div>
</div>
<div class="benefit-card" style="font-size:18px; border-top-color:#F4A020;">
<div class="b-title">2단계: 모델 검토</div>
<div class="b-body">AI 모델 라이선스 검토 절차 신설, 법무팀과 검토 기준 수립</div>
</div>
<div class="benefit-card" style="font-size:18px; border-top-color:#6C3FC5;">
<div class="b-title">3단계: AI-BOM</div>
<div class="b-body">AI-BOM 생성 체계 구축, 데이터셋 라이선스 관리, ISO 42001 교차 조항 점검</div>
</div>
</div>

---

<!-- 슬라이드 84: 파트 3 요약 -->

## 파트 3 요약

<div class="summary-row">
<div class="summary-card summary-card-blue">
<span class="sc-icon">🔧</span>
<div class="sc-title">AI 프레임워크</div>
<div class="sc-body">Apache 2.0·MIT 위주<br>기존 ISO 5230 거버넌스 그대로 적용</div>
</div>
<div class="summary-card" style="background:#FFF3E0; border-left:5px solid #F4A020;">
<span class="sc-icon">🤖</span>
<div class="sc-title">AI 모델</div>
<div class="sc-body">커스텀 라이선스 다수<br>모델별 개별 확인 + 법무 검토 절차 추가</div>
</div>
<div class="summary-card summary-card-green">
<span class="sc-icon">🗃️</span>
<div class="sc-title">데이터셋 + AI-BOM</div>
<div class="sc-body">CC 라이선스 관리<br>AI-BOM 생성으로 ISO 42001 §7.5 충족</div>
</div>
</div>

<div class="next-arrow">
다음: KWG 가이드 데모 + 나만의 체계 구축 로드맵 →
</div>

---

<!-- 슬라이드 85: KWG 가이드 소개 -->

## OpenChain KWG 무료 가이드 전체 소개

<div class="img-placeholder" style="min-height:180px;">
🌐 OpenChain KWG 가이드 사이트 미리보기
<div class="url">openchain-project.github.io/OpenChain-KWG/guide/</div>
</div>

- **iso5230_guide** — ISO/IEC 5230 조항별 준수 가이드 + 입증자료 샘플
- **iso18974_guide** — ISO/IEC 18974 조항별 준수 가이드
- **opensource_for_enterprise** — 6대 요소 통합 가이드 (정책·프로세스 템플릿 포함)
- **tools** — FOSSology·SW360·cdxgen·Dependency-Track 도입 가이드

---

<!-- 슬라이드 86: 데모 시나리오 -->

## 라이브 데모 시나리오

<div class="flow-row">
<div class="flow-step flow-step-ok">
<span class="flow-num">①</span>
<span class="flow-name">enterprise 가이드</span>
<span class="flow-desc">입증자료 커버리지 표 → 현재 준비 상태 자체 점검</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step">
<span class="flow-num">②</span>
<span class="flow-name">iso5230_guide</span>
<span class="flow-desc">특정 조항(예: §3.3.1.1) 상세 가이드 + 샘플 문서 확인</span>
</div>
<div class="flow-arr">→</div>
<div class="flow-step flow-step-ok">
<span class="flow-num">③</span>
<span class="flow-name">자가 인증 플랫폼</span>
<span class="flow-desc">certification.openchainproject.org 체크리스트 제출 화면</span>
</div>
</div>

<div class="callout callout-green" style="margin-top:20px; font-size:20px;">
가이드 사이트 → 해당 조항 → 샘플 문서 다운로드 → 자가 인증 신청까지 <strong>모두 무료</strong>
</div>

---

<!-- 슬라이드 87: 라이브 데모 -->

<div class="img-placeholder" style="min-height:450px; font-size:28px;">
🖥️ 라이브 데모 진행 중
<div style="font-size:20px; margin-top:16px; color:#888;">
openchain-project.github.io/OpenChain-KWG
</div>
</div>

---

<!-- 슬라이드 88: 혼자서 따라가는 방법 -->

## 혼자서 따라가는 방법

- **Step 1** — KWG 가이드 사이트 접속 → `기업 오픈소스 관리 가이드` 진입
- **Step 2** — 상단 입증자료 커버리지 표로 현재 준비 상태 항목별 점검 (25+9개 체크리스트)
- **Step 3** — 부족한 항목 → 해당 조항 가이드 → 샘플 문서 참고하여 자체 문서 작성

<div class="callout callout-green">
세 단계만 따라가면 <strong>ISO 5230 + 18974 자가 인증에 필요한 모든 입증자료를 준비</strong>할 수 있다
</div>

---

<!-- 슬라이드 89: 오늘 배운 핵심 3가지 -->

## 오늘 배운 핵심 3가지

<div class="summary-row">
<div class="summary-card summary-card-blue">
<span class="sc-icon">📘</span>
<div class="sc-title">두 표준이 함께 완성</div>
<div class="sc-body">ISO 5230(라이선스) + ISO 18974(보안) = 오픈소스 거버넌스의 두 축<br>5230 인증 후 9개 추가로 18974 취득 가능</div>
</div>
<div class="summary-card summary-card-green">
<span class="sc-icon">🏗️</span>
<div class="sc-title">6대 요소 = 설계도</div>
<div class="sc-body">조직·정책·프로세스·도구·교육·준수<br>이 순서대로 구축하면 50개 입증자료가 갖춰진다</div>
</div>
<div class="summary-card summary-card-purple">
<span class="sc-icon">🤖</span>
<div class="sc-title">AI = 기존 체계 확장</div>
<div class="sc-body">AI 시스템 3개 레이어(프레임워크·모델·데이터셋)<br>기존 거버넌스를 확장하면 ISO 42001 교차 요건 충족</div>
</div>
</div>

---

<!-- 슬라이드 90: 단계별 시작 로드맵 -->

## 오늘부터 시작하는 로드맵

<div class="timeline-5">
<div class="tl-box tl-active">
<strong>이번 주</strong>
<span class="tl-time">지금 바로</span>
<span class="tl-tag">역할 지정 + 체크리스트 확인</span>
</div>
<div class="tl-box" style="font-size:15px; padding:10px 4px; flex:0.3; background:#E3F2FD; border:1px solid #90CAF9;">→</div>
<div class="tl-box">
<strong>1개월</strong>
<span class="tl-time">단기 목표</span>
<span class="tl-tag">정책 초안 + 현황 파악</span>
</div>
<div class="tl-box" style="font-size:15px; padding:10px 4px; flex:0.3; background:#E3F2FD; border:1px solid #90CAF9;">→</div>
<div class="tl-box tl-green">
<strong>3개월</strong>
<span class="tl-time">중기 목표</span>
<span class="tl-tag">프로세스 + 도구 + 자가 인증</span>
</div>
</div>

<div class="benefit-row" style="margin-top:20px;">
<div class="benefit-card" style="font-size:17px;">
<div class="b-title">이번 주 액션</div>
<div class="b-body">담당자 지정 · KWG 가이드 북마크 · 자가 인증 체크리스트 25개 점검</div>
</div>
<div class="benefit-card" style="font-size:17px;">
<div class="b-title">1개월 액션</div>
<div class="b-body">정책 문서 초안 작성 · 부족 입증자료 목록 확보 · FOSSLight 설치 테스트</div>
</div>
<div class="benefit-card" style="font-size:17px; border-top-color:#1E8E5A;">
<div class="b-title">3개월 액션</div>
<div class="b-body">프로세스 문서 완성 · 도구 CI/CD 연동 · certification.openchainproject.org 제출</div>
</div>
</div>

---

<!-- 슬라이드 91: 기업 규모별 우선순위 -->

## 기업 규모별 우선순위

<table>
<thead>
<tr>
<th class="th-label">단계</th>
<th class="th-5230">소규모 (50인 이하)</th>
<th class="th-18974">중규모 (50–500인)</th>
<th class="th-42001">대규모 (500인+)</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>1순위</strong></td>
<td>정책 문서 + 자가 인증 신청</td>
<td>프로세스 문서화 + 도구 도입</td>
<td>전체 통합 + ISO 18974 취득</td>
</tr>
<tr>
<td><strong>2순위</strong></td>
<td>FOSSLight로 오픈소스 스캔 시작</td>
<td>교육 프로그램 + SBOM 자동화</td>
<td>공급망 인증 요구 + AI 컴플라이언스</td>
</tr>
<tr>
<td><strong>핵심 도구</strong></td>
<td>FOSSLight + cdxgen</td>
<td>SW360 + Dependency-Track</td>
<td>상용 SCA + 커스텀 통합</td>
</tr>
<tr>
<td><strong>목표 기간</strong></td>
<td>3개월 이내 자가 인증</td>
<td>6개월 이내 인증</td>
<td>1년 이내 5230 + 18974</td>
</tr>
</tbody>
</table>

---

<!-- 슬라이드 92: 참고 가이드 링크 모음 -->

## 참고 가이드 및 리소스

<div class="bottom-bar" style="flex-wrap:wrap; gap:12px;">
<div class="item"><span class="num">①</span> <strong>기업 오픈소스 관리 가이드</strong><br><small style="font-size:13px;color:#666;">6대 요소 통합 + 체크리스트</small></div>
<div class="item"><span class="num">②</span> <strong>ISO 5230 준수 가이드</strong><br><small style="font-size:13px;color:#666;">조항별 상세 + 샘플 문서</small></div>
<div class="item"><span class="num">③</span> <strong>ISO 18974 준수 가이드</strong><br><small style="font-size:13px;color:#666;">보안 보증 조항별 상세</small></div>
<div class="item"><span class="num">④</span> <strong>정책 템플릿</strong><br><small style="font-size:13px;color:#666;">CC BY 4.0 무료 사용</small></div>
<div class="item"><span class="num">⑤</span> <strong>프로세스 템플릿</strong><br><small style="font-size:13px;color:#666;">CC BY 4.0 무료 사용</small></div>
</div>

<div style="text-align:center; margin-top:20px; font-size:20px; color:#1A73E8; font-weight:700;">
openchain-project.github.io/OpenChain-KWG
</div>

---

<!-- 슬라이드 93: Q&A -->

# Q & A

<div style="font-size:26px; color:#444; margin-top:20px; margin-bottom:40px;">
감사합니다. 질문을 받겠습니다.
</div>

<div style="font-size:20px; color:#666; border-top:1px solid #E0E0E0; padding-top:24px;">

**강사 연락처**: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

**OpenChain Korea Work Group**
커뮤니티 참여 환영합니다 →
openchain-project.github.io/OpenChain-KWG

</div>
