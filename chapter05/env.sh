#!/bin/bash

printenv
# 打印环境变量信息

echo $HOME
# 获取HOME环境变量的值

set
# set命令会显示为某个特定进程设置的所有环境变量

test=testing
echo $test
# 创建名为test内容为testing的环境变量
test='testing a long string'
# 变量中含有空格时需要使用单引号括起来，环境变量只在当前shell中有效

export test
# 修改当前环境变量为全局环境变量

unset test
# 删除对应环境变量

# shell存在一些默认的环境变量

PATH=$PATH:.
# 设置PATH环境变量

cat /etc/profile
# 该文件时bash shell的主启动文件，登陆linux系统后，bash就会执行/etc/profie文件中的命令

cat .bash_profile
# .bash_profile启动文件会先去检查HOME目录中是不是还有另一个叫.bashrc的启动文件。如果有的话，启动文件或先去执行它里面的命令。
# 不同配置文件的生效方式比较复杂，这里面我主要使用的是/etc/profile，来保证在所有的情况下对应的环境变量都生效

cat .bashrc
# .bashrc文件有两个作用：一是查看/etc目录下共用bashrc文件，二是为用户提供了一个定制自己的命令别名和私有脚本函数
cat /etc/bashrc

mytest=(one two three four five)
# 创建数组形式的环境变量
echo $mytest
echo ${mytest[2]}
echo ${mytest[*]}
mytest[2]=seven
unset mytest[2]
unset mytest
echo ${mytest[*]}
# 设置和改变对应环境变量数组

alias -p
# 查看已有的别名列表
alias li='ls -il'
# 定义命令别名
