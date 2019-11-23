function kubexec --description 'Login to a given Kubernetes pod'
    if test -z $argv[1]
        echo 'Please provide the pod name.'
        return 1
    end

    set shell $argv[2]
    if test -z $argv[2]
        set shell 'sh'
    end

    set podname $argv[1]

    kubectl exec -it "$podname" "$shell"
end
