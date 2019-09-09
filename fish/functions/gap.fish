function gap --description 'Adding all current files to staging area, specifying the commit message and pushing these changes up to the current branch'
    if test -z $argv[1]
        echo 'Please provide the commit message.'
        return 1
    end

    set -l message $argv[1]

    git add --all; git commit -S -m "$message"; git push origin (parse_current_git_branch); git open;
end
