#!/bin/bash

hostname='rm-2zeov3zk342hf5i12.mysql.rds.aliyuncs.com'
user=liutao
passwd=liutao123

for((i=1;i<500000;i++));
do
    name=`uuidgen |cut -c1-8`
    
    SQL="INSERT into test.student (name) VALUES ('$name')"

    mysql -h$hostname -u$user -p$passwd -c -e"$SQL"
    
    sleep 1;
done
