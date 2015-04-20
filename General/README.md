
壓縮:
http://note.drx.tw/2008/04/command.html


搜尋:
```
find -name xxx：搜尋檔案

grep -r -n 'xxx' .  
grep -r -n 'xxx' --include *.c .   : 指定副檔名
grep -r -n 'xxx' --exclude *.jpg . : 排除副檔名

grep -r --include=*.html --include=*.php --include=*.htm "pattern" /some/path/
grep -r --include=*.{html,php,htm} "pattern" /some/path/



- -R：遞迴
- -n：顯示行號
- --include：指定附檔名
- ./ 由目前目錄開始往下搜尋
```

改權限:
```
chmod ABC
A: User B: Group C: Other
r:4 w:2 x:1
```

ls -lh
```
 - M for MB
 - K for KB
 - G for GB
```

建立捷徑
```
ln -s /目標 /捷徑名稱
```

建議： 
 ```
alias ll="ls -lh"
alias lv="ls -F"
alias ls="ls -F --color=auto"
```

USB:
```
mkdir /tmp/usb
mount /dev/sdc /tmp/usb/
cp *.sh /tmp/usb/
umount /tmp/usb/
```
