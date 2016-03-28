parse_git_branch() {
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  echo "[$branch]"
}

# if [ "$color_prompt" = yes ]; then
#   PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\] ♩♪♫♪♬ ➜ '
# else
#   PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
# fi
