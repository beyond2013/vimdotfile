This repo contains my dot files. I have just begun organizing
dot files on my laptop. At the moment this repo contains two
dot files one corresponding to vim i.e. vimrc and another
for latexmk i.e. latexmkrc.
vimrc use minpac a small plugin manager to manage plugins.
with configuration of following plugins 

* minpac itself: for managing other packages

1. Ultisnips: for code snippets
2. Vim Fugitive: for integrating vim with git
3. Vim Rails: for working with rails projects
4. Vim Airline: for a nice statusbar 
5. Vim Surround: for editing text surrounded with paranthesis, square/curly brackets
6. textobj-rubyblock: which allows selection of blocks for ruby usign var and vir 

latexmk; two small configurations
1. target set to compile to pdf
2. use evince as pdf viewer 

### Desktop settings
---
I have placed vimrc in `vimdotfiles` directory within homefolder
on my laptop and symlinked the file vimrc (without the dot) using 
the following command in terminal:

```console
ln -s ~/vimdotfiles/vimrc ~/.vimrc
```

The symlink is named .vimrc which points to ~/vimdotfiles/virmc

### Configuration on fresh vim install
---
To configure a freshly installed vim (with ruby support) 

1. Make a `.vim` folder in home  
2. In terminal `git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac`  
3. lanch vim and run `:call minpac#update()`   

