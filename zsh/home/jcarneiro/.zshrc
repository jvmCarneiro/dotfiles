#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If .shell_task script is present, source it
# shellcheck source=.shell_task
[[ -f ~/.shell_task ]] && . ~/.shell_task

# Subject prompt to expansion
setopt PROMPT_SUBST

# Aliases
## Launches pager defined above
alias less='${PAGER}'
alias zless='${PAGER}'
alias cat='vimcat'
## Adds colors to ls
alias ls='ls --color=auto'
## Creates a tag file in the current folder
alias ctagsvim='ctags -R . --extras=+q --fields=+i -n'
## Fix Screen issues with bigger screens
alias fixscreen='xrandr -s 1 && xrandr -s 0'
## Hibernation call
alias hibernate='sudo systemctl hibernate'
## Hybrid suspend
alias hybrid='sudo systemctl hybrid-sleep'
## Normal suspend
alias suspend='sudo systemctl suspend'
## Neomutt ease of use
alias mutt='neomutt'
## Terminal emacs
alias emacst='emacsclient -t'
## Visual client emacs
alias emacsc='emacsclient -c'

# Oh-my-zsh installation path
ZSH=/usr/share/oh-my-zsh/
# Zsh theme
ZSH_THEME="robbyrussel"
# Insensitive hyphen completion
HYPHEN_INSENSITIVE="true"
# Red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Set prompt
PS1='$ '
## Show number of inbox items in terminal prompt
export PS1='[$(task +in +PENDING count)]'$PS1