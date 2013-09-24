export EDITOR="emacsclient"
export ALTERNATE_EDITOR=""

export VST_PATH="/home/peter/vsts"
export SC_SOURCE_DIR="~/compiledir/SuperCollider3"

export PYTHONPATH=${PYTHONPATH}:~/src/pysal:/usr/share/qgis/python
export PYTHONSTARTUP=~/.pythonrc

export ANDROID_SDK=/home/peter/SDKs/android-sdk-linux_x86

# export GIT_EXTERNAL_DIFF=/home/peter/bin/extDiff
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extP4diff
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extKdiff3
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extDiffMerge
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extVimdiff

export RSENSE_HOME=~/opt/rsense-0.3

export GOROOT=/usr/local/go
export GOPATH=$HOME/gocode
export GOPATH=$GOPATH:$HOME/development_go/goeg


# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/development_python
# source /usr/bin/virtualenvwrapper.sh

export GMOCK_HOME=$HOME/src/gmock-1.6.0
export CPPUTEST_HOME=$HOME/src/cpputest
export CURL_HOME=$HOME/src/curl-7.31.0
export JSONCPP_HOME=$HOME/src/jsoncpp-src-0.5.0

path=(
    ~/bin
    $path
    /usr/local/go/bin
    $ANDROID_SDK/platform-tools
    ~/applications/processing
    $GOROOT/bin
    ~/gocode/bin
    ~/.nodejs/bin
    ~/.cabal/bin
    ~/.gem/ruby/2.0.0/bin
)
