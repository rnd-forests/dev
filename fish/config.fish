set -g -x fish_greeting 'Hi, Fly!'

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

alias pbpaste='xsel --clipboard --output'
alias pbcopy='xsel --clipboard --input && notify_contents_copied'

alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'

alias whatip='curl http://ipecho.net/plain; echo'

alias chx='chmod 755'
alias chr='chmod 644'

alias rmf='rm -rf'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias pls='ls -l --color -h --group-directories-first -s -A'

# Install Python pygments first --> sudo apt install python-pygments
alias pcat='pygmentize -f terminal256 -O style=native -g'

alias sha1='openssl sha1'
alias ports='netstat -tulanp'

alias ipt='sudo /sbin/iptables'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown -h now'

alias chrome='/opt/google/chrome/chrome'

alias gop='git open'
alias gc='git commit'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gaa='git add --all'
alias gfa='git fetch --all'
alias grss='git reset --soft HEAD~'
alias gundo='git reset HEAD~ && git clean -df'
alias nah='git reset --hard && git clean -df'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset - %s%n%C(yellow)%d%Creset %Cgreen(%cr) %Cblue(%an)%Creset%n'"
