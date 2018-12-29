#!/bin/bash

hostname='rr-2zetpvab55c2ck9o7.mysql.rds.aliyuncs.com'
user=liutao
passwd=liutao123

mysql -h$hostname -u$user -c -p$passwd 
