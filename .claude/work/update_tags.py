#!/usr/bin/env python3
"""
Step 3: 태그 일괄 적용
- tag_mapping.json 기반으로 content/ 하위 마크다운 파일 프론트매터 tags 수정
- 본문 및 다른 프론트매터 속성은 절대 변경하지 않음
- --dry-run 플래그로 미리보기 가능
"""

import argparse
import json
import re
import sys
from pathlib import Path

WORK_DIR = Path(__file__).parent
CONTENT_DIR = WORK_DIR.parent.parent / "content"
MAPPING_FILE = WORK_DIR / "tag_mapping.json"


def load_mapping():
    with open(MAPPING_FILE, "r", encoding="utf-8") as f:
        data = json.load(f)
    return data["mappings"]


def read_file_raw(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        return f.read()


def split_frontmatter(content):
    """(frontmatter_str, body_str) 반환. 프론트매터 없으면 (None, content)."""
    if not content.startswith("---"):
        return None, content
    end = content.find("\n---", 3)
    if end == -1:
        return None, content
    fm = content[3:end]          # '---' 이후 ~ 닫는 '---' 이전
    body = content[end + 4:]     # 닫는 '---\n' 이후
    return fm, body


def apply_mapping_to_tags(tags: list, mapping: dict) -> tuple[list, list]:
    """태그 목록에 매핑 적용. (new_tags, changes) 반환."""
    new_tags = []
    changes = []
    for tag in tags:
        if tag in mapping:
            new_val = mapping[tag]
            if new_val is None:
                changes.append(f"  삭제: '{tag}'")
                # 태그 항목 자체를 제거 (리스트에 추가 안 함)
            else:
                changes.append(f"  변경: '{tag}' → '{new_val}'")
                new_tags.append(new_val)
        else:
            new_tags.append(tag)
    return new_tags, changes


def rebuild_tags_line(new_tags: list, original_line: str) -> str:
    """원래 태그 라인 형식(인라인/블록)을 최대한 유지하며 새 태그로 교체."""
    # 인라인 배열 형식: tags: ["a", "b"]
    if re.match(r'tags:\s*\[', original_line.strip()):
        if not new_tags:
            return 'tags: []'
        items = ', '.join(f'"{t}"' for t in new_tags)
        return f'tags: [{items}]'
    # 단순 형식 (첫 번째 줄만 처리 - 블록은 아래에서)
    return original_line


def replace_tags_in_frontmatter(fm: str, mapping: dict) -> tuple[str, list]:
    """프론트매터 문자열에서 tags만 교체. (new_fm, changes) 반환."""
    lines = fm.split("\n")
    changes = []
    new_lines = []
    i = 0
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        # 인라인 배열: tags: ["a", "b"] 또는 tags: [""]
        inline_match = re.match(r'^(\s*tags:\s*)\[(.*)?\]', line)
        if inline_match:
            prefix = inline_match.group(1)
            raw = inline_match.group(2)
            # 빈 태그("") 포함하여 파싱 (필터링 없음)
            tags = [t.strip().strip('"\'') for t in raw.split(',') if t.strip()]
            new_tags, tag_changes = apply_mapping_to_tags(tags, mapping)
            if tag_changes:
                changes.extend(tag_changes)
                if not new_tags:
                    new_lines.append(f"{prefix}[]")
                else:
                    items = ', '.join(f'"{t}"' for t in new_tags)
                    new_lines.append(f"{prefix}[{items}]")
            else:
                new_lines.append(line)
            i += 1
            continue

        # 블록 배열:
        # tags:
        #   - tag1
        #   - tag2
        block_match = re.match(r'^(\s*tags:\s*)$', line)
        if block_match:
            prefix = block_match.group(1)
            tags = []
            block_lines = [line]
            j = i + 1
            while j < len(lines) and re.match(r'^\s+-\s+', lines[j]):
                m = re.match(r'^\s+-\s+["\']?(.+?)["\']?\s*$', lines[j])
                if m:
                    tags.append(m.group(1))
                block_lines.append(lines[j])
                j += 1

            new_tags, tag_changes = apply_mapping_to_tags(tags, mapping)
            if tag_changes:
                changes.extend(tag_changes)
                new_lines.append(prefix.rstrip())
                for t in new_tags:
                    new_lines.append(f'  - "{t}"')
                i = j
            else:
                new_lines.extend(block_lines)
                i = j
            continue

        new_lines.append(line)
        i += 1

    return "\n".join(new_lines), changes


def process_file(filepath: Path, mapping: dict, dry_run: bool) -> list:
    """파일 처리. 변경 내용 리스트 반환 (없으면 빈 리스트)."""
    content = read_file_raw(filepath)
    fm, body = split_frontmatter(content)
    if fm is None:
        return []

    new_fm, changes = replace_tags_in_frontmatter(fm, mapping)
    if not changes:
        return []

    if not dry_run:
        new_content = f"---{new_fm}\n---{body}"
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(new_content)

    return changes


def main():
    parser = argparse.ArgumentParser(description="태그 일괄 적용")
    parser.add_argument("--dry-run", action="store_true", help="실제 수정 없이 변경 목록만 출력")
    args = parser.parse_args()

    mapping = load_mapping()
    print(f"매핑 로드: {len(mapping)}개 규칙")
    if args.dry_run:
        print("** DRY-RUN 모드: 파일을 실제로 수정하지 않습니다 **\n")
    else:
        print("** 실제 수정 모드 **\n")

    changed_files = 0
    tag_change_counts = {}

    for md_file in sorted(CONTENT_DIR.rglob("*.md")):
        changes = process_file(md_file, mapping, dry_run=args.dry_run)
        if changes:
            rel = md_file.relative_to(CONTENT_DIR.parent)
            print(f"{'[DRY]' if args.dry_run else '[수정]'} {rel}")
            for c in changes:
                print(c)
                # 통계 집계
                m = re.match(r'\s+(변경|삭제): \'(.+?)\'', c)
                if m:
                    key = f"{m.group(1)}: {m.group(2)}"
                    tag_change_counts[key] = tag_change_counts.get(key, 0) + 1
            changed_files += 1

    print(f"\n{'─'*50}")
    print(f"{'변경 예정' if args.dry_run else '변경 완료'} 파일 수: {changed_files}개")
    print("\n태그별 변경 건수:")
    for key, cnt in sorted(tag_change_counts.items()):
        print(f"  {cnt:3d}건  {key}")

    if args.dry_run:
        print("\n실제 적용하려면 --dry-run 없이 실행하세요:")
        print("  python3 .claude/work/update_tags.py")


if __name__ == "__main__":
    main()
