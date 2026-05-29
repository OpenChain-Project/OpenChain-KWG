import { defineMermaidSetup } from '@slidev/types'

// Mermaid 다이어그램을 디자인 토큰 팔레트(화이트·중성 그레이·잉크)에 맞춰 SaaS 미니멀하게 테마링.
// Mermaid는 SVG 인라인 스타일을 생성하므로 CSS 변수(var(--oc-*))가 적용되지 않아 실제 hex 값을 사용한다.
// (tokens.css 와 값 동기화 — 변경 시 양쪽 갱신)
export default defineMermaidSetup(() => ({
  theme: 'base',
  themeVariables: {
    // 타이포 (tokens: --oc-font-sans)
    fontFamily: '"Pretendard", "Inter", system-ui, sans-serif',
    fontSize: '15px',

    // 노드 (tokens: --oc-surface / --oc-ink / --oc-gray-300)
    primaryColor: '#f8f9fa',
    primaryTextColor: '#16181d',
    primaryBorderColor: '#dee2e6',
    secondaryColor: '#f1f3f5',
    secondaryTextColor: '#16181d',
    secondaryBorderColor: '#dee2e6',
    tertiaryColor: '#ffffff',
    tertiaryTextColor: '#16181d',
    tertiaryBorderColor: '#e9ecef',

    // 화살표·선 (tokens: --oc-gray-500/400)
    lineColor: '#adb5bd',

    // 텍스트 (tokens: --oc-ink / --oc-ink-muted)
    textColor: '#16181d',
    nodeTextColor: '#16181d',

    // subgraph 클러스터 (tokens: --oc-bg / --oc-line)
    clusterBkg: '#ffffff',
    clusterBorder: '#e9ecef',

    // 엣지 라벨 배경 (가독성)
    edgeLabelBackground: '#ffffff',
  },
}))
