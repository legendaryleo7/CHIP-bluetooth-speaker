#! /bin/sh

#Ensure bluetooth is on, discoverable, and pairable

systemctl restart bluetooth 

bt-adapter --set Powered 1 
bt-adapter --set DiscoverableTimeout 0 
bt-adapter --set Discoverable 1 
bt-adapter --set PairableTimeout 0 
bt-adapter --set Pairable 1 
 
#restart bt-agent.service 
systemctl enable bt-agent.service 
systemctl restart bt-agent.service 

#enable pulseaudio
systemctl enable pulseaudio.service 
systemctl restart pulseaudio.service 

exit 0 
