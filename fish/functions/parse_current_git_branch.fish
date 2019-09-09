function parse_current_git_branch --description 'Parse and get the name of the current Git branch'
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return 0
    end

    set -l branch (git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')

    echo "$branch"
end
