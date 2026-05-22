<!--
  Part 0 도입 + Part 1 ISO 표준 이해 (슬라이드 1~19)
  근거: opensource_for_enterprise/0-openchain·_index, iso5230_guide·iso18974_guide·iso42001_guide _index, iso42001_guide/compare
  컴포넌트: Callout · EvidenceCard · StandardCompare · HexCoreElements
-->

# 기업 오픈소스 거버넌스 구축 실무

<div class="text-2xl opacity-80 mt-2">ISO 표준부터 AI 컴플라이언스까지</div>

<div class="mt-12 opacity-70 text-sm">
  ISO/IEC 5230 · 18974 · 42001 · AI 컴플라이언스 — 4시간 실무 교육
</div>

<div class="mt-8 text-sm opacity-60">
  OpenChain Korea Work Group · CC BY 4.0
</div>

<!--
환영 인사와 함께 오늘 4시간 동안 다룰 큰 그림을 한 문장으로 던지고 시작합니다. "오픈소스를 잘 쓰는 법이 아니라, 잘 쓰는 것을 조직 차원에서 지키는 체계를 만드는 시간"이라고 말해 주세요. 표준 이름(5230·18974·42001)은 지금 다 외울 필요 없고 차차 풀어드린다고 안심시키면 좋습니다. 자료는 CC BY 4.0이라 자유롭게 가져다 쓰셔도 된다는 점도 한 번 짚어 주세요.
-->

---

# '아는 것'에서 '지키는 체계'로

<div class="grid grid-cols-2 gap-8 mt-8">

<div>

### 우리가 이미 아는 것

- 오픈소스를 쓰면 라이선스 의무가 따른다
- 취약점은 패치해야 한다
- SBOM이라는 게 있다더라

</div>

<div>

### 이 강의가 더하는 것

- 그 활동을 **반복 가능한 체계**로 만든다
- 활동을 **입증자료**로 남겨 인증으로 연결한다
- 공급망·AI까지 **거버넌스로 확장**한다

</div>

</div>

<Callout variant="info" title="이 강의의 기준">
오픈소스 관리는 개인 역량이 아니라 <strong>조직의 관리 체계</strong>다. 적은 리소스로 적정 수준의 리스크를 관리하는 것이 목표다.
</Callout>

<!--
청중 대부분이 왼쪽 세 가지는 이미 알고 계실 겁니다. "여기까지는 다들 아시죠?"라고 가볍게 확인하고, 오른쪽으로 시선을 옮기면서 "오늘의 핵심은 이 아는 것을 누가 와도 굴러가는 반복 가능한 체계로 바꾸고, 그 결과를 입증자료로 남기는 것"이라고 전환해 주세요. 아래 Callout의 "개인 역량이 아니라 조직의 체계"라는 문장이 이 강의 전체를 관통하는 기준선이니 또박또박 강조하면 좋습니다.
-->

---

# 왜 거버넌스 체계가 필요한가

<div class="grid grid-cols-2 gap-8 mt-6">

<div>

### 소송·공급망 리스크는 실재한다

<v-click>

- **2009 BusyBox(GPL-2.0) 소송** — 국내 2곳 포함 14개 사가 대상. 제품을 직접 개발하지 않고 **배포만 한 회사도 피소**

</v-click>

<v-click>

- 복잡한 공급망에서는 한 기업이 아무리 완벽해도 단독으로 컴플라이언스를 달성하기 어렵다

</v-click>

<v-click>

- 결국 **공급망 전체의 신뢰**가 필요하다 — OpenChain이 출발한 지점

</v-click>

</div>

<div>

<Callout variant="critical" title="핵심 메시지">
오픈소스 컴플라이언스는 기업 이익을 차별화하는 분야가 아니다.<br>모두가 자산을 공유할수록, 적은 리소스로 함께 달성한다.
</Callout>

<div class="oc-caption mt-4">
출처: OpenChain Open Source Software License Compliance General Public Guide
</div>

</div>

</div>

<!--
이 슬라이드는 v-click으로 한 줄씩 열립니다. 첫 클릭의 BusyBox 소송이 핵심인데, 제품을 직접 개발하지 않고 배포만 한 회사도 피소됐다는 점을 강조하세요 — "우리는 가져다 쓰기만 했는데?"라는 안일함을 깨는 사례입니다. 두 번째·세 번째 클릭으로 자연스럽게 "그래서 한 기업의 노력만으로는 안 되고 공급망 전체의 신뢰가 필요하다, 이게 OpenChain이 출발한 지점"으로 이어 주세요. 오른쪽 Callout의 "컴플라이언스는 차별화 분야가 아니다"는 메시지가 다음 슬라이드들의 공유 철학으로 연결됩니다. 예상 질문: "배포만 했는데 왜 책임지나요?" → GPL은 배포 시점에 소스 제공 의무가 발생하기 때문이라고 답하면 됩니다.
-->

---

# 오늘 얻어갈 것

<div class="grid grid-cols-3 gap-6 mt-10">

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 1. 표준 이해

ISO/IEC 5230 · 18974 · 42001 세 표준의 목적과 입증자료 셈법을 명확히 한다

</div>

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 2. 체계 구축

조직·정책·프로세스·도구·교육·준수 — **6대 핵심 요소**를 단계별로 세운다

</div>

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 3. 첫 액션

AI 컴플라이언스까지 확장하고, 라이브 데모로 **오늘 바로 시작**한다

</div>

</div>

<!--
오늘 강의가 끝났을 때 손에 쥐고 가실 세 가지를 약속하는 슬라이드입니다. 표준 이해 → 체계 구축 → 첫 액션, 이 흐름이 그대로 강의 순서라고 알려 주세요. 특히 가운데 "6대 핵심 요소"는 Part 2의 뼈대이고 오늘 가장 시간을 많이 쏟는 부분이니 미리 머릿속에 담아두시라고 예고하면 좋습니다. 세 번째 카드의 "오늘 바로 시작"은 라이브 데모로 실제 도구를 돌려본다는 약속이라고 살짝 기대를 걸어두세요.
-->

---

# 강의 구성 로드맵

<div class="text-sm opacity-70 mb-4">총 4시간(240분) · 6개 파트</div>

| 파트 | 주제 | 시간 | 핵심 |
|------|------|:----:|------|
| **Part 0** | 도입 | 10분 | 왜 거버넌스인가 |
| **Part 1** | ISO 표준 이해 | 30분 | 5230 · 18974 · 42001 |
| **Part 2** | 6대 핵심 요소 구축 | **90분** | 조직·정책·프로세스·도구·교육·준수 |
| **Part 3** | AI 컴플라이언스 | **75분** | 모델·데이터셋·AI SBOM·공급망 |
| **Part 4** | 라이브 데모 | 20분 | Trusted OSS 실연 |
| **Part 5** | 마무리 + Q&A | 15분 | 핵심 3가지·첫 액션 |

<Callout variant="info" title="시간 배분 의도">
2026년 들어 AI 영역이 가장 빠르게 변하므로 <strong>Part 3을 75분으로 확장</strong>했다. 변경이 적은 Part 1·2는 진행 속도로 압축한다.
</Callout>

<!--
전체 일정을 표로 한 번 훑어주는 슬라이드입니다. Part 2(90분)와 Part 3(75분)이 오늘의 중심이라는 점, 그리고 왜 AI 파트를 이렇게 키웠는지를 Callout으로 설명해 주세요 — "이 분야가 가장 빠르게 변하고 질문도 가장 많이 나오는 영역이라서"라고요. 표를 너무 오래 읽지 말고 손가락으로 짚으며 30초 안에 넘어가는 게 페이싱상 좋습니다. 중간 쉬는 시간이 있다면 어디서 끊을지(보통 Part 2 끝)도 여기서 한 번 안내해두면 청중이 안심합니다.
-->

---
layout: section
---

# Part 1 — ISO 표준 이해

<div class="text-xl opacity-70 mt-4">5230 · 18974 · 42001, 그리고 입증자료 셈법 — 30분</div>

<!--
여기서부터 본격적으로 세 ISO 표준을 다룹니다. 이 파트의 목표는 표준을 줄줄 외우는 게 아니라 "각 표준이 무엇을, 왜 요구하는지"와 "입증자료 셈법"을 잡는 것이라고 미리 프레임을 깔아 주세요. 30분 분량이니 표준별 세부 조항에 너무 깊이 들어가지 말고, 상세는 Part 2에서 하나씩 풀어드린다고 안내하면 페이싱이 안정적입니다.
-->

---

# OpenChain Project란?

<div class="grid grid-cols-2 gap-8 mt-6">

<div>

- **Linux Foundation**이 운영하는 프로젝트
- 2016년 시작 — 퀄컴·지멘스·윈드리버·ARM·어도비 등 글로벌 기업 참여
- 오픈소스 컴플라이언스의 **핵심 요구사항을 간결·일관되게** 정의

</div>

<div>

### 세 가지 제공물

1. **OpenChain 규격** (10페이지)
2. **적합성 인증** (자가 인증 무료)
3. **문서 자료** (정책·교육 템플릿, CC-0)

</div>

</div>

<Callout variant="success" title="공급망 철학">
한 기업의 컴플라이언스 수준을 높이려면 공급망 내 모든 구성원의 수준을 높여야 한다. 선진 기업이 자산을 공개해 누구나 참고하도록 한다.
</Callout>

<!--
ISO 표준을 말하기 전에 그 뿌리인 OpenChain Project를 먼저 소개합니다. Linux Foundation이 운영하고 글로벌 대기업이 참여한다는 점에서 신뢰의 무게를 실어 주세요. 핵심은 오른쪽 세 가지 제공물입니다 — 규격은 단 10페이지로 가볍고, 자가 인증은 무료이며, 정책·교육 템플릿까지 CC-0로 공개한다는 점이 "처음 시작하는 기업도 부담 없이 따라올 수 있다"는 메시지로 이어집니다. 아래 Callout의 공급망 철학은 앞서 BusyBox 슬라이드에서 깔아둔 "혼자서는 못 한다"와 한 줄로 연결됩니다.
-->

---

# ISO/IEC 5230 — 라이선스 컴플라이언스 국제표준

<div class="grid grid-cols-2 gap-8 mt-6">

<div>

- OpenChain 규격 **v2.1**이 2020년 12월 **ISO/IEC 5230:2020**으로 정식 등록
- **오픈소스 컴플라이언스를 정의한 최초의 국제 표준**
- 기업 규모·업종 무관하게 적용 가능
- 공급망에서 공급자에게 5230 준수를 요구하는 사례 증가 (Scania STD 4589, Bosch 등)

</div>

<div>

<Callout variant="success" title="ISO/IEC 5230:2020 (OpenChain Specification v2.1)">
오픈소스 컴플라이언스 달성을 위해 기업이 갖춰야 할 <strong>6대 핵심 요구사항</strong>과 이를 입증하는 <strong>입증자료 목록(25개)</strong>을 정의한다.
</Callout>

</div>

</div>

<!--
방금 본 OpenChain 규격 v2.1이 그대로 ISO/IEC 5230:2020으로 등록됐다는 흐름을 강조하세요 — 즉 OpenChain과 ISO 5230은 사실상 같은 내용입니다. "오픈소스 컴플라이언스를 정의한 최초의 국제 표준"이라는 점이 무게중심입니다. 마지막 불릿의 Scania·Bosch처럼 실제 구매 기업이 공급자에게 5230 준수를 요구하기 시작했다는 사례를 들면 "남의 일이 아니다"라는 절박함이 생깁니다. 오른쪽 Callout에서 6대 요구사항·입증자료 25개라는 두 숫자를 미리 심어두면 바로 다음 두 슬라이드가 매끄럽게 이어집니다.
-->

---

# ISO/IEC 5230 — 6대 핵심 요구사항

<HexCoreElements />

<div class="text-center mt-6 oc-caption">
①프로그램 기반(§3.1) · ②관련 업무(§3.2) · ③콘텐츠 검토·승인(§3.3) · ④컴플라이언스 산출물(§3.4) · ⑤커뮤니티 참여(§3.5) · ⑥규격 준수(§3.6)
</div>

<Callout variant="info" title="구축 전략">
처음 시작하는 기업은 이 6대 요구사항을 하나씩 충족해 가며 수준을 향상시키는 것이 효과적이다. Part 2에서 6대 요소를 단계별로 세운다.
</Callout>

<!--
HexCoreElements 컴포넌트로 6대 요구사항을 육각형으로 한눈에 보여주는 슬라이드입니다. 아래 캡션의 §3.1부터 §3.6까지 번호와 이름을 손가락으로 짚으며 한 바퀴 돌아주세요 — 프로그램 기반·관련 업무·콘텐츠 검토·산출물·커뮤니티·준수. 외우라는 게 아니라 "이 여섯 칸이 곧 Part 2의 6대 핵심 요소이고, 우리는 이걸 하나씩 채워나갈 것"이라는 지도를 그려주는 게 목적입니다. Callout처럼 처음부터 완벽을 노리지 말고 하나씩 충족해 수준을 올리는 게 현실적이라는 점을 안심시켜 주세요.
-->

---

# ISO/IEC 5230 입증자료 25개 — 한눈에

<div class="text-sm opacity-70 mb-3">13개 조항 / 25개 입증자료 항목 — EVIDENCE-CHECK 기준 전 항목 ✅ 충족</div>

<div class="grid grid-cols-3 gap-3">

<EvidenceCard number="3.1.1.1" title="문서화된 오픈소스 정책" standard="5230" clause="§3.1.1" status="full" />
<EvidenceCard number="3.1.4.1" title="프로그램 적용 범위 문서" standard="5230" clause="§3.1.4" status="full" />
<EvidenceCard number="3.2.2.1" title="역할 담당자 이름 문서" standard="5230" clause="§3.2.2" status="full" />
<EvidenceCard number="3.3.1.1" title="SBOM 관리 절차" standard="5230" clause="§3.3.1" status="full" />
<EvidenceCard number="3.3.2.1" title="라이선스 사용 사례 처리 절차" standard="5230" clause="§3.3.2" status="full" />
<EvidenceCard number="3.6.1.1" title="모든 요구사항 충족 확인 문서" standard="5230" clause="§3.6.1" status="full" />

</div>

<Callout variant="info" title="조항 분포">
§3.1 프로그램 기반(8) · §3.2 관련 업무(7) · §3.3 콘텐츠 검토(3) · §3.4 산출물(2) · §3.5 커뮤니티(3) · §3.6 준수(2) = <strong>25개</strong>. 항목별 상세는 Part 2에서 전개한다.
</Callout>

<!--
입증자료 25개를 카드로 보여주지만 25개를 다 읽지는 마세요 — 대표 6개만 짚고 "이런 식의 문서·절차를 증거로 남기는 것"이라는 감만 잡아주면 됩니다. 핵심 메시지는 두 가지입니다. 첫째, 이 강의 가이드 기준으로 EVIDENCE-CHECK 전 항목이 충족(✅) 가능하다는 점 — 즉 막연한 이상이 아니라 실제로 채울 수 있는 목록입니다. 둘째, 아래 Callout의 조항별 분포(8·7·3·2·3·2=25)는 어느 영역에 일이 몰려있는지 보여주는데, 프로그램 기반과 관련 업무에 절반 이상이 몰려 있다는 걸 짚으면 좋습니다. 상세는 Part 2에서 다룬다고 넘기세요.
-->

---

# ISO/IEC 18974 — 보안 보증(5230과 쌍)

<div class="grid grid-cols-2 gap-8 mt-6">

<div>

- 2023년 발표 — **OpenChain Security Assurance** 규격 기반
- 오픈소스의 **알려진 보안 취약점**을 관리하는 핵심 요구사항 정의
- 5230 위에 **취약점 탐지·평가·대응 보안 레이어**를 추가
- 정책·역량·SBOM 등 핵심 인프라를 5230과 **공유**

</div>

<div>

<Callout variant="warn" title="ISO/IEC 18974:2023 (OpenChain Security Assurance)">
보안 프로세스 핵심 영역 식별 · 역할과 책임 할당 · 프로세스의 지속 가능성 보장. 5230이 라이선스라면, 18974는 <strong>보안 취약점 관리</strong>에 초점을 맞춘 상호 보완 표준이다.
</Callout>

</div>

</div>

<!--
가장 자주 헷갈리는 지점을 정리하는 슬라이드입니다 — "5230과 18974는 별개가 아니라 짝(쌍)"이라고 못 박아 주세요. 한 문장으로 "5230은 라이선스, 18974는 보안 취약점"이라고 대비하면 청중이 바로 정리됩니다. 핵심은 18974가 5230을 처음부터 다시 쓰는 게 아니라, 정책·역량·SBOM 같은 인프라를 5230과 공유하면서 그 위에 탐지·평가·대응이라는 보안 레이어를 얹는 구조라는 점입니다. 이 "공유 + 레이어" 그림이 바로 다음 슬라이드의 셈법(공통 16 + 전용 9)으로 연결됩니다.
-->

---

# 18974 입증자료 셈법 — 공통 16 파생 · 전용 9 강화

<div class="grid grid-cols-2 gap-8 mt-4">

<div>

### 18974 = 25개 (5230과 동수)

- **16개**: 5230 대응 항목을 **기반으로 파생**<br><span class="oc-caption">단순 복사가 아니라 보안 관점의 추가 작성 필요</span>
- **9개(★)**: 18974 **전용 보안 특화** 항목

### ★ 전용 9개

<div class="text-sm">

4.1.2.3 · 4.1.2.5 · 4.1.2.6 · 4.1.4.2 · 4.1.4.3 · 4.1.5.1 · 4.2.2.3 · 4.3.2.1 · 4.3.2.2

</div>

</div>

<div>

<EvidenceCard number="4.1.5.1" title="8가지 취약점 처리 방법 문서화" standard="18974" clause="§4.1.5 ★" status="full" />

<div class="mt-3">
<EvidenceCard number="4.3.2.1" title="취약점 탐지 및 해결 절차" standard="18974" clause="§4.3.2 ★" status="full" />
</div>

<Callout variant="warn" title="강도 차이 주의">
★ 9개 전용 항목은 다른 항목보다 강한 <strong>Documented Evidence(문서화된 증거)</strong>를 요구한다 — 단순 <code>document</code>보다 한 단계 강한 증거 수준이다.
</Callout>

</div>

</div>

<!--
18974도 25개로 5230과 동수인데, 그 안을 들여다보면 16개는 5230 항목에서 파생, 9개(★)는 보안 전용이라는 셈법을 잡아주는 슬라이드입니다. 가장 흔한 오해를 먼저 깨주세요 — "파생 16개는 5230 문서 복사하면 끝"이 아니라 보안 관점으로 다시 써야 합니다(예: 정책에 취약점 대응 항목 추가). 오른쪽 Callout이 핵심인데, ★ 9개 전용 항목은 단순 'document'가 아니라 한 단계 강한 'Documented Evidence(문서화된 증거)'를 요구한다는 강도 차이를 또박또박 강조하세요. 전용 9개 번호는 외울 필요 없고 Part 2·3에서 다시 나온다고 안내하면 됩니다.
-->

---

# ISO/IEC 42001 — AI 관리 시스템

<div class="grid grid-cols-2 gap-8 mt-6">

<div>

- 2023년 발행 — AI를 책임감 있게 개발·운영하는 **AI 관리 시스템(AIMS)** 표준
- 제정: **ISO/IEC JTC 1/SC 42** (5230·18974와 달리 OpenChain과 무관)
- ISO 9001·27001과 **동일한 경영 시스템 구조** (PDCA)
- 입증자료 번호 체계 없음 — **shall 요구사항** 방식

</div>

<div>

<Callout variant="info" title="오픈소스 관점의 42001">
이 강의는 42001 전체가 아니라 <strong>오픈소스와 교차하는 6개 조항</strong>(§5.2·6.1.2·7.5·8.5·8.6·8.8)에 집중한다 — AI 프레임워크·모델·데이터셋·AI SBOM·공급망 검증.
</Callout>

</div>

</div>

<!--
세 번째 표준 42001은 앞의 둘과 결이 다르다는 점을 분명히 하세요 — OpenChain이 아니라 ISO JTC1/SC 42에서 만들었고, 입증자료 번호 체계 대신 ISO 9001·27001과 같은 'shall 요구사항'·PDCA 경영 시스템 방식입니다. 그래서 5230·18974를 아는 분도 42001은 "문법이 다르다"고 느낄 수 있다고 미리 일러두세요. 오른쪽 Callout이 중요한데, 우리는 42001 전체를 다루는 게 아니라 오픈소스와 교차하는 6개 조항에만 집중한다고 범위를 좁혀 주세요 — 그래야 청중이 압도되지 않습니다.
-->

---

# 세 표준 비교 — 한눈에

<StandardCompare highlight="42001" :rows="[
  { aspect: '대상', v5230: '라이선스 컴플라이언스', v18974: '보안 취약점 관리', v42001: 'AI 관리 시스템' },
  { aspect: '제정', v5230: 'OpenChain → ISO', v18974: 'OpenChain → ISO', v42001: 'ISO JTC1/SC 42' },
  { aspect: '발행', v5230: '2020', v18974: '2023', v42001: '2023' },
  { aspect: '요구 방식', v5230: '입증자료 번호', v18974: '입증자료 번호', v42001: 'shall 요구사항' },
  { aspect: '입증자료', v5230: '25개', v18974: '25개', v42001: '체크포인트(번호 없음)' },
  { aspect: '자가 인증', v5230: 'OpenChain 체크리스트(무료)', v18974: 'OpenChain 체크리스트(무료)', v42001: '없음 — 갭분석/인증기관' },
]" />

<Callout variant="info" title="교차점">
5230·18974는 <strong>오픈소스 자체</strong>를, 42001은 <strong>AI 시스템</strong>을 관리한다. AI 시스템이 오픈소스를 활용할 때 교차점이 발생한다.
</Callout>

<!--
StandardCompare 표로 세 표준을 한 화면에 비교하는 정리 슬라이드입니다. 42001 열이 하이라이트되어 있으니 "방금 본 차이를 표로 다시 확인하자"는 정도로 빠르게 가로줄을 짚어 주세요 — 특히 발행 연도, 요구 방식(번호 vs shall), 자가 인증 유무 세 줄이 핵심 대비점입니다. 마무리는 아래 Callout으로 — 5230·18974는 오픈소스 자체를, 42001은 AI 시스템을 관리하며, AI 시스템이 오픈소스를 쓸 때 교차점이 생긴다는 한 문장이 Part 3로 가는 다리입니다. 표 전체를 읽지 말고 1분 안에 넘기는 게 페이싱상 좋습니다.
-->

---

# ISO/IEC 42001 준수 확인 3종 + 동향

<div class="grid grid-cols-3 gap-6 mt-6">

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 1. 자체 갭 분석

내부적으로 각 shall 조항을 검토해 현재 수준 평가·개선 계획 수립.<br><span class="oc-caption">무료 · 이 가이드의 체크포인트 활용</span>

</div>

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 2. 제2자 심사

고객사·파트너사가 직접 AI 관리 시스템 평가.<br><span class="oc-caption">공급망 신뢰 구축 목적</span>

</div>

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 3. 제3자 인증

BSI·TÜV SÜD 등 ISO 인증기관이 공식 인증서 발급.<br><span class="oc-caption">ISO 27001과 동일 방식</span>

</div>

</div>

<Callout variant="info" title="ISO/IEC 42006 동향">
42001 <strong>인증기관 요건</strong>을 정의하는 ISO/IEC 42006이 개발 중이다. 제3자 인증 생태계가 정비되면 42001 인증의 일관성·신뢰도가 높아진다.
</Callout>

<!--
42001은 OpenChain식 무료 자가 인증 체크리스트가 없다는 점이 5230·18974와의 큰 차이입니다. 그래서 준수를 확인하는 길이 세 갈래로 나뉜다고 짚어 주세요 — 자체 갭 분석(무료), 고객·파트너의 제2자 심사, BSI·TÜV 같은 인증기관의 제3자 인증. 대부분의 기업은 1번 갭 분석부터 시작하면 되고, 이 강의의 체크포인트를 그 도구로 쓸 수 있다고 안내하세요. 아래 Callout의 ISO 42006은 "아직 정비 중인 영역이라 앞으로 더 단단해진다"는 동향 정보로, 깊이 들어가지 말고 한 줄로 언급만 하면 됩니다.
-->

---

# 자가 인증이란? — 3단계

<div class="text-sm opacity-70 mb-3">OpenChain 자가 인증(ISO/IEC 5230) — 가장 권장되고 비용이 없는 방법</div>

```mermaid
flowchart TD
    A([온라인 체크리스트 작성]) --> B[Yes/No 질문에 모두 Yes]
    B --> C[Conforming Submission 제출]
    C --> D{Linux Foundation Review<br/>영업일 5~10일}
    D --> E([Listing 등재 · ISO/IEC 5230 적합 선언])
```

<div class="text-center oc-caption mt-2">둥근 사각형 = 시작/종료 · 마름모 = 검토 분기 · 전 과정 보통 1~2주</div>

<Callout variant="success" title="권장 경로">
OpenChain 적합성을 선언한 대부분의 기업도 자가 인증을 채택했다. 자가 인증 과정에서 <strong>부족한 부분</strong>을 스스로 파악할 수 있다.
</Callout>

<!--
Mermaid 흐름도로 5230 자가 인증 3단계를 보여줍니다 — 온라인 체크리스트 작성 → 모든 질문 Yes → Conforming Submission 제출 → Linux Foundation 검토(영업일 5~10일) → Listing 등재. "보통 1~2주면 끝나고 비용이 들지 않는다"는 점을 강조해 진입 장벽이 낮다는 걸 부각하세요. 핵심은 마름모 분기 앞의 '모두 Yes' 조건입니다 — 하나라도 No면 제출이 안 됩니다(다음 슬라이드의 △·✗가 바로 이 문제). 아래 Callout처럼 자가 인증의 진짜 가치는 등재 자체보다 "우리 조직에서 뭐가 빠졌는지 스스로 발견하는 과정"이라는 점을 말해 주세요.
-->

---

# 자가 인증 결과 예시 — 3단 판정

<div class="text-sm opacity-70 mb-3">자가 점검 시 각 입증자료를 ✓ / △ / ✗ 로 판정한다</div>

| 입증자료 | 충족 상태 | 판정 | 보완 액션 |
|---------|----------|:----:|----------|
| 3.1.1.1 문서화된 오픈소스 정책 | 정책 문서 존재·승인 완료 | **✓ 충족** | — |
| 3.1.2.3 역량 평가 증거 | 역할 정의는 있으나 평가 기록 없음 | **△ 부분** | 역량 평가 기록부 작성 |
| 3.6.2.1 18개월 충족 확인 문서 | 회고형 확인 문서 미작성 | **✗ 누락** | 재확인 기록 절차 수립 |

<Callout variant="warn" title="심사 관점">
자가 인증 체크리스트는 모든 질문에 <strong>Yes</strong>일 때만 제출(Submission)할 수 있다. △·✗ 항목을 먼저 ✓로 끌어올려야 한다.
</Callout>

<!--
앞 슬라이드의 '모두 Yes' 조건이 실제로 어떻게 점검되는지 표로 보여주는 슬라이드입니다. ✓ / △ / ✗ 세 가지 판정을 예시로 들어 주세요 — 정책 문서가 승인까지 됐으면 충족(✓), 역할 정의는 있는데 역량 평가 기록이 없으면 부분(△), 회고형 확인 문서를 아예 안 만들었으면 누락(✗). 핵심은 아래 Callout입니다 — △·✗가 하나라도 있으면 제출 자체가 안 되니, 먼저 ✓로 끌어올리는 게 자가 인증 준비의 전부라고 정리하세요. 우리 가이드의 EVIDENCE-CHECK가 바로 이 판정 작업을 도와준다고 연결하면 좋습니다.
-->

---

# 인증 후 얻는 것

<div class="grid grid-cols-2 gap-6 mt-8">

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 공급망 신뢰

- Global Software Supply Chain에서 **5230 준수 기업**으로 인정
- 공급망 구매자(예: Scania STD 4589·Bosch)의 준수 요구에 대응
- OEM·규제 입찰에서 **차별화 요소**

</div>

<div class="p-5 rounded" style="background: var(--oc-surface); border: var(--oc-border)">

### 리스크 대응

- 라이선스 위반·소송 리스크 **체계적 관리**
- 18974 추가 시 **보안 취약점 대응** 보증
- 국내 사례: KT가 2024년 10월 **ISO/IEC 18974 인증** 획득

</div>

</div>

<Callout variant="info" title="단계적 확장">
자가 인증만으로도 많은 공급망 파트너의 요구 수준을 충족한다. 이후 <strong>독립 평가 → 제3자 인증</strong>으로 신뢰도를 높일 수 있다.
</Callout>

<!--
"그래서 인증받으면 뭐가 좋은데?"라는 현실적 질문에 답하는 슬라이드입니다. 왼쪽은 공급망 신뢰 — Scania·Bosch처럼 구매자가 요구할 때 바로 대응할 수 있고 입찰에서 차별화된다는 비즈니스 가치, 오른쪽은 리스크 대응 — 라이선스·소송 리스크를 체계적으로 관리하고 18974로 보안까지 보증한다는 점입니다. 국내 사례인 KT의 2024년 10월 ISO/IEC 18974 인증을 들면 "한국 기업도 이미 하고 있다"는 설득력이 생깁니다. 아래 Callout처럼 처음부터 제3자 인증을 노릴 필요 없이 무료 자가 인증만으로도 상당수 파트너 요구를 충족하고, 이후 단계적으로 신뢰도를 올리면 된다고 부담을 덜어 주세요.
-->

---

# 파트 1 요약

<div class="grid grid-cols-2 gap-8 mt-4">

<div>

### 세 표준

- **ISO/IEC 5230** — 라이선스 컴플라이언스 (2020)
- **ISO/IEC 18974** — 보안 보증 (2023)
- **ISO/IEC 42001** — AI 관리 시스템 (2023)

### 인증

- 5230·18974: OpenChain 자가 인증(무료) → 독립 평가 → 제3자 인증
- 42001: 자체 갭분석 / 제2자 / 제3자 (체크리스트 없음)

</div>

<div>

<Callout variant="success" title="입증자료 셈법 — 전 덱 통일">
5230 <strong>25개</strong> · 18974 <strong>25개</strong> = 합계 <strong>50개</strong>.<br>18974의 16개는 5230 항목에서 <strong>파생</strong>, 9개(★)는 보안 <strong>전용</strong>이다.<br>42001은 입증자료 번호 체계가 없어 이 셈법에 포함되지 않는다.
</Callout>

<div class="text-center mt-6">
<span class="oc-stat">50</span>
<div class="oc-caption">5230 25 + 18974 25 (공통 16 파생 · 전용 9)</div>
</div>

</div>

</div>

<!--
Part 1을 닫는 요약 슬라이드입니다. 세 표준의 한 줄 정의(5230 라이선스·18974 보안·42001 AI)와 인증 경로(자가→독립→제3자)를 빠르게 복기하세요. 가장 중요한 건 오른쪽의 '입증자료 셈법'으로, 이 강의 전체에서 일관되게 쓰는 숫자입니다 — 5230 25개 + 18974 25개 = 50개, 그중 18974의 16개는 파생·9개(★)는 전용, 42001은 번호 체계가 없어 이 셈법에서 빠진다는 세 가지를 또박또박 못 박아 주세요. 큰 숫자 '50'을 가리키며 "이 50개를 어떻게 채우는지가 바로 다음 Part 2"라고 자연스럽게 다음 파트로 넘기면 됩니다.
-->

