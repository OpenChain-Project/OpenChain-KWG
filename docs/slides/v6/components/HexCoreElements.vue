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
  <div class="oc-core">
    <div
      v-for="el in (elements ?? defaultEls)"
      :key="el.id"
      class="oc-core__cell"
      :class="{ 'is-active': active === el.id }"
    >
      <span class="oc-core__num">{{ el.id }}</span>
      <span class="oc-core__label">{{ el.label }}</span>
    </div>
  </div>
</template>

<style scoped>
/* 정렬된 3×2 그리드 카드 (clip-path 육각형 제거 — SaaS 미니멀) */
.oc-core {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: var(--oc-space-md);
  margin: var(--oc-space-lg) 0;
}
.oc-core__cell {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: var(--oc-space-sm);
  min-height: 3.5rem;
  padding: var(--oc-space-sm) 0 0;
  border-top: 2px solid var(--oc-line);
  color: var(--oc-ink);
}
.oc-core__cell.is-active { border-top-color: var(--oc-primary); }
.oc-core__cell.is-active .oc-core__label { color: var(--oc-primary); }
.oc-core__num {
  font-family: var(--oc-font-mono);
  font-weight: 700;
  font-size: var(--oc-text-small);
  line-height: 1;
  color: var(--oc-ink-muted);
}
.oc-core__cell.is-active .oc-core__num { color: var(--oc-primary); }
.oc-core__label {
  font-size: var(--oc-text-body);
  font-weight: 600;
  line-height: var(--oc-leading-snug);
  letter-spacing: var(--oc-tracking-snug);
  white-space: pre-line;
}
</style>
