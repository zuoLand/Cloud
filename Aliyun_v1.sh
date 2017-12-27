#!/bin/sh

#阿里云添加数据盘

#fdisk -l
#fdisk /dev/vdb
#input n/p/1/1// wq
#fdisk -l

#mkfs.ext3 /dev/vdb1
#cp /etc/fstab /etc/fstab.bak
#echo /dev/vdb1 /home ext3 defaults 0 0 >> /etc/fstab
#cat /etc/fstab
#mount /dev/vdb1 /home
#df -h

#新建用户
#参考CentOS 7中添加一个新用户并授权 http://www.linuxidc.com/Linux/2016-11/137549.htm
#adduser xxx
#passwd xxx
#sudoers
#whereis sudoers
#ls -l /etc/sudoers
#chmod -v u+w /etc/sudoers
#vim /etc/sudoers
#新建用户分配root权限  
#chmod -v u-w /etc/sudoers


#阿里云安装git
#http://blog.csdn.net/u011695652/article/details/53053479
#git --version
#yum install git
#yum remove git

#Nginx安装配置
#http://blog.csdn.net/hanimashi/article/details/53428594
#yum -y install make zlib zlib-devel gcc-c++ libtool  openssl openssl-devel 
#


#安装Mysql 
#卸载原始信息
#rpm -qa | grep mariadb
#rpm -e mariadb-libs-5.5.37-1.el7_0.x86_64
#rpm -e --nodeps mariadb-libs-5.5.37-1.el7_0.x86_64

#安装Mysql
#yum install vim libaio net-tools
# wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
# sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
# sudo yum install mysql-server

# mysql -u root
# sudo chown -R openscanner:openscanner /var/lib/mysql
#service mysqld restart

#mysql -u root
#mysql > use mysql;
#mysql > update user set password=password(‘123456‘) where user=‘root‘;
#mysql > exit;

#安装Django
#tar -zxvf Django-1.11.8.tar.gz
#chown -R Django-1.11.8
#python setup.py install


#阿里云配置邮件发送
#阿里云关闭了正常发送的25端口因此要使用ssl的465方式来发送
#准备，阿里云添加TCP465的安全规则,
#yum install mailx

#set ssl-verify=ignore
#set from=xxx@xxx.com
#set smtp="smtps://smtp.aliyun.com:465"
#set smtp-auth-user="xxx@xxx.com"
#set smtp-auth-password=xxx
#set smtp-auth=login
#set nss-config-dir=/etc/pki/nssdb/

#mailx -eiIUdEFntBDNHRVv~ -T FILE -u USER -h hops -r address -s SUBJECT -a FILE -q FILE -f FILE -A ACCOUNT -b USERS -c USERS -S OPTION users
#cat /home/ycy/workspace/python_cloud/data/Tencent.201712271005 |mailx -v -s "News" xxx@xxx.com








