function start_php_server --description 'Start a simple local PHP server'
    switch (count $argv)
        case 1
            php -S localhost:"$argv[1]"
        case '*'
            echo 'Invalid arguments provided. Please provide a single port argument.'
            return
    end
end
