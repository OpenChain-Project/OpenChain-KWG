---
title: "FOSSLight"
weight: 3
type: docs
categories: ["guide"]
tags: ["fosslight"]
---

FOSSLight는 LG Electronics에서 주도하는 오픈소스 프로젝트로, 다양한 스캐너를 활용하여 소스 코드, 바이너리, 의존성을 분석하고 SBOM(Software Bill of Materials, 소프트웨어 자재 명세서)을 생성하는 도구입니다. 특히 FOSSLight Hub는 오픈소스 관리, 라이선스 관리, 취약점 관리 기능을 제공하여 컴플라이언스 프로세스를 지원합니다.

### 1 FOSSLight 소개

- **주요 기능**:
    - 다양한 스캐너 연동: ScanCode Toolkit, SPDX Tools, CycloneDX, 그리고 Fossology 등 다양한 오픈소스 스캐너를 통합하여 사용
    - 다양한 분석 대상 지원: 소스 코드, 바이너리, 컨테이너 이미지, Linux 패키지 등 다양한 분석 대상 지원
    - SBOM 생성 및 관리: 다양한 형식(SPDX, CycloneDX, Excel, Text)으로 SBOM 생성 및 관리
    - 라이선스 정보 탐지 및 관리: 오픈소스 라이선스 정보를 정확하게 탐지하고 관리
    - 취약점 정보 연동: NVD, CVE 등 외부 취약점 데이터베이스와 연동하여 취약점 정보 제공
    - FOSSLight Hub: 웹 기반 UI를 통해 오픈소스 관리, 라이선스 관리, 취약점 관리 기능 제공
- **장점**:
    - 높은 확장성: 다양한 스캐너를 플러그인 형태로 통합하여 사용할 수 있음
    - 웹 기반 UI 제공: FOSSLight Hub를 통해 사용자 친화적인 인터페이스 제공
    - 다양한 보고서 형식 지원: SPDX, CycloneDX, Excel, Text 등 다양한 형식으로 보고서 생성 가능
    - 오픈소스 라이선스
- **단점**:
    - 초기 설정 복잡: 다양한 스캐너를 연동해야 하므로 초기 설정이 다소 복잡할 수 있음
    - FOSSLight Hub 설치 필요: 웹 기반 UI를 사용하려면 FOSSLight Hub를 별도로 설치해야 함

### 2 FOSSLight 설치

FOSSLight는 FOSSLight Scanner와 FOSSLight Hub로 구성됩니다. FOSSLight Scanner는 다양한 스캐너를 실행하여 분석 결과를 생성하는 역할을 하며, FOSSLight Hub는 스캐너 결과를 통합 관리하고 시각화하는 웹 기반 UI를 제공합니다.

**여기서는 Docker Compose를 사용하여 FOSSLight Scanner와 FOSSLight Hub를 동시에 설치하는 방법을 설명합니다.**

1. **Docker 및 Docker Compose 설치**:
    - FOSSLight를 설치하기 전에 Docker와 Docker Compose가 시스템에 설치되어 있는지 확인합니다.
    - Docker 설치 방법은 운영체제에 따라 다르므로, Docker 공식 문서를 참고하십시오(https://docs.docker.com/get-docker/).
    - Docker Compose는 Docker를 사용하여 여러 컨테이너를 동시에 실행하고 관리하는 도구입니다. Docker Compose 설치 방법은 Docker 공식 문서를 참고하십시오(https://docs.docker.com/compose/install/).
2. **FOSSLight 저장소 복제**:
    - 다음 명령어를 실행하여 FOSSLight GitHub 저장소를 복제합니다.
    
    ```bash
    git clone <https://github.com/fosslight/fosslight_hub.git>
    cd fosslight_hub
    
    ```
    
3. **Docker Compose 파일 설정**:
    - `fosslight_hub` 디렉토리에는 `docker-compose.yml` 파일이 포함되어 있습니다. 이 파일을 텍스트 편집기로 열고, FOSSLight Hub의 설정을 변경할 수 있습니다.
    
    ```yaml
    version: "3.7"
    services:
      fosslight_db:
        image: mariadb:10.6.4
        container_name: fosslight_db
        volumes:
          - fosslight_db:/var/lib/mysql
        restart: always
        environment:
          - MYSQL_ROOT_PASSWORD=fosslight
          - MYSQL_DATABASE=fosslight_db
          - MYSQL_USER=fosslight
          - MYSQL_PASSWORD=fosslight
    
      fosslight_web:
        image: fosslight/fosslight_hub:latest
        container_name: fosslight_web
        ports:
          - "8080:8080"
        restart: always
        environment:
          - FOSSLightDB_HOST=fosslight_db
          - FOSSLightDB_PORT=3306
          - FOSSLightDB_USER=fosslight
          - FOSSLightDB_PASSWORD=fosslight
          - FOSSLightDB_NAME=fosslight_db
        depends_on:
          - fosslight_db
    
      fosslight_scanner:
        image: fosslight/fosslight_scanner:latest
        container_name: fosslight_scanner
        restart: always
        volumes:
          - ./upload:/home/fosslight_scanner/upload
          - ./result:/home/fosslight_scanner/result
    volumes:
      fosslight_db:
    
    ```
    
    - 필요에 따라 포트 번호, 데이터베이스 설정 등을 변경할 수 있습니다.
4. **FOSSLight 실행**:
    - 다음 명령어를 실행하여 FOSSLight를 실행합니다.
    
    ```bash
    docker-compose up -d
    
    ```
    
    - 이 명령어는 FOSSLight Hub, FOSSLight Scanner, 그리고 MariaDB 데이터베이스를 Docker 컨테이너로 실행합니다.
5. **FOSSLight 설치 확인**:
    - 웹 브라우저에서 `http://localhost:8080`에 접속하여 FOSSLight Hub에 접속할 수 있는지 확인합니다.
    - FOSSLight Hub 웹 UI가 표시되면 설치가 성공적으로 완료된 것입니다.
    
    **그림 2.1: FOSSLight Hub 웹 UI**
    
    (FOSSLight Hub 웹 UI 화면 캡쳐 이미지 삽입)
    

### 3 FOSSLight 사용 가이드

FOSSLight는 웹 UI(FOSSLight Hub)와 CLI(FOSSLight Scanner)를 통해 사용할 수 있습니다.

**3.1 FOSSLight Hub 사용**

FOSSLight Hub는 웹 UI를 통해 오픈소스 프로젝트를 관리하고, 스캔 결과를 확인하며, 다양한 보고서를 생성할 수 있는 기능을 제공합니다.

1. **프로젝트 등록**:
    - FOSSLight Hub에 접속하여 새로운 프로젝트를 등록합니다.
    - 프로젝트 이름, 설명, 담당자 등의 정보를 입력합니다.
    
    **그림 2.2: FOSSLight Hub 프로젝트 등록 화면**
    
    (FOSSLight Hub 프로젝트 등록 화면 캡쳐 이미지 삽입)
    
2. **스캔 결과 업로드**:
    - FOSSLight Scanner를 사용하여 생성한 스캔 결과를 FOSSLight Hub에 업로드합니다.
    - 스캔 결과 파일은 SPDX, CycloneDX, 또는 FOSSLight JSON 형식이어야 합니다.
    
    **그림 2.3: FOSSLight Hub 스캔 결과 업로드 화면**
    
    (FOSSLight Hub 스캔 결과 업로드 화면 캡쳐 이미지 삽입)
    
3. **스캔 결과 확인**:
    - 업로드된 스캔 결과를 확인합니다.
    - FOSSLight Hub는 SBOM 정보, 라이선스 정보, 그리고 취약점 정보를 시각적으로 제공합니다.
    
    **그림 2.4: FOSSLight Hub 스캔 결과 확인 화면**
    
    (FOSSLight Hub 스캔 결과 확인 화면 캡쳐 이미지 삽입)
    
4. **보고서 생성**:
    - 스캔 결과를 바탕으로 다양한 보고서를 생성합니다.
    - 보고서 형식은 SPDX, CycloneDX, Excel, 또는 Text 형식을 선택할 수 있습니다.
    
    **그림 2.5: FOSSLight Hub 보고서 생성 화면**
    
    (FOSSLight Hub 보고서 생성 화면 캡쳐 이미지 삽입)
    

**3.2 FOSSLight Scanner 사용**

FOSSLight Scanner는 CLI를 통해 소스 코드, 바이너리, 컨테이너 이미지를 스캔하고 SBOM을 생성하는 기능을 제공합니다.

1. **스캔 실행**:
    - 다음 명령어를 실행하여 스캔을 실행합니다.
    
    ```bash
    docker run --rm -v $(pwd)/upload:/home/fosslight_scanner/upload -v $(pwd)/result:/home/fosslight_scanner/result fosslight/fosslight_scanner -p /home/fosslight_scanner/upload/<스캔 대상> -o /home/fosslight_scanner/result/<결과 파일명> -f <결과 형식>
    
    ```
    
    - 각 옵션에 대한 설명은 다음과 같습니다.
        - `-rm`: 컨테이너 실행 후 자동으로 제거합니다.
        - `v $(pwd)/upload:/home/fosslight_scanner/upload`: 현재 디렉토리의 `upload` 디렉토리를 컨테이너 내부의 `/home/fosslight_scanner/upload` 디렉토리와 공유합니다. 스캔 대상 파일 또는 디렉토리를 이 디렉토리에 복사해야 합니다.
        - `v $(pwd)/result:/home/fosslight_scanner/result`: 현재 디렉토리의 `result` 디렉토리를 컨테이너 내부의 `/home/fosslight_scanner/result` 디렉토리와 공유합니다. 스캔 결과 파일이 이 디렉토리에 저장됩니다.
        - `p /home/fosslight_scanner/upload/<스캔 대상>`: 스캔 대상 파일 또는 디렉토리 경로를 지정합니다.
        - `o /home/fosslight_scanner/result/<결과 파일명>`: 스캔 결과 파일 이름을 지정합니다.
        - `f <결과 형식>`: 스캔 결과 형식을 지정합니다 (spdx, cyclonedx, fosslight_json).
    - 예시:
    
    ```bash
    docker run --rm -v $(pwd)/upload:/home/fosslight_scanner/upload -v $(pwd)/result:/home/fosslight_scanner/result fosslight/fosslight_scanner -p /home/fosslight_scanner/upload/my_project -o /home/fosslight_scanner/result/my_project_sbom.json -f fosslight_json
    
    ```
    
2. **스캔 결과 확인**:
    - 스캔이 완료되면 `result` 디렉토리에 스캔 결과 파일이 생성됩니다.
    - 스캔 결과 파일을 텍스트 편집기 또는 FOSSLight Hub를 사용하여 확인할 수 있습니다.

### 4 FOSSLight 사용 시 주의사항

- FOSSLight는 다양한 스캐너를 연동하여 사용하므로, 각 스캐너의 특징과 사용법을 이해해야 합니다.
- FOSSLight Hub는 웹 서버와 데이터베이스를 필요로 하므로, 시스템 자원 요구사항을 고려하여 설치해야 합니다.
- FOSSLight Scanner는 스캔 대상 파일 또는 디렉토리에 접근할 수 있는 권한이 필요합니다.

### 5 문제 해결

- **Docker 실행 오류**: Docker가 제대로 설치되었는지 확인하고, 권한 문제가 없는지 확인합니다.
    - `sudo docker run ...` 명령어를 사용하여 관리자 권한으로 실행해봅니다.
- **스캔 오류**: 스캔 대상 파일 또는 디렉토리 경로가 정확한지 확인하고, 해당 파일 또는 디렉토리에 접근 권한이 있는지 확인합니다.
- **FOSSLight Hub 접속 오류**: Docker 컨테이너가 정상적으로 실행 중인지 확인하고, 포트 포워딩 설정이 제대로 되었는지 확인합니다.

### 6 추가 정보

- FOSSLight 공식 웹사이트: https://fosslight.org/
- FOSSLight GitHub 저장소: https://github.com/fosslight/fosslight_hub
- SPDX 공식 웹사이트: https://spdx.dev/
- CycloneDX 공식 웹사이트: https://cyclonedx.org/