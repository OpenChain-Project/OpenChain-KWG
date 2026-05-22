<script setup lang="ts">
// OpenChain ISO/IEC 5230 §3.1~3.6 6대 핵심요소 육각형. active 영역 강조.
// PLAN 판정(9회 사용)으로 deferred → 추출. 근거: iso5230_guide 구조.
defineProps<{
  active?: number
  elements?: { id: number; label: string }[]
}>()

const defaultEls = [
  { id: 1, label: '프로그램 기반\n§3.1' },
  { id: 2, label: '관련 업무\n§3.2' },
  { id: 3, label: '콘텐츠 검토·승인\n§3.3' },
  { id: 4, label: '컴플라이언스 산출물\n§3.4' },
  { id: 5, label: '커뮤니티 참여\n§3.5' },
  { id: 6, label: '규격 준수\n§3.6' },
]
</script>

<template>
  <div class="oc-hex">
    <div
      v-for="el in (elements ?? defaultEls)"
      :key="el.id"
      class="oc-hex__cell"
      :class="{ 'is-active': active === el.id }"
    >
      <span class="oc-hex__num">{{ el.id }}</span>
      <span class="oc-hex__label">{{ el.label }}</span>
    </div>
  </div>
</template>

<style scoped>
.oc-hex {
  display: flex;
  flex-wrap: wrap;
  gap: var(--oc-space-md);
  justify-content: center;
  align-items: center;
}
.oc-hex__cell {
  width: 9rem;
  height: 9rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  gap: var(--oc-space-xs);
  background: var(--oc-surface);
  border: var(--oc-border);
  clip-path: polygon(25% 5%, 75% 5%, 100% 50%, 75% 95%, 25% 95%, 0% 50%);
  color: var(--oc-ink-muted);
}
.oc-hex__cell.is-active {
  background: var(--oc-primary);
  color: var(--oc-bg);
  border-color: var(--oc-primary);
}
.oc-hex__num { font-family: var(--oc-font-mono); font-weight: 700; font-size: var(--oc-text-h3); }
.oc-hex__label { font-size: var(--oc-text-caption); white-space: pre-line; padding: 0 var(--oc-space-sm); }
</style>
