## My Vim Setup

Repository containing my vim setup.  It's a combination of my vimrc file and all of the plugins that I use to personalize vim to my taste. Although I don't presume to think that my personal tastes would necessarily suit anyone else, please feel free to use and tweak these settings however you like.

## Prerequisites

Although most of my setup works just fine on any flavor of Vim 7, I've found that NerdTree only seems to work with 7.3 or better.  That might just be something unique to my situation, so your mileage may vary on this one.


## Setup Instructions

I use pathogen to handle all of my plugins, and I bundle pathogen in with the repo, so setup is pretty simple:

* Clone the repository in to your home directory under the name .vim:
<pre>git clone https://github.com/stlewis/vim.git .vim</pre>

* cd in to the .vim directory and issue the following commands:

<pre>
  git submodule init
  git submodule update
</pre>

The commands above will download all of the plugins for you. Once you've done that, you'll need to compile the command-t plugin:

<pre>
  cd ~/.vim/bundle/command-t/ruby/command-t
  ruby extconf.rb
  make
</pre>

As noted in the documentation for the command-t plugin, it's important that it be compiled using the same version of ruby that was used to compile your vim.

* Create a symlink in your home directory to the vimrc file:

<pre>
  ln -s ~/.vim/vimrc ~/.vimrc
</pre>

* Open up vim, and in Normal mode issue the command 'Helptags'.  This is a built in pathogen command that will generate the helptags for all of the plugins you've installed.


## What's Included

### Color Schemes

I've included a couple color schemes that I like, and I default to the distinguished theme. 

## Tweaks and modifications 

I've done a number of customizations to my vimrc that you may or may not want to keep.  This isn't necessarily an exhaustive list, but I thought I'd list some of the bigger changes just in case you saw behavior you didn't like:

* I've remapped the leader key to ',' instead of the default: '\'
* I've set tabs to spaces, (expandtab)
* My tabstop and shiftwidth are set at 2, (4 is preferred by some)
* I've disabled the arrow keys. 
* I've mapped CTRL+n to toggle NerdTree on and off. (More about NerdTree later)
* I've remapped all of the window-switching commands to drop the 'w' portion. (So CTRL+w h) becomes CTRL+h to switch to a window left of your current one, for instance.
* I like to use tabs, so I've mapped leader n to :tabnext, leader p to :tabprev and leader w to :tabclose

I should point out that none of the things above were necessarily my original idea, I've just done a lot of reading and plucked out the things I liked.

Another thing worth mentioning that you might like to try:  I've remapped my caps lock key to esc.  Reaching for Caps Lock is just a heck of a lot easier for me that going all the way to the top of the keybaord all the time.  Other people prefer to remap caps lock to CTRL...whichever is easier for you!

## Plugin Overview

For full details, check out the link to each GitHub repository:

**delimitMate**
https://github.com/Raimondi/delimitMate.git

Handles auto-closing of parentheses, brackets and so on.  There are tweaks you can make to your vimrc that will simulate some of this behavior, but this plugin handles it intelligently and easily.

**nerdtree**
https://github.com/scrooloose/nerdtree.git

File navigation plugin. Essentially gives you a 'tree-view' of the files and folders in your working directory, as is common with other popular graphical editors.

**nerdtree-tabs**
https://github.com/jistr/vim-nerdtree-tabs.git

NerdTree Tabs is a small plugin that just makes working with NerdTree easier when you use vim tabs. It's got a ton of configuration options that you can tweak to your liking. My vimrc includes modifications that I prefer.

**vim-rails**
https://github.com/tpope/vim-rails.git

A really handy plugin for working in Rails projects. I have to be honest though, as many features as this one has, the only one I really use on a consistent basis is Rake, which allows me to run entire test suites or focused examples.

**vim-snipmate**
https://github.com/garbas/vim-snipmate.git

One of the most beautiful things about TextMate, (subsequently borrowed by Sublime Text), is the concept of snippets. To use a snippet, you just type a few letters and then auto-complete to insert an entire 'snippet' of text in to your file.  It's an incredibly handy feature, and snipmate brings that functionality to Vim.  I've included not only the Snipmate plugin, but also a bunch of snippets, which can be found in the snippets/ directory.

**command-t**
https://github.com/wincent/Command-T.git

Yet another beautiful idea borrowed from the makers of Textmate, this plugin allows you to perform 'fuzzy' file-search in your working directory. Simply hit the shortcut in normal mode, (Leader-t), and start typing any part of the path or file name for the file you want to find.  You'll get a list of possible matches that narrows down as you type more. I've tweaked a couple of Command-T settings, most notably, the default action when hitting Enter over a file will open it in a new tab rather than in the current buffer.

**neatstatus**
https://github.com/maciakl/vim-neatstatus

This plugin just pretties up the Vim status line to include more useful information and to present it in a more aesthetic way.  I include the 'pure' version here, but I've hacked it for my own use to include Git branch information courtesy of the Fugitive plugin.

**ack.vim**
https://github.com/mileszs/ack.vim.gitA

Ack for vim. Ack is a beautiful search tool by itself, but the plugin integrates it in tovim in such a way that it emulates the 'find in all files' behavior found in Textmate or Sublime Text. Search results open in a Quickfix window that you can scroll through to open the files containing the matching terms.

**nerdcommenter**
https://github.com/scrooloose/nerdcommenter.git

This plugin allows you to quickly comment/uncomment source code blocks...simple.

**vim-surround**
https://github.com/tpope/vim-surround.git

Surround is a plugin that allows you to add remove and change 'surroundings' around text,such as parentheses, brackets, html tags, and so on.

**Mouse-Toggle**
https://github.com/vim-scripts/Mouse-Toggle.git

My vimrc enables mouse interaction by default. I don't do a lot of mouse-clicking in vim, but scrolling is an invaluable feature.  However, copying from vim into the system buffer isn't possible with mouse support enabled.  In that all-too-common scenario where you need to be able to copy in to your system buffer from a vim file, this plugin allows you to quickly toggle mouse capability in Vim.

**tabline.vim**
https://github.com/mkitt/tabline.vim.git

Simple plugin that makes the tab titles in vim readable.

**supertab**
https://github.com/ervandew/supertab.git

Vim has decent autocomplete features, but supertab makes them better. The primary tweak for me is just being able to use the tab key for autocompletion, (which I realize I could accomplish via key-remapping, but supertab has a lot of other nice features).

**vim-fugitive**
https://github.com/tpope/vim-fugitive.git

The only Git plugin you'll ever need. I'm a command-line junky, and one of my major annoyances with other editors was the need to switch between the editor and a command line to do anything meaningful with git. Fugitive makes the transition between git and the editor completely seamless. If you use git and you use vim, you need to be using this plugin.


There are other plugins included, but they are there mainly to support the functionality of the other, primary plugins. To see the full list, check out the bundle directory.
