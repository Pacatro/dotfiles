source /usr/share/cachyos-fish-config/cachyos-config.fish
alias n="nvim"
alias e="exit"
alias cd="z"
alias cls="clear"
alias vs="code"

zoxide init fish | source
starship init fish | source
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
set -gx PNPM_HOME "/home/pacatro/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

# opencode
fish_add_path /home/pacoalgar/.opencode/bin
