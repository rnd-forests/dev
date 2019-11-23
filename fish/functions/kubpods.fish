function kubpods --description 'Search for Kubernetes pods'
    if test -z $argv[1]
        echo 'Please provide searching pattern.'
        return 1
    end

    set search $argv[1]

    kubectl get pods -A --server-print=true --show-labels=false --show-kind=true --watch=true | grep "$search"
end
