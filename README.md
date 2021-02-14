Table of Contents
Requirements
Installing PlayerCTL
Toggling touchpad
Setting custom Wallpaper
Requirements:
Installing the programms needed:
sudo apt install i3
sudo apt install i3blocks
sudo apt install vim
sudo apt install pactl
sudo apt install i3status 
sudo apt install suckless-tools
Installing PlayerCTL
This will enable media buttons such as volume, touchpad, etc.

You can verify if you have it downloaded by typing in the command line:

playerctl --help
If you do not have it, here is the link:

Releases · altdesktop/playerctl

Dowload the debian package → playerctl-2.3.1_amd64.deb

For the instalation do this in the folder you have the file:

sudo dpkg -i playerctl-2.3.1_amd64.deb
Playerctl is a command-line utility for controlling media players over DBus that works with most players.

If the XF86 keysyms do not work for you, you can see the available keysyms for your computer by executing this command:*

xmodmap -pke

Or xev, an interactive tool for finding key symbols:

xev

Toggling the touchpad
The script toggletouchpad.sh for toggling your touchpad should have following content:

#!/bin/bash
if synclient -l | grep "TouchpadOff .*=.*0" ; then
    synclient TouchpadOff=1 ;
else
    synclient TouchpadOff=0 ;
fi2
Setting custom Wallpaper
You will need a tool called feh

sudo apt install feh
# Save the wallpaper to Downloads folder, in downloads folder execute the command to see the wallpaper:
feh --bg-scale wallpaper.jpg
# To make the wallpaper appear everytime you log back in go to i3 file configuration and:
	exec_always feh --bg-scale /home/Downloads/wallpaper.jpg
# Remind that my path will be different than yours, but at this point I dont think I need to tell you this xD
# the --bg-scale its the argument to make your wallpaper well scaled in your pc. its not the only parameter, you can do a:
feh --help #And see the other options
Customizing 2 monitors or more.
Just download a tool called Arandr

sudo apt install arandr
