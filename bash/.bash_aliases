shopt -s expand_aliases

alias Car='cargo run'
alias Cab='cargo build'
alias Cat='cargo test'

alias Carbin='cargo run --bin'
alias Cabbin='cargo build --bin'

alias ll='ls -l' 

# path to google-chrome
alias chrome='/opt/google/chrome/google-chrome'
# for google search
goo(){
# word yout want to search by google
word=""
word=$1
# generate url for google search
url="google.com/search?q=${word}"
# path to google-chrome
chrome="/opt/google/chrome/google-chrome"
firefox="/usr/bin/firefox"
# run google-chrome by generated url
`${chrome} ${url}`
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

alias xselc='xsel -bi'
