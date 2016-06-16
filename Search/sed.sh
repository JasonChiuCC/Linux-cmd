#!/bin/sh
clear

# sed [-nefr] [n1[,n2]]function

# 刪除 1~23 行
nl pass.txt | sed '1,23d'
echo ''

# 刪除 3~最後一行
nl pass.txt | sed '3,$d'
echo ''

# 在第 2 行後面加上一行文字 a = append
nl pass.txt | sed '5,$d' | sed '2a drink tea'
echo ''

# 在第 2 行前面加上一行文字 a = append
nl pass.txt | sed '5,$d' | sed '2i drink tea'
echo ''

# 取代 2~5 行
nl pass.txt | sed '8,$d' | sed '2,5c No 2-5 number'
echo ''

# 只顯示 5~7 行
# -n ：使用安靜(silent)模式。只有經過 sed 特殊處理的那一行(或者動作)才會被列出來
nl pass.txt | sed -n '5,7p'
echo ''

# ifconfig 來列出 IP ，僅要 eth0 的 IP 
# ifconfig eth0 | grep -n 'addr' | sed -n '2p'
# inet addr:172.16.83.200  Bcast:172.16.83.255  Mask:255.255.255.0
# s ：例如 1,20s/old/new/g 就是啦！
# s/^.*addr://g (old=^.*addr:  new='')  addr 前面是 0~多個任意字元
# 172.16.83.200  Bcast:172.16.83.255  Mask:255.255.255.0
# 's/Bcast.*$//g' (old=Bcast.*$ new='')
ifconfig eth0 | grep 'inet ' | sed 's/^.*addr://g' | sed 's/Bcast.*$//g'
echo ''

