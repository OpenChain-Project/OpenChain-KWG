<script setup lang="ts">
// 전역 하단 — 모든 슬라이드에 자동 페이지 번호 (수동 번호 대체).
// Slidev가 global-bottom.vue 를 모든 슬라이드 하단에 자동 렌더한다.
// slide 모드: $page 정상 → 표지($page===1)는 is-cover 로 CSS 숨김, 본문은 $page 표시.
// print 모드(export): GlobalBottom 에 page/route/renderContext 가 provide 되지 않아
//   $page 가 1로 고정된다. 따라서 실제 번호는 style.css 의 CSS counter
//   (.print-slide-container)로 보정하고, is-cover 도 CSS로 일괄 복원한다.
import { useSlideContext } from '@slidev/client'
const { $page, $nav } = useSlideContext()
</script>

<template>
  <footer class="oc-pagenum" :class="{ 'is-cover': $page === 1 }">
    <span class="oc-pagenum__n">{{ $page }}</span> / {{ $nav?.total }}
  </footer>
</template>

<style scoped>
.oc-pagenum {
  position: absolute;
  bottom: 0.5rem;
  right: 1.1rem;
  font-family: var(--oc-font-mono);
  font-size: 0.58rem;
  letter-spacing: 0.02em;
  color: var(--oc-gray-400);
  z-index: 10;
}
</style>
