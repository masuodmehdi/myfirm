#!/bin/sh
#Komeil Majidi 2019





sid=`uci show wireless.default_radio0.ssid`
moo=`uci show network.lan_dev.macaddr`
ssidwi=${sid:29}
macwi=${moo:24}
#echo $ssidwi
#echo $macwi


rm /www/luci-static/text.html
{
echo "<html>"
echo "<head>"
echo "<meta http-equiv=\"cache-control\" content=\"max-age=0\" />"
echo "<link rel=\"stylesheet\" href=\"/luci-static/overview.css\">"
echo "<style type=\"text/css\">"
echo "table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 2px solid #ccc;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #fff;
}"


echo "</style>"
echo "</head>"
echo "<body>"
echo "<table>"
echo "<thead>"
echo "<tr>"
echo "<th>Wi-Fi SSID:"
echo "<th>$ssidwi</th>"
echo "</tr>"
echo "<tr>"
echo "<th>MAC Address:</th>"
echo "<th>$macwi</th>"

echo "</tr>"
}>> /www/luci-static/text.html






