# Theme
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support no
set -g theme_display_vagrant yes
set -g theme_display_docker_machine yes
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_virtualenv yes
set -g theme_display_ruby yes
set -g theme_display_nvm yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi yes
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path yes
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

# Golang
set -gx PATH $PATH /usr/local/go/bin
set -gx PATH $PATH $HOME/.go/bin
set -gx GOPATH $HOME/.go
set -gx GO111MODULE on

# Rbenv
set -gx PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)
set -gx PATH $HOME/.rbenv/plugins/ruby-build/bin $PATH

# fuck
thefuck --alias | source

# fnm
set -gx PATH $HOME/.fnm $PATH
fnm env --multi | source

# Composer
set -gx PATH $HOME/.config/composer/vendor/bin $PATH

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
