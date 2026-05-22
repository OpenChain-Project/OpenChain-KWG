---
theme: default
title: 기업 오픈소스 거버넌스 구축 실무
info: |
  ISO 표준부터 AI 컴플라이언스까지

  © 2026 OpenChain Korea Work Group · CC-BY-4.0
author: OpenChain Korea Work Group
keywords: OpenChain, ISO/IEC 5230, ISO/IEC 18974, ISO/IEC 42001, SBOM, AI Compliance
class: text-center
highlighter: shiki
drawings:
  persist: false
transition: slide-left
mdc: true
---

# 기업 오픈소스 거버넌스 구축 실무

ISO 표준부터 AI 컴플라이언스까지

<div class="pt-12">
  <span class="text-sm opacity-75">OpenChain Korea Work Group · 4시간 교육</span>
</div>

<!--
강사 노트: 표지 슬라이드 — 강의 시작 시 청중과 인사하며 본 교육의 목적과 4시간 구성을 짧게 안내한다.
-->

---

# Phase 0 — 빌드 확인용 스켈레톤

이 슬라이드는 Slidev 빌드 인프라가 동작하는지 확인하기 위한 임시 슬라이드입니다.

- Phase 1: 디자인 토큰 + 컴포넌트 라이브러리
- Phase 2: 콘텐츠 기획 (격차 분석·비판·매핑·재구성안)
- Phase 3: 슬라이드 본문 재작성 (파트별)
- Phase 4: 페이싱·다이어그램·강사 노트
- Phase 5: 빌드·시각 검증
- Phase 6: 배포 전환

상세는 `SLIDES-WORK/PHASE.md` 참조.

<!--
이 슬라이드는 Phase 1 시작 시 Hello World 역할이 끝나면 제거된다.
-->

---

# 컴포넌트 데모 — Callout

<Callout variant="success" title="권장 · ISO/IEC 5230 인용">ISO/IEC 5230 인용·권장 박스는 success.</Callout>

<Callout variant="warn" title="ISO/IEC 18974 §4.3.2.1">보안 취약점 대응 기록은 최종 배포일로부터 3년 이상 보관한다.</Callout>

<Callout variant="critical" title="법규 시한">EU CRA — 인지 후 24시간 내 조기 경보.</Callout>

<Callout variant="info">구축 단계·참고 안내는 info.</Callout>

<!-- demo: Phase 3 진입 시 제거 -->

---

# 컴포넌트 데모 — EvidenceCard

<EvidenceCard number="3.1.1.1" title="오픈소스 정책 수립" standard="5230" clause="§3.1.1" status="full" />

<!-- demo: Phase 3 진입 시 제거 -->

---

# 컴포넌트 데모 — VexStatus

<VexStatus legend />

<VexStatus status="not_affected" justification="vulnerable_code_not_in_execute_path" />

<!-- demo: Phase 3 진입 시 제거 -->

---

# 컴포넌트 데모 — CvssScoring

<CvssScoring :cvss="9.8" version="4.0" :epss="0.74" kev vector="CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N" />

<!-- demo: Phase 3 진입 시 제거 -->

---

# 컴포넌트 데모 — StandardCompare

<StandardCompare highlight="18974" :rows="[
  { aspect: '대상', v5230: '라이선스 컴플라이언스', v18974: '보안 취약점 관리', v42001: 'AI 관리 시스템' },
  { aspect: '입증자료', v5230: '25개', v18974: '25개', v42001: '체크포인트' },
  { aspect: '발행', v5230: '2020', v18974: '2023', v42001: '2023' },
]" />

<!-- demo: Phase 3 진입 시 제거 -->
