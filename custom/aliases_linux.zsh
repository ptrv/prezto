alias E="SUDO_EDITOR=\"emacsclient -c -a emacs\" sudoedit"

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

function nano_or_sudo_nano(){
    if [[ -w "$1" ]]; then
        nano $1
    else
        echo -n "You don't have write permission for $1, use sudo nano instead? (y/n)? "
        read reply

        if [[ $reply == "y" ]]; then
            sudo nano $1
        else
            nano $1
        fi
    fi
}
alias nano=nano_or_sudo_nano
