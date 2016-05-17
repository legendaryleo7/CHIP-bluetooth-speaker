Turn a CHIP into a Bluetooth speaker

After flashing your CHIP with Debian, log in as root and launch the
setup script:
```
#Change AUTOSTART to TRUE if you want it startup on boot.

NAME="My CHIP speaker" DEFAULT_PIN=1234 AUTOSTART=FALSE ./setup.sh
```

Don't forget to change the root and chip user passwords after installation.

Find more information about the project this was built for, Blutella, at:
http://www.hadess.net/2016/05/blutella-bluetooth-speaker-receiver.html

CONTRIBUTING
------------
I'd be happy taking in patches to support other similar Linux-powered boards,
but note that I'm not interested in supporting non-systemd systems. A number
of features that make this installation more resilient require systemd, and
replacing them would be too much work.
