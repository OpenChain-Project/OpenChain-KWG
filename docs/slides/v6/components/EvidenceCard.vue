<script setup lang="ts">
// ISO 입증자료 카드 (번호 + 요건 + 출처 + 충족도).
// 근거: EVIDENCE-CHECK.md, iso5230/iso18974 조항 페이지.
defineProps<{
  number: string
  title: string
  standard?: '5230' | '18974' | '42001'
  clause?: string
  status?: 'full' | 'partial' | 'missing'
}>()

const stdLabel: Record<string, string> = {
  '5230': 'ISO 5230', '18974': 'ISO 18974', '42001': 'ISO 42001',
}
const statusMeta: Record<string, { color: string; label: string }> = {
  full:    { color: 'var(--oc-cat-green)', label: '충족' },
  partial: { color: 'var(--oc-cat-amber)', label: '부분' },
  missing: { color: 'var(--oc-cat-red)',   label: '누락' },
}
</script>

<template>
  <div class="oc-evcard">
    <div class="oc-evcard__head">
      <span class="oc-evcard__num">{{ number }}</span>
      <span class="oc-evcard__meta">
        <span v-if="standard" class="oc-evcard__std">{{ stdLabel[standard] }}</span>
        <span v-if="status" class="oc-evcard__status" :style="{ color: statusMeta[status].color }">
          ● {{ statusMeta[status].label }}
        </span>
      </span>
    </div>
    <div class="oc-evcard__title">{{ title }}</div>
    <div v-if="clause" class="oc-evcard__clause">{{ clause }}</div>
    <div class="oc-evcard__body"><slot /></div>
  </div>
</template>

<style scoped>
.oc-evcard {
  background: var(--oc-surface);
  border: var(--oc-border);
  border-radius: var(--oc-radius-md);
  padding: var(--oc-space-md) var(--oc-space-lg);
  box-shadow: var(--oc-elevation);
}
.oc-evcard__head { display: flex; justify-content: space-between; align-items: baseline; }
.oc-evcard__num {
  font-family: var(--oc-font-mono);
  font-weight: 700;
  color: var(--oc-primary);
  font-size: var(--oc-text-h3);
}
.oc-evcard__meta { display: flex; gap: var(--oc-space-sm); font-size: var(--oc-text-small); }
.oc-evcard__std { color: var(--oc-ink-muted); }
.oc-evcard__title {
  font-size: var(--oc-text-body);
  font-weight: 600;
  margin-top: var(--oc-space-xs);
  color: var(--oc-ink);
}
.oc-evcard__clause {
  font-size: var(--oc-text-caption);
  color: var(--oc-ink-muted);
  margin-top: var(--oc-space-xs);
}
.oc-evcard__body { font-size: var(--oc-text-small); margin-top: var(--oc-space-sm); }
</style>
