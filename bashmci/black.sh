#!/bin/sh
#Komeil Majidi 2019

#echo $! > /tmp/lan.pid # male zire ejraee ha toyee startup masalan zire ejra background signal masalan
uname=`uci show wireless.default_radio0.maclist | sed -e  s/\'//g -e s/\ //g `


uname2="${uname:32}"


mac1="${uname2:0:17}"
mac2="${uname2:17:17}"
mac3="${uname2:34:17}"
mac4="${uname2:51:17}"
mac5="${uname2:68:17}"

mac6="${uname2:85:17}"
mac7="${uname2:102:17}"
mac8="${uname2:119:17}"
mac9="${uname2:136:17}"
mac10="${uname2:153:17}"






 rm /www/luci-static/macnew.html
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<body onload=\"redblood()\" >"
echo	"<meta name=\"viewport\" content=\"initial-scale=1.0\">"
echo		"<link rel=\"stylesheet\" href=\"/luci-static/mac.css\">"
echo "<meta http-equiv=\"Cache-Control\" content=\"no-cache, no-store, must-revalidate\" />"
echo "<meta http-equiv=\"Pragma\" content=\"no-cache\" />"
echo "<meta http-equiv=\"Expires\" content=\"0\" />"
echo "<center>"
echo " <form method=\"post\" onsubmit=\"looloo()\" action=\"/luci-static/macsub.php\"> "
echo "MAC-Filtering Mode:<br><select name=\"mode\"><option value=\"black\">Black List</option><option value=\"white\">White List</option><option value=\"disable\">Disable</option></select><br><br>"
echo "<ul>"
echo "<li><input class=\"blacckk\" id=\"MAC\" name=\"mac1\" type=\"text\" value=\"$mac1\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC2\" name=\"mac2\" type=\"text\" value=\"$mac2\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC3\" name=\"mac3\" type=\"text\" value=\"$mac3\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC4\" name=\"mac4\" type=\"text\" value=\"$mac4\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC5\" name=\"mac5\" type=\"text\" value=\"$mac5\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC6\" name=\"mac6\" type=\"text\" value=\"$mac6\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC7\" name=\"mac7\" type=\"text\" value=\"$mac7\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC8\" name=\"mac8\" type=\"text\" value=\"$mac8\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC9\" name=\"mac9\" type=\"text\" value=\"$mac9\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"blacckk\" id=\"MAC10\" name=\"mac10\" type=\"text\" value=\"$mac10\"  style=\"text-transform:uppercase\"  /></li>"
echo "</ul>"
echo "<input type=\"submit\" value=\"Save Settings\">"
echo "<img id=\"loopoo\" src=\"\" >" 
echo "</form> "
echo "</center>"
echo "<script src=\"/luci-static/mac.js\"></script>"


echo "</body>"
echo "</html>"

}>> /www/luci-static/macnew.html







 

    
