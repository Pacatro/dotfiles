# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pacoalgar/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(starship init zsh)"


. "$HOME/.local/share/../bin/env"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/pacatro/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
