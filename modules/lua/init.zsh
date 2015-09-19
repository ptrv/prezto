#
# Enables luarocks.
#
# Authors:
#   Peter Vasil <peter.vasil@posteo.de>
#

if (( $+commands[luarocks] )); then
  path=("$HOME/.luarocks/bin" $path)
  eval "$(luarocks path)"
fi
