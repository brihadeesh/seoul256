# st - simple terminal
`st` is a simple terminal emulator for X which sucks less. This was forked from the original
suckless project (`st` version 0.8.2). This is patched to allow scrollback, clipboard suppport and
resizing without messing up gaps in a tiling wm. See
[st.suckless.org/patches](https://st.suckless.org/patches) for more on patches and
[suckless.org/hacking]{https://suckless.org/hacking/) for more on patching suckless programs.


## Requirements
In order to build `st` you need the Xlib header files.


## Installation
Move this folder from here to avoid creating a symlink with `stow` and edit `config.mk` to match
your local setup (st is installed into the /usr/local namespace by default). Also edit `config.h'
as per your needs.

Afterwards enter the following command to build and install st (if necessary as root):

```
	make clean install
```


## Running st
If you did not install st with make clean install, you must compile the st terminfo entry with the
following command:

```
	tic -sx st.info
```

See the man page for additional details.


## Credits
Based on Aurélien APTEL <aurelien dot aptel at gmail dot com> bt source code.  

This was forked from the original suckless project at [st.suckless.org](https://st.suckless.org)
