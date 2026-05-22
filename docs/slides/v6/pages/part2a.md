# 2-1 조직 — 역할·책임·역량 정의

<HexCoreElements :active="1" />

누가, 무엇에 책임을 지는가 — 체계의 출발점은 사람을 정하는 일이다.

---

# 오픈소스 관리 조직(OSPO)

<div class="grid grid-cols-2 gap-8">
<div>

**오픈소스 프로그램 오피스(OSPO)**
오픈소스 관리를 위한 전담 조직 — '오픈소스 사무국'이라고도 한다.

**오픈소스 프로그램 매니저(OSPM)**
- 회사 오픈소스 프로그램의 총괄 책임자
- 가능한 한 풀타임 보장 권장
- 오픈소스 생태계 이해 · 비즈니스 이해 · 전파 역량

</div>
<div>

**전담 vs 겸직**
- 반드시 풀타임일 필요는 없다
- OSRB(Open Source Review Board) 형태의 **가상 조직**으로도 운영 가능
- 법무·IT·보안·개발문화·사업부서가 협업

</div>
</div>

<Callout variant="info">
글로벌 ICT 기업의 OSPM 채용 공고: TODO Group job-descriptions에서 직무 정의를 참고할 수 있다.
</Callout>

---

# 규모별 조직 구성

<div class="grid grid-cols-3 gap-4">
<div>

**소규모**
OSPM 1인이 모든 역할 수행 가능 (필요 시 외부 자문 보완)

</div>
<div>

**중규모**
OSPM + IT 담당 + 법무 자문 계약

</div>
<div>

**대규모**
OSPM · 법무 · IT · 보안(PSIRT) · 개발문화 · 사업부서 챔피언 + 모범 사례 검증 담당

</div>
</div>

<v-click>

<Callout variant="warn" title="1인 다역 운영 시 인증 심사 주의 (권한 분리)">

1명이 여러 역할을 수행하는 것은 ISO 표준이 허용하지만, 심사관은 추가로 확인한다.

- **시간 배분**: 각 역할의 업무 시간 비율(주간)을 §3.2.2.2 인원 배치 입증자료에 명시
- **전문성 입증**: 역할별 역량(특히 §4.2.2.3 보안 취약점 해결 전문성) 동일 인물 보유 증명
- **권한 분리**: 의사결정·승인·집행 권한이 한 사람에게 집중되지 않도록 부분 위임(외부 OSRB 자문위원 등)

</Callout>

</v-click>

---

# 담당자 역할·책임 문서화

ISO 5230 §3.1.2.1 · ISO 18974 §4.1.2.1 — 참여자별 역할과 책임을 나열한 문서를 요구한다.

| 역할 | 핵심 책임 | ISO 매핑 |
|---|---|---|
| 오픈소스 프로그램 매니저 | 오픈소스 프로그램 총괄 | §3.1.2.1 · §4.1.2.1 |
| 법무 담당 | 라이선스·의무 해석, 법적 위험 자문 (외부 변호사 대체 가능) | §3.2.2.3 |
| IT 담당 | 분석 도구 운영·자동화, 전 배포 SW 분석 시스템 구축 | §3.1.2.1 |
| 보안 담당 (PSIRT) | 취약점 분석 + **해결 전문성**(CVE 분석·CVD 처리) | §4.2.2.3 |
| 개발 문화 담당 | 오픈소스 활용·커뮤니티 참여 문화 전파 | §3.1.3.1 |
| 사업 부서 (팀별 1인 챔피언) | 정책·프로세스 준수 | §3.2.2.1 |
| 내부 모범 사례 검증 담당 ★ | NIST SSDF·OWASP 등과 일치 정기 검증 | §4.1.2.6 |

---

# 역할별 역량 정의·평가

<div class="grid grid-cols-2 gap-8">
<div>

ISO 5230 §3.1.2.2 · ISO 18974 §4.1.2.2 — 각 역할에 필요한 **역량을 기술한 문서**를 요구한다.

역량 문서가 있어야:
- 담당자가 역할 수행 역량을 갖췄는지 평가하고
- 부족 시 교육을 제공할 수 있다.

**예: 보안 담당 필요 역량**
DevSecOps 이해 · 취약점 분석 도구 이해 · 보안 취약점 전문 지식 · 위험 평가 능력

</div>
<div>

<EvidenceCard number="3.1.2.2" title="역할별 필요 역량 문서" standard="5230" clause="§3.1.2" status="full" />

<EvidenceCard number="4.1.2.2" title="역할별 역량 문서 (보안 포함)" standard="18974" clause="§4.1.2" status="full" />

</div>
</div>

---

# 참여자 목록 문서화 (★ 18974)

<div class="grid grid-cols-2 gap-8">
<div>

§3.2.2.1 · §4.1.2.3 — 각 역할을 담당하는 **인원·그룹·직무의 이름**을 기재한 문서를 요구한다.

- 익명 표기(OOO) 대신 **가상 실명** 또는 **별도 부록 명단 + 직무명**
- 사업 부서는 **"전원" 표기 금지** → **팀별 1인 챔피언** 모델로 책임 소재 명확화
- 외부 계약 시 계약서 ID 병기

</div>
<div>

<EvidenceCard number="4.1.2.3" title="참여자 명단과 역할 ★" standard="18974" clause="§4.1.2" status="full" />

<v-click>

<Callout variant="warn" title="Documented Evidence 강도">
4.1.2.3은 18974 전용(★) 항목으로 단순 명단을 넘어 회의록·역할 지정 이력 등 <b>실제 수행 증거(증거 팩)</b>를 함께 요구한다. "전원" 표기는 §3.2.2.1 "이름" 요건 미충족.
</Callout>

</v-click>

</div>
</div>

---

# 2-2 정책 — 성문화된 판단 기준

<HexCoreElements :active="2" />

조직이 정해졌다면, 그 조직이 따를 **판단 기준**을 글로 남긴다.

---

# 정책 — 판단 기준의 통일

<div class="grid grid-cols-2 gap-8">
<div>

오픈소스 정책은 공급 소프트웨어 개발·서비스·배포에 관여하는 조직이 **올바르게 오픈소스를 활용하기 위한 원칙**이다.

- 문서화하고
- 조직 내 전파하고
- 정기적으로 검토·갱신한다.

</div>
<div>

ISO 5230 §3.1.1.1 — 문서화된 오픈소스 정책
ISO 18974 §4.1.1.1 — 문서화된 보안 보증 정책

<Callout variant="info">
정책은 문서화에 그치지 않고 실제 이행되어야 한다. 정기 검토·갱신과 참여자 교육이 함께 필요하다.
</Callout>

</div>
</div>

---

# 정책 핵심 항목

<div class="grid grid-cols-3 gap-4">

<EvidenceCard number="3.1.1.1" title="라이선스 컴플라이언스 원칙" standard="5230" clause="§3.1.1" status="full" />

<EvidenceCard number="4.1.1.1" title="보안 보증 원칙" standard="18974" clause="§4.1.1" status="full" />

<EvidenceCard number="3.5.1.1" title="오픈소스 기여 정책" standard="5230" clause="§3.5.1" status="full" />

</div>

<div class="mt-4">

오픈소스 정책이 포함해야 할 5대 원칙:

1. 라이선스 컴플라이언스 및 보안 취약점 리스크 최소화
2. 외부 오픈소스 프로젝트 **기여** 원칙
3. 자사 소프트웨어 **공개** 원칙
4. **SBOM**(Software Bill of Materials) 생성·관리 원칙
5. 알려진 취약점·새로 발견된 취약점 **대응** 원칙

</div>

---

# 라이선스 컴플라이언스 정책 상세

<div class="grid grid-cols-2 gap-8">
<div>

정책의 라이선스 컴플라이언스 절에는 다음을 명시한다:

- 오픈소스 식별 및 라이선스 의무 검토 (SCA 도구 활용)
- 라이선스를 고려한 아키텍처 설계
- 컴플라이언스 산출물 생성·관리
- **SBOM 생성·관리**
- 컴플라이언스 이슈 대응 절차

</div>
<div>

<Callout variant="success" title="SBOM 형식 현행화">

SBOM 표준 형식은 최신 버전으로 유지한다.

- **SPDX 2.3+** (ISO/IEC 5962)
- **CycloneDX 1.6+**
- NTIA 최소 요소(7요소) 충족
- 취약점 정보는 **VEX**와 cross-link

</Callout>

</div>
</div>

---

# 보안 보증 정책 — 취약점 우선순위 3축

<div class="grid grid-cols-2 gap-6">
<div>

정책은 CVSS 단일 점수가 아닌 **3축**으로 우선순위를 정한다.

- **CVSS** — 심각도 (v3.1 / v4.0 병기, 더 높은 점수 기준)
- **EPSS** — 향후 30일 내 익스플로잇 **확률**(FIRST.org)
- **CISA KEV** — **실제 악용 중**인 취약점 카탈로그 등재 여부

<Callout variant="success" title="조치 권고 일정 (예시)">
Critical 7일 이내 · High 30일 이내 · Medium 90일 이내 · Low 다음 릴리스
</Callout>

</div>
<div>

<CvssScoring :cvss="9.8" version="4.0" :epss="0.74" kev vector="CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N" />

<div class="mt-4 text-sm opacity-80">

KEV 등재 + 높은 EPSS → CVSS가 같아도 **즉시 조치** 대상. 단순 점수가 아닌 "실제 악용 가능성"을 반영한다.

</div>

</div>
</div>

---

# 취약점 통보 — VEX 4상태값

<div class="grid grid-cols-2 gap-8">
<div>

공급망 파트너·고객에게 영향 여부를 통보할 때는 **VEX**(Vulnerability Exploitability eXchange) 표준을 사용한다.

표준 형식:
- **CSAF 2.0** (OASIS)
- **CycloneDX VEX**

`not_affected`는 고객의 **불필요한 패치 작업을 차단**하는 핵심 신호 — justification 필수.

</div>
<div>

<VexStatus legend />

<div class="mt-4">

<VexStatus status="not_affected" justification="vulnerable_code_not_in_execute_path" />

</div>

<div class="mt-3 text-sm opacity-80">

| 상태값 | 의미 |
|---|---|
| `not_affected` | CVE 존재하나 사용 맥락상 영향 없음 |
| `affected` | 영향 있음 (조치 진행 중) |
| `fixed` | 패치 적용 완료 |
| `under_investigation` | 영향 조사 중 |

</div>

</div>
</div>

---

# 내부 책임 할당·미준수 시정 절차

§3.2.2.4 · §4.2.2.4 (책임 할당) · §3.2.2.5 (미준수 검토·시정) — 문서화된 절차를 요구한다.

| 단계 | 책임 할당 (§3.2.2.4) | 미준수 시정 (§3.2.2.5) |
|---|---|---|
| 1 | OSPM이 연간 책임 할당 회의 소집 | 미준수 사례 접수·확인 (OSPM) |
| 2 | 부서장과 협의해 활동별 책임자 선정 | 법무팀 협력 심각성 평가 |
| 3 | OSRB에 제출·최종 승인 | 필요 조치 결정·수행 |
| 4 | 결과 공식 문서화 (문서 관리 시스템 등록) | Jira 등 추적 시스템에 기록·보존 |
| 5 | 신규 책임자 교육·전사 인식 제고 | 정기 검토로 재발 방지 반영 |

---

# 적용 범위·예산·자문·외부 문의

<div class="grid grid-cols-2 gap-4">

<EvidenceCard number="3.1.4.1" title="프로그램 적용 범위·한계 진술" standard="5230" clause="§3.1.4" status="full">
배포 안 하는 조직은 범위 제외 가능 · 비즈니스 변화 시 갱신
</EvidenceCard>

<EvidenceCard number="3.2.2.2" title="인원 배치·예산 적정성" standard="5230" clause="§3.2.2" status="full">
교육·도구·외부 컨설팅 예산 항목 명시
</EvidenceCard>

<EvidenceCard number="3.2.2.3" title="법률 전문 자문 접근 방법" standard="5230" clause="§3.2.2" status="full">
사내 법무 우선, 첨예 시 외부 로펌 (OpenChain 파트너 법무법인)
</EvidenceCard>

<EvidenceCard number="3.2.1.1" title="외부 문의 공개 채널" standard="5230" clause="§3.2.1" status="full">
oss@ / security@ 분리 · security.txt (RFC 9116)
</EvidenceCard>

</div>

---

# 성과 메트릭·기여 정책 (★ 18974) + 정책 템플릿

<div class="grid grid-cols-2 gap-8">
<div>

ISO 18974 전용(★) 추가 요구:
- **§4.1.4.2** 프로그램이 달성할 **성과 메트릭 세트**
- **§4.1.4.3** 검토·갱신·감사로 **지속적 개선** 입증

기여 정책(§3.5.1.1)은 CLA 검토·저작권 표기·회사 이메일 사용 등을 다룬다.

</div>
<div>

<Callout variant="info" title="정책 템플릿 제공 (CC BY 4.0)">
OpenChain KWG는 ISO 5230·18974 요구사항을 충족하는 <b>오픈소스 정책 템플릿</b>을 제공한다. CC BY 4.0으로 자유롭게 활용·수정 가능하다.
</Callout>

</div>
</div>

---

# 2-3 프로세스 — 정책이 작동하는 절차

<HexCoreElements :active="3" />

정책은 선언, 프로세스는 실행 — 정책을 일상 업무에서 작동하게 만드는 절차다.

---

# 오픈소스 사용 흐름도

```mermaid
flowchart LR
  A([오픈소스 도입]) --> B[식별·검사]
  B --> C{이슈?}
  C -->|있음| D[문제 해결]
  D --> B
  C -->|없음| E[SBOM 확정·승인]
  E --> F[산출물 생성]
  F --> G([배포])
  G --> H[배포 후 모니터링]
  H -.신규 CVE.-> D
```

*둥근 사각형 = 시작/종료 · 마름모 = 분기 · 점선 = 출시 후 피드백 루프*

---

# 식별·검사·문제 해결

<div class="grid grid-cols-2 gap-8">
<div>

§3.3.2.1 (사용 사례 처리) · §3.1.5.1 (의무·제한·권리 검토) — 문서화된 절차를 요구한다.

**식별·검사 단계**
- 사용하려는 오픈소스의 라이선스·의무·알려진 취약점 검토·기록
- SCA 도구로 자동 탐지 + SBOM 생성
- 일반 사용 사례 6종(바이너리/소스 배포, 통합, 수정 포함, 호환성, 저작자 표시) 가이드화

**문제 해결**
- 이슈 오픈소스 삭제 / 다른 라이선스로 교체 / 패치 버전으로 교체

</div>
<div>

<Callout variant="info" title="소스 스니펫 매칭 — SCANOSS">
선언된 의존성뿐 아니라 <b>복사-붙여넣기된 코드 조각</b>까지 탐지하려면 SCANOSS 같은 스니펫 매칭 도구를 사용한다. → 도구 파트(2-4)에서 상세.
</Callout>

<EvidenceCard number="3.1.5.1" title="라이선스 의무·제한·권리 검토 절차" standard="5230" clause="§3.1.5" status="full" />

</div>
</div>

---

# SBOM 수명주기 — 살아있는 보안 자산

§3.3.1.1 · §4.3.1.1 — 모든 오픈소스를 **수명주기 동안 지속 기록**하는 절차를 요구한다.

```mermaid
flowchart TD
  A[검토 요청] --> B[리뷰: 라이선스·취약점·출처]
  B --> C[승인]
  C --> D[SBOM 확정·시스템 등록]
  D --> E[배포]
  E --> F[지속 기록·보관]
  F --> G[신규 CVE 발행 시 OSV.dev 자동 대조]
  G -->|영향 컴포넌트 발견| B
```

SBOM은 1회성 산출물이 아니라 신규 CVE와 상시 대조되는 **살아있는 자산**이다. (SPDX 2.3+ / CycloneDX 1.6+)

---

# 컴플라이언스 산출물 준비·배포

§3.4.1.1 — 산출물을 준비해 공급 소프트웨어와 함께 제공하는 절차를 요구한다.

<div class="grid grid-cols-2 gap-8">
<div>

**두 가지 핵심 산출물**
- **오픈소스 고지문**: 라이선스 전문 + 저작권 정보
- **공개할 소스 코드 패키지**: GPL/LGPL 등 의무 이행

소스 코드 동봉이 곤란하면 **서면 청약(Written Offer)** — 최소 3년 제공 약속으로 대체. (산출물 3년 이상 보관)

</div>
<div>

<Callout variant="info" title="화면 없는 제품의 고지 전달">

화면 UI가 없는 제품은 고지문을 어떻게 전달할지 명시한다.

- **임베디드**: 동봉 문서 · 펌웨어 내 파일
- **CLI**: `--licenses` 옵션 · 설치 패키지 내 NOTICE
- **SaaS**: 서비스 내 오픈소스 고지 페이지 · API 응답

</Callout>

</div>
</div>

---

# 보안 취약점 대응 프로세스

§4.1.5.1 · §4.3.2.1 — 탐지→분석→우선순위→조치 전 생애주기를 절차화한다.

<div class="grid grid-cols-2 gap-6">
<div>

```mermaid
flowchart TD
  A[다원 DB 모니터링] --> B[영향 컴포넌트 탐지]
  B --> C[3축 우선순위화]
  C --> D{조치 필요?}
  D -->|예| E[패치·완화·교체]
  D -->|아니오| F[VEX not_affected]
  E --> G[재스캔 검증]
  G --> H[고객 통보·기록]
  F --> H
```

</div>
<div>

3축 우선순위:

<CvssScoring :cvss="7.5" version="3.1" :epss="0.32" />

<div class="mt-3 text-sm opacity-80">

- CVSS v3.1/v4.0 병기, 높은 점수 기준
- EPSS 확률 + KEV 등재로 보정
- 조치 불요 시에도 **VEX `not_affected`**로 명시 (기록 의무)

</div>

</div>
</div>

---

# 다원 취약점 DB

CVE 단일 DB 의존은 누락을 부른다 — 복수 DB를 **병행 조회**한다.

<div class="grid grid-cols-2 gap-4">
<div>

**NVD** (미국 NIST)
CVE 표준 DB · CVSS 점수 포함

**OSV.dev** (Google)
npm·PyPI·Go·Maven 등 패키지 생태계 통합 · NVD보다 빠른 업데이트

</div>
<div>

**GHSA** (GitHub Security Advisories)
패키지 생태계 최우선 공개

**KISA KNVD** (한국인터넷진흥원)
한국어 권고문 · 국내 영향 컴포넌트

</div>
</div>

<Callout variant="success" title="보조 지표 병행">
DB로 취약점을 찾고, <b>EPSS</b>(악용 확률)·<b>CISA KEV</b>(실제 악용 중) 보조 지표로 우선순위를 보강한다.
</Callout>

---

# 취약점 처리 8가지 방법 (★ 18974)

§4.1.5.1 — 8가지 방법 각각에 문서화된 절차가 존재해야 한다.

```mermaid
flowchart TD
  subgraph 식별·탐지
    M1[1. 구조적·기술적 위협 식별]
    M2[2. 알려진 취약점 탐지]
  end
  subgraph 조치·검증
    M3[3. 후속 조치]
    M7[7. 위험 해결 검증]
    M6[6. 지속적 보안 테스트]
  end
  subgraph 통보·보고
    M4[4. 고객 통보]
    M8[8. 위험 정보 보고 VEX]
  end
  M5[5. 배포 후 신규 취약점 분석]
  M2 --> M3 --> M7 --> M6
  M5 -.-> M3
```

8개 별도 문서 또는 **하나의 통합 절차 + 8개 섹션** 모두 가능 (후자 권장). 절차만이 아닌 **수행 증거**(스캔 로그·티켓·VEX 발행 기록) 보관 필요.

---

# 취약점·조치 기록

§4.3.2.2 — 각 컴포넌트의 식별 취약점·수행 조치를 기록한다 (조치 불요 시도 포함).

| CVE ID | 컴포넌트 | CVSS (3.1/4.0) | EPSS | KEV | Reachable | VEX 상태 | 조치 |
|---|---|---|---|---|---|---|---|
| CVE-2021-44228 | log4j 2.14 | 10.0 / 10.0 | 97% | ● | 예 | `affected` | 2.17 업그레이드 |
| CVE-2023-XXXX | libfoo 1.2 | 7.5 / 7.3 | 8% | — | 아니오 | `not_affected` | 미실행 경로 |
| CVE-2024-YYYY | libbar 3.0 | 5.3 / — | 2% | — | 예 | `fixed` | 3.0.1 패치 |

<div class="mt-3">

<VexStatus legend />

</div>

조치가 필요 없었던 경우도 **`not_affected` + justification**으로 기록 — "검토하지 않음"과 구별된다.

---

# 기여·외부 문의·주기 검토 (★ 18974)

<div class="grid grid-cols-2 gap-8">
<div>

**오픈소스 기여 프로세스** (§3.5.1.2)
기여 검토 요청 → 출처·권리 확인 → 법무 검토 → 승인 → 제출 (기록 유지)

**외부 문의 대응 프로세스** (§3.2.1.2 · §4.2.1.2)
접수 알림 → 조사 알림 → 내부 조사 → 보고 → 보완 → 해결 알림 → 프로세스 개선

</div>
<div>

**프로세스 현행화** (§4.1.2.5 · §4.1.2.6) ★
- OSRB가 매년 정기 검토·개선 (문서화)
- 내부 모범 사례(NIST SSDF·OWASP)와 일치하는지 검증, 담당자 지정

<Callout variant="info" title="프로세스 템플릿 제공">
실제 적용 예시는 OpenChain KWG <b>오픈소스 프로세스 템플릿</b>(CC BY 4.0)에서 확인할 수 있다.
</Callout>

</div>
</div>
