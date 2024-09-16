
alias francinette=/Users/dolifero/francinette/tester.sh

alias paco=/Users/dolifero/francinette/tester.sh

# Docker
alias di="bash /Users/dolifero/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -t valgrind - < /Users/dolifero/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "/Users/dolifero/.docker_valgrind_setup/root":/root valgrind bash'

# Git
alias update='sudo apt update && sudo apt upgrade -y'
alias gs='git status'
alias ga='git add'
alias gc='git commit'

# Load Homebrew config script
source $HOME/.brewconfig.zsh

# PROMPT
git_branch() {
    local branch
    branch=$(git branch 2>/dev/null | grep \* | sed 's/* //')
    if [ ! -z "$branch" ]; then
        echo "[$branch]"
    fi
}

COLOR_DEF=$'%f'
COLOR_SHELL=$'%{%F{white}%}'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%{%f%}%{%F{blue}%}'
COLOR_GIT=$'%{%f%}%{%F{green}%}'
COLOR_ARR=$'%{%F{white}%}'
setopt PROMPT_SUBST

export PROMPT='%{%B%}${COLOR_SHELL}zsh: ${COLOR_DIR}/%1~${COLOR_GIT}$(git_branch)%{%f%} ${COLOR_ARR}>%{%f%}%{%b%} '

# Enable auto-completion
autoload -Uz compinit && compinit

zstyle ':completion:*' use-cache true # Cache completion to `${ZDOTDIR}/.zcompcache`.
zstyle ':completion:*' menu 'select' # Make the menu interactive with arrow keys.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Use LS_COLORS for completion colors.
#enable colors for ls, etc.
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Norminette
alias norm="norminette | grep "Error" || echo '${TC_GREEN}Norm check OK: No error${TC_NC}'"

# VS CODE
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
