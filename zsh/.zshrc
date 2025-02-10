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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/phuc/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/phuc/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/phuc/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/phuc/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH:/home/phuc/program_lang_learn/Python/BootDotDev/worldbanc/private/bin"

# Golang
export PATH=$PATH:$HOME/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Java 
export JAVA_HOME=$HOME/jdk/jdk-23.0.2
export PATH=$JAVA_HOME/bin:$PATH
