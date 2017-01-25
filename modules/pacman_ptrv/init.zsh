#
# Defines Pacman aliases.
#
# Authors:
#   Benjamin Boudreau <dreurmail@gmail.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# Tips:
#   https://wiki.archlinux.org/index.php/Pacman_Tips
#

# Return if requirements are not found.
if (( ! $+commands[pacman] )); then
  return 1
fi

#
# Frontend
#

# Get the Pacman frontend.
zstyle -s ':prezto:module:pacman' frontend '_pacman_frontend'

if (( $+commands[$_pacman_frontend] )); then
  alias pacman="$_pacman_frontend"

  if [[ -s "${0:h}/${_pacman_frontend}.zsh" ]]; then
    source "${0:h}/${_pacman_frontend}.zsh"
  fi
fi

#
# Aliases
#

# Pacman.
alias pac='pacman'

# Installs packages from repositories.
# alias paci='sudo pacman --sync'
alias paci='sudo pacman -S'

# Installs packages from files.
# alias pacI='sudo pacman --upgrade'
alias pacI='sudo pacman -U'

# Removes packages and unneeded dependencies.
# alias pacx='sudo pacman --remove'
alias pacx='sudo pacman -R'

# Removes packages, their configuration, and unneeded dependencies.
# alias pacX='sudo pacman --remove --nosave --recursive'
alias pacX='sudo pacman -Rns'

# Displays information about a package from the repositories.
# alias pacq='pacman --sync --info'
alias pacq='pacman -S'

# Displays information about a package from the local database.
# alias pacQ='pacman --query --info'
alias pacQ='pacman -Qi'

# Searches for packages in the repositories.
# alias pacs='pacman --sync --search'
alias pacs='pacman -Ss'

# Searches for packages in the local database.
# alias pacS='pacman --query --search'
alias pacS='pacman -Qs'

# List package files.
alias pacls='pacman -Ql'

# Lists orphan packages.
# alias pacman-list-orphans='sudo pacman --query --deps --unrequired'
alias pacman-list-orphans='sudo pacman -Qdt'

# Removes orphan packages.
alias pacman-remove-orphans='sudo pacman --remove --recursive $(pacman --quiet --query --deps --unrequired)'

# Synchronizes the local package and Arch Build System databases against the
# repositories.
if (( $+commands[abs] )); then
  alias pacu='sudo pacman --sync --refresh && sudo abs'
else
  alias pacu='sudo pacman --sync --refresh'
fi

# Synchronizes the local package database against the repositories then
# upgrades outdated packages.
alias pacU='sudo pacman --sync --refresh --sysupgrade'

unset _pacman_frontend
