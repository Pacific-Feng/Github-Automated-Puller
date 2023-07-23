#!/bin/bash

# 獲取當前工作目錄
current_dir="$PWD"

# 進入當前目錄並開始遍歷
cd "$current_dir"
for dir in */; do
    if [ -d "$dir" ]; then
        echo "進入資料夾: $dir"
        cd "$dir" || exit 1
        git pull
        cd ..
        echo "離開資料夾: $dir"
    fi
done
