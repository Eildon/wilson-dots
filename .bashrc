bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

RED="\[$(tput setaf 0)\]"
GREEN="\[$(tput setaf 10)\]"
YELLOW="\[$(tput setaf 11)\]"
BLUE="\[$(tput setaf 12)\]"
MAGENTA="\[$(tput setaf 13)\]"
CYAN="\[$(tput setaf 14)\]"
WHITE="\[$(tput setaf 15)\]"
RESET="\[$(tput sgr0)\]"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="${GREEN}\u@\h${BLUE}\$(parse_git_branch) ${MAGENTA}\W ${CYAN}$ ${RESET}"

[[ $- != *i* ]] && return

export EDITOR=vim
export PAGER=more

alias ls='ls --color=auto'
alias r='ranger'
alias i3conf='vim ~/.i3/config'
alias i3blocksrc='vim ~/.i3/i3blocks.conf'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias fetch='neofetch'
alias netmon='sudo watch -n .1 "sudo netstat -tulpna"'
alias top='htop'
alias ipmon='watch -n .1 "ip -br a"'
alias mnt='udiskie-mount'
alias umnt='udiskie-umount'

alias v='vim'
alias vi='vim'
alias svi='sudo vim'
alias vit='vim -p'

alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias restart='sudo systemctl restart'
alias suspend='systemctl suspend'
alias update='sudo apt update && sudo apt upgrade'
alias install='sudo apt install'
alias sources='sudo vim /etc/apt/sources.list'
alias ctc='~/.i3/scripts/capstoctrl.sh'
alias ida='~/idafree-7.0/ida64'
alias c='nmtui'
alias desk='~/.screenlayout/desk.sh && xrdb ~/.Xresources_desk'
