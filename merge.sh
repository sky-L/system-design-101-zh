#!/bin/bash

# 设置目标合并文件名
output_file="README.md"

# 获取所有Markdown文件列表
md_files=$(find ./sub-content/* -name '*.md'  | sort -t "/" -k 3 -n)

echo "" > "$output_file"

# 遍历所有Markdown文件，并将它们的内容合并到目标文件中
for file in $md_files; do
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"  # 添加一个空行分隔不同文件的内容
done

echo "Markdown文件合并完成！合并文件保存在 $output_file 中。"
