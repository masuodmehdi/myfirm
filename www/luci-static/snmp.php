
<center><img width="400px"  src="okk.gif"></center>

    <script language="javascript" type="text/javascript">
   var d = Math.floor(Math.random() * 1254547890);
         setTimeout(function(){
            window.location.href = "/luci-static/netpref.html?var="+d;
         }, 2000);

    </script>
    
<?php



  $cell = $_POST['cell'];
  $modecell = "$cell" ;

  
  if ( $modecell == "auto") {
	  
   $outputyu = shell_exec( "./../../bashmci/auto.sh"  );

  }elseif ( $modecell == "4g"){
	  
	     $outputyu = shell_exec( "./../../bashmci/4g.sh"  );

	  
  }elseif ( $modecell == "3g"){
	  
	     $outputyu = shell_exec( "./../../bashmci/3g.sh"  );

	  
  }elseif ( $modecell == "2g"){
	  
	     $outputyu = shell_exec( "./../../bashmci/2g.sh"  );

	  
  }
  






?>
