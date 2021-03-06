#! /bin/bash
yum -y update
cd
yum install -y vim gcc make zsh wget tmux
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
cd 
sed -ie 's/ZSH_THEME="robbyrussell"/ZSH_THEME="random"/g' .zshrc
sed -ie 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' .zshrc
touch .vimrc
echo '
autocmd BufWritePost $MYVIMRC source $MYVIMRC
filetype plugin indent on
syntax on
set mouse=a
set mousehide
scriptencoding utf-8
set number
set relativenumber
set incsearch
set hlsearch
set ignorecase
set cursorline
set smartcase
set wildmenu
set wrap
set scrolloff=5
set foldenable
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
set splitright
set splitbelow
inoremap jj <esc>
map S :w<CR>
map Q :wq!<CR>
map J 5j
map K 5k
map H 5h
map L 5l
map mm G
map uu gg
map M <END>
map U <HOME>' >> .vimrc
zsh
