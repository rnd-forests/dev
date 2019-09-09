function gca --description 'Updating the commit message and pushing the change up to the current branch'
    git add --all; git commit --amend; git push origin (parse_current_git_branch) -f; git open;
end
