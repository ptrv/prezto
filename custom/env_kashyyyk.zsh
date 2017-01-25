# export EDITOR="emacsclient"
export EDITOR=$HOME/bin/editor
export ALTERNATE_EDITOR=""

export ANDROID_HOME=~/SDKs/android_sdk

path=(
  $ANDROID_HOME/platform-tools
  $HOME/.linuxbrew/bin
  $path
)
