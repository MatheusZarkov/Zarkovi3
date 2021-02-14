# i3dotfiles

# First of all install these programs:

**Initial steps**:
```
sudo apt install i3
sudo apt install i3blocks
sudo apt install vim
sudo apt install pactl
```
*Installing Player CTL*
This will enable media buttons such as volume, touchpad etc.
#Install playerctl (if you don't have it yet)
#You can verify if tou have it downloaded by typing in the command line: `playerctl --help`

If you do not have it, here is the link:

[Releases · altdesktop/playerctl](https://github.com/altdesktop/playerctl/releases)

Dowload the debian package → playerctl-2.3.1_amd64.deb

For the instalation do this in the folder you have the file:
sudo dpkg -i playerctl-2.3.1_amd64.deb
**[Playerctl](https://github.com/acrisci/playerctl)** is a command-line utility for controlling media players over DBus that works with most players.

If the XF86* keysyms do not work for you, you can see the available keysyms for your computer by executing this command:

```xmodmap -pke```

Or `xev`, an interactive tool for finding key symbols:

```xev```
