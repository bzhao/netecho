
This is tcp net echo script, which is working depending on openbsd netcat, not sure 
if it is working on gnu netcat.
I saw someone was asking for the stuff like this, so I create it.

1. ./r.sh  & in background
2. from other PC/server, telnet/netcat to this server to test it. 

$ telnet avser  8000
Trying 192.168.123.251...
Connected to 192.168.123.251 .
Escape character is '^]'.
sfsdf
sfsdf

