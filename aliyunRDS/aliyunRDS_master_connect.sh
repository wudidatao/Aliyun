#!/bin/bash

hostname='rm-2zeov3zk342hf5i12.mysql.rds.aliyuncs.com'
user=liutao
passwd=liutao123

mysql -h$hostname -u$user -c -p$passwd
