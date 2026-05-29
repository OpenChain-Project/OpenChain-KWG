<script setup lang="ts">
// 코드 쇼케이스 — 파일명 탭 + 언어 라벨 + 표준 테두리. 본문 코드는 slot(Slidev Shiki 처리).
// 라인 하이라이트는 slot 코드펜스의 ```lang {2,5-7} 로 지정.
// PLAN 판정(5회 사용)으로 deferred → 추출. 근거: tools·4-tool CI/CD.
defineProps<{
  lang?: string
  filename?: string
  highlight?: string
}>()
</script>

<template>
  <div class="oc-code">
    <div v-if="filename || lang" class="oc-code__bar">
      <span v-if="filename" class="oc-code__file">{{ filename }}</span>
      <span v-if="lang" class="oc-code__lang">{{ lang }}</span>
    </div>
    <div class="oc-code__body"><slot /></div>
  </div>
</template>

<style scoped>
.oc-code {
  border: 1px solid var(--oc-line);
  border-radius: var(--oc-radius-lg);
  overflow: hidden;
  background: var(--oc-surface);
}
.oc-code__bar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: var(--oc-space-sm) var(--oc-space-md);
  border-bottom: 1px solid var(--oc-line);
  background: var(--oc-surface-2);
}
.oc-code__file { font-family: var(--oc-font-mono); font-size: var(--oc-text-caption); color: var(--oc-ink); }
.oc-code__lang {
  font-family: var(--oc-font-mono);
  font-size: var(--oc-text-caption);
  color: var(--oc-ink-muted);
  text-transform: uppercase;
}
.oc-code__body :deep(pre) { margin: 0; border: none; border-radius: 0; }
</style>
