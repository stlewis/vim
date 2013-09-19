## My Vim Setup

This repository is a combination of my vimrc file in addition to the plugins that I use for vim. The goal of this repository is two-fold.  First, it gives me a convenient place to store my configuration so that I can duplicate it on other machines as needed. Secondly, it allows me to share it with other developers who, like me, are converting from other popular editors like Sublime Text or Textmate.

## Prerequisites

* Vim 7 or better compiled with ruby support. (To see if you have ruby support, type :ruby 2 in normal mode. If you get no output, you're all set)

## Setup Instructions

* Clone the repository in to your home directory under the name .vim:
<pre>git clone https://github.com/stlewis/vim.git .vim</pre>

* cd in to the .vim directory and issue the following commands:

<pre>
  git submodule init
  git submodule update
</pre>

The commands above will download all of the plugins for you. Once you've done that, you'll need to compile the command-t plugin:

<pre>
  cd ~/.vim/bundle/command-t/ruby/commnad-t
  ruby extconf.rb
  make
</pre>

* Create a symlink in your home directory to the vimrc file:

<pre>
  ln -s ~/.vim/vimrc ~/.vimrc
</pre>


## Color Schemes

I've included a couple of additional colorschemes that I really like. Check out the 'colors' directory to see what they are.

## Vim RC Tweaks

I've tweaked a number of things in my vimrc that you may or may not feel comfortable with.  Feel free to change them, I just thought I'd call out some of the unique ones in case you were seeing unexpected behavior:

* I've remapped the leader key to ',' instead of the default: '\'
* I've set my default colorscheme to solarized.
* I've set tabs to spaces, (expandtab)
* My tabstop and shiftwidth are set at 2, (4 is preferred by some)
* I've disabled the arrow keys in insert mode, (just to remove the crutch)
* I've mapped 'kk' to ESC, just because I find typing that combination faster than reaching for the escape key to get out of insert mode.
* I've mapped CTRL+n to toggle NerdTree on and off. (More about NerdTree later)
* I've remapped all of the window-switching commands to drop the 'w' portion. (So CTRL+w h) becomes CTRL+h to switch to a window left of your current one, for instance.
* I like to use tabs, so I've mapped leader n to :tabnext, leader p to :tabprev and leader w to :tabclose

There may be other little tweaks here and there that I forgot to mention. I should also point out that none of the things above were necessarily my original idea, I've just done a lot of reading and plucked out the things I liked.

## Plugin Overview

Rather than go in to a lot of detail here about what each plugin does, allow me to simply list them here and link to their Github pages:

**Command-T**
https://github.com/wincent/Command-T

**DelimitMate**
https://github.com/Raimondi/delimitMate

**NerdTree**
https://github.com/scrooloose/nerdtree

**vim-fugitive**
https://github.com/tpope/vim-fugitive

**vim-rails**
https://github.com/tpope/vim-rails

**vim-snipmate**
https://github.com/garbas/vim-snipmate

There are other plugins included, but they are there mainly to support the functionality of the other, primary plugins. To see the full list, check out the bundle directory.
