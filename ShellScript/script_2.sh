#!/bin/sh
clear

# 指派變數
# input_dir=./input   (O)
# input_dir = ./input (X) 不可加空白
input_dir=./input
output_file=./output_file.bin

# -n 不換行輸出
echo -n $input_dir
echo $input_dir
echo "Input folder is $input_dir"
echo "Input folder is \"$input_dir\""

# 判斷之間要加空格
# -d 檢查資料夾
# -r 檢查檔案
# -f 尋找檔案
if [ ! -d $input_dir ] || \
   [ ! -r ./check.sh ] ; then
    echo "## Error: $input_dir or ./check.sh ##"
    # exit 0 
fi

# 判斷另一種寫法
[ -r ./check.sh ] || {
    echo "## Error: ./check.sh ##"
}

[ -f ./check.sh ] || {
    echo "## Error: ./check.sh ##"
}

# 方法 ( body不能為空 )
mkdirFail()
{
    echo "Enter clean() function ($1)"
}

# 建立資料夾，如過建立失敗呼叫
# -p 如果路徑中有不存在的資料夾會一起建立
# func 後面 1 為參數，進入 func 可使用 $1,$2...來使用
mkdir -p "$input_dir" || mkdirFail 1


# >  由開頭寫
# >> 由最後寫
echo "Hello " >  $input_dir/intro.txt
echo "World"  >> $input_dir/intro.txt

# tar 打包
tar cf input.tar input || {
    echo "## Error: creating tar ##"
    mkdirFail 1
}

# awk 可以處理 1.前面的 stdout 2.後面接的檔案內容
# 以一行當中的欄位做處理，欄位用空白或 Tab 做區隔
# awk '條件類型1{動作1} 條件類型2{動作2} ...' filename
# awk '{print $1 "\t" $3}' = 顯示
# md5sum input.tar => 496d99  input.tar 
# 對 awk 而言，496d99($1) input.tar($2)
md5=$(md5sum input.tar | awk '{print $1}')
echo $md5

cp -rf test_shell.sh $output_file || {
    echo "Error"
}
