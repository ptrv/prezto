# export PATH=~/bin:$PATH

# export TERM=xterm-256color

export EDITOR="emacsclient"
export ALTERNATE_EDITOR=""

#export VST_PLUGINS="~/vsts"
export VST_PATH="/home/peter/vsts"
export SC_SOURCE_DIR="~/compiledir/SuperCollider3"

export PYTHONPATH=${PYTHONPATH}:~/src/pysal:/usr/share/qgis/python
export PYTHONSTARTUP=~/.pythonrc

export ANDROID_HOME=$HOME/applications/android-studio/sdk
# export ANDROID_SDK=/home/peter/SDKs/android-sdk-linux_x86
# export PATH=$PATH:$ANDROID_SDK/platform-tools

#export PATH=$PATH:~/src/fast-export/bin

# export GIT_EXTERNAL_DIFF=/home/peter/bin/extDiff
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extP4diff
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extKdiff3
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extDiffMerge
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extVimdiff

# export PATH=$PATH:/usr/local/go/bin

# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOROOT/bin

export GOPATH=$HOME/gocode
# export PATH=$PATH:$GOPATH/bin

# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/development_python
# source /usr/bin/virtualenvwrapper.sh

# export PATH=$PATH:$HOME/.cabal/bin

path=(
  $ANDROID_HOME/platform-tools
  /usr/local/go/bin
  $GOPATH/bin
  ~/.cabal/bin
  $path
)
