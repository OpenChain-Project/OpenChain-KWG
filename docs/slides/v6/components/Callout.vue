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
.oc-callout {
  border-left: 4px solid var(--bar);
  background: var(--bg);
  border-radius: var(--oc-radius-md);
  padding: var(--oc-space-md) var(--oc-space-lg);
  margin: var(--oc-space-md) 0;
  color: var(--oc-ink);
}
.oc-callout--info     { --bar: var(--oc-info);     --bg: var(--oc-info-bg); }
.oc-callout--success  { --bar: var(--oc-success);  --bg: var(--oc-success-bg); }
.oc-callout--warn     { --bar: var(--oc-warn);     --bg: var(--oc-warn-bg); }
.oc-callout--critical { --bar: var(--oc-critical); --bg: var(--oc-critical-bg); }
.oc-callout__title {
  font-weight: var(--oc-weight-bold);
  color: var(--bar);
  margin-bottom: var(--oc-space-xs);
}
.oc-callout__body { font-size: var(--oc-text-body); }
.oc-callout__body :deep(p:last-child) { margin-bottom: 0; }
</style>
