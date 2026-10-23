var macelem = document.getElementById("MAC");
macelem.addEventListener('keyup', function() {
    var mac = macelem.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelem.value = mac.substr(0,17);
});

var macelemm = document.getElementById("MAC2");
macelemm.addEventListener('keyup', function() {
    var mac = macelemm.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemm.value = mac.substr(0,17);
});

var macelemmm = document.getElementById("MAC3");
macelemmm.addEventListener('keyup', function() {
    var mac = macelemmm.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmm.value = mac.substr(0,17);
});

var macelemmma = document.getElementById("MAC4");
macelemmma.addEventListener('keyup', function() {
    var mac = macelemmma.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmma.value = mac.substr(0,17);
});

var macelemmmb = document.getElementById("MAC5");
macelemmmb.addEventListener('keyup', function() {
    var mac = macelemmmb.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmb.value = mac.substr(0,17);
});

var macelemmmc = document.getElementById("MAC6");
macelemmmc.addEventListener('keyup', function() {
    var mac = macelemmmc.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmc.value = mac.substr(0,17);
});

var macelemmmd = document.getElementById("MAC7");
macelemmmd.addEventListener('keyup', function() {
    var mac = macelemmmd.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmd.value = mac.substr(0,17);
});

var macelemmme = document.getElementById("MAC8");
macelemmme.addEventListener('keyup', function() {
    var mac = macelemmme.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmme.value = mac.substr(0,17);
});

var macelemmmf = document.getElementById("MAC9");
macelemmmf.addEventListener('keyup', function() {
    var mac = macelemmmf.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmf.value = mac.substr(0,17);
});


var macelemmmg = document.getElementById("MAC10");
macelemmmg.addEventListener('keyup', function() {
    var mac = macelemmmg.value,index=(mac.match(/\:/g)||[]).length;
    if(index < 5 && index*3+2 == mac.length)
    {
        mac += ":";index++;
    }
    macelemmmg.value = mac.substr(0,17);
});

function showpass() {
  var x = document.getElementById("passwifi");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

function looloo() {

    
    document.getElementById("loopoo").style.display = "block";
  
}


// When the user clicks the button, open the modal 
 function asliip() {
 var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
 
  modal.style.display = "block";
  
    var x = document.getElementById("ipv4").value;
  document.getElementById("showip").innerHTML = x;
   document.getElementById("showip").href = "http://"+x;
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}


function redblood () {

   if ( window.location !== window.parent.location )                         
    {                                               
                                                                     
        // The page is in an iFrames                                 
                                                                             
    }                                              
    else {                                                                   
                                                                     
        var r = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/;                    
                                                                     
       // var a = "http://www.example.com/landing.aspx?referrer=10.11.12.13";
                                                                             
var t =  window.location.href.match(r);                                      
window.location.href = "http://"+t;                                  
} 
}
