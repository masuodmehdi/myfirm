
<center><img width="400px"  src="okk.gif"></center>

    <script language="javascript" type="text/javascript">
   var d = Math.floor(Math.random() * 1254547890);
         setTimeout(function(){
            window.location.href = "/luci-static/webacs.html?var="+d;
         }, 2000);

    </script>
    
<?php


  $webacs = $_POST['webacs'];
  $webacsasli = "$webacs" ;




 if ( $webacsasli == "webdis") {
   	$output1 = shell_exec(" uci set firewall.@rule[10].enabled='0' "  );

	$output5 = shell_exec("uci commit"  );
	$output6 = shell_exec("/etc/init.d/firewall restart"  );
		     $outputyu3 = shell_exec( "./../../bashmci/webdis.sh"  );
			 
 }
 
 
  if ( $webacsasli == "weben") {
   	$output1 = shell_exec(" uci set firewall.@rule[10].enabled='1' "  );
	$output5 = shell_exec("uci commit"  );
	$output6 = shell_exec("/etc/init.d/firewall restart"  );
		     $outputyu3 = shell_exec( "./../../bashmci/weben.sh"  );
			 
 }







	










?>
