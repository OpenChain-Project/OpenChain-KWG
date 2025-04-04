---
title: "OSV-SCALIBR"
weight: 4
type: docs
categories: ["guide"]
tags: ["OSV-SCALIBR"]
---

OSV-SCALIBR (Software Composition Analysis LIBRary)은 Google에서 개발한 오픈소스 소프트웨어 구성 분석 라이브러리입니다. 다양한 프로그래밍 언어를 지원하며, 빠르고 정확한 분석 결과를 제공하는 것을 목표로 합니다. SBOM(Software Bill of Materials, 소프트웨어 자재 명세서) 생성을 위한 핵심 기능들을 제공하지만, 독립적인 실행 파일 형태가 아닌 라이브러리 형태로 제공되므로, 사용자는 직접 코드를 작성하여 통합해야 합니다.

### 1 OSV-SCALIBR 소개

- **주요 기능**:
    - 다양한 프로그래밍 언어 지원 (Python, Go, Java 등)
    - 패키지 매니페스트 파일 분석 (requirements.txt, pom.xml, go.mod 등)
    - 종속성 정보 추출
    - 취약점 정보 연동 (OSV 데이터베이스 활용)
    - 빠른 분석 속도
- **장점**:
    - 다양한 프로그래밍 언어 지원
    - 빠른 분석 속도
    - OSV 데이터베이스 연동을 통한 최신 취약점 정보 제공
    - 유연한 통합 가능성
    - 오픈소스 라이선스
- **단점**:
    - 독립적인 실행 파일 형태가 아닌 라이브러리 형태로 제공
    - 사용자가 직접 코드를 작성하여 통합해야 함
    - SBOM 생성 기능을 직접 구현해야 함
    - 문서화 및 커뮤니티 지원 부족

### 2 OSV-SCALIBR 설치

OSV-SCALIBR은 라이브러리 형태로 제공되므로, 사용하려는 프로그래밍 언어에 맞는 패키지 관리자를 통해 설치해야 합니다. 이 가이드에서는 Python 환경에서의 설치 방법을 설명합니다.

1. **Python 및 pip 설치 확인**:
    - OSV-SCALIBR을 설치하기 전에 Python과 pip가 시스템에 설치되어 있는지 확인합니다.
    - 명령 프롬프트 또는 터미널에서 다음 명령어를 실행하여 Python 버전을 확인합니다.
    
    ```bash
    python --version
    
    ```
    
    - Python 3.7 이상이 설치되어 있어야 합니다.
    - pip 버전을 확인하려면 다음 명령어를 실행합니다.
    
    ```bash
    pip --version
    
    ```
    
    - Python과 pip가 설치되어 있지 않다면, Python 공식 웹사이트(https://www.python.org/downloads/)에서 다운로드하여 설치합니다.
2. **OSV-SCALIBR 설치**:
    - 다음 명령어를 실행하여 OSV-SCALIBR 라이브러리를 설치합니다.
    
    ```bash
    pip install osv-db
    
    ```
    
3. **설치 확인**:
    - Python 인터프리터를 실행하고, 다음 코드를 입력하여 OSV-SCALIBR이 제대로 설치되었는지 확인합니다.
    
    ```python
    import osv
    print(osv.__version__)
    
    ```
    
    - OSV-SCALIBR 버전 정보가 출력되면 설치가 성공적으로 완료된 것입니다.

### 3 OSV-SCALIBR 사용 가이드

OSV-SCALIBR은 라이브러리 형태로 제공되므로, SBOM 생성을 위해서는 직접 코드를 작성해야 합니다. 다음은 Python 환경에서 OSV-SCALIBR을 사용하여 SBOM을 생성하는 기본적인 예시입니다.

1. **필수 라이브러리 설치**:
    - `osv-db` 외에도 SBOM 생성을 위해 필요한 라이브러리 (예: `spdx-tools`) 를 설치합니다.
    
    ```bash
    pip install spdx-tools
    
    ```
    
2. **코드 작성**:
    - 다음은 `requirements.txt` 파일에서 종속성 정보를 추출하고, OSV-SCALIBR을 사용하여 취약점 정보를 확인한 후, SPDX 형식의 SBOM을 생성하는 예시 코드입니다.
    
    ```python
    import osv
    from spdx_tools.spdx.model import Document, Package
    from spdx_tools.spdx.builder import Builder
    from spdx_tools.spdx.validation.document_validator import validate_full
    import os
    
    def create_sbom_from_requirements(requirements_file):
        """
        requirements.txt 파일에서 종속성 정보를 추출하고,
        OSV-SCALIBR을 사용하여 취약점 정보를 확인한 후,
        SPDX 형식의 SBOM을 생성합니다.
        """
    
        # 1. requirements.txt 파일 읽기
        dependencies = []
        with open(requirements_file, "r") as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith("#"):
                    package_name, package_version = line.split("==")
                    dependencies.append((package_name, package_version))
    
        # 2. OSV API 클라이언트 생성
        client = osv.Client()
    
        # 3. SPDX 문서 생성
        document = Document(
            spdx_version="SPDX-2.2",
            data_license="CC0-1.0",
            spdx_id="SPDXRef-DOCUMENT",
            name="SBOM for " + requirements_file,
        )
        document.creators = ["Tool: OSV-SCALIBR Example Script", "Organization: Your Organization"]
    
        # 4. 패키지 정보 추가 및 취약점 정보 확인
        for package_name, package_version in dependencies:
            # OSV API를 사용하여 취약점 정보 조회
            vulnerabilities = client.get_vulnerabilities(package_name, package_version)
    
            # 패키지 생성
            package = Package(
                name=package_name,
                spdx_id=f"SPDXRef-Package-{package_name}",
                version=package_version,
                # TODO: 라이선스 정보를 추가해야 합니다.
            )
    
            # 취약점 정보가 있는 경우, 주석 추가
            if vulnerabilities:
                comment = f"취약점 발견: {len(vulnerabilities)}건"
                package.comment = comment
    
            document.packages.append(package)
    
        # 5. 유효성 검사 및 출력
        validation_messages = validate_full(document)
        if validation_messages:
            print("유효성 검사 오류:")
            for message in validation_messages:
                print(message)
        else:
            # SPDX 문서를 문자열로 변환 (spdx-tools 사용)
            from spdx_tools.spdx.writer.write_anything import write_anything
            output_file = "sbom.spdx"
            write_anything(document, output_file, "tag", check_licenses=False)
            print(f"SPDX 문서 생성 성공! 파일: {output_file}")
    
    # 실행 예시
    # requirements.txt 파일이 현재 디렉토리에 있어야 합니다.
    if os.path.exists("requirements.txt"):
        create_sbom_from_requirements("requirements.txt")
    else:
        print("오류: requirements.txt 파일을 찾을 수 없습니다.")
    
    ```
    
3. **코드 실행**:
    - 위 코드를 Python 파일로 저장하고 (예: `sbom_generator.py`), 다음 명령어를 실행합니다.
    
    ```bash
    python sbom_generator.py
    
    ```
    
4. **결과 확인**:
    - 코드가 성공적으로 실행되면, `sbom.spdx` 파일이 생성됩니다. 이 파일은 SPDX 형식으로 작성된 SBOM을 포함하고 있습니다.

### 4 OSV-SCALIBR 사용 시 주의사항

- OSV-SCALIBR은 라이브러리 형태로 제공되므로, SBOM 생성을 위해서는 직접 코드를 작성해야 합니다.
- OSV-SCALIBR은 SBOM 생성을 위한 모든 기능을 제공하지 않으므로, 필요한 기능을 직접 구현하거나, 다른 라이브러리와 함께 사용해야 합니다.
- OSV-SCALIBR 문서는 다소 부족할 수 있으며, 커뮤니티 지원이 활발하지 않을 수 있습니다.
- 코드 예시에서는 `requirements.txt` 파일을 기준으로 SBOM을 생성하지만, 실제 환경에서는 다양한 패키지 관리자에 대한 지원이 필요할 수 있습니다.
- 코드 예시에서는 라이선스 정보를 직접 추가하지 않고 있습니다. 실제 SBOM에서는 각 패키지의 라이선스 정보를 정확하게 파악하여 추가해야 합니다.

### 5 생성된 SBOM 예시 (추론)

OSV-SCALIBR을 사용하여 생성된 SBOM (SPDX 형식) 은 다음과 같은 구조를 가질 것입니다. (실제 내용은 `requirements.txt` 파일의 내용에 따라 달라집니다.)

```
SPDXVersion: SPDX-2.2
DataLicense: CC0-1.0
SPDXID: SPDXRef-DOCUMENT
Name: SBOM for requirements.txt
Creator: Tool: OSV-SCALIBR Example Script
Created: 2025-02-11T00:00:00Z

# Package Information
PackageName: requests
SPDXID: SPDXRef-Package-requests
PackageVersion: 2.28.1
# Comment: 취약점 발견: 1건 (OSV 데이터베이스에 따라 다를 수 있음)

PackageName: urllib3
SPDXID: SPDXRef-Package-urllib3
PackageVersion: 1.24.13

# Relationships
# (각 패키지 간의 의존 관계 정보)

```

**참고**: 위 예시는 OSV-SCALIBR을 사용하여 생성될 수 있는 SBOM의 형식을 보여주는 예시일 뿐이며, 실제 SBOM 내용은 코드 및 종속성 분석 결과에 따라 달라집니다. 라이선스 정보, 출처 정보 등 추가적인 정보는 직접 코드를 수정하여 추가해야 합니다.

### 6 문제 해결

- **설치 오류**: pip가 최신 버전인지 확인하고, 필요한 종속성 패키지가 설치되어 있는지 확인합니다.
    - `pip install --upgrade pip`
    - `pip install -r requirements.txt` (requirements.txt 파일이 있는 경우)
- **코드 실행 오류**: 코드에 오타가 없는지 확인하고, 필요한 라이브러리가 설치되어 있는지 확인합니다.
- **OSV 데이터베이스 연결 오류**: 인터넷 연결 상태를 확인하고, OSV 데이터베이스 URL이 올바른지 확인합니다.

### 7 추가 정보

- OSV-SCALIBR GitHub 저장소: (정보 없음)
- OSV (Open Source Vulnerabilities) 데이터베이스: https://osv.dev/
- SPDX 공식 웹사이트: https://spdx.dev/

**주의**: OSV-SCALIBR은 라이브러리 형태이므로, 이 가이드만으로는 SBOM 생성을 완료하기 어려울 수 있습니다. Python 프로그래밍 및 SBOM 생성에 대한 이해가 필요하며, 추가적인 코드 작성이 필요합니다.