#! /bin/bash

AUTOSTART=TRUE
if [AUTOSTART]
  then
        #check for an exit line in rc.local
    if [tail -n 1 /etc/rc.local = "exit 0" OR "exit(0)"]
      then
        #delete it if present
        sudo head -n -1 /etc/rc.local > rc.local 
        sudo mv rc.local /etc/rc.local
        fi
      
      #copy over the bluetooth services script
      cp bluetooth-audio-sink.sh /usr/etc/bluetooth-audio-sink.sh
      chmod +rx /usr/etc/bluetooth-audio-sink.sh
      
#add it to the rc.local file and place an exit line at the end
cat <<EOF > /etc/rc.local
/usr/etc/bluetooth-audio-sink.sh
exit 0
EOF

fi

exit(0)
