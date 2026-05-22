import { defineShikiSetup } from '@slidev/types'

// 코드 블록 dual theme (DESIGN-TOKENS §6)
//  - 다크(발표 기본): vitesse-dark
//  - 라이트(export·인쇄): github-light
export default defineShikiSetup(() => ({
  themes: {
    dark: 'vitesse-dark',
    light: 'github-light',
  },
}))
