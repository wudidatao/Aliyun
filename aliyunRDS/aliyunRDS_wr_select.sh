#!/bin/bash

hostname='rm-2zeov3zk342hf5i12rw.mysql.rds.aliyuncs.com'
user=liutao
passwd=liutao123

for((i=1;i<500000;i++));
do
    name=`uuidgen |cut -c1-8`

    SELECT="select count(*) from test.student;/*PROXY_INTERNAL*/show last route;"
    #SELECT="/*FORCE_MASTER*/ select count(*) from test.student;/*PROXY_INTERNAL*/show last route;"
    #SELECT="/*FORCE_SLAVE*/ select count(*) from test.student;/*PROXY_INTERNAL*/show last route;"

    mysql -h$hostname -u$user -p$passwd -c -e"$SELECT"
    echo "查询显示主从 主库11960227 从库11962387"
    
    sleep 1;
done

