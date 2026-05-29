<script setup lang="ts">
// CVSS + EPSS + KEV 통합 점수. 등급은 색 + 라벨 병기(접근성).
// 근거: HZ-1 (CVSS 4.0) · HZ-2 (EPSS/KEV).
const props = defineProps<{
  cvss: number
  version?: '3.1' | '4.0'
  epss?: number
  kev?: boolean
  vector?: string
}>()

function severity(s: number) {
  if (s >= 9.0) return { label: 'Critical', color: 'var(--oc-critical)' }
  if (s >= 7.0) return { label: 'High',     color: 'var(--oc-scale-4)' }
  if (s >= 4.0) return { label: 'Medium',   color: 'var(--oc-scale-3)' }
  if (s > 0)    return { label: 'Low',      color: 'var(--oc-scale-2)' }
  return { label: 'None', color: 'var(--oc-scale-1)' }
}
</script>

<template>
  <div class="oc-cvss">
    <div class="oc-cvss__score" :style="{ color: severity(cvss).color }">
      <span class="oc-cvss__num">{{ cvss.toFixed(1) }}</span>
      <span class="oc-cvss__sev">{{ severity(cvss).label }}</span>
    </div>
    <div class="oc-cvss__meta">
      <span class="oc-cvss__tag">CVSS v{{ version ?? '4.0' }}</span>
      <span v-if="epss !== undefined" class="oc-cvss__tag">EPSS {{ Math.round(epss * 100) }}%</span>
      <span v-if="kev" class="oc-cvss__tag oc-cvss__tag--kev">CISA KEV</span>
    </div>
    <div v-if="vector" class="oc-cvss__vector">{{ vector }}</div>
  </div>
</template>

<style scoped>
.oc-cvss {
  display: inline-flex;
  flex-direction: column;
  gap: var(--oc-space-sm);
  padding: 0;
  background: transparent;
  border: none;
  border-radius: 0;
}
.oc-cvss__score { display: flex; align-items: baseline; gap: var(--oc-space-sm); }
.oc-cvss__num {
  font-size: var(--oc-text-stat);
  font-weight: 700;
  line-height: 1;
  letter-spacing: var(--oc-tracking-tight);
  font-feature-settings: "tnum" 1;
}
.oc-cvss__sev { font-size: var(--oc-text-h3); font-weight: 600; }
.oc-cvss__meta { display: flex; gap: var(--oc-space-xs); flex-wrap: wrap; }
.oc-cvss__tag {
  font-family: var(--oc-font-mono);
  font-size: var(--oc-text-caption);
  color: var(--oc-ink-muted);
  border: var(--oc-border);
  border-radius: var(--oc-radius-sm);
  padding: 0.1em 0.4em;
}
.oc-cvss__tag--kev { color: var(--oc-critical); border-color: var(--oc-critical-border); }
.oc-cvss__vector {
  font-family: var(--oc-font-mono);
  font-size: var(--oc-text-caption);
  color: var(--oc-ink-muted);
}
</style>
