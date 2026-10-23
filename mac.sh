#!/bin/sh
#Komeil Majidi 2019
# D Setting

chmod 777 /../bashmci/lon.sh
chmod 777 /../bashmci/loon.sh
chmod 777 /../bashmci/black.sh
chmod 777 /../bashmci/dis.sh
chmod 777 /../bashmci/white.sh
chmod 777 /../bashmci/auto.sh
chmod 777 /../bashmci/2g.sh
chmod 777 /../bashmci/3g.sh
chmod 777 /../bashmci/4g.sh
chmod 777 /../bashmci/wifiasl.sh
chmod 777 /../bashmci/wifidis.sh
cp wps /etc/rc.button
cp smsd.conf /etc
/etc/init.d/smstools3 restart
/etc/init.d/smstools3 start
/etc/init.d/smstools3 restart
/etc/init.d/smstools3 start
smsd



sleep 15

  mac=` cat /sys/devices/virtual/net/eth0.1/address `


 # echo $mac
    
  ssidd="ML141_${mac:0:2}${mac:15:17}"
  paswwww="${mac:6:2}${mac:9:2}${mac:12:2}${mac:15:17}"

  ssidup=` echo $ssidd | tr a-z A-Z `


   macupt=`  echo $mac | sed -e 's/\://g' | tr a-z A-Z   `
   modemimei=` uqmi -d /dev/cdc-wdm0 --get-imei | sed -e 's/\"//g'  `
   akhareimi="${modemimei:10}"

  echo $modemimei >> imei.txt

        JSON_STRING='{"MAC":"'"$macupt"'","IMEI":"'"$modemimei"'","WIFISSID":"'"$ssidup"'","WIFIPASS":"'"$paswwww"'","AKHAR":"'"$akhareimi"'"}'

{

echo $JSON_STRING

}>> /www/luci-static/komeilkma.json

echo 'AT+QCFG="nwscanmode",0,1' > /dev/ttyUSB3

  
uci delete wireless.radio0.disabled
uci set wireless.radio0.channel='auto'
uci set wireless.@wifi-iface[0].ssid=$ssidup
uci set wireless.@wifi-iface[0].key=$paswwww
uci set wireless.default_radio0.encryption='psk2+ccmp'
uci set wireless.default_radio0.wpa_disable_eapol_key_retries='0'
uci set wireless.default_radio0.wps_pushbutton='0'
uci set wireless.radio0.htmode='HT40'
uci set wireless.radio0.txpower='23'
uci set wireless.radio0.country='US'
uci set wireless.radio0.noscan='1'
uci set wireless.radio0.legacy_rates='1'
uci set network.@switch_vlan[1].ports=''
uci set network.@switch_vlan[0].ports='1 2 3 4 0 6t'
uci set network.VPN=interface
uci set network.VPN.ifname='tun1'
uci set network.VPN.proto='pptp'
uci set network.VPN.auto='0'
uci set network.VPNL2TP=interface
uci set network.VPNL2TP.ifname='tun0'
uci set network.VPNL2TP.proto='l2tp'
uci set network.VPN.auto='0'
uci set network.VPNL2TP.auto='0'
uci set network.wan1=interface
uci set network.wan1.proto='qmi'
uci set network.wan1.device='/dev/cdc-wdm0'

uci commit

/etc/init.d/network restart

uci set luci.main.mediaurlbase='/luci-static/bootstrap'
uci commit

uci set system.@system[0].hostname='LeanoTek_ML141'
uci commit
/etc/init.d/system reload

uci set uhttpd.main.max_requests='1'
uci set uhttpd.main.http_keepalive='1'
uci set uhttpd.main.interpreter='.php=/usr/bin/php-cgi'

uci commit

/etc/init.d/uhttpd restart

/etc/init.d/easycwmp stop

uci set firewall.cfg03dc81.network='wan wan6 wan1 wan1_6 VPN VPNL2TP'
uci add firewall rule
uci set firewall.@rule[-1].target='ACCEPT'
uci set firewall.@rule[-1].proto='any'
uci set firewall.@rule[-1].src='lan'
uci set firewall.@rule[-1].dest='wan'
uci set firewall.@rule[-1].name='IP Filtering'
uci add firewall rule
uci set firewall.@rule[10].target='ACCEPT'
uci set firewall.@rule[10].src='wan'
uci set firewall.@rule[10].proto='tcp'
uci set firewall.@rule[10].dest_port='80'
uci set firewall.@rule[10].name='AllowWANWeb'
uci set firewall.@rule[10].enabled='0'

uci add firewall redirect
uci set firewall.@redirect[0].target='DNAT'
uci set firewall.@redirect[0].src='wan'
uci set firewall.@redirect[0].dest='lan'
uci set firewall.@redirect[0].proto='tcp udp'
uci set firewall.@redirect[0].name='DMZ'
uci set firewall.@redirect[0].enabled='0'
uci commit firewall
service firewall restart




