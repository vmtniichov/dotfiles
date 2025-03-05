#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# https://apple.stackexchange.com/questions/55875/git-auto-complete-for-branches-at-the-command-line
# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi
export PATH="/home/empty/.local/bin:$PATH"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
# Allow no legacy for conda to works
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

eval "$(starship init bash)"
eval "$(zoxide init bash)"

# alias for lsd
#alias ls='lsd'
alias ll='ls -l'
alias ls='ls --color=auto'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias k='kubectl'
alias kn='kubectl -n'
alias h='helm'
alias hun='helm upgrade -n'

alias juup='jupyter lab --ip=0.0.0.0 --allow-root --NotebookApp.token="" --NotebookApp.password=""'

alias jsonpp="python -c 'import sys, json; print(json.dumps(json.load(sys.stdin), sort_keys=True, indent=2))'"
alias sf="spf"
alias lg="lazygit"
