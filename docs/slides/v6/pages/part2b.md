---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · 6대 핵심 요소 ④ 도구</div>

# 도구 — 규모를 자동화로 해결

<div class="oc-lead">수작업은 공급 소프트웨어 수가 늘면 무너진다 — §3.3.1.2 · §4.3.1.2 컴포넌트 기록 자동화</div>

<div class="oc-consult__body">

<HexCoreElements :active="4" />

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.3.1.2 · ISO/IEC 18974 §4.3.1.2 · 6대 핵심 요소 중 ④ 도구</div>

<!--
6대 요소 중 네 번째인 '도구' 챕터를 여는 슬라이드입니다. 앞에서 배운 정책과 프로세스는 결국 사람이 손으로 다 할 수 없다는 점을 강조하고 들어가세요. 핵심 메시지는 "도구는 정책을 대체하는 게 아니라, 정책을 규모에 맞게 자동으로 작동시키는 수단"이라는 것입니다. 5230 §3.3.1.2와 18974 §4.3.1.2가 같은 요건(오픈소스 컴포넌트 기록=SBOM)을 요구한다는 점을 가볍게 짚어두면 뒤 슬라이드에서 SBOM 도구 이야기가 자연스럽게 이어집니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ④ 도구</div>

# 수작업의 한계 — Before / After

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">Before · 스프레드시트 수작업</div>

- 빌드 타임 의존성은 소스 스캔으로 안 잡힘
- 제품·버전 늘면 누락·중복
- 신규 CVE 공개 시 영향 파악 불가
- 라이선스 의무 추적이 기억에 의존

</div>

<div class="oc-card">
<div class="oc-card__label">After · 자동화 도구 환경</div>

- 의존성 분석으로 전이적 컴포넌트까지 수집
- SBOM 자동 생성·중앙 관리
- 신규 취약점 자동 탐지·알림
- 정책 위반 자동 평가

</div>

<div class="oc-card oc-card--wide">
<div class="oc-card__text">스프레드시트로도 시작할 수 있으나, 공급 소프트웨어 수·버전이 많아지면 수동 관리는 한계 — 자동화 도구 도입이 효율적.</div>
</div>

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.3.1.2 · ISO/IEC 18974 §4.3.1.2</div>

<!--
왼쪽 Before를 한 항목씩 클릭으로 띄우면서 "이거 우리 얘기 아닌가요?" 하고 공감대를 만드세요. 특히 빌드 타임 의존성이 소스 스캔으로 안 잡힌다는 점, 새 CVE가 떴을 때 어느 제품이 영향받는지 스프레드시트로는 못 찾는다는 점이 청중이 가장 뼈저리게 느끼는 지점입니다. 오른쪽 After로 넘어가며 같은 항목이 어떻게 자동으로 해결되는지 일대일로 대응시켜 보여주면 효과적입니다. 마지막 Callout은 "스프레드시트가 틀렸다는 게 아니라, 시작은 가능하지만 곧 무너진다"는 균형 잡힌 톤으로 마무리하세요.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ④ 도구</div>

# 거버넌스 도구 생태계 지도

<div class="oc-consult__body oc-bento">

<div class="oc-card">
<div class="oc-card__label">① 소스 코드 스캔</div>
<div class="oc-card__text">FOSSology · SCANOSS(스니펫 매칭)</div>
</div>

<div class="oc-card">
<div class="oc-card__label">② 의존성 분석</div>
<div class="oc-card__text">ORT · FOSSLight · cdxgen · Syft</div>
</div>

<div class="oc-card">
<div class="oc-card__label">③ 거버넌스 / SBOM</div>
<div class="oc-card__text">SW360 · FOSSLight · Dependency-Track</div>
</div>

<div class="oc-card">
<div class="oc-card__label">④ 보안 취약점</div>
<div class="oc-card__text">OWASP Dependency-Check · OSV-SCALIBR · SW360</div>
</div>

<div class="oc-card">
<div class="oc-card__label">⑤ 산출물 생성</div>
<div class="oc-card__text">onot(고지문) · FOSSLight</div>
</div>

<div class="oc-card">
<div class="oc-card__label">⑥ 보관·공개</div>
<div class="oc-card__text">GitHub Pages · 오픈소스 웹사이트</div>
</div>

</div>

<div class="oc-consult__source">단일 만능 도구는 없다 — 조합 선택 + 자동화 결과는 사람 검토 병행</div>

<!--
도구가 워낙 많아 청중이 압도당하기 쉬운 슬라이드입니다. 개별 도구 이름을 다 외우라는 게 아니라 "①소스 스캔 → ②의존성 분석 → ③거버넌스/SBOM → ④취약점 → ⑤산출물 생성 → ⑥보관·공개" 라는 여섯 단계 흐름만 머리에 남기시라고 안내하세요. SW360·FOSSLight처럼 한 도구가 여러 단계에 걸쳐 등장한다는 점도 짚어주면 좋습니다. 가장 중요한 메시지는 하단 Callout입니다 — 단일 만능 도구는 없고, 자동화 결과는 반드시 사람이 검토해야 한다는 점을 강조하세요. 다음 슬라이드부터 단계별 대표 도구를 하나씩 펼쳐본다고 예고하면 자연스럽습니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ④ 도구</div>

# 소스 스캔 — FOSSology & SCANOSS

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">FOSSology · 파일 단위</div>

Linux Foundation 프로젝트. 웹 기반으로 업로드 파일에서 라이선스·저작권을 검출·리포트.

- 파일 단위 라이선스·저작권 식별
- 대규모 코드베이스 분석
- Docker로 사내 서버 구축 (무료)

</div>

<div class="oc-card">
<div class="oc-card__label">SCANOSS · 스니펫 단위</div>

OSSKB(1억+ 파일)와 대조하는 SCA. **스니펫 단위** 매칭으로 일부만 복사·수정한 코드도 출처 추적.

- 스니펫 수준 매칭 · SBOM 자동 생성
- `scanoss-py` CLI + REST API (Apache-2.0)

</div>

<div class="oc-card oc-card--wide">
<div class="oc-card__text">SCANOSS는 AI 코딩 도구가 생성한 코드의 출처 미상 혼입(§7 AI 컴플라이언스) 추적에도 유용하다.</div>
</div>

</div>

<div class="oc-consult__source">FOSSology (Linux Foundation) · SCANOSS (Apache-2.0)</div>

<!--
두 도구의 차이를 한 문장으로 정리해 주세요. FOSSology는 '파일 단위'로 라이선스·저작권 텍스트를 검출하고, SCANOSS는 '스니펫(코드 조각) 단위'로 매칭한다는 점이 핵심 구분입니다. 일부만 복사해 붙여넣은 코드는 파일 단위 스캔으로는 못 잡지만 SCANOSS는 잡아낸다고 예를 들면 차이가 확 와닿습니다. 둘 다 무료라는 점, FOSSology는 Docker로 사내 서버를 띄울 수 있다는 점도 실무자에게 매력 포인트입니다. 마지막 Callout의 AI 코드 출처 추적은 뒤에 나올 §7 AI 컴플라이언스 챕터로 가는 복선이니 "이건 나중에 다시 나옵니다" 정도로만 던지고 넘어가세요.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ④ 도구</div>

# SBOM 생성·관리 도구

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">생성 (CLI)</div>

**cdxgen** — OWASP. 20+ 언어, CycloneDX 1.4–1.6, 컨테이너·저장소 스캔

**Syft** — Anchore. 컨테이너·파일시스템, SPDX·CycloneDX, Grype 연동

</div>

<div class="oc-card">
<div class="oc-card__label">관리 (플랫폼)</div>

**FOSSLight** — LG전자. SBOM·라이선스·취약점·고지문 일괄, 한국어 가이드

**Dependency-Track** — OWASP. SBOM 지속 모니터링, 정책 엔진, REST API

</div>

<div class="oc-card oc-card--wide">
<EvidenceCard number="3.3.1.2" title="공급 소프트웨어의 오픈소스 컴포넌트 기록(SBOM)" standard="5230" clause="§3.3.1" status="full">
ISO/IEC 18974 §4.3.1.2가 동일 요건을 준용. SBOM은 NTIA 최소 요소 + SPDX·CycloneDX 표준 형식으로 작성.
</EvidenceCard>
</div>

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.3.1.2 · ISO/IEC 18974 §4.3.1.2</div>

<!--
SBOM 도구를 '생성(CLI)'과 '관리(플랫폼)' 두 갈래로 나눠 설명하는 게 핵심입니다. cdxgen·Syft는 SBOM 파일을 뽑아내는 도구이고, FOSSLight·Dependency-Track은 그렇게 뽑은 SBOM을 모아서 지속 관리하는 플랫폼이라는 역할 분담을 명확히 하세요. FOSSLight는 LG전자가 만든 국산 도구라 한국어 가이드가 잘 돼 있어 국내 기업에 추천한다고 덧붙이면 좋습니다. 하단 EvidenceCard로 이 도구들이 결국 5230 §3.3.1.2 입증자료(컴포넌트 기록)를 충족하기 위한 수단임을 연결해, 도구가 인증과 어떻게 이어지는지 보여주세요. 18974도 같은 요건을 준용한다는 점이 반복되는 패턴이니 자연스럽게 강조됩니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ④ 도구</div>

# 산출물 생성·공개 — onot & 오픈소스 웹사이트

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">onot · 고지문 자동 생성</div>

SK텔레콤 공개(카카오 공동 개발). SPDX SBOM을 입력받아 **고지문(NOTICE)** 으로 자동 변환하는 Python CLI.

`pip install onot` · `onot -f sbom.spdx`

cdxgen·Syft가 만든 SBOM을 그대로 입력으로 사용.

</div>

<div class="oc-card">
<div class="oc-card__label">GitHub Pages 공개</div>
<div class="oc-card__text">GPL·LGPL은 배포 후 최소 3년 소스 제공 의무(§3.4.1.2). GitHub Pages로 고지문·소스를 무료 보관·공개. SK텔레콤 오픈소스 웹사이트가 대표 사례(소스 공개).</div>
</div>

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.4.1.2 · onot (SKT · Kakao)</div>

<!--
산출물 생성과 공개, 두 단계를 묶어 보여주는 슬라이드입니다. onot은 SK텔레콤이 카카오와 공동 개발해 공개한 국산 도구로, 앞에서 만든 SBOM을 입력하면 오픈소스 고지문(NOTICE)을 자동으로 만들어준다는 점이 핵심입니다 — cdxgen이나 Syft로 뽑은 SBOM을 그대로 넣을 수 있다는 도구 연계를 강조하세요. 오른쪽은 '왜 공개해야 하는가'입니다. GPL·LGPL은 배포 후 최소 3년간 소스를 제공할 의무가 있고(§3.4.1.2), GitHub Pages로 무료로 그 의무를 이행할 수 있다고 설명하세요. SK텔레콤 웹사이트는 소스까지 공개돼 있어 따라 만들 수 있다는 점이 실무자에게 큰 동기 부여가 됩니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ④ 도구</div>

# CI/CD 연동 — 정책 게이트

<div class="oc-lead">스캔을 파이프라인에 내장해 오픈소스 이슈를 머지 전에 자동 차단 (SCANOSS + GitHub Actions)</div>

<div class="oc-consult__body">

<CodeShowcase lang="yaml" filename=".github/workflows/scanoss.yml" highlight="9-12">

```yaml
name: SCANOSS License Scan
on: [push, pull_request]
jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Install SCANOSS
        run: pip install scanoss
      - name: Run scan
        run: scanoss-py scan . --output results.json
      - name: Generate SBOM
        run: scanoss-py convert --input results.json --format cyclonedx --output sbom.json
```

</CodeShowcase>

<Callout variant="info">
Dependency-Track 정책 엔진으로 금지 라이선스(BUSL-1.1·SSPL-1.0)는 <code>FAIL</code>, Copyleft(GPL·AGPL)는 <code>WARN</code>으로 게이트를 구성한다.
</Callout>

</div>

<div class="oc-consult__source">SCANOSS · GitHub Actions · Dependency-Track 정책 엔진</div>

<!--
'정책 게이트'라는 개념을 먼저 풀어주세요 — 스캔을 파이프라인에 넣어 문제가 있으면 머지 전에 자동으로 막는다는 게 핵심입니다. YAML은 줄 단위로 따라 읽되 9~12행(SBOM 생성·업로드 단계)이 하이라이트된 의도를 짚어주세요. 실연 팁: GitHub Actions 데모 시 자주 막히는 지점은 ① pip 설치 단계에서 패키지명 오타, ② API 키나 토큰을 secrets로 등록 안 해 인증 실패, ③ scanoss-py가 첫 실행 시 OSSKB 호출로 시간이 걸려 멈춘 것처럼 보이는 경우입니다. 미리 한 번 돌려둔 결과 화면을 준비해두면 안전합니다. 마지막 Callout에서 게이트 정책 설계 원칙(금지 라이선스=FAIL로 차단, Copyleft=WARN으로 경고)을 강조하면 "무조건 막는 게 아니라 등급을 나눈다"는 실무 감각이 전달됩니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ④ 도구</div>

# cdxgen + Dependency-Track 자동화 실습

<div class="oc-lead">cdxgen(SBOM 생성) + Dependency-Track(모니터링) 조합으로 하루 안에 기본 자동화</div>

<div class="oc-consult__body">

<CodeShowcase lang="bash" filename="scan-upload.sh" highlight="3,8-13">

```bash
#!/bin/bash
# 사용법: ./scan-upload.sh <프로젝트명> <버전>
API_KEY="${DT_API_KEY:?환경변수 DT_API_KEY를 설정하세요}"

# 1) SBOM 생성 (Dependency-Track v4.14는 CycloneDX 1.6까지 지원)
cdxgen -r --spec-version 1.6 -o sbom.json .

# 2) Dependency-Track 업로드 (프로젝트 자동 생성)
curl -s -X POST "http://localhost:8081/api/v1/bom" \
  -H "X-Api-Key: ${API_KEY}" \
  -F "autoCreate=true" -F "projectName=${1}" \
  -F "projectVersion=${2}" -F "bom=@sbom.json"
```

</CodeShowcase>

<Callout variant="success">
업로드 후 Dependency-Track이 NVD·OSV·GitHub Advisories와 대조해 컴포넌트별 취약점을 지속 모니터링한다.
</Callout>

</div>

<div class="oc-consult__source">cdxgen · Dependency-Track v4.14 · CycloneDX 1.6</div>

<!--
이 슬라이드의 메시지는 "처음 시작하는 기업도 하루면 기본 자동화 환경을 갖춘다"입니다. cdxgen으로 SBOM을 만들고(생성) Dependency-Track에 올려(모니터링) 끝나는 두 단계 조합을 강조하세요. 스크립트는 3행(API 키 환경변수)과 8~13행(curl 업로드)이 하이라이트입니다. 실연 팁으로 자주 막히는 지점: ① DT_API_KEY 환경변수를 안 넣고 실행해 멈춤 — 그래서 3행에 :? 로 가드를 걸어둔 것임을 짚어주세요. ② Dependency-Track 버전과 CycloneDX 스펙 버전 불일치 — 그래서 --spec-version 1.6으로 명시(v4.14 기준). ③ localhost:8081 포트로 DT 서버가 안 떠 있으면 curl이 연결 거부. autoCreate=true 덕분에 프로젝트를 미리 안 만들어도 업로드 시 자동 생성된다는 점이 실무 편의 포인트입니다. 업로드 후 NVD·OSV·GitHub Advisories와 자동 대조가 시작된다는 Callout으로 "한 번 올리면 알아서 계속 본다"는 지속 모니터링 가치를 마무리하세요.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · 6대 핵심 요소 ⑤ 교육</div>

# 교육 — 사람이 알아야 작동

<div class="oc-lead">정책·프로세스·도구를 갖춰도 구성원이 신경 쓰지 않으면 무용지물 — 체계의 마지막 퍼즐</div>

<div class="oc-consult__body">

<HexCoreElements :active="5" />

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.1.3 · 6대 핵심 요소 중 ⑤ 교육</div>

<!--
6대 요소 중 다섯 번째 '교육' 챕터로 전환하는 슬라이드입니다. 앞에서 정책·프로세스·도구를 아무리 잘 갖춰도 결국 사람이 안 따르면 작동하지 않는다는 점을 강조하며 들어가세요. "체계의 마지막 퍼즐"이라는 표현을 그대로 써서, 교육이 부가 활동이 아니라 체계를 실제로 살아 움직이게 하는 필수 요소임을 각인시키세요. 도구 챕터에서 자동화를 이야기했으니 "자동화 결과도 결국 사람이 검토해야 하고, 그 사람을 길러내는 게 교육"이라고 연결하면 흐름이 매끄럽습니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑤ 교육</div>

# 교육 — 체계의 마지막 퍼즐

<div class="oc-lead">모든 참여자(개발자·배포·품질)가 정책을 인식하고 활동하도록 교육·위키 등 실질적 수단 제공</div>

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">정책 인식 절차</div>
<EvidenceCard number="3.1.1.2" title="오픈소스 정책 인식 절차" standard="5230" clause="§3.1.1" status="full">
교육·내부 위키 등 문서화된 전달 절차. ISO/IEC 18974 §4.1.1.2 준용.
</EvidenceCard>
</div>

<div class="oc-card">
<div class="oc-card__label">인식 평가 4요소 (§3.1.3.1)</div>
<div class="oc-card__text">① 정책의 존재·위치 · ② 프로그램 목표 · ③ 참여자 기여 방법 · ④ <strong>미준수 시 영향</strong></div>
</div>

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.1.1.2 · §3.1.3.1 · ISO/IEC 18974 §4.1.1.2</div>

<!--
교육의 대상이 개발자만이 아니라 배포 엔지니어·품질 엔지니어 등 모든 프로그램 참여자라는 점을 먼저 강조하세요. 왼쪽 EvidenceCard는 5230 §3.1.1.2 입증자료로, '교육·내부 위키 같은 문서화된 전달 절차'가 있어야 인증에서 인정받는다는 점을 짚어주세요 — 즉 교육을 했다는 기록이 남아야 합니다. 오른쪽 4요소는 인식 평가에서 무엇을 물어봐야 하는지의 체크리스트입니다. 특히 ④ '미준수 시 영향'을 강조하세요 — 단순히 정책이 있다는 걸 아는 데서 그치지 않고 안 지키면 어떤 문제가 생기는지까지 인식해야 진짜 교육이라는 점이 핵심입니다. 18974도 보안 보증 정책에 대해 같은 요건을 준용한다는 점을 덧붙이면 좋습니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑤ 교육</div>

# 정책 전파 절차 — 온보딩·위키·LMS

<div class="oc-consult__body">

<StepFlow :steps="[
  { label: '신규 입사' },
  { label: '입사 연수', note: '오픈소스 정책 교육' },
  { label: '사내 위키 게시', note: '상시 열람' },
  { label: '주기 교육', note: '매년·격년 LMS' },
  { label: '인식 평가', note: '미흡 시 재교육으로 복귀' },
  { label: '교육 이력 보존', note: '최소 3년' },
]" />

<Callout variant="info">
신규 채용자는 입사 연수 시 교육을 의무화하고, 기존 참여자는 매년·격년 주기로 재교육한다. 교육 이력과 평가 결과는 LMS(학습 관리 시스템)에 최소 3년간 보존한다.
</Callout>

</div>

<div class="oc-consult__source">평가 미흡 시 입사 연수로 복귀하는 반복 사이클 · 이력 3년 보존</div>

<!--
교육이 일회성 이벤트가 아니라 입사부터 시작해 주기적으로 반복되는 사이클이라는 점을 다이어그램으로 보여주는 슬라이드입니다. 흐름을 따라 읽어주세요 — 신규 입사 시 입사 연수 교육, 사내 위키 상시 게시, 매년·격년 주기 교육, 그리고 인식 평가에서 미흡하면 다시 교육으로 되돌아간다는 루프가 핵심입니다. 평가 미흡 시 재교육으로 화살표가 돌아가는 부분을 짚어 "한 번 하고 끝이 아니다"를 강조하세요. 하단 Callout에서 교육 이력과 평가 결과를 최소 3년간 보존해야 한다는 점은 인증 심사 때 증거로 쓰이므로 실무적으로 매우 중요하다고 덧붙이세요. LMS가 없는 회사라면 사내 위키나 HR 시스템으로 대체 가능하다고 안심시키면 좋습니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑤ 교육</div>

# 교육 효과 측정·인식 평가

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">평가 (역량 확인)</div>

| 단계 | 내용 |
|------|------|
| 교육 | 필요 역량 교육 제공 |
| 평가 | 교육 기반 평가 수행 |
| 보관 | LMS·HR에 결과 보존 |

</div>

<div class="oc-card">
<div class="oc-card__label">효과성 측정 지표</div>

| 지표 | 측정 |
|------|------|
| 교육 이수율 | 대상 대비 완료 |
| 평가 점수 | 시험 결과 |
| 위반 감소율 | 컴플라이언스 위반 |
| 대응 시간 단축 | 취약점 대응 |

</div>

<div class="oc-card oc-card--wide">
<EvidenceCard number="3.1.2.3" title="각 참여자의 역량 평가 문서화된 증거" standard="5230" clause="§3.1.2" status="full">
ISO/IEC 18974 §4.1.2.4 준용. 참여자가 수백 명 이상이면 온라인 교육·평가 시스템 활용을 권장.
</EvidenceCard>
</div>

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.1.2.3 · ISO/IEC 18974 §4.1.2.4</div>

<!--
교육은 했다는 사실보다 '효과가 있었는지'를 측정하는 게 중요하다는 메시지입니다. 왼쪽은 개인 단위 역량 평가 — 교육 → 평가 → 결과 보관의 3단계로, 각 역할 담당자가 정말 자격을 갖췄는지 확인하고 그 결과를 남겨야 한다는 점이 §3.1.2.3 입증자료의 핵심입니다. 오른쪽은 프로그램 전체 단위 효과성 지표입니다. 이수율·평가 점수 같은 직접 지표뿐 아니라 위반 감소율·취약점 대응 시간 단축률처럼 교육의 실질 효과를 보여주는 결과 지표를 함께 보는 게 좋다고 강조하세요. 예상 질문: "참여자가 수백 명인데 일일이 평가가 가능하냐?" → EvidenceCard에 답이 있습니다. 대규모일수록 온라인 교육·평가 시스템(LMS)을 쓰라는 것이 표준의 권고입니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑤ 교육</div>

# 교육 자료 무료로 시작하기

<div class="oc-lead">처음부터 만들 필요 없다 — 국내 우수 기업이 공개한 자료를 활용</div>

<div class="oc-consult__body oc-bento">

<div class="oc-card">
<div class="oc-card__label">엔씨소프트</div>
<div class="oc-card__text">교육 교안(PPT)·강의 스크립트 GitHub 공개<br><code>ncsoft/oss-basic-training</code></div>
</div>

<div class="oc-card">
<div class="oc-card__label">카카오</div>
<div class="oc-card__text">개발자용 오픈소스 교육 자료 PDF 공개<br><code>opensource_guide_kakao.pdf</code></div>
</div>

<div class="oc-card">
<div class="oc-card__label">라이선스 가이드</div>
<div class="oc-card__text">한국저작권위원회 OLIS · SKT 라이선스별 의무사항<br><code>olis.or.kr</code></div>
</div>

<div class="oc-card oc-card--wide">
<div class="oc-card__text">교육에는 <strong>기여 정책 인식</strong>(§3.5.1.3)도 포함해야 한다 — 모르면 무분별한 기여로 개인·회사에 피해가 발생할 수 있다.</div>
</div>

</div>

<div class="oc-consult__source">ncsoft · kakao · OLIS · SKT (모두 공개·한국어)</div>

<!--
교육 자료를 처음부터 만들 필요 없다는 게 이 슬라이드의 핵심 메시지입니다. 국내 우수 기업들이 공개한 자료를 활용하면 부담 없이 시작할 수 있다고 안내하세요. 엔씨소프트는 교안 PPT와 강의 스크립트까지 GitHub에 공개, 카카오는 PDF 가이드, 라이선스별 의무사항은 한국저작권위원회 OLIS와 SK텔레콤 가이드를 추천하세요 — 모두 무료이고 한국어라 바로 쓸 수 있다는 점이 매력입니다. 마지막 Callout이 자주 놓치는 포인트입니다. 교육에 '기여 정책 인식'(§3.5.1.3)도 꼭 넣어야 한다는 점 — 직원이 회사 코드를 외부 오픈소스 프로젝트에 함부로 기여하면 영업비밀 유출이나 라이선스 문제로 회사에 피해가 갈 수 있다는 구체적 예를 들어주면 경각심이 생깁니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · 6대 핵심 요소 ⑥ 준수·개선</div>

# 준수·개선 — 공식 확인·지속 유지

<div class="oc-lead">5대 요소를 갖췄다면, 모든 요구사항 충족을 공식 확인하고 지속적으로 유지</div>

<div class="oc-consult__body">

<HexCoreElements :active="6" />

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.6 · 6대 핵심 요소 중 ⑥ 준수·개선</div>

<!--
6대 요소의 마지막인 '준수·개선' 챕터로 들어가는 슬라이드입니다. 앞의 다섯 요소(조직·정책·프로세스·도구·교육)를 다 갖췄다는 전제에서, 이제 그것들이 모든 요구사항을 충족함을 '공식적으로 확인'하고 그 상태를 '지속적으로 유지'하는 단계라고 정리하세요. 핵심은 두 가지 동사 — 공식 확인(인증·선언)과 지속 유지(개선)입니다. 인증은 한 번 받고 끝이 아니라 계속 유지·갱신해야 한다는 점을 미리 던져두면 뒤의 18개월 유지 슬라이드로 자연스럽게 이어집니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑥ 준수</div>

# 준수 선언이란? — 점검 → 확인서 → 신청

<div class="oc-consult__body">

<StepFlow :steps="[
  { label: '6대 요소 구축 완료' },
  { label: '입증자료 25개 자체 점검', note: '누락 시 보완 후 재점검' },
  { label: '규격 준수 확인서 작성', note: '§3.6.1.1' },
  { label: '인증 방법 선택' },
  { label: '자가 / 독립 평가 / 제3자 인증' },
]" />

<Callout variant="info">
ISO/IEC 5230과 ISO/IEC 18974는 각각 프로그램이 모든 요구사항을 충족함을 확인하는 문서를 요구한다(§3.6.1.1 · §4.4.1.1).
</Callout>

</div>

<div class="oc-consult__source">점검 → 보완 → 재점검 루프 후 확인서 작성 · §3.6.1.1 · §4.4.1.1</div>

<!--
준수 선언이 어떤 순서로 진행되는지 다이어그램으로 풀어주는 슬라이드입니다. 흐름을 따라가세요 — 6대 요소 구축 완료 후 입증자료 25개를 자체 점검하고, 누락이 있으면 보완해 다시 점검하는 루프를 돈 뒤, 빠짐없으면 규격 준수 확인서(§3.6.1.1)를 작성하고, 인증 방법을 골라 자가 인증·독립 평가·제3자 인증 중 하나로 마무리한다는 것입니다. 자체 점검 → 보완 루프가 핵심입니다. 한 번에 통과하기보다 점검하고 메우는 과정을 반복하는 게 정상이라고 안심시키세요. 하단 Callout에서 5230(§3.6.1.1)과 18974(§4.4.1.1)가 각각 '모든 요구사항을 충족함을 확인하는 문서'를 요구한다는 점, 즉 확인서 자체가 입증자료라는 점을 강조하세요.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑥ 준수</div>

# 자가 인증 절차 상세 + 인증 방법 선택

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">자가 인증 단계</div>

1. 입증자료 25개 **자체 점검**
2. 누락 항목 **보완**
3. OpenChain 온라인 체크리스트 **제출**
4. 준수 기업 **등재**

`certification.openchainproject.org` (무료·즉시)

</div>

<div class="oc-card">
<div class="oc-card__label">인증 방법 3종</div>

| 방법 | 비용 | 신뢰도 |
|------|:----:|:------:|
| 자가 인증 | 무료 | 낮음 |
| 독립 평가 | 중간 | 중간 |
| 제3자 인증 | 높음 | 높음 |

제3자 기관: ORCRO · PwC · TÜV SÜD · Synopsys

</div>

<div class="oc-card oc-card--wide">
<div class="oc-card__label">단계적 접근 권장</div>
<div class="oc-card__text"><strong>자가 인증 → 독립 평가 → 제3자 인증</strong> 순으로 진행. 자가 인증만으로도 많은 공급망 파트너의 요구 수준을 충족할 수 있다.</div>
</div>

</div>

<div class="oc-consult__source">certification.openchainproject.org · 제3자 인증기관 (2024)</div>

<!--
인증을 어렵게 느끼는 청중에게 "생각보다 진입 장벽이 낮다"를 전하는 슬라이드입니다. 왼쪽 자가 인증 4단계 — 점검·보완·체크리스트 제출·등재 — 가 무료이고 즉시 시작할 수 있다는 점을 강조하세요. certification.openchainproject.org에서 바로 할 수 있다고 안내하면 좋습니다. 오른쪽 표는 비용과 신뢰도의 트레이드오프입니다. 자가 인증은 무료지만 신뢰도가 낮고, 제3자 인증은 비싸지만 신뢰도가 높다는 점을 짚으세요. 제3자 인증 기관 이름(ORCRO·PwC·TÜV SÜD 등)은 외울 필요 없고 "이런 곳들이 해준다" 정도면 충분합니다. 마지막 Callout이 실무 핵심 조언입니다 — 처음부터 제3자 인증을 노리지 말고 자가 인증부터 단계적으로 올라가라, 자가 인증만으로도 공급망 파트너 요구 수준을 충족하는 경우가 많다는 현실적 조언으로 마무리하세요.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑥ 준수</div>

# 인증 후 18개월 유지 — 회고형 시제

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">⚠ 시제 주의 — 회고형 (§3.6.2.1·§4.4.2.1)</div>
<div class="oc-card__text">18개월 조항은 <strong>미래형 보장이 아니다.</strong> "앞으로 18개월 충족하겠다"(❌)가 아니라, 인증 후 <strong>"지난 18개월 모든 요구사항을 충족해 왔음"</strong>(✅)을 확인하는 과거 사실 확인 문서다.</div>
</div>

<div class="oc-card">
<div class="oc-card__label">18개월 주기 활동 기록</div>

- 최소 6개월마다 내부 감사
- 연 1회 이상 외부 전문가 검토
- 지속 교육·역량 평가, 정책·프로세스 정기 갱신

다음 재확인 예정일 명시 — 주기 미준수 시 인증 효력 상실 가능

</div>

</div>

<div class="oc-consult__source">ISO/IEC 5230 §3.6.2.1 · ISO/IEC 18974 §4.4.2.1</div>

<!--
이 슬라이드는 청중이 가장 많이 오해하는 지점이라 천천히 짚어야 합니다. 18개월 조항은 '앞으로 18개월간 잘 하겠다'는 미래형 다짐이 아니라, 인증 획득 후 '지난 18개월 동안 모든 요구사항을 충족해 왔음'을 확인하는 과거 사실 확인 문서라는 게 핵심입니다. critical 박스의 ❌와 ✅ 대비를 그대로 읽어주며 강조하세요. 그래서 무엇이 필요한가 — 18개월 동안의 활동 기록입니다. 최소 6개월마다 내부 감사, 연 1회 이상 외부 전문가 검토, 지속적 교육·정책 갱신의 흔적이 남아 있어야 회고적으로 '충족해 왔음'을 입증할 수 있습니다. 마지막 warning에서 다음 재확인 예정일을 문서에 적어두라는 점, 주기를 놓치면 인증 효력이 상실될 수 있다는 점을 실무 경고로 마무리하세요. 예상 질문: "그럼 인증받자마자 18개월치 기록이 없으면 어떡하나?" → 인증 시점부터 기록을 쌓기 시작해 다음 재확인 때 입증하는 것이라고 설명하세요.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑥ 준수 (★ 18974)</div>

# 성과 메트릭·지속 개선·모범 사례 검증

<div class="oc-lead">18974는 5230 대비 측정 가능한 목표와 지속적 개선 증거를 추가 요구 (★ Documented Evidence)</div>

<div class="oc-consult__body oc-bento oc-bento--2">

<div class="oc-card">
<div class="oc-card__label">메트릭 예시 (§4.1.4.2)</div>

| 메트릭 | 목표 | 주기 |
|------|:----:|:----:|
| SBOM 완전성 | 100% | 분기 |
| Critical 대응 시간 | 7일↓ | 분기 |
| High 대응 시간 | 30일↓ | 분기 |
| 취약점 재발생률 | 10%↓ | 반기 |
| 외부 문의 응답률 | 95%↑ | 분기 |

</div>

<div class="oc-card">
<div class="oc-card__label">⚠ Documented Evidence (§4.1.4.3·§4.1.2.6)</div>
<div class="oc-card__text">지속적 개선(§4.1.4.3)은 검토·감사 회의록이, 내부 모범 사례 일치 검증(§4.1.2.6)은 비교 결과 + <strong>담당자 지정</strong> 기록이 실제 보관돼야 한다. 절차 문서만으로는 부족.</div>
</div>

</div>

<div class="oc-consult__source">ISO/IEC 18974 §4.1.4.2 · §4.1.4.3 · §4.1.2.6 (★ 전용)</div>

<!--
★ 표시는 18974 전용 항목, 즉 5230에는 없고 18974에만 있는 더 강한 요구사항이라는 뜻입니다. 18974는 보안 표준이라 '측정 가능한 목표'와 '지속적 개선의 증거'를 추가로 요구한다는 점이 핵심 메시지입니다. 표의 메트릭들은 예시 수치이니 그대로 외우라기보다, Critical 취약점 7일·High 30일처럼 등급별로 대응 시간 목표를 정량화한다는 접근법을 보여주세요. 회사 상황에 맞게 조정하면 된다고 안내하세요. 가장 중요한 건 하단 warning입니다 — 'Documented Evidence'의 핵심은 절차 문서만으로는 부족하고 실제 활동 기록(검토·감사 회의록, 비교 결과, 담당자 지정)이 보관돼 있어야 한다는 점입니다. 18974 심사에서 가장 자주 지적받는 부분이니 강조하세요.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · ⑥ 준수</div>

# 5230 + 18974 통합 준수 체크

<div class="oc-lead">각 25개·합계 50개, 공통 16개 중복(고유 34개) — 18974 전용 9개는 더 강한 Documented Evidence</div>

<div class="oc-consult__body oc-bento">

<EvidenceCard number="3.6.1.1" title="전체 요구사항 충족 확인 문서" standard="5230" clause="§3.6.1" status="full" />
<EvidenceCard number="3.6.2.1" title="18개월 내 충족 확인 문서" standard="5230" clause="§3.6.2" status="full" />
<EvidenceCard number="3.2.2.5" title="미준수 검토·시정 절차" standard="5230" clause="§3.2.2" status="full" />
<EvidenceCard number="4.4.1.1" title="전체 요구사항 충족 확인" standard="18974" clause="§4.4.1" status="full" />
<EvidenceCard number="4.4.2.1" title="18개월 내 충족 확인" standard="18974" clause="§4.4.2" status="full" />
<EvidenceCard number="4.1.4.2" title="성과 메트릭 세트 ★" standard="18974" clause="§4.1.4" status="full" />

</div>

<div class="oc-consult__source">5230 25개 + 18974 25개 = 공통 16 + 고유 34</div>

<!--
두 표준의 입증자료 관계를 정리하는 슬라이드입니다. 핵심 숫자를 짚어주세요 — 5230과 18974가 각각 25개씩, 합쳐서 50개이지만 공통 16개가 겹쳐서 실제 고유한 항목은 34개라는 점입니다. 즉 5230을 먼저 갖추면 18974는 9개 전용 항목만 더 채우면 된다는 점이 실무자에게 큰 위안이 됩니다 — 두 인증을 처음부터 따로 준비할 필요가 없다는 메시지입니다. 다만 공통 16개라도 18974는 더 강한 Documented Evidence를 요구한다는 점(앞 슬라이드 ★ 항목과 연결)을 짚으세요. EvidenceCard들을 클릭으로 펼치며 5230 카드(§3.6.x)와 18974 카드(§4.4.x·§4.1.4.2)가 짝을 이루는 구조를 보여주면 매핑이 직관적으로 전달됩니다.
-->

---
class: oc-consult
---

<div class="oc-consult__kicker">Part 2 · 요약</div>

# 6대 요소 종합

<div class="oc-lead">조직 → 정책 → 프로세스 → 도구 → 교육 → 준수, 여섯이 맞물려 살아있는 거버넌스가 된다</div>

<div class="oc-consult__body">

<HexCoreElements />

</div>

<div class="oc-consult__source">6대 요소가 ISO/IEC 5230(라이선스) + 18974(보안) 입증자료를 충족하는 체계로 완성</div>

<!--
파트 2 전체를 마무리하는 요약 슬라이드입니다. 6각형이 다시 등장하니, 지금까지 다룬 여섯 요소를 한 문장으로 이어 읽어주세요 — 조직으로 책임을 정하고, 정책으로 기준을 세우고, 프로세스로 작동시키고, 도구로 규모를 감당하고, 교육으로 사람에게 전파하고, 준수로 공식 확인·지속 유지한다는 흐름입니다. 핵심 메시지는 이 여섯이 따로 노는 게 아니라 서로 맞물려 돌아가야 '살아있는' 거버넌스 체계가 된다는 점입니다. 하단 Callout에서 이 체계가 결국 5230(라이선스)과 18974(보안) 두 표준의 입증자료를 충족한다는 점으로 마무리하며, 다음 파트로 넘어가는 호흡을 주세요. 여기서 잠깐 쉬어가거나 질문을 받기 좋은 지점입니다.
-->

