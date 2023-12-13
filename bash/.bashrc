# config of prompt

PS1='\[\e[1;36m\]\[\e[m\] \[\e[1;34m\]\t\[\e[m\] \[\e[1;36m\]😻\[\e[m\] \[\e[1;36m\] \W\[\e[m\] \[\e[1;31m\]$(__git_ps1 "(%s)")\[\e[m\] \n \$ '
#PS1='\[\e[1;36m\]😺🐰\[\e[m\] \[\e[1;34m\]\t\[\e[m\] \[\e[1;36m\]😽🐰\[\e[m\] \[\e[1;36m\] \W\[\e[m\] \[\e[1;31m\]$(__git_ps1 "(%s)")\[\e[m\] \n \$ '
#PS1='\[\e[1;36m\]🐰\[\e[m\] \[\e[1;34m\]\t\[\e[m\] \[\e[1;36m\]🐰\[\e[m\] \[\e[1;36m\] \W\[\e[m\] \[\e[1;31m\]\[\e[m\] \n \$ '

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# for Rust dev-env

export PATH="$HOME/.cargo/bin:$PATH"

# cargo run --bin  

alias Car='cargo run'
alias Cab='cargo build'
alias Cat='cargo test'

alias Carbin='cargo run --bin'
alias Cabbin='cargo build --bin'


# open file

alias open='xdg-open'
alias open='thunar'

# PATH to pgopher
#export PATH=$PATH:"$HOME/.Pgo"

# Rscript 

alias rs='Rscript'

# caps lock -> ctrl 
# setxkbmap -option ctrl:nocaps
# cpas lock <-> ctrl
# setxkbmap -option ctrl:swapcaps
# reset caps lock 
# setxkbmap -option

# copy from stdoout

alias xselc='xsel -bi'

export EDITOR=nvim
# using vim read only mode

# nvim
alias nvi='nvim'

# vi
alias vi='nvim'
# nvim by readonly
alias ri='nvim -R'

# ../..

# show git branch on bash prompt
# see more on PS1

source ~/.git-prompt.sh

# add path to ~/.local/bin
export PATH=$PATH:"$HOME/.local/bin"

#  path about pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"

# bash key bind emacs -> vi 
set -o vi
# bash key bind vi -> emacs
#set -o emacs

# ecs->jj 

bind '"jj":vi-movement-mode'


# My tool for Latex
alias texcli='tex_rs'
# My tool for pick up coordinates
alias pickco='pick_co'

# 内蔵キーボードの無効化
alias diskey='xinput -disable "AT Translated Set 2 keyboard"' 
# 内蔵キーボードの再有効化
alias enkey='xinput -enable "AT Translated Set 2 keyboard"' 

# トラックパッドの無効化
alias dispad='xinput -disable "ELAN1300:00 04F3:3087 Touchpad"' 
# トラックパッドの有効化
alias enpad='xinput -enable "ELAN1300:00 04F3:3087 Touchpad"' 

# keymapの変更
# xmodmap ~/.Xmodmap

# path to google-chrome
alias chrome='/opt/google/chrome/google-chrome'
# for google search
goo(){
    # word yout want to search by google
    word=$1
    # generate url for google search
    url="google.com/search?q=${word}"
    # path to google-chrome
    chrome="/opt/google/chrome/google-chrome"
    firefox="/usr/bin/firefox"
    # run google-chrome by generated url
    "$chrome" "$url" > /dev/null 2>&1
}

# search word by 英辞郎
ezi(){
    # word yout want to search by google
    word=""
    word=$1
    # generate url for google search
    url="https://eow.alc.co.jp/search?q=${word}"
    # path to google-chrome
    chrome="/opt/google/chrome/google-chrome"
    # run google-chrome by generated url
    `${chrome} ${url}`
}

# 現在のディレクトリに存在するREADME.mdへのpathをクリップボードに貼り付ける
alias rme='echo `pwd`/README.md | xselc'

# pdfを全ページ一枚づつpngファイルに変換
ppng() {
    pdf_file_name=$1
    img_file_name=$2
    if [ "$pdf_file_name" = '' ]; then
        echo "No input file name"
    elif [ "$img_file_name" = '' ]; then
        echo "No output file name"
    else
        pdftoppm "$pdf_file_name" -png "$img_file_name"
    fi
}

# path for luarocks
#$(luarocks path)

# fuzzy finder

## for nvim
fvi() {
    local file
    path="$1"
    if [ ! -z "$path" ];then
        file=$(find "$path"| fzf)
    else
        file=$(find .| fzf)
    fi

    nvim ${file}
}
. "$HOME/.cargo/env"

# for show image in wezterm
alias im='img2sixel'

# grim: screen shot
