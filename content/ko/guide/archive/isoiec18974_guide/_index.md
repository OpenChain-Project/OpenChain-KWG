---
title: "오픈소스 보안 보증: ISO/IEC 18974 기업 도입 및 인증 가이드"
linkTitle: "ISO/IEC 18974 가이드"
weight: 15
type: docs
description: >
  기업이 ISO/IEC 18974를 충족하여 오픈소스 보안 보증 체계를 구축하기 위한 방법을 설명한다. 
---

**오픈소스 보안 보증: ISO/IEC 18974 기업 도입 및 인증 가이드**는 현대 소프트웨어 개발 환경에서 필수적인 요소가 된 오픈소스 소프트웨어(OSS)의 안전한 활용을 위한 지침을 제공합니다. 이 가이드는 오픈소스 소프트웨어의 사용 증가와 함께 중요성이 더욱 강조되고 있는 보안 문제에 대한 효과적인 해결 방안을 제시하고, 국제 표준인 ISO/IEC 18974 인증 획득을 위한 단계별 절차와 핵심 전략을 상세히 안내합니다.

본 가이드의 주요 목표는 다음과 같습니다.

1. **ISO/IEC 18974 표준에 대한 이해**: ISO/IEC 18974의 핵심 요구사항과 구현 방법을 명확하게 설명하여 조직이 오픈소스 보안 관리 체계를 효과적으로 구축할 수 있도록 지원합니다.
2. **조직 특성별 맞춤형 전략 제시**: 대기업, 중소기업, 스타트업 등 다양한 규모와 특성을 가진 조직이 ISO/IEC 18974를 성공적으로 구현할 수 있도록 맞춤형 접근 방식을 제공합니다.
3. **실질적인 가이드라인 및 템플릿 제공**: 정책 수립, SBOM(Software Bill of Materials, 소프트웨어 자재 명세서) 관리, 취약점 대응 등 각 단계별 필요한 구체적인 가이드라인과 템플릿을 제공하여 실무 적용을 돕습니다.
4. **성공 사례 및 교훈 공유**: ISO/IEC 18974 인증 획득에 성공한 기업들의 사례를 분석하고, 성공 요인과 실패 요인을 공유하여 조직이 시행착오를 줄이고 효율적으로 인증을 획득할 수 있도록 지원합니다.

본 가이드의 주요 대상 독자는 다음과 같습니다.

- 오픈소스 소프트웨어 보안 관리 담당자
- 소프트웨어 개발자 및 엔지니어
- 정보 보안 책임자(CISO) 및 IT 관리자
- 법무 및 컴플라이언스 담당자
- 오픈소스 프로그램 오피스(OSPO) 담당자

이 가이드를 통해 독자들은 ISO/IEC 18974 표준을 효과적으로 이해하고, 조직의 오픈소스 보안 관리 역량을 강화하며, 더 나아가 안전하고 신뢰할 수 있는 소프트웨어 개발 생태계를 구축하는 데 기여할 수 있을 것입니다.

## 참고 문헌

본 가이드는 다음 자료들을 참고하여 작성되었습니다.

1. **ISO/IEC 18974:2023**, Information technology - Open source supply chain security assurance
2. **ISO/IEC 5230:2020**, Information technology - OpenChain Specification
3. **The Linux Foundation, OpenChain Project**: https://www.openchainproject.org/
4. **National Institute of Standards and Technology (NIST), National Vulnerability Database (NVD)**: https://nvd.nist.gov/
5. **Common Vulnerabilities and Exposures (CVE)**: https://cve.mitre.org/
6. **OWASP (Open Web Application Security Project)**: https://owasp.org/
7. **PwC, Understanding the open source security ISO 18974**: https://www.pwc.de/en/digitale-transformation/open-source-software-management-and-compliance/understanding-the-open-source-security-iso-18974.html
8. **The Momentum, Integrating DevSecOps: A Guide to Development, Security and Operations**: https://www.themomentum.ai/blog/integrating-devsecops-a-guide-to-development-security-and-operations
9. **Enterprise Networking Planet, Integrating IT Security With DevSecOps Best Practices**: https://www.enterprisenetworkingplanet.com/management/integrating-it-security-with-devsecops-best-practices/
10. **Synopsys, What is Software Composition Analysis?:** https://www.synopsys.com/glossary/what-is-software-composition-analysis.html
11. **GuideM, DORA vs. ISO 27001**: https://www.guidem.com/en/dora-vs-iso-27001/
12. **해외정보보호 동향, 주요국의 사이버 복원력 강화 정책 동향**: https://www.kisa.or.kr/cmm/fms/FileDown.do?atchFileId=FILE_0000000000024149&fileSn=1