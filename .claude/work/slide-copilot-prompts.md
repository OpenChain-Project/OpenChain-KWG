# 강의 슬라이드 Copilot 프롬프트 모음 (v4 — 77장)

**강의 제목**: 기업 오픈소스 거버넌스 구축 실무 — ISO 표준부터 AI 컴플라이언스까지  
**슬라이드 수**: 77장 / **강의 시간**: 2시간  
**개선 사항 (v4)**: ① ISO 5230·18974 입증자료 50개 전체 명시 ② 슬라이드별 KWG 가이드·템플릿 링크 추가 ③ QR코드 → 텍스트 링크 교체

---

## 사용 순서

1. **Phase 1** → Word에 붙여넣기 → 77장 Heading 구조 생성 → PPT 내보내기
2. **Phase 2-A** → 파트0+파트1 (슬라이드 2~16) 내용 채우기
3. **Phase 2-B** → 파트2 조직 (슬라이드 17~30) — 기존 3장 + 신규 7장
4. **Phase 2-C** → 파트2 프로세스 (슬라이드 31~41) — 기존 4장 + 신규 7장
5. **Phase 2-D** → 파트2 도구·교육·준수 (슬라이드 42~56) — 기존 + 신규 4장
6. **Phase 2-E** → 파트3 AI 컴플라이언스 (슬라이드 57~69)
7. **Phase 2-F** → 파트4·5 (슬라이드 70~77)

---

## Phase 1: Word outline 프롬프트 (첫 번째로 실행)

아래 내용을 Word에 Heading 스타일로 입력한 뒤 PPT로 내보내기.  
Heading 1 = 슬라이드 제목 / Heading 2 = 본문 불릿

```
다음 조건으로 강의용 Word outline을 만들어줘.
Heading 1 = 슬라이드 제목, Heading 2 = 각 슬라이드 본문 불릿 (3개 이내)
제목: 기업 오픈소스 거버넌스 구축 실무 — ISO 표준부터 AI 컴플라이언스까지

[파트 0: 도입 - 5장]
1. 표지 — 강의 제목, 강사명, 날짜 입력란
2. 지금까지 배운 것 → 오늘 배울 것 — 좌우 2단 레이아웃
3. 왜 거버넌스 체계가 필요한가 — 이미지+텍스트 레이아웃
4. 오늘 강의에서 얻어갈 것 — 불릿 3개
5. 강의 구성 (Roadmap) — 5단계 흐름도

[파트 1: ISO 표준으로 거버넌스 이해하기 - 11장]
6. OpenChain Project란? — 로고+설명 레이아웃
7. ISO/IEC 5230 — 라이선스 컴플라이언스 — 불릿 3개
8. ISO/IEC 5230의 6가지 핵심 요구사항 — 6칸 인포그래픽
9. ISO/IEC 18974 — 보안 보증 — 불릿 3개
10. ISO/IEC 42001 — AI 관리 시스템 — 불릿 3개
11. 세 표준 비교 한눈에 — 3열 비교 표
12. 자가 인증이란? — 3단계 프로세스 다이어그램
13. [화면 시연] 자가 인증 체크리스트 — 큰 이미지 영역 placeholder
14. 자가 인증 결과 예시 — 체크리스트 표 형식
15. 인증 후 얻을 수 있는 것 — 불릿 3개
16. 파트 1 요약 — 요약 카드 형식

[파트 2: 6대 핵심 요소로 체계 구축 - 40장]
17. 6대 핵심 요소 전체 구조 — 순환 또는 6각형 다이어그램

[2-1. 조직 — 10장]
18. 오픈소스 관리 조직 (OSPO) — 조직도 레이아웃
19. 규모별 조직 구성 예시 — 3열 비교 표
20. 담당자 역할 매트릭스 — R&R 표
21. 역량 평가 및 기록 — 불릿 3개
22. 프로그램 적용 범위 — 불릿 3개
23. 역할 배치 및 예산 확인 — 불릿 3개
24. 법률 자문 접근 방법 — 불릿 3개
25. 내부 책임 할당 절차 (RACI) — RACI 표
26. 참여자 목록 및 역할 문서화 — 불릿 3개
27. 취약점 해결 전문성 명시 — 불릿 3개

[2-2. 정책 — 3장]
28. 오픈소스 정책이 필요한 이유 — 불릿+이미지
29. 정책에 담아야 할 핵심 항목 — 5행 표
30. [링크] 정책 템플릿 소개 — 화면 캡처 영역+링크

[2-3. 프로세스 — 11장]
31. 오픈소스 사용 프로세스 흐름도 — 수평 플로우차트
32. 외부 문의 공개 채널 운영 — 불릿 3개
33. 외부 문의 내부 대응 절차 — 불릿 3개
34. 미준수 사례 검토·시정 절차 — 불릿 3개
35. 컴플라이언스 산출물 준비·배포 — 불릿 3개
36. 컴플라이언스 산출물 보관 절차 — 불릿 3개
37. 보안 취약점 대응 프로세스 — 수평 플로우차트
38. 취약점 대응 8가지 방법 절차 — 번호 목록
39. 취약점 및 조치 기록 — 불릿 3개
40. 오픈소스 기여 프로세스 — 수평 플로우차트
41. [링크] 프로세스 템플릿 소개 — 화면 캡처 영역+링크

[2-4. 도구 — 7장]
42. 왜 도구가 필요한가 — Before/After 2단 레이아웃
43. 도구 생태계 지도 — 2×2 카테고리 배치
44. 소스코드 스캔: FOSSology & FOSSLight — 2열 로고+기능
45. SBOM 생성: cdxgen & Syft — 2열 로고+기능
46. 거버넌스·SBOM 관리: SW360 & DependencyTrack — 2열 로고+기능
47. CI/CD 파이프라인 연동 — 아키텍처 다이어그램
48. 도구 선택 가이드 — 매트릭스 표

[2-5. 교육 — 2장]
49. 교육 및 인식 제고 — 역할별 표
50. 교육 커리큘럼 예시 — 3열 표

[2-6. 준수·개선 — 5장]
51. 준수 선언 (Conformance) — 3단계 프로세스
52. 주기적 검토 및 프로세스 변경 증거 — 불릿 3개
53. 내부 모범 사례 일치 검증 — 불릿 3개
54. 성과 메트릭 세트 — 메트릭 표
55. 지속적 개선 증거 — 불릿 3개

56. 파트 2 요약 + 참고 링크 — 체크리스트+링크

[파트 3: AI 컴플라이언스 확장 - 13장]
57. 기존 거버넌스로 충분한가? — 갭 분석 다이어그램
58. AI 시스템의 오픈소스 3대 영역 — 트리 다이어그램
59. AI 프레임워크 라이선스 관리 — 표
60. AI 프레임워크 주요 라이선스 표 — 비교 표
61. 오픈소스 AI 모델 라이선스 관리 — 불릿+경고 박스
62. AI 모델 라이선스 유형 비교 — 비교 표
63. 학습 데이터셋 관리 — 표
64. AI-BOM (AI SBOM)이란? — 개념 다이어그램
65. AI-BOM 실제 예시 — 코드 블록
66. OpenChain AI-BOM 가이드 소개 — 로고+설명+링크
67. ISO 42001 오픈소스 교차 조항 — 2열 표
68. ISO 42001 체크포인트 실무 예시 — 체크리스트 표
69. 파트 3 요약 — 요약 카드

[파트 4: Trusted OSS 라이브 데모 - 4장]
70. Trusted OSS란? — 화면 캡처 영역+설명
71. 데모 시나리오 미리보기 — 3단계 순서도
72. [라이브 데모] — 큰 빈 화면 영역
73. 데모 후: 혼자서 따라가는 방법 — 불릿+링크

[파트 5: 마무리 - 4장]
74. 오늘 배운 핵심 3가지 — 요약 카드
75. 단계별 시작 로드맵 — 타임라인 (1주/1개월/3개월)
76. 참고 가이드 링크 모음 — 링크 5개 배치
77. Q&A — 심플 레이아웃
```

---

## Phase 2-A: 파트 0 + 파트 1 내용 채우기 (슬라이드 2~16)

```
아래 내용으로 슬라이드 2번부터 16번을 업데이트해줘.

--- 슬라이드 2: 지금까지 배운 것 → 오늘 배울 것 ---
왼쪽 열 제목: 앞선 강의에서 배운 것
왼쪽 내용:
• 오픈소스·AI 모델 라이선스의 종류와 의무사항
• Olive 플랫폼으로 컴플라이언스 관리하는 방법
• 카카오의 오픈소스 AI 모델 관리 사례
오른쪽 열 제목: 오늘 배울 것
오른쪽 내용:
• ISO 국제표준 기반 거버넌스 체계를 어떻게 구축하는가
• 조직·정책·프로세스·도구·교육·준수를 어떻게 갖추는가
• AI 컴플라이언스까지 확장하는 방법
하단 한 줄: "라이선스를 '아는 것'에서 조직이 '지속적으로 지키는 체계'로"

--- 슬라이드 3: 왜 거버넌스 체계가 필요한가 ---
제목을 결론으로 변경: "라이선스를 알아도 체계 없이는 사고가 난다"
내용 (불릿 3개):
• 2009년 Busybox 소송: 제품을 배포만 한 회사도 소송 대상 — 공급망 전체가 리스크
• 개발자가 라이선스를 알아도, 조직적 검토 프로세스가 없으면 누락이 발생한다
• ISO 국제표준은 이 체계를 만들기 위한 검증된 프레임워크를 제공한다

--- 슬라이드 4: 오늘 강의에서 얻어갈 것 ---
내용 (불릿 3개):
• ISO/IEC 5230·18974·42001 세 표준이 무엇이고 어떻게 연결되는지 안다
• 6대 핵심 요소(조직·정책·프로세스·도구·교육·준수)로 체계를 어떻게 구축하는지 안다
• 오늘 집에 가서 바로 시작할 수 있는 첫 번째 액션을 갖고 간다

--- 슬라이드 5: 강의 구성 (Roadmap) ---
5단계 타임라인:
파트1 (20분): ISO 표준 이해
파트2 (40분): 6대 요소 구축
파트3 (20분): AI 컴플라이언스
파트4 (20분): Trusted OSS 데모
파트5 (15분): Q&A + 시작 로드맵

--- 슬라이드 6: OpenChain Project란? ---
내용 (불릿 3개):
• Linux Foundation이 운영하는 오픈소스 컴플라이언스 국제 프로젝트
• "공급망 전체가 함께 컴플라이언스를 지켜야만 한 기업이 안전하다"는 철학으로 설립
• Qualcomm, Siemens, ARM, Bosch 등 글로벌 기업이 참여해 정책·프로세스를 공개 공유
하단: OpenChain이 제공하는 것 — ① 국제표준 규격 ② 자가 인증 체크리스트 ③ 무료 문서 자료
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 7: ISO/IEC 5230 — 라이선스 컴플라이언스 ---
내용 (불릿 3개):
• 2020년 12월 제정: 오픈소스 컴플라이언스에 관한 유일한 국제표준
• OpenChain 규격(6가지 핵심 요구사항)이 ISO 표준으로 채택된 것
• 공급망에서 구매자가 공급자에게 준수를 요구하기 시작 (Bosch, Scania 사례)
하단: "기업 규모·업종과 무관하게 모든 기업에 적용 가능하도록 설계"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 8: ISO/IEC 5230의 6가지 핵심 요구사항 ---
6칸 인포그래픽 내용:
① 프로그램 설립 — 정책·프로세스·조직 구축
② 관련 업무 정의 및 지원 — 역할·책임·역량 정의
③ 오픈소스 콘텐츠 검토 및 승인 — 사용 오픈소스 식별·검토
④ 컴플라이언스 산출물 생성 및 전달 — 고지문·소스코드 패키지
⑤ 오픈소스 커뮤니티 참여 이해 — 기여·공개 원칙
⑥ 규격 요구사항 준수 — 자가 인증 및 선언
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 9: ISO/IEC 18974 — 보안 보증 ---
내용 (불릿 3개):
• 2023년 제정: 오픈소스 소프트웨어의 알려진 보안 취약점 관리를 위한 국제표준
• ISO/IEC 5230(라이선스)과 쌍으로 운영 — 컴플라이언스 + 보안의 두 축
• CVE 모니터링, 취약점 대응 프로세스, SBOM 기반 보안 관리를 다룸
하단: "KT는 2024년 10월 ISO/IEC 18974 인증을 획득 (국내 첫 사례 중 하나)"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 10: ISO/IEC 42001 — AI 관리 시스템 ---
내용 (불릿 3개):
• 2023년 제정: AI 시스템을 책임감 있게 개발·운영·관리하기 위한 AI 관리 시스템(AIMS) 표준
• ISO 9001, ISO 27001과 동일한 경영 시스템 구조 — AI 거버넌스 전반을 다룸
• 오픈소스 담당자 관점: §5.2, §6.1.2, §8.5 등이 오픈소스 관리와 직접 교차
하단 강조 박스: "이 강의는 ISO 42001 전체가 아닌 '오픈소스와 교차하는 요구사항'에 집중합니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 11: 세 표준 비교 한눈에 ---
3열 비교 표:
| 항목 | ISO/IEC 5230 | ISO/IEC 18974 | ISO/IEC 42001 |
|------|-------------|--------------|--------------|
| 주제 | 오픈소스 라이선스 컴플라이언스 | 오픈소스 보안 보증 | AI 관리 시스템 |
| 제정 연도 | 2020 | 2023 | 2023 |
| 운영 주체 | OpenChain (Linux Foundation) | OpenChain (Linux Foundation) | ISO/IEC JTC 1 SC 42 |
| 자가 인증 | ✅ 무료 체크리스트 제공 | ✅ 무료 체크리스트 제공 | ❌ 없음 (갭 분석 방식) |
| 오픈소스 담당자 관련성 | ★★★ 핵심 | ★★★ 핵심 | ★★ 교차 요구사항 |
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 12: 자가 인증이란? ---
3단계 프로세스:
① 체크리스트 확인 — certification.openchainproject.org에서 Yes/No 질문에 답변
② 결과 제출 — 모든 항목 Yes이면 Conforming Submission 제출
③ 인증 선언 — Linux Foundation 확인 후 ISO/IEC 5230 준수 선언 가능
하단 박스: "비용 없음 · 온라인으로 진행 · OpenChain이 가장 권장하는 방법"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 14: 자가 인증 결과 예시 ---
표 형식:
| 항목 | 질문 예시 | 판정 |
|------|---------|------|
| 정책 문서화 | 오픈소스 정책이 문서화되어 있는가? | ✅ Yes |
| 역할 정의 | 담당자의 역할과 책임이 문서화되어 있는가? | ✅ Yes |
| 프로세스 | 오픈소스 검토·승인 프로세스가 있는가? | ⚠️ No (개선 필요) |
| SBOM 관리 | SBOM을 생성하고 유지하는가? | ⚠️ No (개선 필요) |
| 교육 | 담당자가 연 1회 이상 교육을 받는가? | ✅ Yes |
하단: "No 항목 = 보완해야 할 영역 → 이 강의의 파트 2에서 해결 방법을 다룹니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 15: 인증 후 얻을 수 있는 것 ---
내용 (불릿 3개):
• 공급망 신뢰 확보: 글로벌 구매자·파트너에게 오픈소스 거버넌스 수준을 증명
• 내부 체계 완성: 정책·프로세스·도구·교육이 갖춰진 지속 가능한 관리 체계
• 리스크 선제 대응: 소송·보안 사고 발생 전에 취약점을 체계적으로 식별·해소
하단: "OpenChain 인증 선언 기업: SK텔레콤, Kakao, LG전자 등 국내 다수 기업 포함"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/0-openchain/

--- 슬라이드 16: 파트 1 요약 ---
요약 카드 (3개 박스):
박스1: ISO/IEC 5230·18974로 라이선스·보안 거버넌스를 국제표준 수준으로 구축
박스2: ISO/IEC 42001로 AI 시스템의 오픈소스 관리까지 확장
박스3: 자가 인증 체크리스트로 지금 당장 현황 진단 가능
하단 화살표: "다음: 6대 핵심 요소별로 어떻게 구축하는가"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/
```

---

## Phase 2-B: 파트 2 조직 내용 채우기 (슬라이드 17~30)

```
아래 내용으로 슬라이드 17번부터 30번을 업데이트해줘.

--- 슬라이드 17: 6대 핵심 요소 전체 구조 ---
6각형 또는 순환 다이어그램:
① 조직 — 역할·책임·담당자 지정
② 정책 — 오픈소스 정책 문서화
③ 프로세스 — 사용·보안·기여 절차
④ 도구 — 스캔·SBOM·취약점 도구
⑤ 교육 — 역할별 교육·인식 제고
⑥ 준수 — 자가 인증 후 선언
중앙 텍스트: "ISO/IEC 5230 + 18974 요구사항"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/

--- 슬라이드 18: 오픈소스 관리 조직 (OSPO) ---
내용 (불릿 3개):
• OSPO(Open Source Program Office): 기업의 오픈소스 관리 전담 조직 또는 가상 위원회(OSRB)
• 핵심 역할: 오픈소스 프로그램 매니저 · 법무 담당 · IT 담당 · 보안 담당 · 개발 문화 담당
• 소규모 기업은 1인이 전 역할 담당 가능 — 중요한 것은 역할과 책임을 '문서화'하는 것
입증자료: §3.1.2.1 역할·책임 문서화 / §4.1.2.1 역할·책임 식별 / §4.1.2.2 역량 요건 식별
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/

--- 슬라이드 19: 규모별 조직 구성 예시 ---
3열 비교 표:
| 구분 | 소규모 (스타트업·중소기업) | 중규모 | 대규모 |
|------|------------------------|-------|-------|
| 구성 | 1인 담당자 (겸직) | 오픈소스 프로그램 매니저 + 법무 | 전담 OSPO팀 (5인 이상) |
| 법무 지원 | 외부 자문 활용 | 사내 법무팀 협업 | 전담 법무 담당 |
| 도구 운영 | 오픈소스 도구 (무료) | IT팀 협업 | 전담 IT 담당 |
| 참고 사례 | — | SK텔레콤 OSRB | LG전자, Kakao |
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/

--- 슬라이드 20: 담당자 역할 매트릭스 ---
표:
| 역할 | 주요 책임 | 필요 역량 |
|------|---------|---------|
| 오픈소스 프로그램 매니저 | 오픈소스 프로그램 총괄 책임 | 컴플라이언스 전문 지식, 커뮤니케이션 |
| 법무 담당 | 라이선스 해석, 법적 위험 자문 | 저작권·오픈소스 라이선스 전문 지식 |
| IT 담당 | 스캔 도구 운영, CI/CD 자동화 | 오픈소스 도구 이해, 인프라 전문 지식 |
| 보안 담당 | 취약점 분석 도구 운영, CVE 대응 | DevSecOps, SBOM 관리 |
| 사업 부서 | 정책·프로세스 준수 | 라이선스 기본 지식 |
입증자료: §3.2.2.1 역할 식별 / §4.2.2.1 역할 식별
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/

--- 슬라이드 21: 역량 평가 및 기록 ---
내용 (불릿 3개):
• 역할별 필요 역량을 사전 정의하고, 각 담당자의 현재 역량 수준을 평가한다
• 교육 이수 기록과 역량 평가 결과를 문서화하여 보관한다 (연 1회 이상 갱신)
• 역량이 부족한 경우 교육·훈련을 통해 보완하고 그 결과를 기록한다
입증자료: §3.1.2.3 역량 달성 증거 / §4.1.2.4 역량 달성 증거
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/

--- 슬라이드 22: 프로그램 적용 범위 ---
내용 (불릿 3개):
• 오픈소스 프로그램이 적용되는 제품군·서비스·부서의 범위를 명확히 문서화한다
• 적용 범위는 정책 문서에 명시하고, 프로그램 참여자 모두에게 공지한다
• 범위 변경 시 정책을 업데이트하고 담당자에게 재공지한다
입증자료: §3.1.4.1 프로그램 적용 범위 문서 / §4.1.4.1 프로그램 적용 범위 문서
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/
참고 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/

--- 슬라이드 23: 역할 배치 및 예산 확인 ---
내용 (불릿 3개):
• 오픈소스 프로그램 수행에 필요한 역할이 실제 인력에 배치되어 있는지 확인한다
• 충분한 예산이 배정되어 있는지 확인하고 문서화한다 (인력·도구·교육 예산 포함)
• 예산 및 자원 현황을 경영진 보고 문서에 포함한다
입증자료: §3.2.2.2 역할 담당자 및 자원 확인 / §4.2.2.2 역할 담당자 및 자원 확인
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/

--- 슬라이드 24: 법률 자문 접근 방법 ---
내용 (불릿 3개):
• 오픈소스 라이선스 해석이 필요한 경우 내부 법무팀 또는 외부 전문 자문에 접근하는 방법을 정의한다
• 법률 자문 프로세스(요청→검토→회신)를 문서화하고 담당자에게 공지한다
• 소규모 기업은 외부 로펌 또는 OpenChain 파트너사의 자문 서비스를 활용할 수 있다
입증자료: §3.2.2.3 법률 전문성 접근 프로세스
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/

--- 슬라이드 25: 내부 책임 할당 절차 (RACI) ---
RACI 표 예시:
| 활동 | 프로그램 매니저 | 법무 | IT | 개발 부서 |
|------|:------------:|:---:|:--:|:--------:|
| 오픈소스 검토·승인 | R/A | C | I | I |
| 취약점 대응 | A | I | R | C |
| 정책 수립·업데이트 | R/A | C | I | I |
| 도구 운영 | A | I | R | I |
입증자료: §3.2.2.4 내부 책임 할당 확인 / §4.2.2.4 내부 책임 할당 확인
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/
참고 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/

--- 슬라이드 26: 참여자 목록 및 역할 문서화 ---
내용 (불릿 3개):
• 오픈소스 프로그램에 참여하는 모든 담당자의 이름·직함·역할을 문서화한다
• 참여자 목록은 조직 변경 시마다 업데이트하고 이력을 보관한다
• 외부 협력사·자문 등 외부 참여자도 목록에 포함한다
입증자료: §4.1.2.3★ (ISO 18974 전용) 프로그램 참여자 식별 및 역할 명세
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/2-competence/

--- 슬라이드 27: 취약점 해결 전문성 명시 ---
내용 (불릿 3개):
• 오픈소스 보안 취약점을 평가·해결할 수 있는 전문성을 보유한 담당자 또는 자원을 지정한다
• 보안 전문성이 내부에 없는 경우, 외부 전문 자원에 접근하는 방법을 문서화한다
• 취약점 분석 역량(CVSS 해석, 패치 적용 등)을 역량 요건에 명시한다
입증자료: §4.2.2.3★ (ISO 18974 전용) 취약점 해결 전문성 접근 방법
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/1-teams/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/2-relevant-tasks/2-resourced/

--- 슬라이드 28: 오픈소스 정책이 필요한 이유 ---
제목을 결론으로 변경: "정책 없이는 동일한 사건도 사람마다 다르게 판단된다"
내용 (불릿 3개):
• 같은 오픈소스 라이선스라도 담당자마다 판단 기준이 달라지면 일관성이 없어진다
• 정책은 모든 구성원이 동일한 기준으로 판단하도록 하는 '공통 규칙서'
• ISO/IEC 5230·18974 모두 문서화된 오픈소스 정책을 필수 요구사항으로 규정
입증자료: §3.1.1.1 오픈소스 정책 문서 / §4.1.1.1 오픈소스 정책 문서
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/

--- 슬라이드 29: 정책에 담아야 할 핵심 항목 ---
5행 표:
| 항목 | 내용 |
|------|------|
| ① 라이선스 컴플라이언스 | 오픈소스 식별·검토·의무이행 원칙, SBOM 생성·관리 원칙 |
| ② 보안 보증 | 알려진 취약점 탐지·대응 원칙, CVSS 기준 조치 기한 |
| ③ 외부 기여 | 사내 개발자가 외부 오픈소스 프로젝트에 기여하는 원칙 |
| ④ 오픈소스 공개 | 회사 소프트웨어를 오픈소스로 공개하는 원칙 |
| ⑤ 외부 문의 대응 | 제3자 오픈소스 관련 문의를 접수·처리하는 절차 |
하단: "정책은 정기적으로 검토·업데이트되어야 하며, 전 구성원에게 전파되어야 합니다"
입증자료: §3.1.1.2 정책 전파 확인 / §4.1.1.2 정책 전파 확인
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/
ISO 5230 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/1-program-foundation/1-policy/

--- 슬라이드 30: 정책 템플릿 소개 ---
상단: "OpenChain Korea Work Group이 제공하는 무료 정책 템플릿"
중앙: [화면 캡처 placeholder — 정책 템플릿 미리보기]
하단 불릿 3개:
• 라이선스 컴플라이언스·보안·기여·공개·외부문의 항목 포함
• ISO/IEC 5230·18974 요구사항을 모두 충족하도록 설계
• CC BY 4.0 — 자유롭게 수정·활용 가능
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/2-policy/
정책 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/
```

---

## Phase 2-C: 파트 2 프로세스 내용 채우기 (슬라이드 31~41)

```
아래 내용으로 슬라이드 31번부터 41번을 업데이트해줘.

--- 슬라이드 31: 오픈소스 사용 프로세스 흐름도 ---
수평 플로우차트 (6단계):
①오픈소스 식별 → ②라이선스 검토 → ③취약점 확인 → ④승인/반려 → ⑤의무 이행 (고지문·소스코드) → ⑥SBOM 업데이트
각 단계 담당자:
①②③: 사업 부서 | ③: 보안 담당 | ②④: 오픈소스 프로그램 매니저/법무 | ⑤⑥: IT 담당
입증자료: §3.3.1.1 오픈소스 사용 프로세스 / §3.3.2.1 라이선스 컴플라이언스 절차
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
프로세스 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/

--- 슬라이드 32: 외부 문의 공개 채널 운영 ---
내용 (불릿 3개):
• 제3자가 오픈소스 컴플라이언스 및 보안 취약점에 관해 문의할 수 있는 공개 채널을 운영한다
• 채널 예시: 공개 이메일 주소(opensource@company.com), 웹 문의 양식, GitHub 이슈 트래커
• 공개 채널 URL을 제품 문서, 웹사이트, 오픈소스 고지문에 명시한다
입증자료: §3.2.1.1 외부 문의 공개 채널 / §4.2.1.1 외부 문의 공개 채널
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
ISO 5230 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/2-relevant-tasks/1-access/

--- 슬라이드 33: 외부 문의 내부 대응 절차 ---
내용 (불릿 3개):
• 접수된 외부 문의를 어떻게 내부에서 처리하는지 절차를 문서화한다
• 대응 절차: 접수 확인(24시간) → 담당자 배정 → 검토 → 회신(30일 이내)
• 문의 유형별 (라이선스 위반 주장 / 소스코드 요청 / 취약점 신고) 대응 방법을 구분한다
입증자료: §3.2.1.2 외부 문의 내부 처리 절차 / §4.2.1.2 외부 문의 내부 처리 절차
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
프로세스 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/

--- 슬라이드 34: 미준수 사례 검토·시정 절차 ---
내용 (불릿 3개):
• 오픈소스 정책·프로세스 미준수 사례가 발생했을 때 이를 검토하고 시정하는 절차를 정의한다
• 절차: 사례 접수 → 원인 분석 → 시정 조치 → 재발 방지책 수립 → 기록 보관
• 시정 조치 결과를 문서화하고, 유사 사례 예방을 위해 전사에 공유한다
입증자료: §3.2.2.5 미준수 사례 시정 프로세스
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
ISO 5230 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/2-relevant-tasks/2-resourced/

--- 슬라이드 35: 컴플라이언스 산출물 준비·배포 ---
내용 (불릿 3개):
• 컴플라이언스 산출물이란 오픈소스 의무이행을 증명하는 문서: 고지문(NOTICE), 소스코드 패키지, SBOM
• 제품 출시 전 산출물을 준비하고 고객·파트너·최종 사용자에게 배포하는 절차를 정의한다
• 배포 방법: 제품 패키지 동봉, 웹사이트 게시, 서면 요청 대응
입증자료: §3.4.1.1 컴플라이언스 산출물 생성 및 배포 절차
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
ISO 5230 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/4-artifacts/1-compliance-artifacts/

--- 슬라이드 36: 컴플라이언스 산출물 보관 절차 ---
내용 (불릿 3개):
• 배포된 컴플라이언스 산출물(고지문, SBOM, 소스코드 패키지)의 사본을 보관한다
• 보관 기간: 제품 판매 종료 후 최소 3년 (라이선스에 따라 더 길 수 있음)
• 보관 방법: 버전 관리 시스템, 아카이브 스토리지, 문서 관리 시스템
입증자료: §3.4.1.2 컴플라이언스 산출물 사본 보관
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
프로세스 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/

--- 슬라이드 37: 보안 취약점 대응 프로세스 ---
수평 플로우차트 (5단계):
①CVE 모니터링 (상시) → ②영향도 평가 (CVSS 점수 기준) → ③조치 결정 (패치/격리/대체) → ④조치 이행 → ⑤기록 보관
하단 박스:
• CVSS 9.0 이상: 즉시 대응 (7일 이내)
• CVSS 7.0~8.9: 30일 이내 패치
• CVSS 7.0 미만: 다음 릴리스에 포함
입증자료: §3.3.1.2 보안 취약점 대응 프로세스 / §4.1.3.1 보안 취약점 대응 절차
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
프로세스 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/

--- 슬라이드 38: 취약점 대응 8가지 방법 절차 ---
번호 목록 (ISO 18974 요구 8가지 방법):
① 업스트림 수정사항 적용 (패치)
② 다른 버전으로 이전 (업그레이드/다운그레이드)
③ 대체 컴포넌트 사용
④ 빌드 시 컴포넌트 제거
⑤ 격리 또는 비활성화
⑥ 리스크 수용 (CVSS 낮음·비노출·완화 가능)
⑦ 운영·설계 수준의 완화
⑧ 기타 조치 (독자적 패치 등)
입증자료: §4.1.5.1★ (ISO 18974 전용) 취약점 처리 방법 8가지를 포함한 프로세스
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/5-standard-practice/

--- 슬라이드 39: 취약점 및 조치 기록 ---
내용 (불릿 3개):
• 식별된 모든 취약점과 해당 조치 내용을 기록하고 보관한다
• 기록 항목: CVE ID, CVSS 점수, 영향 컴포넌트, 조치 방법, 조치 완료일, 담당자
• 취약점 기록은 컴플라이언스 감사·사후 검토 시 증거 자료로 활용된다
입증자료: §4.3.2.1 식별된 취약점과 조치 이력 / §4.3.2.2★ (ISO 18974 전용) 취약점 처리 기록 보관
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/3-content-review/2-security-assurance/

--- 슬라이드 40: 오픈소스 기여 프로세스 ---
수평 플로우차트 (4단계):
①기여 의향 확인 → ②사내 검토 (IP·라이선스) → ③법무 승인 → ④기여 및 기록
하단 불릿:
• 회사 IP(특허, 영업비밀) 포함 여부 사전 확인 필수
• 기여 시 사용되는 라이선스 확인 (CLA 서명 여부 등)
• 기여 내역은 문서화하여 보관
입증자료: §3.5.1.1 기여 정책 / §3.5.1.2 커뮤니티 참여 정책 / §3.5.1.3 기여 프로세스
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
ISO 5230 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/5-community/1-contributions/

--- 슬라이드 41: 프로세스 템플릿 소개 ---
상단: "OpenChain Korea Work Group이 제공하는 무료 프로세스 템플릿"
중앙: [화면 캡처 placeholder]
하단 불릿 3개:
• 오픈소스 사용·보안취약점대응·기여·공개 프로세스 포함
• SBOM 절차 포함 (2026 업데이트)
• ISO/IEC 5230·18974 입증자료로 활용 가능
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/3-process/
프로세스 템플릿: https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/
```

---

## Phase 2-D: 파트 2 도구·교육·준수 내용 채우기 (슬라이드 42~56)

```
아래 내용으로 슬라이드 42번부터 56번을 업데이트해줘.

--- 슬라이드 42: 왜 도구가 필요한가 ---
좌우 Before/After:
[Before - 도구 없음]
• 개발자가 수동으로 오픈소스 목록 정리
• 라이선스 검토를 매번 처음부터
• 취약점 공지를 개인이 구독해서 확인
• 릴리스 직전에야 문제 발견

[After - 도구 도입]
• CI/CD 파이프라인에서 자동 스캔
• SBOM이 자동 생성·업데이트
• CVE 모니터링 자동화
• 개발 초기에 리스크 감지
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/

--- 슬라이드 43: 도구 생태계 지도 ---
2×2 카테고리:
[소스코드 스캔]
FOSSology, FOSSLight Scanner, SCANOSS

[SBOM 생성]
cdxgen (CycloneDX), Syft (SPDX/CycloneDX), FOSSLight

[거버넌스·SBOM 관리]
SW360, DependencyTrack

[취약점 관리]
DependencyTrack, OSV-SCALIBR, Grype

하단: "모두 오픈소스 — 무료로 도입 가능"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/

--- 슬라이드 44: 소스코드 스캔: FOSSology & FOSSLight ---
2열 레이아웃:
[FOSSology]
• Linux Foundation 운영 오픈소스 도구
• 소스코드 스캔 + 라이선스·저작권 정보 추출
• 웹 기반 UI — 대규모 코드베이스 분석 지원
• 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/tools/1-fossology/

[FOSSLight]
• LG전자가 개발·오픈소스 공개
• 스캔·디펜던시·리포트 통합 관리
• Gradle, Maven, NPM, PIP 등 패키지 매니저 지원
• 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/tools/3-fosslight/

입증자료: §3.3.1.1 오픈소스 식별·검토 프로세스 / §4.1.3.1 보안 취약점 대응 지원 도구
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/

--- 슬라이드 45: SBOM 생성: cdxgen & Syft ---
2열 레이아웃:
[cdxgen]
• OWASP CycloneDX 프로젝트 공식 도구
• 20여 개 언어·생태계 지원 (Java, JS, Python, Go, Rust 등)
• CycloneDX 및 SPDX 형식 SBOM 생성
• 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/tools/5-cdxgen/

[Syft]
• Anchore 개발 오픈소스 SBOM 생성 도구
• 컨테이너 이미지·파일시스템·아카이브 분석
• SPDX, CycloneDX, Syft JSON 포맷 지원
• 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/tools/6-syft/

입증자료: §3.3.1.1 오픈소스 식별 프로세스 / §4.3.1.1 SBOM 생성 절차
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/

--- 슬라이드 46: 거버넌스·SBOM 관리: SW360 & DependencyTrack ---
2열 레이아웃:
[SW360]
• Eclipse Foundation 오픈소스 프로젝트
• 컴포넌트·라이선스·프로젝트 중앙 관리
• 컴플라이언스 산출물 생성·보관
• 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/tools/2-sw360/

[DependencyTrack]
• OWASP 프로젝트 — SBOM 기반 리스크 관리
• SBOM 업로드 → 취약점 자동 분석
• CVE·EPSS·VEX 연동 지원
• 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/tools/7-dependency-track/

입증자료: §3.4.1.1 컴플라이언스 산출물 관리 / §4.3.1.2 SBOM 정확성 검토 / §4.3.2.1 취약점 식별·추적
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/

--- 슬라이드 47: CI/CD 파이프라인 연동 ---
아키텍처 다이어그램 (왼쪽→오른쪽 흐름):
[소스코드 커밋] → [CI 빌드] → [SBOM 생성 (cdxgen/Syft)] → [라이선스 스캔 (FOSSology/FOSSLight)] → [취약점 분석 (DependencyTrack)] → [결과 리포트] → [승인/차단]

하단 불릿:
• 개발자가 코드를 올리는 순간 자동으로 오픈소스 검토가 시작됨
• 문제가 있으면 배포를 자동으로 차단 — 릴리스 직전 사고 예방
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/

--- 슬라이드 48: 도구 선택 가이드 ---
매트릭스 표:
| 필요 기능 | 추천 도구 | 비고 |
|---------|---------|------|
| 소스코드 라이선스 스캔 | FOSSology 또는 FOSSLight | 둘 다 무료 오픈소스 |
| SBOM 자동 생성 | cdxgen 또는 Syft | CI/CD 통합 용이 |
| SBOM 중앙 관리·취약점 연동 | DependencyTrack | OWASP 프로젝트 |
| 컴플라이언스 산출물 통합 관리 | SW360 | Eclipse Foundation |
| 컨테이너 이미지 분석 | Syft + Grype | 컨테이너 환경에 최적 |
하단: "처음 시작이라면: cdxgen(SBOM 생성) + DependencyTrack(관리) 조합을 권장"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/4-tool/

--- 슬라이드 49: 교육 및 인식 제고 ---
역할별 표:
| 대상 | 교육 내용 | 주기 |
|------|---------|------|
| 경영진 | 오픈소스 거버넌스의 비즈니스 리스크·가치 | 연 1회 |
| 오픈소스 담당자 | 라이선스 컴플라이언스·보안 전문 교육 | 연 1회 이상 |
| 개발자 | 라이선스 기초, 프로세스 준수 방법, 도구 사용법 | 신규 입사 시 + 연 1회 |
| 법무 담당 | 오픈소스 라이선스 법적 해석, 분쟁 사례 | 연 1회 |
입증자료: §3.1.2.1 역할별 역량 정의 / §3.1.2.2 역할별 역량 요건 / §3.1.3.1 교육 이수 기록 / §4.1.2.1·4.1.2.2·4.1.3.1 (ISO 18974 대응)
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/5-training/

--- 슬라이드 50: 교육 커리큘럼 예시 ---
3열 표:
| 개발자 과정 | 담당자 과정 | 경영진 과정 |
|-----------|-----------|-----------|
| 오픈소스 라이선스 기초 | ISO/IEC 5230·18974 전체 | 오픈소스 리스크와 기회 |
| 사내 프로세스 사용법 | 자가 인증 방법 실습 | 공급망 컴플라이언스 동향 |
| 도구 사용법 (실습) | 도구 운영 및 자동화 | 인증 획득의 비즈니스 가치 |
| 오픈소스 기여 원칙 | 외부 문의 대응 절차 | — |
하단: "OpenChain은 무료 교육 자료와 커리큘럼을 CC-0 라이선스로 제공합니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/5-training/
ISO 5230 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/1-program-foundation/3-awareness/

--- 슬라이드 51: 준수 선언 (Conformance) ---
3단계 프로세스:
① 자가 인증 완료
   → certification.openchainproject.org에서 모든 항목 Yes
② 준수 확인 문서 작성
   → "이 프로그램은 ISO/IEC 5230의 모든 요구사항을 충족합니다" 선언문
③ 외부 공개 선언
   → OpenChain 웹사이트 또는 자사 오픈소스 포털에 게재
하단: "인증 후 18개월마다 갱신 확인 필요 (ISO/IEC 5230 §3.6.2.1)"
예시: "SK텔레콤, LG전자, Kakao, KT 등 국내 기업이 인증 선언 완료"
입증자료: §3.6.1.1 자가 인증 문서 / §3.6.2.1 인증 갱신 기록 / §4.4.1.1 준수 선언 / §4.4.2.1 인증 갱신
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/
ISO 5230 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso5230_guide/6-conformance/1-conformance/

--- 슬라이드 52: 주기적 검토 및 프로세스 변경 증거 ---
내용 (불릿 3개):
• 오픈소스 보안 프로그램을 연 1회 이상 검토하여 현행화한다
• 검토 시 고려 항목: 신규 취약점 동향, 프로세스 효과성, 도구 업데이트, 법적 환경 변화
• 검토 결과와 변경 사항을 문서화하여 지속적 개선의 증거로 보관한다
입증자료: §4.1.2.5★ (ISO 18974 전용) 프로그램 주기적 검토 및 변경 증거
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/2-competence/

--- 슬라이드 53: 내부 모범 사례 일치 검증 ---
내용 (불릿 3개):
• 운영 중인 오픈소스 보안 프로그램이 회사 내부 모범 사례와 일치하는지 주기적으로 검증한다
• 검증 방법: 자가 진단 체크리스트, 내부 감사, 외부 전문가 검토
• 불일치 사항은 개선 계획을 수립하고 추적 관리한다
입증자료: §4.1.2.6★ (ISO 18974 전용) 내부 모범 사례와의 일치 여부 검증
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/2-competence/

--- 슬라이드 54: 성과 메트릭 세트 ---
메트릭 표:
| 측정 항목 | 측정 방법 | 목표 |
|---------|---------|------|
| 취약점 대응 속도 | 발견~패치 평균 일수 | CVSS 9+ ≤ 7일 |
| SBOM 커버리지 | SBOM에 포함된 컴포넌트 비율 | 100% |
| 교육 이수율 | 담당자 연간 교육 이수 비율 | 100% |
| 미준수 사례 재발률 | 동일 유형 반복 발생 건수 | 0건 |
입증자료: §4.1.4.2★ (ISO 18974 전용) 프로그램 성과 측정 메트릭 세트
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/4-scope/

--- 슬라이드 55: 지속적 개선 증거 ---
내용 (불릿 3개):
• 성과 메트릭 결과를 분석하여 개선 영역을 식별하고 구체적 개선 계획을 수립한다
• 개선 계획 실행 결과를 문서화하고, 경영진에게 주기적으로 보고한다
• 지속적 개선 사이클(PDCA: Plan-Do-Check-Act)을 오픈소스 프로그램에 적용한다
입증자료: §4.1.4.3★ (ISO 18974 전용) 지속적 개선 수행의 증거
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/6-conforming/
ISO 18974 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso18974_guide/1-program-foundation/4-scope/

--- 슬라이드 56: 파트 2 요약 + 참고 링크 ---
6대 요소 체크리스트:
☐ 조직: 역할·책임·담당자를 문서화했는가?
☐ 정책: 오픈소스 정책을 수립·전파했는가?
☐ 프로세스: 사용·보안·기여 프로세스가 있는가?
☐ 도구: 스캔·SBOM·취약점 도구를 운영 중인가?
☐ 교육: 역할별 교육 계획과 기록이 있는가?
☐ 준수: 자가 인증을 통해 현황을 진단했는가?

링크 2개:
• 기업 오픈소스 관리 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/
• 자가 인증 체크리스트: https://certification.openchainproject.org/
```

---

## Phase 2-E: 파트 3 AI 컴플라이언스 내용 채우기 (슬라이드 57~69)

```
아래 내용으로 슬라이드 57번부터 69번을 업데이트해줘.

--- 슬라이드 57: 기존 거버넌스로 충분한가? ---
좌우 갭 분석:
[기존 오픈소스 거버넌스로 커버되는 것]
• 오픈소스 라이브러리·프레임워크 관리
• 소스코드 스캔, 라이선스 검토
• 보안 취약점(CVE) 대응

[AI 시스템에서 새로 필요한 것]
• 사전 훈련 모델의 커스텀 라이선스 검토
• 학습 데이터셋의 오픈 데이터 라이선스 관리
• AI-BOM(AI 구성요소 명세서) 작성·유지

하단 결론: "기존 체계를 AI 영역으로 확장해야 합니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/

--- 슬라이드 58: AI 시스템의 오픈소스 3대 영역 ---
트리 다이어그램:
[AI 시스템]
├── ① AI 프레임워크·라이브러리
│   (PyTorch, TensorFlow, LangChain 등)
│   → 기존 ISO/IEC 5230 프로세스 적용
│
├── ② 사전 훈련 모델 (Pre-trained Model)
│   (Llama, Mistral, Falcon, BERT 등)
│   → 모델별 커스텀 라이선스 별도 확인 필요
│
└── ③ 학습 데이터셋
    (Common Crawl, Wikipedia, CC-BY 데이터 등)
    → 오픈 데이터 라이선스 의무 이행
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/

--- 슬라이드 59: AI 프레임워크 라이선스 관리 ---
내용 (불릿 3개):
• AI 개발에 사용하는 오픈소스 프레임워크는 일반 소프트웨어와 동일하게 ISO/IEC 5230 프로세스를 적용한다
• 기존 스캔 도구(FOSSology, FOSSLight)로 AI 코드 저장소도 분석한다
• SBOM에 AI 프레임워크·라이브러리와 버전 정보를 포함한다
하단: "이미 갖춰진 오픈소스 거버넌스 체계를 그대로 활용할 수 있습니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/

--- 슬라이드 60: AI 프레임워크 주요 라이선스 표 ---
비교 표:
| 프레임워크 | 라이선스 | 상업적 사용 | 주요 의무 |
|-----------|---------|:----------:|---------|
| PyTorch | BSD 3-Clause | ✅ 가능 | 저작권 표시 |
| TensorFlow | Apache 2.0 | ✅ 가능 | 저작권 표시, 변경 고지 |
| Hugging Face Transformers | Apache 2.0 | ✅ 가능 | 저작권 표시 |
| LangChain | MIT | ✅ 가능 | 저작권 표시 |
| scikit-learn | BSD 3-Clause | ✅ 가능 | 저작권 표시 |
하단: "AI 프레임워크는 대부분 허용적 라이선스 — 기존 프로세스로 관리 가능"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/

--- 슬라이드 61: 오픈소스 AI 모델 라이선스 관리 ---
내용 (불릿 3개):
• 사전 훈련 모델은 일반 오픈소스와 달리 커스텀 라이선스를 사용하는 경우가 많다
• 상업적 사용 제한, 사용자 수(MAU) 기반 제한, 파생 모델 공개 의무 등 조건이 모델마다 다르다
• Hugging Face 모델 허브에서 모델 카드(Model Card)와 라이선스를 반드시 직접 확인해야 한다

경고 박스:
"⚠️ AI 모델 라이선스는 표준화되지 않았습니다.
기존 라이선스 가이드로 자동 판단하지 말고, 모델별로 개별 확인이 필요합니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/

--- 슬라이드 62: AI 모델 라이선스 유형 비교 ---
비교 표:
| 라이선스 유형 | 대표 모델 | 상업적 사용 | 파생 모델 공개 |
|-------------|---------|:----------:|:-----------:|
| Apache 2.0 | Falcon, Mistral 7B | ✅ 가능 | ❌ 불필요 |
| MIT | GPT-2, GPT-J | ✅ 가능 | ❌ 불필요 |
| Llama Community License | Llama 3 | ⚠️ 조건부 (MAU 7억 이하 무료) | ❌ 불필요 |
| CC-BY 4.0 | 일부 학술 모델 | ✅ 가능 | 저작자 표시 필요 |
| CC-BY-NC | 일부 연구 모델 | ❌ 비상업적 한정 | — |
하단: "Apache 2.0·MIT 모델을 우선 선택하면 컴플라이언스 부담이 낮습니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/

--- 슬라이드 63: 학습 데이터셋 관리 ---
표 형식:
| 라이선스 | 저작자 표시 | 상업적 사용 | 동일 조건 변경 허락 |
|---------|:----------:|:----------:|:-----------------:|
| CC0 | ❌ 불필요 | ✅ 가능 | ❌ 불필요 |
| CC-BY 4.0 | ✅ 필요 | ✅ 가능 | ❌ 불필요 |
| CC-BY-SA 4.0 | ✅ 필요 | ✅ 가능 | ✅ 필요 |
| CC-BY-NC 4.0 | ✅ 필요 | ❌ 비상업적 한정 | ❌ 불필요 |

체크포인트 (불릿 3개):
• AI SBOM에 학습 데이터셋과 라이선스를 기록한다
• CC-BY 계열 데이터 사용 시 모델 카드에 출처를 명시한다
• CC-BY-SA 조건 데이터를 학습에 사용한 경우, 파생 모델 라이선스를 법무팀과 협의한다
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/

--- 슬라이드 64: AI-BOM (AI SBOM)이란? ---
개념 다이어그램:
[AI-BOM = AI 시스템의 구성 요소 명세서]
├── 오픈소스 프레임워크 목록 + 버전 + 라이선스
├── 사전 훈련 모델 + 라이선스 + 출처
└── 학습 데이터셋 + 라이선스 + 출처

불릿 3개:
• 일반 SBOM의 AI 버전 — AI 시스템의 투명성과 공급망 신뢰 확보
• SPDX 3.0 AI Profile 형식을 사용하면 국제 표준과 호환 가능
• ISO/IEC 42001 §7.5: AI 시스템의 문서화 요구사항에 직접 대응
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/
ISO 42001 가이드: https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/

--- 슬라이드 65: AI-BOM 실제 예시 ---
상단 설명: "SPDX 3.0 AI Profile 기반 AI-BOM 모델 항목 예시"
코드 블록:

  # AI SBOM 모델 항목 예시 (SPDX 3.0 AI Profile 기반)
  - name: "meta-llama/Llama-3.1-8B"
    version: "3.1"
    license: "Llama Community License Agreement"
    primaryPurpose: "inference"
    hyperparameter:
      contextWindow: 131072
    modelCard: "https://huggingface.co/meta-llama/Llama-3.1-8B"

링크: https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/

--- 슬라이드 66: OpenChain AI-BOM 가이드 소개 ---
상단: "OpenChain Korea Work Group AI Work Group 산출물"
중앙: [화면 캡처 placeholder]
불릿 3개:
• AI 시스템의 구성 요소(모델·데이터셋·프레임워크)를 SPDX 3.0 AI Profile로 문서화하는 방법 안내
• 실제 기업에서 바로 적용 가능한 템플릿 제공
• CC BY 4.0 — 무료로 활용 가능
링크: https://openchain-project.github.io/OpenChain-KWG/resource/AI_work_group/

--- 슬라이드 67: ISO 42001 오픈소스 교차 조항 ---
2열 표:
| ISO 42001 조항 | 오픈소스 담당자 역할 |
|----------------|---------------------|
| §5.2 AI 정책 | AI 정책에 오픈소스 사용 원칙 포함 |
| §6.1.2 AI 리스크 평가 | OSS 라이선스·취약점 리스크 식별·평가 |
| §7.5 문서화 | AI SBOM 수립·유지 |
| §8.5 AI 생애주기 | 개발 단계별 OSS 컴플라이언스 검토 |
| §8.6 AI 데이터 | 데이터셋 라이선스 관리 |
| §8.8 외부 AI 조달 | 외부 오픈소스 모델 공급망 검증 |
링크: https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/

--- 슬라이드 68: ISO 42001 체크포인트 실무 예시 ---
체크리스트 표:
| 조항 | 체크 항목 | 확인 방법 |
|------|---------|---------|
| §5.2 | AI 정책에 "오픈소스 AI 모델 사용 원칙" 항목이 있는가? | 정책 문서 검토 |
| §6.1.2 | AI 프로젝트 리스크 평가 시 OSS 라이선스 리스크를 항목에 포함하는가? | 리스크 평가 양식 확인 |
| §7.5 | AI-BOM을 작성하고 최신 상태로 유지하는가? | AI-BOM 문서 확인 |
| §8.5 | 개발 단계별 OSS 컴플라이언스 검토 단계가 프로세스에 포함되어 있는가? | 프로세스 문서 확인 |
| §8.8 | 외부에서 조달한 오픈소스 AI 모델의 라이선스를 검증하는 절차가 있는가? | 조달 절차 문서 확인 |
링크: https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/

--- 슬라이드 69: 파트 3 요약 ---
요약 카드 3개:
카드1: AI 시스템의 오픈소스는 3가지 영역 — 프레임워크·모델·데이터셋
카드2: 기존 ISO/IEC 5230 체계를 AI 영역으로 확장하면 대부분 커버됨
카드3: AI-BOM + ISO 42001 교차 조항 점검으로 AI 거버넌스 완성
하단 화살표: "다음: Trusted OSS로 혼자서 체계를 구축하는 방법"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/7-ai-compliance/
```

---

## Phase 2-F: 파트 4·5 내용 채우기 (슬라이드 70~77)

```
아래 내용으로 슬라이드 70번부터 77번을 업데이트해줘.

--- 슬라이드 70: Trusted OSS란? ---
상단 설명: "AI Agent와 대화하며 오픈소스 거버넌스 체계를 스스로 구축하는 셀프스터디 플랫폼"
중앙: [화면 캡처 placeholder — trustedoss.github.io/docs 메인 화면]
불릿 3개:
• ISO/IEC 5230·18974 기반 셀프스터디 모드 제공
• Agent와 대화하며 우리 회사 상황에 맞는 정책·프로세스를 설계
• 가이드 링크와 템플릿을 실시간으로 안내받으며 진행
링크: https://trustedoss.github.io/docs

--- 슬라이드 71: 데모 시나리오 미리보기 ---
3단계 순서도:
① "우리 회사는 오픈소스 정책이 없어요"
   → Agent가 정책 작성 방법 및 KWG 템플릿 안내
② "SBOM을 어떻게 시작해야 하나요?"
   → Agent가 도구 추천 (cdxgen/Syft) 및 가이드 링크 제공
③ "자가 인증을 받고 싶은데 어디서 시작하나요?"
   → 체크리스트 및 우선순위 안내
하단: "데모에서 이 흐름을 실제로 보여드리겠습니다"
링크: https://trustedoss.github.io/docs

--- 슬라이드 73: 데모 후: 혼자서 따라가는 방법 ---
불릿 4개:
• Step 1: trustedoss.github.io/docs 접속
• Step 2: 셀프스터디 모드에서 현재 상황 입력 (팀 규모, 현재 체계 수준)
• Step 3: Agent 안내에 따라 가이드·템플릿 활용
• Step 4: 자가 인증 체크리스트로 진행 현황 점검
링크: https://trustedoss.github.io/docs
하단: "오늘 배운 내용 + Trusted OSS 셀프스터디 = 혼자서 체계 구축 가능"

--- 슬라이드 74: 오늘 배운 핵심 3가지 ---
요약 카드 3개:
카드1: ISO/IEC 5230·18974로 라이선스·보안 두 축의 거버넌스 체계 구축 가능
카드2: 6대 요소(조직·정책·프로세스·도구·교육·준수) 50개 입증자료 = 완성된 체계
카드3: AI 시스템도 기존 체계를 확장하면 ISO 42001 교차 요구사항 충족 가능
하단: "어디서 무엇을 시작할지 이제 알고 있습니다"
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/

--- 슬라이드 75: 단계별 시작 로드맵 ---
타임라인 (3단계):
[1주차]
☐ 자가 인증 체크리스트로 현황 진단 (certification.openchainproject.org)
☐ Trusted OSS 셀프스터디 시작
☐ 부족한 항목 파악 및 우선순위 결정

[1개월]
☐ 오픈소스 정책 초안 작성 (KWG 정책 템플릿 활용)
☐ 오픈소스 프로세스 초안 작성 (KWG 프로세스 템플릿 활용)
☐ 담당자 역할·책임 문서화

[3개월]
☐ 스캔 도구 1개 도입 (cdxgen 또는 FOSSLight 권장)
☐ 첫 번째 SBOM 생성
☐ 자가 인증 재점검 및 보완
하단: "완벽하지 않아도 됩니다. 시작하는 것이 중요합니다."
링크: https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/

--- 슬라이드 76: 참고 가이드 링크 모음 ---
링크 5개 (큰 글씨로 배치):
① 기업 오픈소스 관리 가이드 (전체)
   https://openchain-project.github.io/OpenChain-KWG/guide/opensource_for_enterprise/

② 정책 템플릿 (바로 사용 가능)
   https://openchain-project.github.io/OpenChain-KWG/guide/templates/1-policy/

③ 프로세스 템플릿 (바로 사용 가능)
   https://openchain-project.github.io/OpenChain-KWG/guide/templates/2-process-template/

④ ISO 42001 가이드 (오픈소스 관점)
   https://openchain-project.github.io/OpenChain-KWG/guide/iso42001_guide/

⑤ Trusted OSS 셀프스터디
   https://trustedoss.github.io/docs

하단: "모든 가이드와 템플릿은 CC BY 4.0 — 무료로 활용 가능합니다"

--- 슬라이드 77: Q&A ---
중앙 큰 글씨: "Q&A"
하단 소자: "OpenChain KWG 커뮤니티: https://openchain-project.github.io/OpenChain-KWG/"
```

---

## 슬라이드별 개선 프롬프트 (필요 시 사용)

```
# 특정 슬라이드 텍스트 줄이기
슬라이드 [번호]의 내용을 핵심 불릿 3개로 요약해줘

# 표 형식으로 변환
슬라이드 [번호]의 내용을 비교 표 형식으로 바꿔줘

# 발표자 노트 추가
슬라이드 [번호]에 발표자 노트를 추가해줘.
내용: [슬라이드 설명 2~3문장, 예상 질문 1개와 답변]

# 레이아웃 변경
슬라이드 [번호]를 좌우 2열 레이아웃으로 바꿔줘

# 파트 전환 슬라이드 디자인
슬라이드 [번호]를 진한 배경에 흰 글씨의 파트 전환 슬라이드로 바꿔줘
대상: 슬라이드 5(강의 구성), 17(6대 핵심 요소), 57(AI 파트), 70(데모 파트), 74(마무리 파트)
```

---

## Step 2: PowerPoint Copilot으로 디자인 적용

Word outline을 PPT로 변환한 뒤 Copilot에 아래 프롬프트 사용:

```
이 프레젠테이션에 파란색 계열의 전문가 테마를 적용해줘.
모든 슬라이드의 한국어 텍스트가 화면 안에 들어오도록 글자 크기를 조정해줘.
슬라이드 5, 17, 57, 70, 74번은 진한 배경에 흰 글씨의 파트 전환 슬라이드로 바꿔줘.
```

---

## Step 3: 수동 작업 필요 슬라이드

| 슬라이드 | 작업 내용 |
|---------|---------|
| 5번 | Roadmap 타임라인 도형 직접 작성 |
| 11번 | 3열 비교 표 삽입 |
| 13번 | certification.openchainproject.org 화면 캡처 삽입 |
| 17번 | 6각형/순환 다이어그램 도형 작성 |
| 30번 | KWG 정책 템플릿 화면 캡처 삽입 |
| 31, 37, 40번 | 프로세스 플로우차트 도형 작성 |
| 41번 | KWG 프로세스 템플릿 화면 캡처 삽입 |
| 47번 | CI/CD 아키텍처 다이어그램 작성 |
| 65번 | YAML 코드 블록 → 고정폭 폰트 텍스트 박스로 교체 |
| 66번 | AI Work Group 페이지 화면 캡처 삽입 |
| 70번 | trustedoss.github.io/docs 화면 캡처 삽입 |
| 72번 | 라이브 데모 / 사전 녹화 영상 삽입 |

---

## 입증자료 커버리지 요약 (50개 전체)

### ISO/IEC 5230 (25개)

| 입증자료 | 슬라이드 |
|---------|---------|
| §3.1.1.1 오픈소스 정책 문서 | 28 |
| §3.1.1.2 정책 전파 확인 | 29 |
| §3.1.2.1 역할·책임 문서화 | 18 |
| §3.1.2.2 역할별 역량 요건 | 18, 49 |
| §3.1.2.3 역량 달성 증거 | 21 |
| §3.1.3.1 교육 이수 기록 | 49 |
| §3.1.4.1 프로그램 적용 범위 | 22 |
| §3.2.1.1 외부 문의 공개 채널 | 32 |
| §3.2.1.2 외부 문의 내부 처리 절차 | 33 |
| §3.2.2.1 역할 식별 | 20 |
| §3.2.2.2 역할 담당자 및 자원 확인 | 23 |
| §3.2.2.3 법률 전문성 접근 프로세스 | 24 |
| §3.2.2.4 내부 책임 할당 | 25 |
| §3.2.2.5 미준수 사례 시정 프로세스 | 34 |
| §3.3.1.1 오픈소스 식별 프로세스 | 31, 44 |
| §3.3.1.2 보안 취약점 대응 프로세스 | 37 |
| §3.3.2.1 라이선스 컴플라이언스 절차 | 31 |
| §3.4.1.1 컴플라이언스 산출물 생성·배포 | 35 |
| §3.4.1.2 컴플라이언스 산출물 사본 보관 | 36 |
| §3.5.1.1 기여 정책 | 40 |
| §3.5.1.2 커뮤니티 참여 정책 | 40 |
| §3.5.1.3 기여 프로세스 | 40 |
| §3.6.1.1 자가 인증 문서 | 51 |
| §3.6.2.1 인증 갱신 기록 | 51 |
| (§3.1.5 라이선스 의무 식별) | 31 |

### ISO/IEC 18974 (25개)

| 입증자료 | 슬라이드 |
|---------|---------|
| §4.1.1.1 오픈소스 정책 문서 | 28 |
| §4.1.1.2 정책 전파 확인 | 29 |
| §4.1.2.1 역할·책임 식별 | 18, 49 |
| §4.1.2.2 역량 요건 식별 | 18, 49 |
| §4.1.2.3★ 참여자 식별 및 역할 명세 | 26 |
| §4.1.2.4 역량 달성 증거 | 21 |
| §4.1.2.5★ 프로그램 주기적 검토 증거 | 52 |
| §4.1.2.6★ 내부 모범 사례 일치 검증 | 53 |
| §4.1.3.1 보안 취약점 대응 절차 | 37, 44 |
| §4.1.4.1 프로그램 적용 범위 | 22 |
| §4.1.4.2★ 성과 메트릭 세트 | 54 |
| §4.1.4.3★ 지속적 개선 증거 | 55 |
| §4.1.5.1★ 취약점 처리 8가지 방법 | 38 |
| §4.2.1.1 외부 문의 공개 채널 | 32 |
| §4.2.1.2 외부 문의 내부 처리 절차 | 33 |
| §4.2.2.1 역할 식별 | 20 |
| §4.2.2.2 역할 담당자 및 자원 확인 | 23 |
| §4.2.2.3★ 취약점 해결 전문성 | 27 |
| §4.2.2.4 내부 책임 할당 | 25 |
| §4.3.1.1 SBOM 생성 절차 | 45 |
| §4.3.1.2 SBOM 정확성 검토 | 46 |
| §4.3.2.1 취약점 식별·추적 | 39, 46 |
| §4.3.2.2★ 취약점 처리 기록 보관 | 39 |
| §4.4.1.1 준수 선언 | 51 |
| §4.4.2.1 인증 갱신 | 51 |
