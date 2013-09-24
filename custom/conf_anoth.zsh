SSH_AUTH_SOCK=`netstat -xl | grep -o '/run/user/1001/keyring-.*/ssh$'`
[ -z "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK
