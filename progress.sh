#!/bin/bash

total_files=$(find /path/to/files -type f | wc -l)
processed_files=0

find /path/to/files -type f | while read file; do
    # 在這裡執行你的處理邏輯
    # ...

    # 每處理完一個檔案，更新進度
    processed_files=$((processed_files + 1))
    progress=$((processed_files * 100 / total_files))

    # 輸出進度，這將被Automator捕捉並顯示
    echo "Processing: $progress%"
done
