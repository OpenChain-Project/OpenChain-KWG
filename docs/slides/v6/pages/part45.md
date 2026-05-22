---
layout: section
class: text-center
---

# Part 4 — 라이브 데모

도구로 직접 확인하는 오픈소스 거버넌스 · 20분

<div class="pt-8">
  <span class="text-sm opacity-75">cdxgen → Dependency-Track → 취약점·라이선스 점검</span>
</div>

---

# 자동화 도구로 체계를 작동시키다

<div class="grid grid-cols-2 gap-8 pt-4">

<div>

## 왜 도구인가

수작업으로는 전사 프로젝트의 오픈소스를 추적할 수 없습니다.
오픈소스 관리의 핵심은 두 가지로 압축됩니다.

1. **무엇이 들어있는지 파악** — SBOM(Software Bill of Materials) 생성
2. **위험 요소 지속 모니터링** — 취약점(CVE)·라이선스 정책 위반 탐지

이 두 가지를 무료 오픈소스 도구만으로, **하루 안에** 자동화할 수 있습니다.

</div>

<div>

## cdxgen + Dependency-Track

<Callout variant="info" title="권장 도구 조합">
처음 오픈소스 관리를 시작하는 기업이 기본 자동화 환경을 가장 빠르게 갖출 수 있는 조합입니다. 두 도구 모두 Apache-2.0 라이선스의 무료 오픈소스입니다.
</Callout>

- **cdxgen** — SBOM 생성 (OWASP, CycloneDX 표준)
- **Dependency-Track** — 중앙 서버 분석 (취약점·라이선스 정책)

CycloneDX 형식은 ISO/IEC 5230 및 NTIA SBOM 요건을 충족합니다.

</div>

</div>

---

# 데모 시나리오 — 생성·업로드·점검

<div class="text-sm pb-2">SBOM을 만들어 중앙 서버에 올리고, 취약점과 라이선스 위반을 한 화면에서 확인합니다.</div>

```mermaid {scale: 0.62}
flowchart LR
    A(["① cdxgen 실행<br/>소스·컨테이너 스캔"]) -->|"CycloneDX SBOM (.json)"| B(["② Dependency-Track<br/>업로드 (REST API)"])
    B --> C{"③ 자동 분석"}
    C --> D["취약점(CVE) 탐지<br/>CVSS·EPSS 점수"]
    C --> E["라이선스 정책 위반<br/>Copyleft·상업 제한"]
    D --> F(["④ Triage<br/>VEX 상태 분류"])
    E --> F
```

<div class="text-xs opacity-70 pt-1">둥근 사각형 = 시작/종료 · 마름모 = 분기</div>

<div class="grid grid-cols-3 gap-4 pt-3 text-sm">
  <div><strong>생성</strong> — cdxgen으로 의존성을 한 번에 스캔</div>
  <div><strong>업로드</strong> — autoCreate로 프로젝트 자동 생성</div>
  <div><strong>점검</strong> — Dashboard에서 심각도별 현황 확인</div>
</div>

---

# 실습 ① SBOM 생성 + 자동 업로드

<div class="grid grid-cols-2 gap-6">

<div>

<CodeShowcase lang="bash" filename="scan-upload.sh">

```bash {2,5-9}
# 1) SBOM 생성 (CycloneDX 1.6 형식)
cdxgen -r --spec-version 1.6 -o sbom.json .

# 2) Dependency-Track 업로드
curl -s -X POST "${DT_URL}/api/v1/bom" \
  -H "X-Api-Key: ${API_KEY}" \
  -F "autoCreate=true" \
  -F "projectName=my-app" \
  -F "projectVersion=1.0.0" \
  -F "bom=@sbom.json"
```

</CodeShowcase>

<div class="text-xs opacity-70 pt-2">실행: <code>export DT_API_KEY=...</code> 후 <code>./scan-upload.sh my-app 1.0.0</code></div>

</div>

<div>

## 핵심 포인트

- **`--spec-version 1.6`** — cdxgen 최신 버전은 CycloneDX 1.7을 기본 생성하지만, Dependency-Track v4.14는 1.6까지 지원하므로 명시 필요
- **`autoCreate=true`** — 프로젝트가 없으면 자동 생성
- **API Key** — `BOM_UPLOAD` + `PROJECT_CREATION_UPLOAD` 권한 팀에서 발급

<Callout variant="success" title="더 빠른 시작">
Node.js 설치 없이 Docker만으로 SBOM을 만들려면 SK텔레콤 SBOM Scanner를 사용할 수 있습니다. 출력이 CycloneDX JSON이라 그대로 업로드됩니다.
</Callout>

</div>

</div>

---

# 실습 ② 결과 확인 + 취약점 Triage

<div class="grid grid-cols-2 gap-6">

<div>

## Dashboard에서 확인

업로드 직후 프로젝트가 자동 생성되고, 중앙 서버가 분석을 시작합니다.

| 항목 | 내용 |
|------|------|
| **Portfolio Vulnerabilities** | 전사 취약점 심각도별 현황 |
| **Projects at Risk** | 위험도 높은 프로젝트 |
| **Policy Violations** | 라이선스 정책 위반 현황 |

<div class="text-xs opacity-70 pt-2">취약점 DB(NVD·GitHub Advisories) 초기 동기화에는 최소 24시간이 소요됩니다.</div>

</div>

<div>

## Triage — 다 긴급은 아니다

모든 Critical을 즉시 처리할 필요는 없습니다. 실제 영향을 기준으로 분류합니다.

<VexStatus legend />

- 사용 중 버전이 아니면 → **Not Affected**
- 취약 기능을 호출하지 않으면 → **Not Affected** (사유 기록)
- 패치 존재 → **Exploitable**, 업그레이드 요청

</div>

</div>

<Callout variant="info" title="라이선스 정책 위반 대응">
WARN(경고)은 개발팀과 협의 후 문제없으면 Approved 처리, FAIL(차단)은 허용 라이선스 버전으로 교체를 요청합니다. AI SBOM도 동일한 흐름으로 점검합니다.
</Callout>

---
layout: section
class: text-center
---

# Part 5 — 마무리

핵심 회고와 첫 액션 · 15분 (Q&A 포함)

---

# 6대 핵심 요소, 다시 한눈에

<div class="grid grid-cols-2 gap-8 items-center">

<div>

<HexCoreElements />

</div>

<div>

오늘 다룬 거버넌스 체계는 **하나의 유기적 구조**입니다.

1. **조직** — 역할·책임·역량 정의
2. **정책** — 성문화된 판단 기준
3. **프로세스** — 정책이 작동하는 절차
4. **도구** — 규모를 자동화로 해결
5. **교육** — 사람이 알아야 작동
6. **준수** — 공식 확인·지속 유지

<Callout variant="success" title="핵심">
어느 하나만으로는 작동하지 않습니다. 여섯 요소가 맞물려야 ISO/IEC 5230·18974를 충족하는 살아있는 체계가 됩니다.
</Callout>

</div>

</div>

---

# Review — 기억할 핵심 3가지

<div class="grid grid-cols-3 gap-6 pt-4">

<div>

## 1. 세 표준의 역할

<StandardCompare highlight="5230" :rows="[
  { aspect: '대상', v5230: '라이선스', v18974: '보안 취약점', v42001: 'AI 관리' },
  { aspect: '입증자료', v5230: '25개', v18974: '25개', v42001: '체크포인트' },
]" />

<div class="text-sm pt-2">입증자료는 표준별 <strong>각 25개, 합계 50개</strong>(공통 16개 중복)로 셉니다.</div>

</div>

<div>

## 2. AI는 확장이다

기존 거버넌스 위에 AI를 **얹습니다**. 프레임워크·모델·데이터셋 3대 영역, AI SBOM, AI 코딩 도구, 모델 공급망이 추가 점검 대상입니다.

<Callout variant="info" title="용어">
OSAID 1.0(OSI 2024-10)으로 "오픈소스 AI"의 정의가 생겼습니다. Open Weight 모델과 구분하세요.
</Callout>

</div>

<div>

## 3. 준수는 회고형이다

자가 인증은 미래 보장이 아니라 **"지난 18개월간 충족해 왔음"**을 확인하는 것입니다.

<Callout variant="warn" title="시제 주의">
인증 후에도 18개월 주기로 충족 상태를 유지·재확인해야 합니다.
</Callout>

</div>

</div>

---

# 첫 액션 · 다음 단계 · Q&A

<div class="grid grid-cols-2 gap-8">

<div>

## 내일부터 할 수 있는 첫 액션

1. **조직** — 오픈소스 담당자 1명 지정 (겸직 가능)
2. **정책** — 정책 템플릿 기반 초안 작성 (CC BY 4.0)
3. **도구** — cdxgen + Dependency-Track으로 한 프로젝트 SBOM 생성
4. **점검** — 입증자료 50개 커버리지 표를 체크리스트로 활용

<Callout variant="success" title="혼자서도 시작 가능">
모든 도구와 템플릿은 무료 오픈소스입니다. 작은 프로젝트 하나로 먼저 체계를 검증한 뒤 전사로 확장하세요.
</Callout>

</div>

<div>

## 함께하기 — OpenChain KWG

OpenChain Korea Work Group은 한국 기업의 오픈소스 컴플라이언스 담당자 커뮤니티입니다.

- **정기 미팅** — 사례·도구·표준 동향 공유
- **가이드·템플릿** — 이 강의의 모든 근거 자료 공개
- **서브그룹** — SBOM·AI·Telco 분과 활동

<div class="pt-6 text-center">
  <div class="text-2xl font-bold" style="color: var(--oc-primary)">감사합니다</div>
  <div class="text-sm opacity-75 pt-2">질문을 환영합니다 · Q&A</div>
</div>

</div>

</div>
