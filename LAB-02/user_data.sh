#!/bin/bash
yum -y update
yum -y install httpd
MYIP=`curl http://10.0.0.96/latest/meta-data/local-ipv4`
echo "<h2>WebServer with PrivateIP: $MYIP</h2><br>Built by Terraform external file!" > /var/www/html/index.html
service httpd start
chkconfig httpd on
