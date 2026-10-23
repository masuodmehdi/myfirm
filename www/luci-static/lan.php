<?php


  $ipv4 = $_POST['ipv4'];
  $netmask = $_POST['netmask'];

  $start = $_POST['start'];
  $limit = $_POST['limit'];
  $lease = $_POST['lease'];




   	$output1 = shell_exec("uci set network.lan.ipaddr='$ipv4' "  );
   	$output2 = shell_exec("uci set network.lan.netmask='$netmask' "  );
   	$output3 = shell_exec("uci set dhcp.lan.start='$start' "  );
   	$output3 = shell_exec("uci set dhcp.lan.limit='$limit' "  );
   	$output4 = shell_exec("uci set dhcp.lan.leasetime='$lease' "  );
	$output5 = shell_exec("uci commit"  );
	$output6 = shell_exec("/etc/init.d/network reload"  );
		     $outputyu3 = shell_exec( "./../../bashmci/lan.sh"  );







	










?>
