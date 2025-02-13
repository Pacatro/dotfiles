if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Use starship prompt
starship init fish | source

# Aliases
alias e="exit"
alias update="sudo dnf upgrade --refresh && sudo dnf system-upgrade download --releasever=41"
alias vs="code"
alias cls="clear"
alias n="nvim"

# # Greeting
# function fish_greeting
#     fastfetch
# end
