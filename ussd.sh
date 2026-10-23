#!/bin/sh
#Komeil Majidi 2019
#LAN LED

echo 'AT+CUSD=1,"*141*1#"' > /dev/ttyUSB3  

sleep 12
ussdaval=`cat /ussd.txt`

ussddovom=${ussdaval##*$'\n'}


ussdasli=${ussddovom:57}

echo $ussdasli

 rm /www/luci-static/ussdres.html
{

echo "$ussdasli"



}>> /www/luci-static/ussdres.html
