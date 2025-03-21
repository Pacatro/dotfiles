if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Use starship prompt
starship init fish | source

# Go
set -x GOROOT /usr/local/go
set -x GOPATH $HOME/go
set -x PATH $PATH $GOROOT/bin $GOPATH/bin

# Aliases
alias e="exit"
alias update="sudo dnf upgrade --refresh && sudo dnf system-upgrade download --releasever=41"
alias update_apt="sudo apt update && sudo apt upgrade"
alias vs="code"
alias cls="clear"
alias n="nvim"

# # Greeting
# function fish_greeting
#     fastfetch
# end
