#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# https://apple.stackexchange.com/questions/55875/git-auto-complete-for-branches-at-the-command-line
# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi
export PATH="/home/empty/.local/bin:$PATH"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
# Allow no legacy for conda to works
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
