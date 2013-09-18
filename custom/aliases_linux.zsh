alias gwd="pwd | xclip"

# iftop shows Bytes/sec
alias iftop="sudo iftop -B"

# osx pbcopy / pbpaste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# cpu info
alias cpuinfo='cat /proc/cpuinfo'

# xdg-open
function open(){
    if [[ -z "$1" ]]; then
        xdg-open . > /dev/null
    else
        xdg-open "$1" &> /dev/null &
    fi
}
alias o="open"

################################################

alias netlisteners='lsof -i -P | grep LISTEN'

alias gop="cd $HOME/gocode"

alias k9="killall -9"

alias afind='ag -il'

################################################
# pacman/yaourt

alias upgrade='yaourt -Syua'

alias pacls='pacman -Ql'
