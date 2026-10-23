#!/bin/sh
#Komeil Majidi 2019






echo 'AT+QCFG="nwscanmode",2,1' > /dev/ttyUSB3


echo 2 > /bashmci/lo
sleep 2

echo "AT+CFUN=0" > /dev/ttyUSB3

sleep 5

echo "AT+CFUN=1" > /dev/ttyUSB3




sleep 10
ifdown wan1
ifup wan1



 rm /www/luci-static/netpref.html
{

echo "<html>"
echo "<body onload=\"redblood()\" >"
echo "<link rel=\"stylesheet\" href=\"/luci-static/mac.css\">"
echo "<meta http-equiv=\"Cache-Control\" content=\"no-cache, no-store, must-revalidate\" />"
echo "<meta http-equiv=\"Pragma\" content=\"no-cache\" />"
echo "<meta http-equiv=\"Expires\" content=\"0\" />"
echo "<center>"
echo " <form method=\"post\" onsubmit=\"looloo()\" action=\"/luci-static/snmp.php\"> "
echo "Current Cellular Mode:<br><select class=\"treeg\" name=\"cell\"><option value=\"auto\" >Automatic</option><option value=\"4g\" >4G Only</option><option value=\"3g\" selected>3G Only</option><option value=\"2g\" >2G Only</option></select><br><br>"
echo "<input type=\"submit\" value=\"Save Settings\">"
echo "<img style=\"display:none\" id=\"loopoo\" src=\"/luci-static/load.gif\" >"
echo "</form> "
echo "</center>"
echo  "<script src=\"/luci-static/mac.js\"></script>"
echo "</body>"
echo "</html>"


}>> /www/luci-static/netpref.html
