# export EDITOR="emacsclient"
export EDITOR=$HOME/bin/editor
export ALTERNATE_EDITOR=""

export ANDROID_HOME=~/SDKs/android_sdk

path=(
  $ANDROID_HOME/platform-tools
  $HOME/.linuxbrew/bin
  $path
)

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end
