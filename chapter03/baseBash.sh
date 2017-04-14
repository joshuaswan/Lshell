#!/bin/bash

echo $PS1
# PS1控制默认命令行提示符的格式

echo $PS2
# PS2控制后续命令行提示符的格式

man bash
# 查看bash手册

ls -F
# 查看对应文件信息，并在目录后面添加/来区分

ls -F -R
# -R参数列出了当前目录下包含的目录中的文件，会递归循环哦！很厉害啊！

ls -sail
# ls命令参数的组合方式有多种，不过最开头需要使用-

ls -l tes?
# 通配符，问好代表一个字符，星号代表零个或多个字符

touch test1
# touch命令可以创建制定文件，并将你的用户名作为文件的属主，文件大小为0

touch -t 201704141700 test1
# -t参数加上特定时间戳来指定时间

cp source destination
# cp命令来复制文件

cp -p test1 test3
# -p参数可以为目标文件保留源文件的访问时间和修改时间

cp -R dir1 dir2
# -R参数可以递归复制整个目录的内容

cp -f test* dir2
# -f参数强制覆盖文件

cp -l test1 test4
# -l参数创建了一个指向文件test1的应链接test4

cp -s test1 test5
# -s参数会创建一个符号链接，或者称为软连接

mv test2 test6
# mv命令用来移动文件，并不更改对应文件时间信息

rm -i test2
# 删除文件

rm -f test1
# 强制删除，不提示是否删除

mkdir dir3
# 创建一个新目录，并给它分配一个新的索引点号

rmdir dir3
# 删除空目录

rm -r dir2
# 递归删除目录中的文件，最后删除目录自身

rm -rf dirs
# 删除并不提示

stat test10
# stat命令可以提供文件系统上某个文件的所有状态信息

file test1
# file命令就是一个用来查看文件类型的方便工具，它能够探测文件的内部并决定文件是什么类型的

cat test
# 显示文本文件中所有数据，-n参数会给所有的行加上行号

cat -b test1
# 只给有文本的行加上行号

cat -s test1
# 将多个空白行压缩到单个空白行

cat -T test1
# 可以不出现制表符

# more and less
# less is more

# tail and head