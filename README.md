# Shell Color Scripts

![Screenshot of shell-color-scripts](https://raw.githubusercontent.com/sethigeet/shell-color-scripts/master/screenshots/01.png)

A collection of terminal color scripts I've accumulated over the years.
Includes 41 beautiful terminal color scripts.

## Installing shell-color-scripts on Arch Linux

All you need to do is download the PKGBUILD from this repository. Then run the following command:

```sh
makepkg -cf
```

This will create a file that ends in .pkg.tar.xz (for example, shell-color-scripts-0.1-1-x86_64.pkg.tar.xz). Then run:

```sh
sudo pacman -U *.pkg.tar.zst
```

## Installing shell-color-scripts on other Linux distrtibutions

Download the source code from this repository or use a git clone:

    git clone https://github.com/sethigeet/shell-color-scripts.git
    cd shell-color-scripts
    rm -rf /opt/shell-color-scripts || return 1
    sudo mkdir -p /opt/shell-color-scripts/colorscripts || return 1
    sudo cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
    sudo cp colorscript.sh /usr/bin/colorscript

    # optional for zsh completion
    sudo cp zsh_completion/_colorscript /usr/share/zsh/site-functions

## Usage

```
colorscript --help
Description: A collection of terminal color scripts.

Usage: colorscript [OPTION] [SCRIPT NAME/INDEX]
  -h, --help, help    	Print this help.
  -l, --list, list    	List all color scripts.
  -r, --random, random	Run a random color script.
  -e, --exec, exec    	Run a spesific color script by SCRIPT NAME or INDEX.
```

## The Scripts Are Located in /opt/shell-color-scripts/colorscripts

The source for shell-color-scripts is placed in:

```sh
/opt/shell-color-scripts/colorscripts
```

For even more fun, add the following line to your .bashrc or .zshrc and you will run a random color script each time you open a terminal:

```sh
### RANDOM COLOR SCRIPT ###
colorscript random
```
