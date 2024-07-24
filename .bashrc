# Initialize Oh My Posh
eval "$(oh-my-posh init bash)"
# eza ls aliases
alias ls="eza --icons=always -1 --group-directories-first --git-ignore --sort=name"
# Initialize Zoxide
eval "$(zoxide init bash)"
alias cd="z"
# Add Neovim to PATH
export PATH="$PATH:/c/Program Files/Neovim/bin"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
alias fd="fzf --preview 'bat --style=numbers --color=always {}' --bind 'ctrl-o:execute(nvim +Telescope find_files cwd=$(dirname {}) {})+abort'"
