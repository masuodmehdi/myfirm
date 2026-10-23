#!/bin/sh
#Komeil Majidi 2019







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
echo "MAC-Filtering Mode:<br><select name=\"mode\"><option value=\"disable\">Disable</option><option value=\"black\">Black List</option><option value=\"white\">White List</option></select><br><br>"
echo "<ul>"
echo "<li><input class=\"dissss\" id=\"MAC\" name=\"mac1\" type=\"text\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC2\" name=\"mac2\" type=\"text\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC3\" name=\"mac3\" type=\"text\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC4\" name=\"mac4\" type=\"text\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC5\" name=\"mac5\" type=\"text\"   style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC6\" name=\"mac6\" type=\"text\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC7\" name=\"mac7\" type=\"text\"  style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC8\" name=\"mac8\" type=\"text\"   style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC9\" name=\"mac9\" type=\"text\"   style=\"text-transform:uppercase\"  /></li>"
echo "<li><input class=\"dissss\" id=\"MAC10\" name=\"mac10\" type=\"text\"  style=\"text-transform:uppercase\"  /></li>"
echo "</ul>"
echo "<input type=\"submit\" value=\"Save Settings\">"
echo "<img id=\"loopoo\" src=\"\" >" 
echo "</form> "
echo "</center>"
echo"<script src=\"/luci-static/mac.js\"></script>"


echo "</body>"
echo "</html>"

}>> /www/luci-static/macnew.html







 

    
