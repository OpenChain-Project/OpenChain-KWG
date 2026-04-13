#!/usr/bin/env python3
"""
Step 2: 태그 분석 및 표준화 사전 생성
- current_tags.json 파일만 읽음 (파일 시스템 추가 접근 없음)
- 대소문자 혼재, 한/영 혼재, 유사 중복, 단발성 태그 분석
- tag_mapping.json 생성
"""

import json
from pathlib import Path
from collections import defaultdict

WORK_DIR = Path(__file__).parent
INPUT_FILE = WORK_DIR / "current_tags.json"
OUTPUT_FILE = WORK_DIR / "tag_mapping.json"
REPORT_FILE = WORK_DIR / "tag_analysis_report.md"


def main():
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        data = json.load(f)

    # 전체 태그 빈도 집계
    tag_freq = defaultdict(int)
    tag_files = defaultdict(list)
    for entry in data:
        for tag in entry["tags"]:
            if tag:  # 빈 태그 제외
                tag_freq[tag] += 1
                tag_files[tag].append(entry["file"])

    all_tags = sorted(tag_freq.items(), key=lambda x: -x[1])

    # ── 분석 1: 대소문자 혼재 ──────────────────────────────────────────
    lower_groups = defaultdict(list)
    for tag in tag_freq:
        lower_groups[tag.lower()].append(tag)
    case_conflicts = {k: v for k, v in lower_groups.items() if len(v) > 1}

    # ── 분석 2: 유사 의미 중복 (수동 분석 기반) ───────────────────────
    # 태그 목록을 보고 수동으로 그룹화
    similar_groups = {
        "ISO/IEC 5230": ["ISO/IEC 5230", "ISO5230", "iso5230", "5230"],
        "ISO/IEC 18974": ["ISO/IEC 18974", "ISO18974", "iso18974", "18974"],
        "SBOM": ["SBOM", "sbom", "Sbom"],
        "AI": ["AI", "ai", "인공지능"],
        "OpenChain": ["OpenChain", "openchain", "Openchain", "open chain"],
        "GPL": ["GPL", "gpl", "GPLv2", "GPLv3"],
        "SPDX": ["SPDX", "spdx"],
        "CycloneDX": ["CycloneDX", "cyclonedx", "Cyclone DX"],
        "FOSSLight": ["FOSSLight", "fosslight", "Fosslight"],
        "Olive": ["Olive", "olive", "OLIVE"],
        "오픈소스 보안": ["오픈소스보안", "오픈소스 보안", "opensource security"],
        "라이선스": ["라이선스", "license", "License", "라이센스"],
        "컨테이너": ["Container", "container", "Docker", "docker"],
    }

    # 실제 존재하는 태그만 필터링
    actual_similar = {}
    for canonical, variants in similar_groups.items():
        existing = [v for v in variants if v in tag_freq]
        if len(existing) > 1:
            actual_similar[canonical] = existing

    # ── 분석 3: 단발성 태그 (빈도 1회) ───────────────────────────────
    singleton_tags = [(tag, tag_freq[tag]) for tag in tag_freq if tag_freq[tag] == 1]

    # ── 분석 4: 빈 태그 ───────────────────────────────────────────────
    empty_tag_files = [e["file"] for e in data if "" in e["tags"]]

    # ── 표준화 매핑 생성 ──────────────────────────────────────────────
    # 원칙: 가장 많이 사용된 형태를 표준으로 채택
    tag_mapping = {}

    # 대소문자 통일
    for lower_key, variants in case_conflicts.items():
        # 가장 빈도 높은 것을 표준으로
        canonical = max(variants, key=lambda t: tag_freq[t])
        for v in variants:
            if v != canonical:
                tag_mapping[v] = canonical

    # 유사 의미 통일 (실제 존재하는 것만)
    for canonical, variants in actual_similar.items():
        best = max(variants, key=lambda t: tag_freq[t])
        actual_canonical = best  # 가장 많이 쓰인 것
        for v in variants:
            if v != actual_canonical:
                tag_mapping[v] = actual_canonical

    # 빈 태그 제거 대상
    tag_mapping[""] = None  # None = 삭제

    # ── 마크다운 리포트 생성 ──────────────────────────────────────────
    report = []
    report.append("# 태그 분석 리포트\n")
    report.append(f"- 전체 파일: {len(data)}개\n")
    report.append(f"- 태그 있는 파일: {sum(1 for e in data if e['tags'])}개\n")
    report.append(f"- 고유 태그 수: {len(tag_freq)}개 (빈 태그 포함)\n\n")

    report.append("## 전체 태그 빈도\n\n")
    report.append("| 태그 | 빈도 |\n|------|------|\n")
    for tag, cnt in all_tags:
        display = f"`{tag}`" if tag else "*(빈 태그)*"
        report.append(f"| {display} | {cnt} |\n")

    report.append("\n## 1. 대소문자 혼재 태그\n\n")
    if case_conflicts:
        report.append("| 소문자 기준 | 실제 사용 태그들 | 권장 표준 |\n|---|---|---|\n")
        for lower_key, variants in sorted(case_conflicts.items()):
            canonical = max(variants, key=lambda t: tag_freq[t])
            var_str = ", ".join(f"`{v}`({tag_freq[v]})" for v in variants)
            report.append(f"| `{lower_key}` | {var_str} | `{canonical}` |\n")
    else:
        report.append("해당 없음\n")

    report.append("\n## 2. 한/영 혼재 및 유사 의미 중복\n\n")
    if actual_similar:
        report.append("| 그룹 | 포함 태그 | 권장 표준 |\n|---|---|---|\n")
        for canonical, variants in sorted(actual_similar.items()):
            best = max(variants, key=lambda t: tag_freq[t])
            var_str = ", ".join(f"`{v}`({tag_freq[v]})" for v in variants)
            report.append(f"| {canonical} | {var_str} | `{best}` |\n")
    else:
        report.append("해당 없음\n")

    report.append("\n## 3. 단발성 태그 (빈도 1회)\n\n")
    report.append("| 태그 | 파일 |\n|------|------|\n")
    for tag, cnt in sorted(singleton_tags, key=lambda x: x[0]):
        files_str = ", ".join(f"`{f}`" for f in tag_files[tag][:2])
        report.append(f"| `{tag}` | {files_str} |\n")

    report.append("\n## 4. 빈 태그가 있는 파일\n\n")
    if empty_tag_files:
        for f in empty_tag_files:
            report.append(f"- `{f}`\n")
    else:
        report.append("해당 없음\n")

    report.append("\n## 제안된 표준화 매핑\n\n")
    report.append("| 기존 태그 | 표준 태그 | 비고 |\n|---|---|---|\n")
    for old, new in sorted(tag_mapping.items(), key=lambda x: x[0]):
        old_display = f"`{old}`" if old else "*(빈 태그)*"
        new_display = f"`{new}`" if new else "*(삭제)*"
        report.append(f"| {old_display} | {new_display} | |\n")

    with open(REPORT_FILE, "w", encoding="utf-8") as f:
        f.writelines(report)

    # JSON 매핑 저장
    mapping_output = {
        "version": "1.0",
        "description": "기존 태그 → 표준 태그 매핑. None 값은 해당 태그 항목 삭제.",
        "mappings": tag_mapping,
        "stats": {
            "total_unique_tags": len(tag_freq),
            "tags_to_rename": sum(1 for v in tag_mapping.values() if v is not None),
            "tags_to_remove_entry": sum(1 for v in tag_mapping.values() if v is None),
        }
    }

    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(mapping_output, f, ensure_ascii=False, indent=2)

    print(f"분석 완료!")
    print(f"리포트: {REPORT_FILE}")
    print(f"매핑: {OUTPUT_FILE}")
    print(f"\n고유 태그 수: {len(tag_freq)}")
    print(f"대소문자 혼재 그룹: {len(case_conflicts)}개")
    print(f"유사 의미 그룹: {len(actual_similar)}개")
    print(f"단발성 태그: {len(singleton_tags)}개")
    print(f"빈 태그 파일: {len(empty_tag_files)}개")
    print(f"\n매핑 대상 (변경): {mapping_output['stats']['tags_to_rename']}개")
    print(f"매핑 대상 (삭제): {mapping_output['stats']['tags_to_remove_entry']}개")


if __name__ == "__main__":
    main()
