
Ps 指令:
```
ps aux              ：全部 Process
ps -p [PID] -o comm ：Get Process name 
ps -el              ：Process nice
ps -eo state,uid,pid,ppid,rtprio,time,comm  ：RealTime Process
char                ：Set Process schedule
cat /boot/config-*  | grep CONFIG_HZ 
```

訊息:
```
lspci               ：PCI 介面裝置
lsusb               ：USB 介面裝置
lsscsi              ：SCSI 介面裝置
cat /proc/cpuinfo   ：CPU 狀態
cat /proc/meminfo   ：Memory 狀態
cat /proc/verson    ：Kernel 版本
cat /etc/issue      ：Kernel 版本
cat /etc/*-release  ：Linux
free                ：Memory 狀態
dmidecode           ：硬體資訊
hdparm              ：硬體資訊
dmesg               ：Kernel 訊息
uname -a            ：Kernel 資訊
smartctl            ：硬碟資訊
lsb_release         ：Linux
```
