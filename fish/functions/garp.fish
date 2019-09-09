function garp --description 'Appending changes to the latest commit without changing the commit message and pushing these changes up to the current branch'
    git add --all; git commit --amend --no-edit; git push origin (parse_current_git_branch) -f; git open;
end
