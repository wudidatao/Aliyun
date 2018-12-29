#!/bin/bash

hostname='rm-2zeov3zk342hf5i12rw.mysql.rds.aliyuncs.com'
user=liutao
passwd=liutao123

for((i=1;i<500000;i++));
do
    name=`uuidgen |cut -c1-8`

    INSERT="INSERT into test.student (name) VALUES ('$name');/*PROXY_INTERNAL*/show last route;"

    mysql -h$hostname -u$user -p$passwd -c -e"$INSERT"
    echo "插入显示主从 主库11960227 从库11962387"
    
    sleep 1;
done

