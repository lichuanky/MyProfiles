#! /bin/sh

#批量转换gbk > utf 编码
# iconv
iconv -f gbk -t utf-8 file1 -o file2
find default -type d -exec mkdir -p utf/{} \;
find default -type f -exec iconv -f gbk -t utf-8 {} -o utf/{} \;
# convmv
convmv -f gbk -t utf-8 --notest utf8 filename
find default -type f -exec convmv -f gbk -t utf-8 --notest utf8 {} -o utf/{} \;
