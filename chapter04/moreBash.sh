#! /bin/bash

#当程序运行在系统上时，我们称之为进程（process）
ps
#查看当前进程信息，ps可以接收三种不同的参数类型，Unix风格：前面加单破折线；BSD风格：前面不加破折线；GNU风格：前面加双破折线

ps -ef
ps -l
#-l 长格式输出
ps -efH
#-H 参数可以把输出的进行组织成一个层级的格式
ps --forest
#显示进程的层级信息

top
#实时显示进程信息，top命令输出中进程叫做任务（task）

kill -9 2354
#向进程2354发送信号9
kill -s HUP 4873

killall http*
#结束所有以http开头的进程

mount
# 输出当前系统上挂载的设备列表
mount -t vfat /dev/sdb1 /media/disk
# mount -t type device directory

mkdir mnt
su
mount -t iso9660 -o loop MEPIS-KDE4-LIVE-DVD_32.iso mnt
# -o参数允许在挂载文件系统时添加一些以逗号分隔的额外选项

umount /home/rich/mnt
# 卸载对应设备或文件 umnout [directory | device]

df
# 查看在某个设备上还有多少磁盘空间
df -h
# -h参数会把输出中的磁盘空间按人类可读的形式显示

du
#可以显示某个特定目录的磁盘使用情况
du -h

sort -n file
# 为当前文件内容排序，-n参数告诉sort命令把数字识别为数字而不是字符
sort -M file1
# -M参数可以为三个字符的月份排序
sort -t':' -k 3 -n /etc/passwd
# -k和-t参数在对按字段分隔的数据进行排序
du -sh * | sort -nr
# 按大小为当前文件夹中的文件排序

grep three file
# grep [options] pattern [file] 查找当前文件中是否有对应字段
grep -v t file
# 反向检索（没有t的行）
grep -n t file
# 显示匹配模式的行所在的行号
grep -c t file
# 显示多少行含有匹配的模式
grep -e t -e f file
# 得到满足两个模式中任意一个的所有结果
grep [tf] file
# 基于Unix风格正则表达式来匹配模式

bzip2 myprog
# 压缩对应文件
bunzip2 myprog.bz2
# 解压缩对应bz2文件
bzcat test.bz2
# 查看对应压缩文件内容

gzip myprog
# 压缩对应文件
gzip my*
# 使用通配符压缩多个文件

zip -r testzip teset
# 创建一个testzip.zip文件，并递归目录test把找到的每个文件和目录都加进该zip文件中

tar -cvf test.tar test/ test2
# tar function [options] object1 object2 ...压缩对应目录为tar文件
tar -tf test.tar
# 列出tar文件的内容，但并不解压缩文件
tar -xvf test.tar
# 解压对应tar文件