# SSH_AUTH_SOCK=`netstat -xl | grep -o '/run/user/1001/keyring-.*/ssh$'`
SSH_AUTH_SOCK=/run/user/1001/keyring/ssh
[ -z "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK
# GPG_AGENT_INFO=`netstat -xl | grep -o '/home/peter/.cache/keyring-.*/gpg$'`
# [ -z "$GPG_AGENT_INFO" ] || export GPG_AGENT_INFO=$GPG_AGENT_INFO:0:1
