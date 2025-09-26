if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
    and status is-interactive
    set -Ua SSH_KEYS_TO_AUTOLOAD ~/.ssh/github
    keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
end

# Locales
set LANGUAGE en_US.UTF-8
set -gx LANG $LANGUAGE
set -gx LC_ALL $LANGUAGE

# Ghostty term info
# set -x TERM xterm-256color

# Use starship prompt
starship init fish | source

# Zoxide integration
zoxide init fish | source

# # Go
# set -x GOROOT /usr/local/go
# set -x GOPATH $HOME/go
# set -x PATH $PATH $GOROOT/bin $GOPATH/bin

# Aliases
alias e="exit"
alias update="sudo dnf upgrade --refresh && sudo dnf system-upgrade download"
alias update_apt="sudo apt update && sudo apt upgrade"
alias vs="code"
alias cls="clear"
alias n="nvim"
alias cd="z"

# # Greeting
# function fish_greeting
#     fastfetch
# end
