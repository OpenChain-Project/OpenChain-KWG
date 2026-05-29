<script setup lang="ts">
// 선형 프로세스 스텝 흐름 — Mermaid flowchart(단순 직렬) 대체. Vercel 미세 보더 카드 스타일.
// 모노 번호 + 라벨 + 설명, 사이 가는 화살표. 분기·보조 설명은 step.note 로 흡수.
// 근거: SLIDES-WORK 4단계 — 단순 선형 Mermaid 제거.
defineProps<{
  steps: { label: string; note?: string }[]
  direction?: 'row' | 'col'
  active?: number
}>()
</script>

<template>
  <div class="oc-flow" :class="`oc-flow--${direction ?? 'row'}`">
    <template v-for="(step, i) in steps" :key="i">
      <div class="oc-flow__step" :class="{ 'is-active': active === i + 1 }">
        <span class="oc-flow__num">{{ String(i + 1).padStart(2, '0') }}</span>
        <span class="oc-flow__label">{{ step.label }}</span>
        <span v-if="step.note" class="oc-flow__note">{{ step.note }}</span>
      </div>
      <span v-if="i < steps.length - 1" class="oc-flow__arrow" aria-hidden="true">
        {{ (direction ?? 'row') === 'row' ? '→' : '↓' }}
      </span>
    </template>
  </div>
</template>

<style scoped>
.oc-flow {
  display: flex;
  margin: var(--oc-space-lg) 0;
}
.oc-flow--row { flex-direction: row; align-items: stretch; gap: var(--oc-space-sm); }
.oc-flow--col { flex-direction: column; gap: var(--oc-space-sm); }

.oc-flow__step {
  flex: 1 1 0;
  min-width: 6rem;
  display: flex;
  flex-direction: column;
  gap: var(--oc-space-xs);
  padding: var(--oc-space-sm) 0 0;
  border-top: 2px solid var(--oc-line);
}
.oc-flow--col .oc-flow__step {
  flex: none;
  width: 100%;
  padding: var(--oc-space-sm) 0 0;
  border-top: 2px solid var(--oc-line);
}
.oc-flow__step.is-active { border-top-color: var(--oc-primary); }

.oc-flow__num {
  font-family: var(--oc-font-mono);
  font-size: var(--oc-text-caption);
  font-weight: 500;
  color: var(--oc-gray-400);
}
.oc-flow__step.is-active .oc-flow__num { color: var(--oc-ink); }

.oc-flow__label {
  font-weight: 600;
  font-size: var(--oc-text-small);
  line-height: var(--oc-leading-snug);
  letter-spacing: var(--oc-tracking-snug);
  color: var(--oc-ink);
}
.oc-flow__note {
  font-size: var(--oc-text-caption);
  color: var(--oc-ink-muted);
  line-height: var(--oc-leading-snug);
}

.oc-flow__arrow {
  flex: none;
  color: var(--oc-gray-400);
  font-size: var(--oc-text-small);
  align-self: center;
}
.oc-flow--col .oc-flow__arrow { align-self: flex-start; padding-left: var(--oc-space-md); }
</style>
