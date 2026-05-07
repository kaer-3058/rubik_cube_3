#目标文件
INPUT_FILE = r"E:\MC文件\1.21.11\.minecraft\versions\26.1.2-Fabric 0.19.2\saves\新的世界\datapacks\[26.1.2] 魔方 数据包 v.07\data\rubik_cube_3\function\slove\py\pi.txt"

#目标路径
OUTPUT_FOLDER = r"E:\MC文件\1.21.11\.minecraft\versions\26.1.2-Fabric 0.19.2\saves\新的世界\datapacks\[26.1.2] 魔方 数据包 v.07\data\rubik_cube_3\function\slove\tree"

import json
import os

with open(INPUT_FILE, encoding='utf-8') as f:
    commands = json.load(f)

os.makedirs(OUTPUT_FOLDER, exist_ok=True)

i = 1
while commands:  # 当列表不为空时继续
    # 取出第一项
    cmd1 = commands.pop(0)
    # 如果还有第二项，则取出，否则设为 None
    cmd2 = commands.pop(0) if commands else None
    
    path = os.path.join(OUTPUT_FOLDER, f"{i}.mcfunction")
    with open(path, 'w', encoding='utf-8') as f:
        f.write(f'{cmd1}\n')
        if cmd2 is not None:
            f.write(f'{cmd2}\n')
    
    print(f"生成：{path}")
    i += 1

print(f"完成，共 {i-1} 个文件")
