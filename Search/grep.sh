#!/bin/sh
clear

# RE 字符
echo ''
echo '######################################################################'
echo 'http://linux.vbird.org/linux_basic/0330regularex/0330regularex-fc4.php'
echo '^word     : 待搜尋的字串(word)在行首'
echo 'word$     : 待搜尋的字串(word)在行尾'
echo '.         : 表『任意一個』字符，一定是一個任意字符'
echo '\         : 跳脫字符，將特殊符號的特殊意義去除'
echo '*         : 重複零個或多個的前一個 RE 字符'
echo '\{n,m\}   : 連續 n 到 m 個的『前一個 RE 字符』'
echo '            若為 \{n\} 則是連續 n 個的前一個 RE 字符，'
echo '            若是 \{n,\} 則是連續 n 個以上的前一個 RE 字符'
echo '[list]    : [] 當中『謹代表一個待搜尋的字元』 grep -n 'g[ld]' re.txt'
echo '[ch1-ch2] : grep -n '[0-9]' re.txt'
echo '[^]       : grep -n 'oo[^t]' re.txt'
echo ''
echo '+         : 重複『一個或一個以上』的前一個 RE 字符'
echo '?         : 『零個或一個』的前一個 RE 字符'
echo '|         : 或( or )的方式找出數個字串'
echo '()        : 找出『群組』字串'
echo ''
echo '萬用字元當中     * 代表的是 0 ~ 無限多個字元'
echo '正規表示法當中   * 則是重複 0 到多個的前一個 RE 字符'
echo '######################################################################'
echo ''

# 搜尋 'the'
grep -n 'the' re.txt
echo ''

# 反向搜尋 'the'
: '
grep -nv 'the' re.txt
echo ''
'

# 不限大小寫
: '
grep -ni 'the' re.txt
echo ''
'

# 搜尋 [] 中間是 a 或 e 
# 等於搜尋 tast 或 test 
: '
grep -n 't[ae]st' re.txt
echo ''
'

# 搜尋 oo 但前面不要有 g 
: '
echo '==Search "oo" =='
grep -n 'oo' re.txt
echo ''
echo '==Search "[^g]oo" =='
grep -n '[^g]oo' re.txt
echo ''
'

# 搜尋 oo 但前面不要有小寫字母 
# 其他 [a-zA-Z0-9]
grep -n '[^a-z]oo' re.txt
echo ''

# 行首(^) 行尾($)
# 行首要出現 the
# 行首不要出現英文字母
: '
grep -n '^the' re.txt
echo ''
grep -n '^[^a-zA-Z]' re.txt
echo ''
'

# 行尾要是 . 逗號，前面是跳脫字元
: '
grep -n '\.$' re.txt
echo ''
'

# 找空白行
grep -n '^$' re.txt
echo ''

# bash 中萬用字元 * 可以用來代表任意(0或多個)字元， 
# 正規表示法的 .則代表『絕對有一個任意字元』
# 找出 g??d 的字串，亦即共有四個字元，起頭是 g 而結束是 d 
: '
grep -n 'g..d' re.txt
echo ''
'

# * 代表的是『重複 0 個或多個前面的 RE 字符』
# 『o*』代表『擁有空字元或一個 o 以上的字元』
# 如果是『oo*』則第一個 o 肯定必須要存在，第二個 o 則是可有可無的多個 o ， 所以 o, oo, ooo, oooo 等等，都可以被列出來
: '
grep -n 'ooo*' re.txt
echo ''
'

# 字串開頭與結尾都是 g， 但是兩個 g 之間存在至少一個 o
# 亦即 gog, goog, gooog.... 等等
: '
grep -n 'go*g' re.txt
echo ''
'

# 找出 g 開頭與 g 結尾的字串， 當中的字元可有可無
# .* 就代表零個或多個任意字元
: '
grep -n 'g.*g' re.txt
echo ''
'

# 任意數字(兩中一樣)
: '
grep -n '[0-9][0-9]*' re.txt
echo ''
grep -n '[0-9]' re.txt
echo ''
'

# 限定範圍的字符 {} 
#  { && } 在 shell 有特殊意義，須要使用跳脫字符 \ 
# 假設找兩個 o 的字串 =  ooo*
grep -n 'o\{2\}' re.txt
echo ''

# g 後面接 2 到 5 個 o ，然後再接一個 g 的字串
grep -n 'go\{2,5\}g' re.txt
echo ''

# g 後面接 2 個以上的 o ex:goooo....g，可以是 gooo*g 
grep -n 'go\{2,\}g' re.txt
echo ''


# 延伸用法
# grep -E = egrep
# grep -v '^$' re.txt | grep -v '^#'
# = egrep -v '^$|^#' re.txt
# = grep -E -v '^$|^#' re.txt
