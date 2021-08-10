#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then



    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then


    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then


    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

<<<<<<< HEAD
picom --xrender-sync-fence & # compositor
#dwmblocks &
/home/ankit/dwm-bar/dwm_bar.sh & #dwm bar
dunst & #dunst notifications
setbg
wal -R #restoring wallpaper
volumeicon & #volumeicon
while :; do
	ssh-agent dwm
    volumeicon &
=======
nitrogen --restore & # wallpaper restored
picom --experimental-backends --xrender-sync-fence & # compositor
/home/ankit/dwm-bar/dwm_bar.sh & #dwm bar
volumeicon & #volumeicon
while :; do
	ssh-agent dwm
    volumeicon & #volumeicon
>>>>>>> f74dcb769b0b0cb2bb935a42c4f662f5892152e9
done
