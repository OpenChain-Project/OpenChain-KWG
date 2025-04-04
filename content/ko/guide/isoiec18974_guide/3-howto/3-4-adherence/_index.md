---
title: "3.4 Adherence to the specification requirements"
linkTitle: "3.4 Adherence"
weight: 40
type: docs
description: >
---

조직이 오픈소스 보안 보증 프로그램을 운영하고 있다고 주장하기 위해서는, 해당 프로그램이 ISO/IEC 18974 표준의 모든 요구사항을 준수해야 합니다. 이 단원에서는 조직이 표준 준수를 어떻게 확인하고, 유지할 수 있는지에 대한 지침을 제공합니다.

## 4.4.1 Completeness (완전성)

프로그램이 ISO/IEC 18974 표준을 준수한다고 선언하기 위해서는, 조직은 프로그램이 표준에 제시된 모든 요구사항을 충족한다는 것을 공식적으로 확인해야 합니다. 일부 요구사항만 충족하는 것으로는 충분하지 않습니다.

### 4.4.1.1 요구사항 충족 증거

> **ISO/IEC 18974**  
> - 4.4.1.1: Documented evidence affirming the program specified in 4.1.4 satisfies all the requirements of this document.
> - 4.4.1.1: 4.1.4에 명시된 프로그램이 이 문서의 모든 요구 사항을 충족함을 확인하는 문서화된 증거
>   
> **Self-Certification Checklist**  
> - [ ] We have documentation confirming that the Program meets all the requirements of this specification.
> - [ ] 프로그램이 이 표준의 모든 요구사항을 충족한다는 문서화된 확인이 있습니다.

조직은 프로그램이 ISO/IEC 18974 표준의 모든 요구사항을 충족한다는 것을 입증하는 문서화된 증거를 제시해야 합니다. 이 증거는 프로그램 운영의 모든 측면을 포괄해야 하며, 객관적이고 신뢰할 수 있어야 합니다.

#### 구현 방법 및 고려사항

1. **요구사항 매핑**:
    - ISO/IEC 18974 표준의 각 요구사항을 조직의 프로그램의 특정 정책, 절차, 또는 활동에 매핑합니다.
    - 매핑 결과는 문서화하고, 프로그램 참여자들이 쉽게 접근할 수 있도록 합니다.
2. **준수 증거 수집**:
    - 각 요구사항에 대한 준수 여부를 입증하는 증거를 수집합니다.
    - 증거는 문서, 기록, 로그, 그리고 테스트 결과 등 다양한 형태가 될 수 있습니다.
    - 증거는 객관적이고 신뢰할 수 있어야 하며, 최신 정보를 반영해야 합니다.
3. **내부 감사**:
    - 독립적인 감사팀이 프로그램의 운영 실태를 평가하고, ISO/IEC 18974 표준 준수 여부를 확인합니다.
    - 감사 결과는 문서화하고, 경영진에게 보고합니다.
    - 감사 결과에 따라 필요한 시정 조치를 취합니다.
4. **경영진 검토**:
    - 경영진은 프로그램의 운영 현황과 감사 결과를 검토하고, ISO/IEC 18974 표준 준수 여부를 최종적으로 확인합니다.
    - 경영진은 프로그램의 지속적인 개선을 위한 지침을 제공합니다.

#### 예시 증거 자료

- **정책 문서**:
    - 오픈소스 정책, 보안 정책, 그리고 라이선스 관리 정책 등
- **절차 문서**:
    - 취약점 관리 절차, 사고 대응 절차, 그리고 SBOM 관리 절차 등
- **기록**:
    - 취약점 스캔 결과, 코드 리뷰 결과, 그리고 보안 테스트 결과 등
- **로그**:
    - 시스템 접근 로그, 변경 로그, 그리고 감사 로그 등
- **테스트 결과**:
    - 기능 테스트 결과, 보안 테스트 결과, 그리고 성능 테스트 결과 등

#### 구현 시 고려사항

- 증거는 객관적이고 신뢰할 수 있어야 합니다.
- 증거는 최신 정보를 반영해야 합니다.
- 증거는 체계적으로 관리하고, 접근 권한을 적절하게 제어해야 합니다.

#### 문서화 방안

오픈소스 정책 내 아래 내용을 포함합니다. (참고 : [오픈소스 정책 템플릿](../../../templates/1-policy/))

{{% pageinfo %}}

### 11.1 ISO 표준 준수 선언

1. **준수 선언**:
    - 회사는 이 정책을 통해 ISO/IEC 5230(오픈소스 라이선스 컴플라이언스)와 ISO/IEC 18974(오픈소스 보안 보증)의 모든 요구사항을 충족함을 선언합니다.
    - 선언 일자와 유효 기간(18개월)을 명확히 기재합니다.
    - 준수 선언은 Linux Foundation의 OpenChain 프로젝트의 Self Certification을 통해 이루어질 수 있습니다.
2. **증거 문서화**:
    - 오픈소스 프로그램 매니저(OSPM)는 각 요구사항에 대한 충족 증거를 문서화하고 유지합니다.
    - 증거 문서에는 정책 문서, 프로세스 설명, 교육 기록, 컴플라이언스 산출물, 보안 취약점 관리 기록 등이 포함됩니다.
    - 모든 증거 문서는 중앙 저장소에 보관되며, 최소 3년간 유지됩니다.
    - 이 문서는 적합성 검증을 받은 후 18개월 이내에 작성되어야 하며, 최소 연 1회 갱신됩니다.
3. **정기적인 검토 및 갱신**:
    - OSRB는 연 1회 이상 요구사항 충족 여부를 검토하고, 필요시 정책과 프로세스를 개선합니다.
    - 검토 결과와 개선 사항은 문서화되어 보관됩니다.
4. **외부 검증 준비**:
    - 요구 시 외부 감사나 인증 기관에 증거 문서를 제공할 수 있도록 준비합니다.

{{% /pageinfo %}}


이러한 접근 방식을 통해 조직은 프로그램이 ISO/IEC 18974 표준의 모든 요구사항을 충족한다는 것을 입증하고, 대외적으로 신뢰를 확보할 수 있습니다.

## 4.4.2 Duration (기간)

> **ISO/IEC 18974**  
> - 4.4.2.1: A document affirming the program meets all the requirements of this specification, within the past 18 months of obtaining conformance validation.
> - 4.4.2.1: 프로그램이 적합성 검증을 획득한 후 지난 18개월 이내에 이 규격의 모든 요구 사항을 충족함을 확인하는 문서.
>   
> **Self-Certification Checklist**  
> - [ ] We have documentation confirming that Program conformance was reviewed within the last 18 months.
> - [ ] 프로그램의 준수 여부가 최근 18개월 내에 검토된 기록이 있습니다.

ISO/IEC 18974 표준 준수는 일회성 이벤트가 아니라, 지속적인 과정입니다. 따라서, 조직은 표준 준수를 획득한 후에도, 해당 상태를 유지하기 위해 지속적으로 노력해야 합니다. 이 섹션에서는 표준 준수 기간과 관련된 요구사항을 설명합니다.

### 4.4.2.1 준수 기간 확인 문서

ISO/IEC 18974 표준을 준수하는 프로그램은 준수 검증을 받은 날로부터 18개월 동안 유효합니다. 따라서, 조직은 프로그램이 준수 검증을 받은 후 18개월 이내에, 해당 프로그램이 여전히 표준의 모든 요구사항을 충족한다는 것을 확인하는 문서를 제시해야 합니다. 이는 프로그램이 시간이 지남에 따라 표준에서 벗어나지 않고, 지속적으로 개선되고 있다는 것을 입증하는 데 중요합니다.

#### 구현 방법 및 고려사항

1. **준수 검증 일자 기록**:
    - 프로그램이 ISO/IEC 18974 표준 준수 검증을 받은 날짜를 정확하게 기록합니다.
    - 준수 검증 인증서 또는 관련 문서 등을 증거 자료로 보관합니다.
2. **준수 갱신 계획 수립**:
    - 준수 기간 만료 전에, 준수 상태를 재검증하고, 필요한 경우 갱신하기 위한 계획을 수립합니다.
    - 계획에는 준수 상태 자체 평가, 내부 감사, 그리고 외부 심사 등의 활동이 포함될 수 있습니다.
3. **정기적인 준수 상태 검토**:
    - 준수 기간 동안 프로그램이 여전히 ISO/IEC 18974 표준의 모든 요구사항을 충족하는지 정기적으로 검토합니다.
    - 검토는 최소 6개월에 1회 이상 수행하고, 검토 결과를 문서화합니다.
    - 검토 결과, 표준을 준수하지 않는 부분이 발견되면, 즉시 시정 조치를 취합니다.
4. **갱신 전 전체 요구사항 재검토**:
    - 준수 기간 만료 전에, 프로그램이 ISO/IEC 18974 표준의 모든 요구사항을 다시 한번 충족하는지 전체적으로 재검토합니다.
    - 재검토는 독립적인 감사팀 또는 외부 전문가에 의해 수행될 수 있습니다.
    - 재검토 결과는 문서화하고, 경영진에게 보고합니다.

#### 예시 증거 자료

- **준수 검증 인증서**: ISO/IEC 18974 표준 준수 검증을 받았음을 증명하는 공식 문서.
- **준수 갱신 계획**: 준수 상태를 유지하고 갱신하기 위한 구체적인 계획을 기술한 문서.
- **정기 검토 보고서**: 준수 상태를 정기적으로 검토한 결과를 기록한 보고서.
- **전체 요구사항 재검토 보고서**: 준수 갱신 전에 프로그램이 표준의 모든 요구사항을 충족하는지 재검토한 결과를 기록한 보고서.

#### 구현 시 고려사항

- 준수 상태 유지는 지속적인 노력과 자원 투입이 필요합니다.
- 조직은 ISO/IEC 18974 표준의 변경 사항을 주시하고, 프로그램에 필요한 조정을 수행해야 합니다.
- 프로그램 참여자들에게 표준 준수의 중요성을 강조하고, 책임을 부여해야 합니다.


#### 문서화 방안

오픈소스 정책 내 아래 내용을 포함합니다. (참고 : [오픈소스 정책 템플릿](../../../templates/1-policy/))

{{% pageinfo %}}

### 11.2 준수 상태 유지

1. **정기적인 검토**:
    - OSRB는 최소 연 1회 이상 ISO/IEC 5230 및 ISO/IEC 18974의 모든 요구사항에 대한 내부 검토를 수행합니다.
    - 검토 결과는 문서화하여 보관하며, 미충족 항목에 대해서는 개선 계획을 수립합니다.
2. **정기적인 내부 감사**:
    - 내부 감사는 프로그램 참여자의 역할 수행 여부, 컴플라이언스 산출물의 적합성, 그리고 보안 보증 활동의 효과성을 평가합니다.
    - 감사 결과에 따라 개선 영역을 식별하고, 필요한 조치를 취합니다.
3. **교육 및 훈련 제공**:
    - 프로그램 참여자의 역량과 인식을 지속적으로 향상시키기 위해 정기적인 교육 및 훈련을 제공합니다.
    - 교육 내용은 최신 오픈소스 동향과 조직의 요구사항을 반영하며, ISO 표준 준수를 강조합니다.
4. **외부 문의 대응 준비**:
    - 외부에서 ISO 표준 준수와 관련된 문의가 있을 경우, 신속하고 효과적으로 대응할 수 있는 체계를 유지합니다.
    - 문의 대응은 오픈소스 프로그램 매니저가 담당하며, 필요 시 법무팀과 협력합니다.
5. **정기적인 정책 갱신**:
    - 정책은 최소 연 1회 이상 검토되며, 최신 오픈소스 동향과 조직의 요구사항을 반영하여 갱신됩니다.
    - 갱신된 정책은 모든 프로그램 참여자에게 공유됩니다.


{{% /pageinfo %}}


이러한 접근 방식을 통해 조직은 ISO/IEC 18974 표준 준수 상태를 지속적으로 유지하고, 고객에게 안전하고 신뢰할 수 있는 오픈소스 소프트웨어를 제공할 수 있습니다.