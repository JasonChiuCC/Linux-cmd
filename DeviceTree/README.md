# 使用
```
dtc -h  

# dtb 轉 dts
dtc -I dtb -O dts -o output.dts XXX.dtb

# dts 轉 dtb
dtc -I dts -O dtb -o XXX.dtb output.dts

# 其他工具
fdtdump XXX.dtb
```
