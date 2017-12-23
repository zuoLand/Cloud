#!/bin/sh

#阿里云添加数据盘
#Linux 格式化和挂载数据盘 https://help.aliyun.com/document_detail/25426.html?spm=5176.doc25424.6.590.LUTSpc

#fdisk -l

#fdisk /dev/vdb
#input n
#input p
#input 1
#input 1
#input 
#input wq


#fdisk -l

#mkfs.ext3 /dev/vdb1

#cp /etc/fstab /etc/fstab.bak

#echo /dev/vdb1 /home ext3 defaults 0 0 >> /etc/fstab

#cat /etc/fstab

#mount /dev/vdb1 /home

#df -h




#阿里云分配访问控制


#阿里云服务器ECS添加用户
#参考CentOS 7中添加一个新用户并授权 http://www.linuxidc.com/Linux/2016-11/137549.htm
#adduser hgc
#passwd hgc
#sudoers
#whereis sudoers
#ls -l /etc/sudoers
#chmod -v u+w /etc/sudoers
#vim /etc/sudoers
#ALLOW root to run....  
#chmod -v u-w /etc/sudoers

#Test
#sudo cat /etc/passwd



#阿里云安装git
#http://blog.csdn.net/u011695652/article/details/53053479
#git --version
#yum install git
#yum --version
#yum remove git

#https://help.github.com/articles/cloning-a-repository-from-github/
#git clone https://github.com/zuoLand/Cloud.git

#添加文件
#git add filename
#git git config --global user.email "chunyuan2008@163.com"
#git config --global user.name "zuoLand"

#git commit -m "Description:"
#git push


#阿里云安装tomcat/jdk1.8
#https://help.aliyun.com/document_detail/51376.html?spm=5176.doc63819.6.753.WeghBp

#wget https://mirrors.aliyun.com/apache/tomcat/tomcat-8/v8.5.24/src/apache-tomcat-8.5.24-src.tar.gz
#wget https://mirrors.aliyun.com/apache/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
#tar xzf apache-tomcat-8.5.23.tar.gz
#mv apache-tomcat-8.5.23 /usr/local/tomcat/
#chown -R www.www /usr/local/tomcat/

#cd /usr/local/tomcat/conf/
#mv server.xml server.xml_bk
#vim server.xml
#vim /usr/local/tomcat/bin/setenv.sh
#JAVA_OPTS='-Djava.security.egd=file:/dev/./urandom -server -Xms256m -Xmx496m -Dfile.encoding=UTF-8'


#wget https://github.com/lj2007331/oneinstack/raw/master/init.d/Tomcat-init
#mv Tomcat-init /etc/init.d/tomcat
#chmod +x /etc/init.d/tomcat
#sed -i 's@^export JAVA_HOME=.*@export JAVA_HOME=/usr/java/jdk1.8.0_141@' /etc/init.d/tomcat

#chkconfig --add tomcat
#chkconfig tomcat on


#service tomcat start



#wget http://mirrors.linuxeye.com/jdk/jdk-8u141-linux-x64.tar.gz
#mkdir /usr/java
#tar xzf jdk-8u141-linux-x64.tar.gz -C /usr/java
#vi /etc/profile
##set java environment
##export JAVA_HOME=/usr/java/jdk1.8.0_141
##export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib
##export PATH=$JAVA_HOME/bin:$PATH


#source /etc/profile
#java -version


#安装Subversion
#https://help.aliyun.com/document_detail/52864.html?spm=5176.11065259.1996646101.searchclickresult.5c76ba13sKnyKp
#yum install subversion
#svnserve --version
#mkdir /home/ycy/workspace/svn
#cd /home/ycy/workspace/svn
#svnadmin create /home/ycy/workspace/svn/svnrepos
#cd svnrepos

#vim passwd
#suzhan = suzhan

#vim authz
#[/]
#suzhan=rw

#vim svnserve.conf
#anon-access=read
#auth-access=write
#password-db=passwd
#authz-db=authz
#realm=/home/ycy/workspace/svn/svnrepos

#svnserve -d -r /home/ycy/workspace/svn/svnrepos
#killall svnserve

#ps -ef|grep svn

#FTP安装
#https://help.aliyun.com/document_detail/51998.html?spm=5176.11065259.1996646101.searchclickresult.465d9474WcYe6E
#http://blog.csdn.net/xinguan1267/article/details/47751137
#https://www.cnblogs.com/zishengY/p/7132467.html


#yum install -y vsftpd
#cd /etc/vsftpd

#systemctl enable vsftpd.service
#systemctl start vsftpd.service
#netstat -antup | grep ftp 







#Nginx安装配置
#http://blog.csdn.net/hanimashi/article/details/53428594

#maven安装
#https://www.cnblogs.com/bincoding/p/6156236.html
#cd /usr/local/src/
#wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz
#tar zxf apache-maven-3.1.1-bin.tar.gz
#mv apache-maven-3.1.1 /usr/local/maven3

#vi /etc/profile然后还需要 配置环境变量。
#在适当的位置添加
#export M2_HOME=/usr/local/maven3
#export PATH=$PATH:$JAVA_HOME/bin:$M2_HOME/bin
 
#保存退出后运行下面的命令使配置生效，或者重启服务器生效。
#source /etc/profile
 
#验证版本
#mvn -v

