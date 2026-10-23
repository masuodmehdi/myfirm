#!/bin/sh
#Komeil Majidi 2019
# D Setting


while [ true ] ; do
interr=`ping -q -w1 -c1 google.com &>/dev/null && echo online || echo offline`


if [ $interr == "online"  ]; then
     cp /www/online/netstatus.jpg /www/luci-static/
     
else
    cp /www/offline/netstatus.jpg /www/luci-static/

fi

sleep 30
done



