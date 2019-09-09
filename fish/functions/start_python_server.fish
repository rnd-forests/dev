function start_python_server --description 'Start a simple local Python server'
    switch (count $argv)
        case 1
            python -m http.server "$argv[1]"
        case '*'
            echo 'Invalid arguments provided. Please provide a single port argument.'
            return
    end
end
