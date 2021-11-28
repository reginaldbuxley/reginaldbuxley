#exec openbox   # no '&' here
#exec xfce4-session
#afterstep
#exec gnome-session
mixerctl -w outputs.master=220 
cvlc ~/audio/powerup.mp3 --play-and-exit &
/usr/X11R7/bin/setxkbmap -option terminate:ctrl_alt_bksp
#exec awesome
xscreensaver -nosplash &
#mixerctl -w outputs.master=254 &
#cvlc ~/audio/powerup.mp3 --play-and-exit &
exec wmaker
#exec xfce4-session
#exec dwm
