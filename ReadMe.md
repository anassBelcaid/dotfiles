# My Dotfile repo #
This repos contains the famous `dotfile` for my tools.


## vimrc ##

    > First things first.
Contain the config for the famous editor `vim`.

* In order to get a working version, you should install Vundle I create a script `scripts/vim` to create a directory for Vundle and install the package.

## Xressource for URxvt ##

Configuration file the the excellent lightweight terminal `urxvt`. urxvt read it's properites from the general **X** file `.Xressources`.

## i3 W ##

I'm starting to like the concept of a **tiling window mangager**. `i3` is an excellent example of such an WM. It offers all the features and it's lightwieght. So it goes with overall philosophy.

The config file is in `i3/config` should go to `~/.config/i3/config`


### Polybar ###
The bar on `i3` could be enhanced with the more modern `polybar`.

The starting example is taken from the default configuration file.

* the config is on `polybar/config` and as usual should go to `~/.config/polybar/config`
* Along this config comes a script `polybar/launch.sh` to stop all the runing polybar and lanch a new one.
