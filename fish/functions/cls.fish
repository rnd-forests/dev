function cls --description 'Changing to a specified directory and listing all files inside it'
    if test -z $argv[1]
        echo 'Please provide directory name.'
        return 1
    end

    cd "$argv[1]"; ls;
end
