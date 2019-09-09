function copy_ssh_key --description 'Copy the public SSH key to the clipboard'
    cat ~/.ssh/id_rsa.pub | pbcopy
    notify-send 'Copied SSH key to the clipboard.' --urgency='normal'
end
