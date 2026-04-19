# cdxgen-dt-guide

**Phase 1. 중앙 관리 서버 구축 (Dependency Track)**

- 작성자: [장학성 AT Solution DevOps팀](https://confluence.tde.sktelecom.com/display/~1112821), 마지막 업데이트: [2026 01 28,](https://confluence.tde.sktelecom.com/pages/diffpagesbyversion.action?pageId=914774338&selectedPageVersions=8&selectedPageVersions=9) 4분 읽기
- [1. Docker 환경 설정 및 Dependency Track 설치](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-1.Docker%ED%99%98%EA%B2%BD%EC%84%A4%EC%A0%95%EB%B0%8FDependencyTrack%EC%84%A4%EC%B9%98)
    - [Step 1. 무료 Docker 환경 구축 가이드 (Rancher Desktop)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-Step1.%EB%AC%B4%EB%A3%8CDocker%ED%99%98%EA%B2%BD%EA%B5%AC%EC%B6%95%EA%B0%80%EC%9D%B4%EB%93%9C(RancherDesktop))
    - [Step 2. Dependency Track 설치 및 실행 (서버 띄우기)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-Step2.DependencyTrack%EC%84%A4%EC%B9%98%EB%B0%8F%EC%8B%A4%ED%96%89(%EC%84%9C%EB%B2%84%EB%9D%84%EC%9A%B0%EA%B8%B0))
    - [Step 3. 접속 및 초기 설정 (관리자 첫 로그인)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-Step3.%EC%A0%91%EC%86%8D%EB%B0%8F%EC%B4%88%EA%B8%B0%EC%84%A4%EC%A0%95(%EA%B4%80%EB%A6%AC%EC%9E%90%EC%B2%AB%EB%A1%9C%EA%B7%B8%EC%9D%B8))
- [2. 오픈소스 중앙 관리 시스템(Dependency Track) 운영 가이드](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-2.%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%8B%9C%EC%8A%A4%ED%85%9C(DependencyTrack)%EC%9A%B4%EC%98%81%EA%B0%80%EC%9D%B4%EB%93%9C)
    - [1. 개요](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-1.%EA%B0%9C%EC%9A%94)
    - [2. 서버 관리 (구동 및 중지)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-2.%EC%84%9C%EB%B2%84%EA%B4%80%EB%A6%AC(%EA%B5%AC%EB%8F%99%EB%B0%8F%EC%A4%91%EC%A7%80))
    - [3. 초기 필수 설정 (관리자)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-3.%EC%B4%88%EA%B8%B0%ED%95%84%EC%88%98%EC%84%A4%EC%A0%95(%EA%B4%80%EB%A6%AC%EC%9E%90))
    - [4. 문제 해결 (Troubleshooting)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774338/Phase+1.+%EC%A4%91%EC%95%99+%EA%B4%80%EB%A6%AC+%EC%84%9C%EB%B2%84+%EA%B5%AC%EC%B6%95+Dependency+Track#Phase1.%EC%A4%91%EC%95%99%EA%B4%80%EB%A6%AC%EC%84%9C%EB%B2%84%EA%B5%AC%EC%B6%95(DependencyTrack)-4.%EB%AC%B8%EC%A0%9C%ED%95%B4%EA%B2%B0(Troubleshooting))

# 1. Docker 환경 설정 및 Dependency Track 설치

## Step 1. 무료 Docker 환경 구축 가이드 (Rancher Desktop)

### **1. Rancher Desktop 설치**

1. **다운로드**: [Rancher Desktop 공식 홈페이지](https://rancherdesktop.io/) 접속 → `macOS (Apple Silicon)` 버튼 클릭하여 다운로드.
2. **설치**: 다운로드된 `.dmg` 파일을 실행하고 아이콘을 `Applications` 폴더로 드래그합니다.
3. **실행 및 초기 설정**:
    - 앱을 실행하면 초기 설정 창이 뜹니다.
    - **Container Engine**: `dockerd (moby)`를 선택합니다. (중요! 이걸 선택해야 기존 docker 명령어를 그대로 씁니다.)
    - **Kubernetes**: 체크 해제하셔도 됩니다. (지금은 필요 없고 리소스만 먹습니다.)
    - `Accept` 버튼을 눌러 설정을 완료합니다.

### **2. 설치 확인 (터미널)**

터미널을 열고 아래 명령어를 쳐보세요.

```
docker --version
```

`Docker version 24.x.x` 처럼 버전 정보가 잘 나온다면 성공입니다! 이제 Docker Desktop 없이도 무료로 Docker를 쓸 수 있게 되었습니다.

## Step 2. Dependency Track 설치 및 실행 (서버 띄우기)

이제 도구(Docker)가 준비되었으니, 아까 멈췄던 **Dependency Track 서버 띄우기**를 이어서 진행하겠습니다.

터미널에서 아래 명령어를 순서대로 입력해주세요:

**1. 폴더 생성 및 이동**

```
mkdir dependency-trackcd dependency-track
```

**2. 실행 설정 파일 다운로드**

Dependency Track 개발팀이 미리 만들어둔 "서버 실행 설계도(`docker-compose.yml`)"를 받아옵니다.

```
curl -LO https://dependencytrack.org/docker-compose.yml
```

**3. 서버 실행**

이 명령어 한 줄이면 서버가 자동으로 다운로드되고 실행됩니다.

```
docker compose up -d
```

*(처음 실행 시, 필요한 파일들을 다운로드하느라 1~2분 정도 걸릴 수 있습니다. `Started` 메시지가 나올 때까지 기다려 주세요.)*

## Step 3. 접속 및 초기 설정 (관리자 첫 로그인)

서버가 켜졌습니다! 이제 웹 브라우저(Chrome 추천)를 열고 접속해 봅시다.

1. **접속 URL**: 주소창에 [`http://localhost:8080`](http://localhost:8080/) 입력

![image.png](images/image.png)

1. **초기 로그인**:
    - **ID**: `admin`
    - **Password**: `admin`
2. **비밀번호 변경**:
    - 첫 로그인 시 바로 비밀번호를 변경하라는 창이 뜹니다.
    - **새 비밀번호**: (관리자님이 기억하기 쉬운 강력한 암호로 설정하세요. 예: `Adminpass123!`)
    
    ![image.png](images/image%201.png)
    

# 2. 오픈소스 중앙 관리 시스템(Dependency Track) 운영 가이드

## 1. 개요

본 문서는 사내 오픈소스 컴플라이언스(라이선스, 보안취약점) 관리를 위해 구축된 **Dependency Track 중앙 서버**의 운영 및 관리 절차를 정의합니다.

### **1.1 시스템 정보**

- **서버 위치**: 관리자 테스트 PC (MacBook Pro M3)
- **접속 URL**: [`http://localhost:8080`](http://localhost:8080/)
- **기반 기술**: Docker (Rancher Desktop), Dependency Track v4.x

## 2. 서버 관리 (구동 및 중지)

서버는 Docker 컨테이너 기반으로 동작하므로, 터미널 명령어를 통해 제어합니다.

### **2.1 서버 시작**

PC 재부팅 등으로 서버가 꺼졌을 때 사용합니다.

1. **Rancher Desktop** 실행 (Applications 폴더)
2. 터미널 실행 및 프로젝트 폴더 이동`cd ~/dependency-track`
3. 서비스 시작 명령어`docker compose up -d`

### **2.2 서버 중지**

유지보수나 설정 변경 시 사용합니다.

```
docker compose down
```

### **2.3 상태 확인 및 로그 조회**

서버가 이상하게 동작할 때 로그를 확인합니다.

```
# 실행 중인 컨테이너 상태 확인docker composeps
# 실시간 로그 확인 (API 서버)docker compose logs -f dtrack-apiserver
```

## 3. 초기 필수 설정 (관리자)

서버 구축 직후 반드시 수행해야 할 보안 설정 및 환경 세팅입니다.

### **3.1 관리자 계정 보안**

- 초기 계정(`admin`)의 비밀번호는 최초 로그인 즉시 변경 완료함.
- **[보안 권고]** 팀원 계정 추가 시, `Administration` > `Access Management` > `Teams`에서 권한을 세분화하여 부여할 것.

### **3.2 취약점 데이터 동기화 (Vulnerability Source)**

Dependency Track은 외부 취약점 DB와 동기화되어야 정확한 분석이 가능합니다.

1. 관리자 메뉴 접속: `Administration` > `Analyzers`
2. **NVD (National Vulnerability Database)**: `Enabled` 확인 (기본값)
    - 최초 설치 시 NVD 등 외부 DB를 다운로드하는 데 **최소 24시간 이상** 소요될 수 있습니다. (서버 로그에 `Mirroring` 관련 메시지가 계속 뜨는 것은 정상입니다.)
3. **GitHub Advisories**: `Enabled` 체크 (추천)
4. **OSS Index**: `Enabled` 체크 및 계정 연동 (선택사항, 회원가입 필요)

### **3.3 팀별 API Key 발급**

개발팀이 자동화 스크립트로 SBOM을 업로드하려면 **API Key**가 필요합니다.

1. `Administration` > `Access Management` > `Teams` 이동
2. `Create Team` 클릭 (예: `Automation-Agents`)
3. **Permissions(권한)** 탭에서 아래 권한만 체크 (최소 권한 원칙):
    - `BOM_UPLOAD` (필수)
    - `PROJECT_CREATION_UPLOAD` (프로젝트 자동 생성 시 필요)
4. **API Keys** 섹션에서 `Create API Key` 클릭 → **생성된 키 복사하여 보관**
5. **관리자 메뉴 접속**:
    - 좌측 메뉴에서 `Access Management` → **`Teams`** 클릭
    
    ![image.png](images/image%202.png)
    
6. **자동화 팀 생성 (Automation Team)**:
    - 좌측 상단의 **`+ Create Team`** 버튼 클릭
    - **Team Name**: `Automation Agents` (또는 `CI/CD Runners` 등 원하는 이름) 입력 후 `Create`
7. **권한 부여 및 키 생성**:
    - 방금 만든 `Automation Agents` 팀 이름을 클릭해서 상세 화면으로 진입
    - **Permissions (권한)** 섹션에서 아래 3가지를 체크박스 선택:
        - `BOM_UPLOAD` (필수: SBOM 업로드 권한)
        - `PROJECT_CREATION_UPLOAD` (필수: 새 프로젝트 자동 생성 권한)
        - `VIEW_PORTFOLIO` (선택: 업로드 후 프로젝트 존재 여부 확인용)
    - **API Keys** 섹션에서 `+ Create API Key` 버튼 클릭
    - **생성된 긴 문자열**이 바로 API Key입니다! (예: odt_5D19PBnS_PZ1hHYNsyichDtlnu3LST8ggWYe6ACBS )

## 4. 문제 해결 (Troubleshooting)

### **Q1. 서버 접속이 안 됩니다.**

- **확인 1**: Rancher Desktop 앱이 켜져 있는지 확인하세요.
- **확인 2**: 터미널에서 `docker compose ps`를 쳤을 때 `Up` 상태인지 확인하세요.

### **Q2. 취약점 정보가 하나도 안 뜹니다.**

- 최초 설치 시 NVD 등 외부 DB를 다운로드하는 데 **최소 24시간 이상** 소요될 수 있습니다. (서버 로그에 `Mirroring` 관련 메시지가 계속 뜨는 것은 정상입니다.)

**Phase 2. 개발팀 제공용 도구 제작**

---

- 작성자: [장학성 AT Solution DevOps팀](https://confluence.tde.sktelecom.com/display/~1112821), 마지막 업데이트: [2026 02 10,](https://confluence.tde.sktelecom.com/pages/diffpagesbyversion.action?pageId=914774341&selectedPageVersions=19&selectedPageVersions=20) 10분 읽기
- [Docker Image Build](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-DockerImageBuild)
    - [1. 작업 폴더 생성](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-1.%EC%9E%91%EC%97%85%ED%8F%B4%EB%8D%94%EC%83%9D%EC%84%B1)
    - [2. 실행 스크립트 (entrypoint.sh) 작성](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-2.%EC%8B%A4%ED%96%89%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8(entrypoint.sh)%EC%9E%91%EC%84%B1)
    - [3. Dockerfile 작성](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-3.Dockerfile%EC%9E%91%EC%84%B1)
    - [4. 이미지 빌드](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-4.%EC%9D%B4%EB%AF%B8%EC%A7%80%EB%B9%8C%EB%93%9C)
- [이미지 배포 - GitHub Container Registry (GHCR) 배포](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-%EC%9D%B4%EB%AF%B8%EC%A7%80%EB%B0%B0%ED%8F%AC-GitHubContainerRegistry(GHCR)%EB%B0%B0%ED%8F%AC)
    - [Step 1. 인증 토큰 (PAT) 준비](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-Step1.%EC%9D%B8%EC%A6%9D%ED%86%A0%ED%81%B0(PAT)%EC%A4%80%EB%B9%84)
    - [Step 2. 로컬 Docker 로그인](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-Step2.%EB%A1%9C%EC%BB%ACDocker%EB%A1%9C%EA%B7%B8%EC%9D%B8)
    - [Step 3. 이미지 태그 변경 및 업로드 (Push)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-Step3.%EC%9D%B4%EB%AF%B8%EC%A7%80%ED%83%9C%EA%B7%B8%EB%B3%80%EA%B2%BD%EB%B0%8F%EC%97%85%EB%A1%9C%EB%93%9C(Push))
    - [중요: 패키지 공개 설정 (Visibility)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-%EC%A4%91%EC%9A%94:%ED%8C%A8%ED%82%A4%EC%A7%80%EA%B3%B5%EA%B0%9C%EC%84%A4%EC%A0%95(Visibility))
- [개발팀 배포용 스크립트 제작 (2종)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-%EA%B0%9C%EB%B0%9C%ED%8C%80%EB%B0%B0%ED%8F%AC%EC%9A%A9%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8%EC%A0%9C%EC%9E%91(2%EC%A2%85))
    - [2-1. 소스코드 스캔용 (scan-source.sh)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-2-1.%EC%86%8C%EC%8A%A4%EC%BD%94%EB%93%9C%EC%8A%A4%EC%BA%94%EC%9A%A9(scan-source.sh))
    - [2-2. Docker이미지 스캔용 (scan-image.sh)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-2-2.Docker%EC%9D%B4%EB%AF%B8%EC%A7%80%EC%8A%A4%EC%BA%94%EC%9A%A9(scan-image.sh))
- [도구 배포 전 동작 검증](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-%EB%8F%84%EA%B5%AC%EB%B0%B0%ED%8F%AC%EC%A0%84%EB%8F%99%EC%9E%91%EA%B2%80%EC%A6%9D)
    - [1. 개요](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-1.%EA%B0%9C%EC%9A%94)
    - [2. 사전 준비 (Test Sample)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-2.%EC%82%AC%EC%A0%84%EC%A4%80%EB%B9%84(TestSample))
    - [3. 검증 시나리오](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-3.%EA%B2%80%EC%A6%9D%EC%8B%9C%EB%82%98%EB%A6%AC%EC%98%A4)
    - [4. 트러블슈팅 (테스트 실패 시)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-4.%ED%8A%B8%EB%9F%AC%EB%B8%94%EC%8A%88%ED%8C%85(%ED%85%8C%EC%8A%A4%ED%8A%B8%EC%8B%A4%ED%8C%A8%EC%8B%9C))
- [4. (관리자용) 오픈소스 리스크 분석 및 대응 매뉴얼](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-4.(%EA%B4%80%EB%A6%AC%EC%9E%90%EC%9A%A9)%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4%EB%A6%AC%EC%8A%A4%ED%81%AC%EB%B6%84%EC%84%9D%EB%B0%8F%EB%8C%80%EC%9D%91%EB%A7%A4%EB%89%B4%EC%96%BC)
    - [1. 운영 프로세스 개요 (Workflow)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-1.%EC%9A%B4%EC%98%81%ED%94%84%EB%A1%9C%EC%84%B8%EC%8A%A4%EA%B0%9C%EC%9A%94(Workflow))
    - [2. Dependency Track 핵심 활용법 (화면 보는 법)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-2.DependencyTrack%ED%95%B5%EC%8B%AC%ED%99%9C%EC%9A%A9%EB%B2%95(%ED%99%94%EB%A9%B4%EB%B3%B4%EB%8A%94%EB%B2%95))
    - [3. 리스크 판단 기준 (Decision Making)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-3.%EB%A6%AC%EC%8A%A4%ED%81%AC%ED%8C%90%EB%8B%A8%EA%B8%B0%EC%A4%80(DecisionMaking))
    - [4. 개발팀 가이드 시나리오 (Action Guide)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-4.%EA%B0%9C%EB%B0%9C%ED%8C%80%EA%B0%80%EC%9D%B4%EB%93%9C%EC%8B%9C%EB%82%98%EB%A6%AC%EC%98%A4(ActionGuide))
    - [5. 관리자 필수 점검 리스트 (Checklist)](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-5.%EA%B4%80%EB%A6%AC%EC%9E%90%ED%95%84%EC%88%98%EC%A0%90%EA%B2%80%EB%A6%AC%EC%8A%A4%ED%8A%B8(Checklist))
- [5. (개발자용) 가이드 작성](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-5.(%EA%B0%9C%EB%B0%9C%EC%9E%90%EC%9A%A9)%EA%B0%80%EC%9D%B4%EB%93%9C%EC%9E%91%EC%84%B1)
    - [[개발팀 공지] 오픈소스 보안 점검 도구 사용 가이드](https://confluence.tde.sktelecom.com/spaces/OPENSOURCE/pages/914774341/Phase+2.+%EA%B0%9C%EB%B0%9C%ED%8C%80+%EC%A0%9C%EA%B3%B5%EC%9A%A9+%EB%8F%84%EA%B5%AC+%EC%A0%9C%EC%9E%91#Phase2.%EA%B0%9C%EB%B0%9C%ED%8C%80%EC%A0%9C%EA%B3%B5%EC%9A%A9%EB%8F%84%EA%B5%AC%EC%A0%9C%EC%9E%91-[%EA%B0%9C%EB%B0%9C%ED%8C%80%EA%B3%B5%EC%A7%80]%EC%98%A4%ED%94%88%EC%86%8C%EC%8A%A4%EB%B3%B4%EC%95%88%EC%A0%90%EA%B2%80%EB%8F%84%EA%B5%AC%EC%82%AC%EC%9A%A9%EA%B0%80%EC%9D%B4%EB%93%9C)
- Step 2.1: `dockerized-cdxgen` 이미지 빌드 (Golden Image)
    - `cdxgen`, `curl`, `jq`가 포함된 Dockerfile을 작성하고 관리자님 로컬에서 빌드합니다.
- Step 2.2: 자동화 스크립트 (`scan.sh`) 개발
    - 개발자가 입력한 파라미터(프로젝트명, 버전)를 받아 SBOM 생성부터 업로드, 결과 URL 출력까지 처리하는 쉘 스크립트를 짭니다.
- Step 2.3: 팀별 맞춤형 가이드 작성 (Web/App/Backend/Embedded)
    - 안드로이드(Gradle), 웹(npm), 백엔드(Java/Python), 임베디드(Yocto) 등 각 팀의 특성에 맞는 실행 옵션을 정리합니다.

# Docker Image Build

## 1. 작업 폴더 생성

터미널에서 새로운 작업 폴더를 만듭니다.

```
cd ~
mkdir sbom-scanner
cd sbom-scanner

```

## 2. 실행 스크립트 (`entrypoint.sh`) 작성

이 스크립트가 도구의 '두뇌'입니다. SBOM 생성부터 전송, 결과 URL 출력까지 자동으로 처리합니다.

파일명: `entrypoint.sh`

[https://gitlab.tde.sktelecom.com/OSP/opensource-scanning-toolkit/-/blob/30c49ed8cbda4010bcd72e44eca28e2d62156767/docker/build-scripts/cdxgen/entrypoint.sh](https://gitlab.tde.sktelecom.com/OSP/opensource-scanning-toolkit/-/blob/30c49ed8cbda4010bcd72e44eca28e2d62156767/docker/build-scripts/cdxgen/entrypoint.sh)

```
#!/bin/bash

# 모드에 따라 분석 도구 선택 (SOURCE vs IMAGE)
# 기본값은 SOURCE
SCAN_MODE="${MODE:-SOURCE}"
OUTPUT_FILE="bom.json"

echo "=========================================================="
echo "🛡️ SK Telecom Open Source Scanner (v1)"
echo "   - Project: $PROJECT_NAME ($PROJECT_VERSION)"
echo "   - Mode: $SCAN_MODE"
echo "=========================================================="

if [ "$SCAN_MODE" = "IMAGE" ]; then
    # [모드 1] Syft를 이용한 이미지 분석
    if [ -z "$TARGET_IMAGE" ]; then
        echo "❌ Error: TARGET_IMAGE variable is missing."
        exit 1
    fi
    echo "[1/2] Analyzing Image ($TARGET_IMAGE) with Syft..."
    # PURL 자동 포함됨
    syft "$TARGET_IMAGE" -o cyclonedx-json > "$OUTPUT_FILE"

else
    # [모드 2] cdxgen을 이용한 소스코드 분석
    echo "[1/2] Analyzing Source Code with cdxgen..."
    # -r: 재귀적 분석, -t: 타입 자동감지 (필요 시 언어 지정 가능)
    cdxgen -r -o "$OUTPUT_FILE" .
fi

# SBOM 생성 검증
if [ ! -s "$OUTPUT_FILE" ]; then
    echo "❌ Error: SBOM generation failed."
    exit 1
fi
echo "✅ SBOM generated successfully ($OUTPUT_FILE)."

# 업로드 여부 확인 (UPLOAD_ENABLED가 false면 파일만 만들고 끝냄)
if [ "$UPLOAD_ENABLED" = "false" ]; then
    echo "ℹ️ Upload skipped (Generate Only Mode)."
    # 호스트 권한 문제 방지를 위해 파일 내용을 stdout으로 출력하거나 
    # 컨테이너 종료 시 호스트 파일 권한 확인 필요 (여기선 생략)
    exit 0
fi

# Dependency Track 업로드
echo "[2/2] Uploading to Dependency Track..."

if [ -z "$API_KEY" ] || [ -z "$API_URL" ]; then
    echo "❌ Error: API_KEY or API_URL is missing."
    exit 1
fi

RESPONSE=$(curl -s -X POST "$API_URL/api/v1/bom" \
  -H "Content-Type: multipart/form-data" \
  -H "X-Api-Key: $API_KEY" \
  -F "autoCreate=true" \
  -F "projectName=$PROJECT_NAME" \
  -F "projectVersion=$PROJECT_VERSION" \
  -F "bom=@$OUTPUT_FILE")

if echo "$RESPONSE" | grep -q "token"; then
    echo "✅ Upload Success!"
else
    echo "❌ Upload Failed. Response: $RESPONSE"
    exit 1
fi
echo "=========================================================="

```

## 3. Dockerfile 작성

위 스크립트와 필요한 도구들(Node.js, cdxgen, curl)을 하나로 묶는 설계도입니다.

파일명: `Dockerfile`

```
https://gitlab.tde.sktelecom.com/OSP/opensource-scanning-toolkit/-/blob/30c49ed8cbda4010bcd72e44eca28e2d62156767/docker/build-scripts/cdxgen/Dockerfile
```

```
# 베이스 이미지: Node.js 20 (Alpine)
FROM node:20-alpine

# 필수 도구 및 Syft 설치
# 1. cdxgen: npm 패키지
# 2. Syft: 공식 스크립트로 설치 (최신 버전)
# 3. curl/bash/jq: 유틸리티
RUN apk add --no-cache curl bash jq \
    && npm install -g @cyclonedx/cdxgen \
    && curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin

# 실행 스크립트 복사
COPY entrypoint.sh /usr/local/bin/run-scan
RUN chmod +x /usr/local/bin/run-scan

# 작업 디렉토리
WORKDIR /src

# 실행 진입점
ENTRYPOINT ["/usr/local/bin/run-scan"]

```

## **4. 이미지 빌드**

이제 설계도로 이미지를 만듭니다. (이미지 이름: `sbom-scanner:v1`)

```
docker build -t ghcr.io/sktelecom/sbom-scanner:v1.
```

# 이미지 배포 - GitHub Container Registry (GHCR) 배포

로컬PC에서 빌드한 이미지를 [`ghcr.io/sktelecom/sbom-scanner:v1`](http://ghcr.io/sktelecom/cdxgen-scanner:v1) 주소로 올리는 과정입니다.

## Step 1. 인증 토큰 (PAT) 준비

GitHub에 로그인하기 위해서는 비밀번호 대신 Personal Access Token (Classic)이 필요합니다.

1. GitHub 접속 → 우측 상단 프로필 → **Settings**
2. 좌측 하단 **Developer settings** → **Personal access tokens** → **Tokens (classic)**
    - [https://github.com/settings/tokens](https://github.com/settings/tokens)
3. **Generate new token (classic)** 클릭
4. **Note**: `GHCR Upload Token` 등 식별 가능한 이름 입력
5. **Scopes (권한 설정)**:
    - `write:packages` (필수: 패키지 업로드 권한)
    - `read:packages` (필수: 패키지 다운로드 권한)
    - `delete:packages` (선택: 삭제 권한)
6. **Generate token** 클릭 후, **생성된 토큰 문자열(`ghp_...`)을 복사해서 메모장에 저장**합니다. (한 번만 보여줍니다!)

## Step 2. 로컬 Docker 로그인

관리자님의 터미널에서 Docker가 GitHub에 접속할 수 있도록 로그인합니다.

```
# 터미널에서 실행
# Username: 본인의 GitHub ID 입력 (예: admin-sk)
# Password: 위에서 복사한 PAT 토큰 붙여넣기
echo "복사한_PAT_토큰" | docker login ghcr.io -u "본인_GITHUB_ID" --password-stdin

# "Login Succeeded" 메시지가 나오면 성공!

```

## Step 3. 이미지 태그 변경 및 업로드 (Push)

기존에 만든 dxgen-scanne`:v1` 이미지에 GitHub 주소표(Tag)를 붙이고 업로드합니다.

*(주의: `sktelecom` 조직명은 정확해야 하며, 대소문자를 구분할 수 있으니 소문자로 입력 권장)*

```
# 1. 태그 붙이기 (ghcr.io/조직명/이미지명:버전)
docker tag ghcr.io/sktelecom/sbom-scanner:v1 ghcr.io/sktelecom/sbom-scanner:v1

# 2. GitHub 저장소로 업로드
docker push ghcr.io/sktelecom/sbom-scanner:v1

# 혹은 buildx 를 사용하여 한 번의 명령어로 두 가지 아키텍처 이미지를 만들어 GitHub Packages에 동시에 푸시
# 1. 멀티 플랫폼 빌더 생성 (최초 1회)
# 'mybuilder'라는 이름의 새 빌더 생성 및 사용 설정
docker buildx create --name mybuilder --use --bootstrap

# 2. 빌드 및 푸시 (한 번에 수행)
# buildx는 빌드한 결과물을 로컬에 저장하는 것이 아니라, 레지스트리(GitHub Packages)로 바로 푸시하는 것이 기본 동작
# amd64와 arm64를 동시에 빌드하여 ghcr.io로 푸시
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t ghcr.io/sktelecom/sbom-scanner:v1 \
  --push \
  .

```

업로드가 완료되면, [`https://github.com/orgs/sktelecom/packages`](https://github.com/orgs/sktelecom/packages) 페이지에서 `sbom-scanner` 패키지가 생성된 것을 확인할 수 있습니다.

---

## 중요: 패키지 공개 설정 (Visibility)

처음 업로드하면 해당 패키지는 기본적으로 **Private(비공개)** 상태일 수 있습니다.

개발팀이나 외부 공급사가 로그인 없이(또는 최소 권한으로) 받게 하려면 설정을 변경해야 합니다.

1. GitHub 접속 → [`https://github.com/orgs/sktelecom/packages`](https://github.com/orgs/sktelecom/packages) 이동
2. `sbom-scanner` 패키지 클릭
3. 우측 사이드바 **Package settings** 클릭
4. **Change visibility** 섹션에서 `Internal` (사내 전용) 또는 `Public` (외부 공개)으로 변경
    - **Internal**: SKT 조직원만 사용 가능 (추천)
    - **Public**: 외부 공급사도 로그인 없이 `pull` 가능 (공급사 편의성을 위해 고려 가능)

# 개발팀 배포용 스크립트 제작 (2종)

## 2-1. 소스코드 스캔용 (`scan-source.sh`)

대부분의 개발팀(Android, Web, Backend)이 사용할 스크립트입니다.

파일명: `scan-source.sh`

```
#!/bin/bash
# ========================================================
# [개발팀용] 소스코드 보안 점검 스크립트 (Source Scanner)
# 대상: Java, Python, JS, Go 등 소스코드 프로젝트
# 사용법: ./scan-source.sh --project "MyWeb" --version "1.0.0"
# ========================================================

# [설정] 운영 환경에 맞춰 수정 필요
# 통합 스캐너 이미지 (v1)
DOCKER_IMAGE="ghcr.io/sktelecom/sbom-scanner:v1"
# Dependency Track API 서버 주소 (포트 8081)
SERVER_URL="http://host.docker.internal:8081"
# 팀 공용 API Key (보안상 환경변수 주입 권장하지만 편의를 위해 기본값 설정 가능)
DEFAULT_API_KEY="odt_5D19PBnS_Ds59XnI03jpqx1FNI9usHDlkyt6cb4eO"

# 파라미터 파싱
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --project) PROJECT_NAME="$2"; shift ;;
        --version) PROJECT_VERSION="$2"; shift ;;
        *) echo "Unknown parameter: $1"; exit 1 ;;
    esac
    shift
done

if [ -z "$PROJECT_NAME" ] || [ -z "$PROJECT_VERSION" ]; then
    echo "Usage: ./scan-source.sh --project <NAME> --version <VERSION>"
    echo "Example: ./scan-source.sh --project \"Payment-Service\" --version \"1.2.0\""
    exit 1
fi

echo "========================================================"
echo "🔍 Starting Source Code Analysis..."
echo "   - Project: $PROJECT_NAME"
echo "   - Version: $PROJECT_VERSION"
echo "========================================================"

# Docker 실행 (소스코드 마운트 O, 소켓 연결 X)
docker run --rm \
  -v "$(pwd)":/src \
  -e MODE="SOURCE" \
  -e UPLOAD_ENABLED="true" \
  -e PROJECT_NAME="$PROJECT_NAME" \
  -e PROJECT_VERSION="$PROJECT_VERSION" \
  -e API_KEY="${API_KEY:-$DEFAULT_API_KEY}" \
  -e API_URL="$SERVER_URL" \
  "$DOCKER_IMAGE"

```

- API KEY는 Dependency Track > Administration > Access Management > Teams에서 Automation Agents라는 팀을 생성하고, API Key 만들면 됩니다.

![image.png](images/image%203.png)

## 2-2. Docker이미지 스캔용 (`scan-image.sh`)

이미지를 배포하거나 인프라용 컨테이너를 점검할 때 사용합니다.

파일명: `scan-image.sh`

```
#!/bin/bash
# ========================================================
# [개발팀용] Docker 이미지 보안 점검 스크립트 (Image Scanner)
# 대상: 빌드 완료된 Docker 이미지, 외부 베이스 이미지
# 사용법: ./scan-image.sh --target "nginx:1.27.3" --project "Infra-Web" --version "1.0"
# ========================================================

DOCKER_IMAGE="ghcr.io/sktelecom/sbom-scanner:v1"
SERVER_URL="http://host.docker.internal:8081"
DEFAULT_API_KEY="odt_5D19PBnS_Ds59XnI03jpqx1FNI9usHDlkyt6cb4eO"

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --project) PROJECT_NAME="$2"; shift ;;
        --version) PROJECT_VERSION="$2"; shift ;;
        --target) TARGET_IMAGE="$2"; shift ;;
        *) echo "Unknown parameter: $1"; exit 1 ;;
    esac
    shift
done

if [ -z "$TARGET_IMAGE" ] || [ -z "$PROJECT_NAME" ]; then
    echo "Usage: ./scan-image.sh --target <IMAGE_TAG> --project <NAME> --version <VERSION>"
    echo "Example: ./scan-image.sh --target \"myapp:v1\" --project \"My-App-Image\" --version \"1.0\""
    exit 1
fi

echo "========================================================"
echo "🔍 Starting Container Image Analysis..."
echo "   - Target Image: $TARGET_IMAGE"
echo "   - Project: $PROJECT_NAME"
echo "========================================================"

# Docker 실행 (소켓 연결 필수 -v /var/run/docker.sock)
docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e MODE="IMAGE" \
  -e TARGET_IMAGE="$TARGET_IMAGE" \
  -e UPLOAD_ENABLED="true" \
  -e PROJECT_NAME="$PROJECT_NAME" \
  -e PROJECT_VERSION="$PROJECT_VERSION" \
  -e API_KEY="${API_KEY:-$DEFAULT_API_KEY}" \
  -e API_URL="$SERVER_URL" \
  "$DOCKER_IMAGE"

```

# 도구 배포 전 동작 검증

## 1. 개요

본 절차는 분리된 두 가지 스크립트(`scan-source.sh`, `scan-image.sh`)와 통합 Docker 이미지(`sbom-scanner:v1`)가 모든 시나리오에서 정상 작동하는지 사전에 검증하는 것을 목적으로 합니다.

### **테스트 환경**

- **OS**: macOS (관리자 PC)
- **서버**: 로컬 Dependency Track ([`http://localhost:8080`](http://localhost:8080/))
- **대상 프로젝트**: 테스트용 샘플 프로젝트 (Node.js 또는 Java)

## 2. 사전 준비 (Test Sample)

검증을 위해 아주 간단한 가짜 프로젝트(Dummy Project)를 하나 만듭니다.

### **1. 테스트용 프로젝트 생성**

검증을 위해 테스트용 작업 폴더를 하나 만들고, 그 안에 테스트할 가짜 프로젝트 파일들을 준비합니다.

```
mkdir ~/test-project
cd ~/test-project

# 1. 소스코드 분석 테스트용 (가짜 package.json)
# 취약점이 있는 구버전 lodash를 의도적으로 사용
echo '{
  "name": "test-vulnerable-app",
  "version": "1.0.0",
  "dependencies": {
    "lodash": "4.17.15"
  }
}' > package.json

# 2. 이미지 분석 테스트용 (nginx 이미지 당겨오기)
docker pull nginx:1.27.3

# 3. 스크립트 복사 (관리자가 작성한 스크립트 2종을 이 폴더로 가져오기)
cp /path/to/scan-source.sh .
cp /path/to/scan-image.sh .
chmod +x scan-source.sh scan-image.sh

```

## 3. 검증 시나리오

### **Scenario A: 소스코드 분석 검증 (`scan-source.sh`)**

**목표**: `cdxgen`이 작동하여 소스 의존성을 분석하고 서버에 올리는지 확인.

1. **실행**:`./scan-source.sh --project "QA-Source-Test" --version "1.0.0"`
2. **터미널 확인**:
    - `Analyzing Source Code with cdxgen...` 메시지 출력 확인.
    - `✅ Upload Success!` 메시지 확인.
3. **서버 확인 (웹 접속)**:
    - 프로젝트명 `QA-Source-Test` 생성 여부.
    - **Components 탭**: `lodash` 라이브러리가 보이는가?
    - **Vulnerabilities 탭**: `lodash` 관련 취약점(CVE)이 탐지되었는가?

### **Scenario B: Docker 이미지 분석 검증 (`scan-image.sh`)**

**목표**: `Syft`가 작동하여 Docker Socket을 통해 로컬 이미지를 분석하는지 확인.

1. **실행**:`./scan-image.sh --target "nginx:1.27.3" --project "QA-Image-Test" --version "1.0.0"`
2. **터미널 확인**:
    - `Analyzing Image (nginx:latest) with Syft...` 메시지 출력 확인.
    - `✅ Upload Success!` 메시지 확인.
3. **서버 확인 (웹 접속)**:
    - 프로젝트명 `QA-Image-Test` 생성 여부.
    - **Components 탭**: `openssl`, `glibc`, `nginx` 등 **OS 시스템 패키지**들이 다수(수십 개 이상) 보이는가? (이것이 Syft가 제대로 돈 증거입니다)

### **Scenario C: 서버 데이터 무결성 확인 (가장 중요)**

실제 Dependency Track 서버에 들어가서 데이터가 들어왔는지 봅니다.

![image.png](images/image%204.png)

1. **서버 접속**: [`http://localhost:8080`](http://localhost:8080/) 로그인.
2. **프로젝트 확인**: `Projects` 메뉴에 `QA-Source-Test,QA-Image-Test가` 생성되었는가?
3. **버전 확인**: 버전이 1.0.0로 찍혀있는가?
4. **컴포넌트 확인**: `Components` 탭에 `lodash`가 보이는가?
5. **취약점 확인**: `Audit Vulnerabilities` 탭에 `lodash 4.17.15` 관련 취약점(CVE)이 탐지되었는가? (서버 분석 대기 시간 1~2분 필요)

## 4. 트러블슈팅 (테스트 실패 시)

**Case 1: `Connection Refused` 에러 발생**

- **원인**: Docker 컨테이너 내부에서 `localhost:8080`을 찾지 못함.
- **해결**: `scan.sh` 내 `SERVER_URL`이 [`http://host.docker.internal:8081`](http://host.docker.internal:8080/)으로 되어 있는지 재확인하세요. (Mac/Win Docker 환경 필수 설정)

**Case 2: `401 Unauthorized` 에러**

- **원인**: API Key가 틀렸거나 권한이 없음.
- **해결**: Dependency Track 팀 설정에서 `BOM_UPLOAD` 권한이 체크되어 있는지 확인하고, Key를 재생성해 보세요.

**Case 3: `bom.json` 생성 안 됨**

- **원인**: 빈 폴더에서 실행했거나 지원되는 파일(`package.json`, `pom.xml` 등)이 없음.
- **해결**: `test-project` 폴더에 `package.json`이 있는지 확인하세요.

# 4. (관리자용) 오픈소스 리스크 분석 및 대응 매뉴얼

## 1. 운영 프로세스 개요 (Workflow)

관리자의 역할은 '감시자'가 아닌 '품질 관리자(Gatekeeper)'입니다. 전체 흐름은 다음과 같습니다.

1. **데이터 수신**: 개발팀 스크립트 실행 → Dependency Track에 프로젝트 자동 생성 및 BOM 업로드.
2. **자동 분석**: 서버가 업로드된 BOM을 NVD 등과 대조하여 취약점/라이선스 위반 탐지 (약 1~5분 소요).
3. **관리자 검토 (Triage)**:
    - **식별**: Critical/High 이슈 확인.
    - **판단**: 실제 영향도가 있는 진짜 위협인가? (영향성 평가).
    - **결정**: "즉시 패치" vs "예외 처리(Suppress)" vs "모니터링".
4. **조치 요청**: 개발팀에게 JIRA 티켓 발행 또는 메일 통보.
5. **검증**: 개발팀 조치 후 재스캔 결과 확인.

## 2. Dependency Track 핵심 활용법 (화면 보는 법)

서버([`http://localhost:8080`](http://localhost:8080/)) 접속 후 다음 순서로 확인합니다.

### **2.1 대시보드 (Dashboard)**

- **Portfolio Vulnerabilities**: 전사적으로 가장 위험한 취약점이 무엇인지 보여줍니다.
- **Projects at Risk**: 현재 가장 위험한 프로젝트 Top 5를 보여줍니다. → **관리자의 아침 업무는 여기서 시작됩니다.**

### **2.2 프로젝트 상세 화면 (Project Details)**

리스크가 있는 프로젝트를 클릭하여 들어갑니다.

- **Components 탭**: 어떤 오픈소스 라이브러리들이 쓰였는지 목록입니다.
- **Audit Vulnerabilities 탭 (가장 중요)**:
    - 발견된 모든 취약점 목록입니다.
    - **Severity (심각도)**: `Critical` > `High` > `Medium` > `Low` 순서입니다.
    - **Analysis Status**: 관리자가 판단한 상태를 기록하는 곳입니다. (초기값: `Not Set`)

## 3. 리스크 판단 기준 (Decision Making)

무조건 빨간색(Critical)이라고 해서 개발팀에게 "당장 고쳐!"라고 하면 안 됩니다. 오탐(False Positive)이나 **사용하지 않는 기능**일 수 있기 때문입니다.

### **3.1 판단 3단계 프로세스**

**Step 1. 실제 사용 중인 버전인가?**

- 가끔 스캐너가 버전을 잘못 인식할 수 있습니다.
- **확인법**: `Components` 탭에서 해당 라이브러리의 버전(Version)이 명확한지 확인.

**Step 2. "영향 받는 기능"을 쓰는가? (VEX 개념)**

- 예: `Log4j` 취약점이 발견되었지만, 우리 코드는 해당 라이브러리의 '취약한 함수'를 전혀 호출하지 않을 수 있습니다.
- **확인법**: 취약점 ID(예: CVE-2021-44228)를 클릭하여 상세 내용을 봅니다.
    - *내용: "JNDI Lookup 기능을 쓸 때 위험함"*
    - *질문*: "개발팀, 우리 이거 JNDI 기능 써요?"

**Step 3. 패치가 가능한가?**

- 최신 버전이 나와 있다면 **업그레이드**가 정답입니다.
- 최신 버전도 취약하다면 **대체제 검토** 또는 자체 방어 코드(Workaround)가 필요합니다.

## 4. 개발팀 가이드 시나리오 (Action Guide)

관리자님이 `Audit Vulnerabilities` 탭에서 [Comment]를 남기고 [Status]를 변경한 뒤, 개발팀에게 전달할 메시지 예시입니다.

### **상황 A: 명백한 위험 (Exploitable)**

- **판단**: 최신 패치가 있고, 공격 코드가 공개됨.
- **DT 조치**: Status를 `Exploitable`로 설정.
- **개발팀 메시지**:
    
    "현재 사용 중인 `Library-X v1.0`에서 원격 실행 취약점(Critical)이 발견되었습니다. v1.2로 즉시 버전 업그레이드 후 재배포 바랍니다."
    

### **상황 B: 오탐 또는 영향 없음 (False Positive / Not Affected)**

- **판단**: 우리는 리눅스용 라이브러리를 쓰는데, 취약점은 윈도우 환경에서만 발생함.
- **DT 조치**: Status를 `Not Affected`로 설정하고, Comment에 "Windows 전용 취약점이므로 무시함"이라고 기록. (이러면 리스크 점수에서 제외됨)
- **개발팀 메시지**:
    
    "해당 취약점은 우리 환경과 무관하므로 조치 불필요합니다. (예외 처리 완료)"
    

### **상황 C: 패치 불가, 완화 조치 필요 (Mitigated)**

- **판단**: 상위 버전이 아직 안 나왔음. 하지만 설정 변경으로 막을 수 있음.
- **DT 조치**: Status를 `In Triage`로 설정.
- **개발팀 메시지**:
    
    "아직 패치 버전이 없습니다. 대신 `config.xml`에서 `feature-X=false`로 설정하여 기능을 비활성화해 주세요."
    

## 5. 관리자 필수 점검 리스트 (Checklist)

매일/매주 아래 항목을 체크하세요.

- **Daily**: 대시보드에서 `Critical` 신규 발생 건수 확인.
- **Weekly**: 'Status'가 `Not Set`(미판단)인 취약점들을 검토하여 `Exploitable` 혹은 `Not Affected`로 분류 처리 (Audit).
- **Monthly**: 팀별 리스크 점수(Risk Score) 변화 추이 보고. (점수가 낮아져야 정상)

# 5. (개발자용) 가이드 작성

마지막으로, 각 개발팀의 특성에 맞게 이 도구를 어떻게 쓰는지 알려주는 가이드입니다.

## [개발팀 공지] 오픈소스 보안 점검 도구 사용 가이드

### **1. 개요**

우리 회사의 보안 정책에 따라, 모든 프로젝트는 배포 전 오픈소스 점검(SBOM)을 수행해야 합니다. 복잡한 설정 없이 **명령어 한 줄**로 점검할 수 있는 도구를 배포합니다.

### **2. 사전 준비**

- **Docker 설치**: 개발 PC에 Docker(또는 Rancher Desktop)가 실행 중이어야 합니다.
- **스크립트 다운로드**: 배포된 `scan.sh` 파일을 프로젝트 루트 폴더에 두세요.

### **3. 공통 사용법**

터미널(또는 CMD)에서 프로젝트 폴더로 이동 후 아래 명령어를 실행합니다.

```
# Mac/Linuxchmod +x scan.sh./scan.sh --project"프로젝트명" --version"버전"
# Windows (Git Bash 추천)./scan.sh --project"프로젝트명" --version"버전"
```

### **4. 개발 환경 별 주의사항**

- Android App (Gradle)
    - **주의사항**: Gradle 프로젝트는 빌드가 가능한 상태여야 정확한 분석이 됩니다.
    - **팁**: `scan.sh` 실행 전 `./gradlew clean build`를 한 번 수행해 주시면 가장 정확합니다.
- Web Frontend (npm/yarn)
    - **주의사항**: `node_modules` 폴더가 없어도 `package-lock.json`이나 `yarn.lock` 파일만 있으면 분석 가능합니다.
    - **팁**: 락 파일(`lock file`)이 최신 상태인지 확인해 주세요.
- Backend (Java/Python)
    - **Java (Maven)**: `pom.xml`이 있는 루트 경로에서 실행하세요.
    - **Python**: `requirements.txt` 또는 `poetry.lock` 파일이 있어야 합니다. 가상환경(venv) 폴더는 분석 대상에서 제외되니 안심하세요.
- Embedded (Yocto)
    - **특별 안내**: Yocto 빌드 시스템은 구조가 복잡하여 위 스크립트로는 정확도가 떨어질 수 있습니다.
    - **권장**: Yocto 빌드 과정에서 생성되는 `manifest` 파일이나, 이미지 빌드 후 **'외부 공급사 가이드'의 Syft 도구**를 사용하여 이미지 자체를 스캔하는 방식을 추천합니다. (별도 문의 요망)