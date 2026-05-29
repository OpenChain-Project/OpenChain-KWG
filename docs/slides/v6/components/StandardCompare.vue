<script setup lang="ts">
// ISO/IEC 5230 / 18974 / 42001 비교표. 표준별 헤더색(파트 길찾기) + highlight 열 강조.
// 근거: iso42001/compare, iso5230/iso18974 _index "다른 표준과의 관계".
defineProps<{
  rows: { aspect: string; v5230?: string; v18974?: string; v42001?: string }[]
  highlight?: '5230' | '18974' | '42001'
}>()
</script>

<template>
  <table class="oc-cmp">
    <thead>
      <tr>
        <th class="oc-cmp__corner"></th>
        <th class="oc-cmp__h5230" :class="{ 'is-hl': highlight === '5230' }">ISO/IEC 5230</th>
        <th class="oc-cmp__h18974" :class="{ 'is-hl': highlight === '18974' }">ISO/IEC 18974</th>
        <th class="oc-cmp__h42001" :class="{ 'is-hl': highlight === '42001' }">ISO/IEC 42001</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(r, i) in rows" :key="i">
        <td class="oc-cmp__aspect">{{ r.aspect }}</td>
        <td :class="{ 'is-hl': highlight === '5230' }">{{ r.v5230 }}</td>
        <td :class="{ 'is-hl': highlight === '18974' }">{{ r.v18974 }}</td>
        <td :class="{ 'is-hl': highlight === '42001' }">{{ r.v42001 }}</td>
      </tr>
    </tbody>
  </table>
</template>

<style scoped>
/* SaaS 데이터 테이블 — 외곽 보더 없이 행 헤어라인만 */
.oc-cmp { border-collapse: collapse; width: 100%; font-size: var(--oc-text-small); }
.oc-cmp th, .oc-cmp td {
  border: none;
  border-bottom: 1px solid var(--oc-line);
  padding: var(--oc-space-sm) var(--oc-space-md);
  text-align: left;
  vertical-align: top;
}
.oc-cmp thead th { font-weight: 700; border-bottom: 2px solid var(--oc-gray-300); }
.oc-cmp tbody tr:last-child td { border-bottom: none; }
.oc-cmp__aspect { color: var(--oc-ink-muted); font-weight: 600; }
.oc-cmp__h5230 { color: var(--oc-primary); }
.oc-cmp__h18974 { color: var(--oc-warn); }
.oc-cmp__h42001 { color: var(--oc-cat-purple); }
.oc-cmp .is-hl { background: var(--oc-primary-soft); }
</style>
