<meta http-equiv="refresh" id="komeil" content="1;url=/luci-static/wificonf.html" />
<center><img width="400px"  src="okk.gif"></center>

    <script language="javascript" type="text/javascript">                                                                     
   var d = Math.floor(Math.random() * 1254547890);                                                              
    document.getElementById('komeil').content = "1;url=/luci-static/wificonf.html?var=" +d; 
    </script>

<?php



  $wifil = $_POST['wifil'];
  $wifilasli = "$wifil" ;

  $modew = $_POST['modew'];
   $modewasli = "$modew" ;

  $ssid = $_POST['ssid'];
  $encryption = $_POST['encryption'];
  
  $passwifi = $_POST['passwifi'];
  $hooden = $_POST['hooden'];
  $wps = $_POST['wps'];
 


 
 if ( $wifilasli == "disable") {
 
     $outputw4 = shell_exec("uci set wireless.default_radio0.disabled='1' "  );
	$output112 = shell_exec("uci commit"  );
	$output121 = shell_exec("/etc/init.d/network reload"  );
	$outputkon8 = shell_exec("./../../bashmci/wifidis.sh"  );
 



}else if ( $wifilasli == "enable" ) {

    $outputw = shell_exec("uci set wireless.default_radio0.ssid='$ssid' "  );
    
    $outputw5 = shell_exec("uci set wireless.default_radio0.encryption='$encryption' "  );
  
    $outputw6 = shell_exec("uci set  wireless.default_radio0.key='$passwifi' "  );
        $outputw7 = shell_exec("uci set  wireless.default_radio0.mode='$modew' "  );
        $outputw8 = shell_exec("uci set wireless.default_radio0.hidden='$hooden' "  );
        $outputw70 = shell_exec("uci set wireless.default_radio0.wpa_disable_eapol_key_retries='$wps' "  );
        $outputw80 = shell_exec("uci set wireless.default_radio0.wps_pushbutton='$wps' "  );
        

 	$outputw1 = shell_exec("uci commit"  );
	$outputw2 = shell_exec("/etc/init.d/network reload"  );
    $outputw3 = shell_exec("./../../bashmci/wifiasl.sh"  );

	

	
	
}


	










?>
