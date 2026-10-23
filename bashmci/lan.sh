#!/bin/sh
#Komeil Majidi 2019

#echo $! > /tmp/lan.pid # male zire ejraee ha toyee startup masalan zire ejra background signal masalan
ipv4=`uci show network.lan.ipaddr | sed  s/\'//g `
netmask=`uci show network.lan.netmask | sed  s/\'//g `
start=`uci show dhcp.lan.start | sed  s/\'//g `
limit=`uci show dhcp.lan.limit | sed  s/\'//g `
lease=`uci show dhcp.lan.leasetime | sed  s/\'//g `

ipv4="${ipv4:19}"
netmask="${netmask:20}"
start="${start:15}"
limit="${limit:15}" 
lease="${lease:19}"

echo $ipv4
echo $netmask
echo $start
echo $limit
echo $lease



 rm /www/luci-static/lannew.html
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<body onload=\"redblood()\" >"
echo "<meta name=\"viewport\" content=\"initial-scale=1.0\">"
echo "<link rel=\"stylesheet\" href=\"/luci-static/mac.css\">"
echo "<meta http-equiv=\"Cache-Control\" content=\"no-cache, no-store, must-revalidate\" />"
echo "<meta http-equiv=\"Pragma\" content=\"no-cache\" />"
echo "<meta http-equiv=\"Expires\" content=\"0\" />"
echo "<center>"
echo "<form onsubmit=\"setTimeout(asliip, 5000); looloo()\" method=\"post\" action=\"/luci-static/lan.php\"> "
echo "<label>IPV4 Gateway:</label><input id=\"ipv4\" name=\"ipv4\" type=\"text\" value=\"$ipv4\" title=\"IP Format : ext 192.168.100.100\"  pattern=\"^([0-9]{1,3}\.){3}[0-9]{1,3}$\"  /></br>"
echo "<label>IPV4 Netmask:</label><input id=\"netmask\" name=\"netmask\" type=\"text\" value=\"$netmask\" title=\"IP Format : ext 225.225.225.225\"  pattern=\"^([0-9]{1,3}\.){3}[0-9]{1,3}$\"  /></br>"
echo "<label>Start:</label><input id=\"start\" name=\"start\" type=\"number\" value=\"$start\"  /></br> "
echo "<label>Limit:</label><input id=\"limit\" name=\"limit\" type=\"number\" value=\"$limit\"  /></br> "
echo "<label>Lease Time:</label><input id=\"lease\" name=\"lease\" type=\"text\" value=\"$lease\"  /></br> "
echo "<input type=\"submit\" value=\"Save Settings\"> "
echo "<img id=\"loopoo\" src="" >"
echo "</form>"
echo "<div id=\"myModal\" class=\"modal\">"
echo "<div class=\"modal-content\">"
echo "<div class=\"modal-header\">"
echo "<h2>Your ip has changed</h2></div>"
echo "<div class=\"modal-body\">"
echo "<p>You can access modem management from the following ip</p>"
echo "<a target=\"_blank\" id=\"showip\" href=""></a>"
echo "</div>"
echo "</div>"
echo "</div>"
echo "</center>"
echo "  <script src=\"/luci-static/mac.js\"></script>"
echo "</body>"
echo "</html>"

}>> /www/luci-static/lannew.html

 

    
