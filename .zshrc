# Path to your oh-my-zsh installation.
export ZSH=/home/vinhnguyen/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git composer)

# User configuration
export PATH="/home/vinhnguyen/.rbenv/plugins/ruby-build/bin:/home/vinhnguyen/.rbenv/shims:/home/vinhnguyen/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/vinhnguyen/.composer/vendor/bin"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias c='clear'
alias whatip='curl http://ipecho.net/plain; echo'
alias sha1='openssl sha1'

alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

alias chrome='/opt/google/chrome/chrome'

alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && ssh_message"
ssh_message() {
  notify-send 'Copied SSH key to clipboard.' --urgency='normal' -i /home/likewise-open/FRAMGIA/nguyen.ngoc.vinh/Icons/key.png
}

alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias hson='homestead up && homestead ssh'
alias hsoff='homestead halt && exit'
alias artisan='php artisan'
alias migrate='php artisan migrate'
alias tinker='php artisan tinker'
alias t='./vendor/bin/phpunit'

alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gundo='git reset HEAD~ && git clean -df'
alias gc='git commit'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gr='git rebase'
alias gri='git rebase -i'
alias grs='git reset'
alias gd='git diff'
alias ga='git add'
alias gp='git push'
alias gaa='git add --all'
alias grss='git reset --soft HEAD~'
alias gop='git open'
grip() {
  gaa; gc -m "a"; gri HEAD~"$1"; gp origin $(git_branch) -f; gop;
}
gap() {
  gaa; gc -m "$1"; gp origin $(git_branch); gop;
}
garp() {
  gaa; git commit --amend --no-edit; gp origin $(git_branch) -f; gop;
}
git_branch() {
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  echo "$branch"
}
