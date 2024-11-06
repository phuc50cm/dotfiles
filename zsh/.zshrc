# Created by newuser for 5.9
autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt fade magenta 

eval "$(starship init zsh)"

# Cowsay
fortune | cowsay -f tux | lolcat

# Alias
alias ls='eza'

# bun completions
[ -s "/home/phuc/.bun/_bun" ] && source "/home/phuc/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
