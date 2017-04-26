#!/bin/bash

cat /etc/passwd
# 记录用户的登陆名和对应的UID值

cat /etc//shadow
# 记录每个用户记录root:$6$v9l5cUBhlw/Yh54$CiVg46NdmUx8cujUu7hntmxoRRbYBGOVsdtq4K8pufYpwKhpMsIvy74QJ66a7PfL8X4.HK6Lh9mb.UU85uO.B/:17263:0:99999:7:::

useradd -D
# 查看当前Linux系统的系统默认值

ls -al /etc/skel
# 这个目录下保存了创建用户的模板文件

useradd -m test
# 创建test用户，并在home路径下创建对应文件夹，并复制对应模板文件

useradd -D -s /bin/tsch
# -s shell 更改默认的登陆shell

userdel -r test
# 删除对应用户，同时删除home下对应文件夹

usermod -G root test
# 修改用户账户信息，将test用户添加到root组中
passwd test
# 修改test用户密码信息
chpasswd < users.txt
# 批量修改对应用户密码信息，文件格式为userid:passwd
chsh -s /bin/csh test
# 修改对应用户登陆shell
finger rich
# 简单查看linux系统上的用户信息
chfn test
# 修改finger命令显示的用户信息
# chage命令用来帮助管理用户账户的有效期

cat /etc/group
# 查看用户组信息

groupadd shared
tail /etc/group
# 创建并查看对应组信息
usermod -G shared test
# 将test添加到shared组中

groupmod -n sharing shared
# 修改对应组名称

umask
# 查看创建文件的默认权限，对应显示方式为粘着位
umask 026
# 修改对应默认权限 在创建目录时默认权限为777，umask作用后生成的目录权限为777减去umask的值

chmod 760 newfile
# 修改文件或目录的安全性设置
chmod o+r newfile
# 不管其他用户在这一安全级别之前都有什么权限，o+r给这一级别添加了读取权限
chmod u-x newfile
# u-x移除了属主已有的执行权限

chown dan newfile
# 修改文件的属主
chown dan.shared newfile
# 同时修改文件的属主和属组

mkdir testdir
ls -l
chgrp shared testdir
ls -l
umask 002
cd testdir
touch testfile
ls -l
# 创建对应共享文件，可以让创建的当前用户和shared组使用