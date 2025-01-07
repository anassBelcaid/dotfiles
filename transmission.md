# Transimission

This is a simple blog entry on how to setup `transmission-cli` on **linux** and how to configure the main entry to use it to open and download torrent files.

## Installation

First we will need to install the following packages:

- `transmision-cli` for the main daemon.
- `tremc` **aur** for managing torrent in the terminal using the **ncurses** library.

## Setup as default application 

in order to setup **transmission** as our default torrent application we need to edit the 

```
.config/mimeapps.list
```
we will need to add the following two entries to the **Default Applications]

```shell
x-scheme-handler/magnet=torrent.desktop;
application/x-bittorrent=torrent.desktop;
```

This mean that in order to open any torrent file the os will use an application called **torrent** but for the time being we need to create this application.


We need to add those entries in the `.local/share.applications/`. We will add a file named **torrent.desktop** with the following content:

```
[Desktop Entry]
Type=Application
Name=Torrent
Exec=/home/anass/scripts/transadd %U
```

Here is the content of the **tranadd** script.


```shell
#!/bin/sh

# Mimeapp script for adding torrent to transmission-daemon, but will also start the daemon first if not running.

# transmission-daemon sometimes fails to take remote requests in its first moments, hence the sleep.

pgrep -x transmission-da >/dev/null || (transmission-daemon && notify-send "Starting transmission daemon..." && sleep 3)

transmission-remote -a "$@" && notify-send "Torrent added." --icon "/home/anass/github/dotfiles/scripts/torrent_icon.png"
```



