<script setup lang="ts">
// VEX 4상태값 배지/범례. 색 + 라벨 병기(접근성).
// 근거: HZ-3 (CSAF 2.0 / CycloneDX VEX), iso18974 보안 가이드.
defineProps<{
  status?: 'not_affected' | 'affected' | 'fixed' | 'under_investigation'
  legend?: boolean
  justification?: string
}>()

const meta = {
  not_affected:        { label: 'not_affected',        color: 'var(--oc-cat-green)' },
  affected:            { label: 'affected',            color: 'var(--oc-cat-red)' },
  fixed:               { label: 'fixed',               color: 'var(--oc-cat-teal)' },
  under_investigation: { label: 'under_investigation', color: 'var(--oc-cat-amber)' },
} as const
const order = ['not_affected', 'affected', 'fixed', 'under_investigation'] as const
</script>

<template>
  <div class="oc-vex">
    <template v-if="legend">
      <span v-for="k in order" :key="k" class="oc-vex__badge">
        <span class="oc-vex__dot" :style="{ background: meta[k].color }" />
        {{ meta[k].label }}
      </span>
    </template>
    <template v-else-if="status">
      <span class="oc-vex__badge">
        <span class="oc-vex__dot" :style="{ background: meta[status].color }" />
        <span class="oc-vex__solo" :style="{ color: meta[status].color }">{{ meta[status].label }}</span>
      </span>
      <span v-if="justification" class="oc-vex__just">justification: <code>{{ justification }}</code></span>
    </template>
  </div>
</template>

<style scoped>
.oc-vex {
  display: flex;
  flex-wrap: wrap;
  gap: var(--oc-space-md);
  align-items: center;
  font-family: var(--oc-font-mono);
  font-size: var(--oc-text-small);
}
.oc-vex__badge { display: inline-flex; align-items: center; gap: var(--oc-space-xs); }
.oc-vex__dot { width: 0.7em; height: 0.7em; border-radius: 50%; display: inline-block; flex: none; }
.oc-vex__solo { font-weight: 700; }
.oc-vex__just { color: var(--oc-ink-muted); }
</style>
