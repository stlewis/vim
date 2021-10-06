## My Vim Setup

This repository contains my personal vim setup. I've placed it here both to make it easily accessible to me if I need to customize a vim on a new machine, and for use by anyone else who might be interested. It's very tuned to my personal taste, so your mileage may vary as far as whether or not you find it useful, but feel free to use it as a starting point and go from there.

It's probably worth noting that recently I've been using _Neovim_ rather than Vim, but all of my settings are compatible with both Neovim and versions of Vim higher than 7.3


## Setup Instructions

These instructions assume that you are either using Vim, or that you've configured Neovim to read from `.vimrc` properly on your system.


* Clone the repository in to your home directory under the name .vim:
<pre>git clone https://github.com/stlewis/vim.git .vim</pre>

* Create a symlink in your home directory to the vimrc file:
<pre>
  ln -s ~/.vim/vimrc ~/.vimrc
</pre>

* Open up vim, and in Normal mode issue the command PlugInstall.  This command will install all of the plugins listed in .vimrc

## What's Included

I make enough tweaks to my set up over time that it's not really feasible for me to maintain a list _here_ of all the plugins I make use of and what they do. It's much simpler if you just take a look at the `.vimrc` file and look up the use of any plugin that catches your eye. Obviously feel free to remove any that you don't find useful.


## Tweaks and modifications

I've done a number of customizations to my vimrc that you may or may not want to keep. Many of them are just minor things that work best with my particular workflow, but some are fairly standard. This isn't necessarily an exhaustive list, but I thought I'd list some of the bigger changes just in case you saw behavior you didn't like:

* I've remapped the leader key to ',' instead of the default: '\'
* I've set tabs to spaces, (expandtab)
* My tabstop and shiftwidth are set at 2, (4 is preferred by some)
* I've disabled the arrow keys.
* I've mapped CTRL+n to toggle NerdTree on and off. (More about NerdTree later)
* I've remapped all of the pane-switching commands to drop the 'w' portion. (So CTRL+w h) becomes CTRL+h to switch to a pane left of your current one, for instance.

I should point out that none of the things above were necessarily my original idea, I've just done a lot of reading and plucked out the things I liked.

Another thing worth mentioning that you might like to try:  I've remapped my caps lock key to esc.  Reaching for Caps Lock is just a heck of a lot easier for me that going all the way to the top of the keybaord all the time.  Other people prefer to remap caps lock to CTRL...whichever is easier for you!

