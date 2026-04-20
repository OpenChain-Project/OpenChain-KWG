#!/usr/bin/env python3
"""
슬라이드 이동 스크립트:
- 슬라이드 24~28 (조직 → 정책): 슬라이드 38 뒤, 39(템플릿) 앞에 삽입
- 슬라이드 30 (조직 → 프로세스): 슬라이드 50 뒤, 51(템플릿) 앞에 삽입
- url-link 경로 수정
- 슬라이드 comment 번호 전체 재정렬
"""

import re

FILE = "/Users/1112821/projects/OpenChain-KWG/.claude/work/slides-v5.md"

with open(FILE, "r", encoding="utf-8") as f:
    content = f.read()

# --- 슬라이드 구분자: "\n---\n" ---
slides_raw = re.split(r'\n---\n', content)

def get_slide_num(block):
    m = re.search(r'<!-- 슬라이드 (\d+)[:\s]', block)
    return int(m.group(1)) if m else None

# 원본 슬라이드 번호 → 블록 인덱스 매핑
num_to_idx = {}
for i, block in enumerate(slides_raw):
    n = get_slide_num(block)
    if n:
        num_to_idx[n] = i

# 이동 대상 블록 추출 및 url-link 수정
def fix_url(block, old_path, new_path):
    return block.replace(old_path, new_path)

# 슬라이드 24~28: 1-teams/ → 2-policy/
moving_to_policy = []
for n in [24, 25, 26, 27, 28]:
    b = slides_raw[num_to_idx[n]]
    b = fix_url(b, "opensource_for_enterprise/1-teams/", "opensource_for_enterprise/2-policy/")
    moving_to_policy.append(b)

# 슬라이드 30: 1-teams/ → 3-process/
slide_30 = slides_raw[num_to_idx[30]]
slide_30 = fix_url(slide_30, "opensource_for_enterprise/1-teams/", "opensource_for_enterprise/3-process/")

# 원본에서 이동 대상 블록 제거
remove_indices = set(num_to_idx[n] for n in [24, 25, 26, 27, 28, 30])
new_blocks = [b for i, b in enumerate(slides_raw) if i not in remove_indices]

# 제거 후 새로운 슬라이드 번호 → 블록 인덱스 재매핑
def get_num_to_new_idx(blocks):
    m = {}
    for i, b in enumerate(blocks):
        n = get_slide_num(b)
        if n:
            m[n] = i
    return m

new_map = get_num_to_new_idx(new_blocks)

# 삽입 위치 계산
# 슬라이드 24~28 → 슬라이드 38 뒤 (정책 섹션 내)
idx_38 = new_map[38]
# 슬라이드 30 → 슬라이드 50 뒤 (프로세스 섹션 내)
idx_50 = new_map[50]

# 삽입 (뒤에서부터 삽입해야 인덱스 안 밀림)
# 먼저 slide 30 삽입 (50 다음, 즉 idx_50+1 위치)
new_blocks.insert(idx_50 + 1, slide_30)

# slide 30 삽입 후 idx_38이 밀렸는지 확인
if idx_50 < idx_38:
    idx_38 += 1  # slide_30 삽입으로 인덱스 밀림

# 슬라이드 24~28 삽입 (38 다음, 즉 idx_38+1 위치)
for i, b in enumerate(reversed(moving_to_policy)):
    new_blocks.insert(idx_38 + 1, b)

print(f"이동 전 블록 수: {len(slides_raw)}")
print(f"이동 후 블록 수: {len(new_blocks)}")

# --- 슬라이드 번호 재정렬 ---
# "<!-- 슬라이드 N: 제목 -->" 형식의 코멘트를 순서대로 재번호
slide_counter = 0
renumbered = []

for i, block in enumerate(new_blocks):
    if re.search(r'<!-- 슬라이드 \d+[:\s]', block):
        slide_counter += 1
        old_num_m = re.search(r'<!-- 슬라이드 (\d+)([:\s])', block)
        if old_num_m:
            old_full = old_num_m.group(0)
            new_full = f"<!-- 슬라이드 {slide_counter}{old_num_m.group(2)}"
            block = block.replace(old_full, new_full, 1)
    renumbered.append(block)

print(f"재번호 완료: 슬라이드 {slide_counter}개")

# 파일 재조합 및 저장
new_content = "\n---\n".join(renumbered)

with open(FILE, "w", encoding="utf-8") as f:
    f.write(new_content)

print("✅ 저장 완료")

# 검증: 슬라이드 이동 확인
print("\n--- 검증 ---")
with open(FILE, "r") as f:
    vc = f.read()

# 정책 섹션에 "프로그램 적용 범위 정의" 있는지
if "프로그램 적용 범위 정의" in vc and "2-policy/" in vc:
    # 정책 섹션 위치 확인
    idx_policy = vc.find("<!-- 소단원 2 전환 슬라이드")
    idx_scope = vc.find("프로그램 적용 범위 정의")
    idx_process = vc.find("<!-- 소단원 3 전환 슬라이드")
    if idx_policy < idx_scope < idx_process:
        print("✅ 슬라이드 24(적용범위) → 정책 섹션 이동 확인")
    else:
        print("❌ 슬라이드 24 위치 오류")

# 프로세스 섹션에 "주기적 검토 및 변경 증거" 있는지
if "주기적 검토 및 변경 증거" in vc:
    idx_process_start = vc.find("<!-- 소단원 3 전환 슬라이드")
    idx_periodic = vc.find("주기적 검토 및 변경 증거")
    idx_tool = vc.find("<!-- 소단원 4 전환 슬라이드")
    if idx_process_start < idx_periodic < idx_tool:
        print("✅ 슬라이드 30(주기적검토) → 프로세스 섹션 이동 확인")
    else:
        print("❌ 슬라이드 30 위치 오류")

# url-link 확인
in_policy = vc[vc.find("<!-- 소단원 2 전환"):vc.find("<!-- 소단원 3 전환")]
if "프로그램 적용 범위 정의" in in_policy and "2-policy/" in in_policy:
    print("✅ url-link 2-policy/ 수정 확인")
else:
    print("❌ url-link 수정 오류")
