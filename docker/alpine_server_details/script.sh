#!/bin/sh

echo "<h1 align="center">***********************************************</h1>" > /var/www/localhost/htdocs/index.html
echo "<h1 align="center">Timestamp: `date`</h1>" > /var/www/localhost/htdocs/index.html
echo "<h1 align="center">***********************************************</h1>" >> /var/www/localhost/htdocs/index.html
echo "<h1 align="center">Hostname: `hostname`</h1>" >> /var/www/localhost/htdocs/index.html
echo "<h1 align="center">***********************************************</h1>" >> /var/www/localhost/htdocs/index.html
echo "<h1 align="center">IPAdderss: `hostname -i`</h1>" >> /var/www/localhost/htdocs/index.html
echo "<h1 align="center">***********************************************</h1>" >> /var/www/localhost/htdocs/index.html

/bin/sh -c /usr/sbin/httpd && sh
