function kublog --description='Get logs from Kubernetes resource'
    if test -z $argv[1]
        echo 'Please provide the resource name.'
        return 1
    end

    set resource $argv[1]

    kubectl logs --follow --all-containers --timestamps "$resource"
end
