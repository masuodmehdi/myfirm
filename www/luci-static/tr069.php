<meta http-equiv="refresh" content="1;url=/luci-static/kma.html" />
<center><img width="400px"  src="okk.gif"></center>
<?php
  $tract = $_POST['tract'];
  $new = "$tract" ;
  $url = $_POST['aacsurl'];
  $acsunam = $_POST['acsunam'];
  $acspass = $_POST['acspass'];
  $period = $_POST['period'];
  $periodic = $_POST['periodic'];
  $conunam = $_POST['conunam'];
  $conpass = $_POST['conpass'];

if ( $new == "enable") {
	$output1 = shell_exec("uci set easycwmp.@local[0].username='$conunam' "  );
	$output2 = shell_exec("uci set easycwmp.@local[0].password='$conpass' "  );
	$output3 = shell_exec("uci set easycwmp.@acs[0].url='$url' "  );
	$output4 = shell_exec("uci set easycwmp.@acs[0].username='$acsunam' "  );
	$output5 = shell_exec("uci set easycwmp.@acs[0].password='$acspass' "  );
	$output5 = shell_exec("uci set easycwmp.@acs[0].periodic_interval='$periodic' "  );
	$output6 = shell_exec("uci commit"  );
	$output7 = shell_exec("/etc/init.d/easycwmpd restart"  );
	$output8 = shell_exec("/etc/init.d/easycwmpd boot"  );
	$output8 = shell_exec("./../../bashmci/lon.sh"  );

}else if ( $new == "disable" ) {
	
	$output = shell_exec("/etc/init.d/easycwmpd stop"  );
	
	
}





//$output = shell_exec("uci set firewall.@rule[9].proto='$value' "  );

//$komeil = shell_exec("uci commit "  );

//$komeil = shell_exec(" /etc/init.d/firewall reload " );

//$kma = shell_exec(" ./../../lon.sh"  );


//echo "<pre>$output</pre>";


?>