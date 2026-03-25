# 파일 첨부와 그림 보여주기

## 대용량 파일 업로드 규칙 (GitHub Releases)

> **중요:** PDF, PPTX 등 대용량 파일은 `static/` 또는 `content/` 폴더에 직접 커밋하지 마세요.
> GitHub Pages 1GB 용량 한도를 초과할 수 있습니다.
> 반드시 **GitHub Releases**에 업로드한 뒤 절대 경로 URL로 링크하세요.

- GitHub Releases 접속:
  https://github.com/OpenChain-Project/OpenChain-KWG/releases
- 해당 연도의 Release 태그 선택 (예: `meeting-slides-2026`)
  태그가 없으면 새로 생성:
  - Tag: `meeting-slides-YYYY`
  - Title: `Meeting Slides YYYY`
- 파일명 규칙 준수 후 업로드:
  - 영문, 숫자, 하이픈(`-`), 언더스코어(`_`), 점(`.`)만 사용
  - 공백·한글·특수문자 사용 금지
  - 권장 형식: `YYYYMMDD-발표자-주제키워드.pdf`
  - 예시: `20260320-kakao-sbom-intro.pdf`
- 업로드 후 다운로드 URL 복사:
  `https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf`

마크다운에서 링크하는 방법:

```markdown
<!-- 올바른 방식 -->
[발표자료](https://github.com/OpenChain-Project/OpenChain-KWG/releases/download/meeting-slides-YYYY/파일명.pdf)

<!-- 금지 -->
[발표자료](/slides/파일명.pdf)
```

---

## 파일 첨부 (소용량 파일)

소용량 파일(이미지 등)은 첨부할 `_index.md`가 위치한 디렉토리(예: `/content/ko/meeting/6th`) 내에 위치시키세요.

그리고, `_index.md`에서 아래 예와 같이 첨부파일 다운로드 링크를 추가하면 됩니다.

```markdown
* [OpenChainKWG_6th_20200616.pdf](OpenChainKWG_6th_20200616.pdf)
```

## 이미지 보여주기

먼저 이미지 파일을 이미지를 보여줄 `_index.md`가 위치한 디렉토리(예: `/content/ko/meeting/6th`) 내에 위치시키세요.

이미지 파일은 주로 다음 세가지 방식으로 보여줄 수 있습니다.

### Markdown 형태로 보여주기

다음과 같이 Markdown 방식으로 보여줄 수 있습니다. 이 경우 화면에 가득차게 보여집니다.

```markdown
![OpenChain_KWG_6th_2.png](OpenChain_KWG_6th_2.png)
```

### html tag 사용하여 보여주기

html tag를 사용하여 사이즈를 조절하며 보여줄 수 있습니다.

```html
<!-- 폭의 90%만 채워서 보여주기 -->
<div><span class="image fit">
  <img src="OpenChain_6th.jpg" width="90%">
</span></div>

<!-- 세개의 그림을 폭의 1/3씩 채워서 한 줄로 보여주기 -->
<div><span class="image fit">
  <img src="OpenChain_6th.jpg" width="30%">
  <img src="OpenChain_KWG_6th_1.png" width="30%">
  <img src="OpenChain_KWG_6th_2.png" width="30%">
</span></div>
```

### hugo의 Image Processing 기능을 사용하여 보여주기

hugo의 [imgproc shortcode](https://www.docsy.dev/docs/adding-content/shortcodes/#imgproc)를 이용하여 이미지 사이즈 수정, 출처/라이선스 표시 등을 할 수 있습니다.

먼저 Index 페이지 파일(예: `_index.md`)의 헤더 영역에 아래와 같이 이미지 파일을 resources에 추가합니다.

```yaml
resources:
- src: "guide.png"
  params:
    byline: "Photo: OpenChain Korea Work Group / CC-BY-SA"
```

* **src** : 이미지 파일 이름을 작성합니다. 여러개의 파일인 경우, `"**.{png,jpg}"` 와 같이 표시할 수 있습니다.
* **byline** : 이미지 파일 하단에 보여질 출처 및 라이선스를 작성합니다.

그리고, Index 페이지 파일 본문 내 이미지 파일을 보여주어야 할 부분에 아래와 같이 작성하여 이미지를 보여주세요.

```
{{< imgproc guide Fit "900x600" >}}
기업 공개SW 거버넌스 OpenChain 2.0 해설 (여기에 이미지 설명을 작성하면 이미지 하단에 함께 보여집니다.)
{{< /imgproc >}}
```

가이드 페이지에서 보여지는 이미지를 참고하세요. : [Guide](https://openchain-project.github.io/OpenChain-KWG/guide/)
