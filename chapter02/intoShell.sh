#!/bin/bash

infocmp vt100
# 将terminfo数据库转换成文本

echo $TERM
# linux shell 使用TERM环境变量来定义对特定会话使用terminfo数据库中的那个终端模拟设置

# 这章大体讲述几个图形化界面终端，包括xterm与gnome等多个流行图形化终端。