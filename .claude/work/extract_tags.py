#!/usr/bin/env python3
"""
Step 1: 태그 현황 추출
- content/ 하위 모든 .md 파일 대상
- 프론트매터의 title, tags만 추출 (본문 및 다른 속성 제외)
- 결과를 .claude/work/current_tags.json으로 저장
"""

import os
import json
import re
from pathlib import Path

CONTENT_DIR = Path(__file__).parent.parent.parent / "content"
OUTPUT_FILE = Path(__file__).parent / "current_tags.json"


def parse_frontmatter_title_tags(filepath):
    """프론트매터에서 title과 tags만 추출. 본문은 읽지 않음."""
    title = None
    tags = []

    with open(filepath, "r", encoding="utf-8") as f:
        lines = []
        # 최대 50줄만 읽어 프론트매터 파싱 (본문 읽기 방지)
        for i, line in enumerate(f):
            lines.append(line)
            if i > 0 and line.strip() == "---":
                break
            if i > 60:  # 프론트매터가 60줄을 넘으면 중단
                break

    content = "".join(lines)

    # YAML 프론트매터 감지
    if not content.startswith("---"):
        return title, tags

    # 프론트매터 끝 찾기
    end_match = re.search(r"\n---\s*\n", content[3:])
    if not end_match:
        return title, tags

    frontmatter = content[3: end_match.start() + 3]

    # title 추출
    title_match = re.search(r'^title:\s*["\']?(.*?)["\']?\s*$', frontmatter, re.MULTILINE)
    if title_match:
        title = title_match.group(1).strip().strip('"\'')

    # tags 추출 (인라인 배열 또는 블록 배열)
    # 인라인: tags: ["tag1", "tag2"]
    inline_match = re.search(r'^tags:\s*\[(.+?)\]', frontmatter, re.MULTILINE)
    if inline_match:
        raw = inline_match.group(1)
        tags = [t.strip().strip('"\'') for t in raw.split(',') if t.strip()]
    else:
        # 블록: tags:\n  - tag1\n  - tag2
        block_match = re.search(r'^tags:\s*\n((?:\s*-\s*.+\n?)+)', frontmatter, re.MULTILINE)
        if block_match:
            for line in block_match.group(1).splitlines():
                m = re.match(r'\s*-\s*["\']?(.+?)["\']?\s*$', line)
                if m:
                    tags.append(m.group(1).strip())

    return title, tags


def main():
    results = []
    no_tags_count = 0
    total_count = 0

    for md_file in sorted(CONTENT_DIR.rglob("*.md")):
        rel_path = str(md_file.relative_to(CONTENT_DIR.parent))
        title, tags = parse_frontmatter_title_tags(md_file)
        total_count += 1

        entry = {
            "file": rel_path,
            "title": title,
            "tags": tags,
        }
        results.append(entry)

        if not tags:
            no_tags_count += 1

    # JSON 저장
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)

    print(f"총 파일 수: {total_count}")
    print(f"태그 없는 파일 수: {no_tags_count}")
    print(f"태그 있는 파일 수: {total_count - no_tags_count}")
    print(f"결과 저장: {OUTPUT_FILE}")

    # 태그 사용 빈도 요약
    tag_freq = {}
    for entry in results:
        for tag in entry["tags"]:
            tag_freq[tag] = tag_freq.get(tag, 0) + 1

    print(f"\n고유 태그 수: {len(tag_freq)}")
    print("\n상위 20개 태그:")
    for tag, count in sorted(tag_freq.items(), key=lambda x: -x[1])[:20]:
        print(f"  {count:3d}회  {tag}")


if __name__ == "__main__":
    main()
