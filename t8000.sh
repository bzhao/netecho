#!/bin/bash

exec 7< <(cat ./lll) 
exec 8> >(cat >./lll) 

##echo oooo 8000

netcat -lk  8000  <&7  >&8 

##netcat -l -p 29009  

###exec 7< <(echo llll) 


