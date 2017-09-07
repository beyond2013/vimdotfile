This repo contains my dot files. I have just begun organizing
dot files on my laptop. At the moment this repo contains two
dot files one corresponding to vim i.e. vimrc and another
for latexmk i.e. latexmkrc

vimrc; use vundle plugin manager to manage plugins.
with configuration of following plugins 
1. Ultisnips: for code snippets
2. Vim Fugitive: for integrating vim with git
3. Vim Rails: for working with rails projects
4. Vim Airline: for a nice statusbar 

latexmk; two small configurations
1. target set to compile to pdf
2. use evince as pdf viewer 

### Desktop settings
---
I have placed vimrc in `dotfiles` directory within homefolder
on my laptop and symlinked the file vimrc (without the dot) using 
the following command in terminal
.
```console
ln -s ~/dotfiles/vimrc ~/.vimrc
```

The symlink is named .vimrc which points to ~/dotfiles/virmc
