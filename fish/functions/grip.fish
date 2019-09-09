function grip --description 'Storing changes into a temporary commit and making an interactive rebase'
    set -l count 1

    if string match -qr '^[0-9]+$' $argv[1]
        set count $argv[1]
    end

    git add --all; git commit -m "temporary message"; git rebase -i HEAD~"$count"; git push origin (parse_current_git_branch) -f; git open;
end
