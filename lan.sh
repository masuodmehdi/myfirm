#!/bin/sh
#Komeil Majidi 2019
#LAN LED


while [ true ] ; do
   LAN=`swconfig dev switch0 show | fgrep 'link: port:0 ' | cut -d ' ' -f 3 | cut -d ':' -f 2 `
   LANN=`swconfig dev switch0 show | fgrep 'link: port:1 ' | cut -d ' ' -f 3 | cut -d ':' -f 2 `
           
                                                               
             
                                                                                   
 if [ $LAN == up ] || [ $LANN == up ]  ; then                              
                                                        
  echo "1" > /sys/class/gpio/gpio6/value                                   
                                          
  fi 
  
 if    [ $LAN == down ] && [ $LANN == down ]  ; then                                                 
                                                        
  echo "0" > /sys/class/gpio/gpio6/value                
 fi                                                     
                                                        
                                                        
sleep 2                                 
done
