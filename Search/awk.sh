#!/bin/sh
clear
# http://linux.vbird.org/linux_basic/0330regularex/awk.pdf
# http://www.cses.tc.edu.tw/~chihwu/adduser-2.htm
# A125 Jenny 100 210  = 第一列資料(RS)
# A341 Dan   110 215  = 第二列資料(RS)
# P158 Max   130 209
# P148 John  125 220
# A123 Linda  98 210
#
# A125(第一欄位 FS) Jenny(第二欄位 FS) 100(第三欄位 FS) ...
#
# 用法: awk '程式' 檔案
# '程式' = Pattern { Action }
# Pattern1 { Action1 }
# Pattern2 { Action2 }
# Pattern3 { Action3 } ....
#
# Pattern 通常是條件式( x > 37, x == y etc)
# ~ Match, !~ Not match 用來判斷 RE
# Pattern 可省略，會直接執行 Action
#
#
# $0 = 讀入列資料
# $1 = 讀入列資料的第一個欄位
# $0 = 讀入列資料的第二個欄位
# ......
#
# NF = $0 上的所有欄位數目
# NR = awk 已讀入列的數目
# FILENAME = 正在處理的檔案名稱

# 每次顯示讀入列的內容
awk '{print $0 }' emp.dat
echo ''

# 顯示各列的欄位(用TAB隔開)
awk '{print $1 "\t" $2 "\t" $3 "\t" $4 }' emp.dat
# 顯示各列的欄位(用 Space 隔開)
awk '{print $1,$2,$3,$4 }' emp.dat
echo ''

# 顯示 NF / NR / FILENAME  
awk '{print NF "\t" NR "\t" FILENAME }' emp.dat
echo ''

# 使用其他 awk 程式檔案  
awk -f pay.awk emp.dat
echo ''


