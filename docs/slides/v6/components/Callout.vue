<script setup lang="ts">
// 강조/주의/정보 박스. 가이드 본문 {{% alert %}} 의 슬라이드 대응.
// variant 의미는 DESIGN-TOKENS §5 (info=참고 · success=권장/ISO5230 · warn=주의/ISO18974 · critical=중요/법규).
defineProps<{
  variant?: 'info' | 'success' | 'warn' | 'critical'
  title?: string
}>()
</script>

<template>
  <div class="oc-callout" :class="`oc-callout--${variant ?? 'info'}`">
    <div v-if="title" class="oc-callout__title">{{ title }}</div>
    <div class="oc-callout__body"><slot /></div>
  </div>
</template>

<style scoped>
/* Vercel — 미세 보더 카드. 의미색은 제목 앞 점에만 (모노크롬 + 절제) */
.oc-callout {
  border: none;
  border-left: 2px solid var(--bar);
  background: transparent;
  border-radius: 0;
  padding: var(--oc-space-xs) 0 var(--oc-space-xs) var(--oc-space-lg);
  margin: var(--oc-space-lg) 0;
  color: var(--oc-ink);
}
.oc-callout--info     { --bar: var(--oc-info); }
.oc-callout--success  { --bar: var(--oc-success); }
.oc-callout--warn     { --bar: var(--oc-warn); }
.oc-callout--critical { --bar: var(--oc-critical); }
.oc-callout__title {
  font-weight: var(--oc-weight-bold);
  color: var(--oc-ink);
  margin-bottom: var(--oc-space-xs);
}
/* 제목 앞 의미색 점 — 색 정보는 유지하되 면이 아닌 점으로 절제 */
.oc-callout__title::before {
  content: "";
  display: inline-block;
  width: 7px;
  height: 7px;
  border-radius: 50%;
  background: var(--bar);
  margin-right: 0.5em;
  vertical-align: middle;
}
.oc-callout__body { font-size: var(--oc-text-body); }
.oc-callout__body :deep(p:last-child) { margin-bottom: 0; }
</style>
