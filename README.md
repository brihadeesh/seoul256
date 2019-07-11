# Dotfiles

## Background
These were made as part of an experiment to use a light theme called
[seoul256](https://github.com/junegunn/seoul256.vim). Note that this work in progress and I should
be updating this as and when I feel the need. I currently use a different set of applications for
things:

* **WM**: bspwm currently but I've included herbstluftwm configs as well
* **Menu**: dmenu
* **Terminal**: [st](packages/st) although I also use termite 
* **Editor**: Emacs and occasionally nano; I was a neovimmer for a while but have not used it in a
  while. Hopefully I'll be switching to using the [Nvim-R](https://github.com/jalvesaq/Nvim-R)
  plugin for R
* **Music**: mpd + ncmpcpp (configs not included)

If you'd like to know a little more about this, I made a post on reddit:
[r/UsabilityPorn](https://www.reddit.com/r/UsabilityPorn/comments/cb4hjd/bspwm_learning_r_from_the_basics/). There
are some tips on learning R as well that beginners might find useful.

## Installing
You'll need to install whatever software I use: I'll include a comprehensive list later on but it's
not too hard to figure out from just examining the files. You'll find that
[`stow`](https://www.gnu.org/software/stow/) is perhaps the most convenient tool to use these
files. 

It might be a good idea to move the `packages` folder elsewhere such that it doesn't
interfere with the functioning of your window manager (symlinks created with `stow` will include
symlinks for these files in your home directory if this folder is not moved).

Additionally, I use [`grml-zsh-config`](https://grml.org/zsh/) with a `.zshrc.local` in my home
directory. My older zshrc is available on an [older
repository](https://github.com/ictinaetus/dotfiles) if anyone's interested. I currently use a custom
theme for the prompt which you can find in the [`.zshrc.local`](.zshrc.local) file.

## Screenshots

![st, polybar](screenshots/seoul256_1.png)

![Rstudio, mupdf](screenshots/seoul256_2.png)

![empty](screenshots/seoul256_3.png)

