function notify_contents_copied --description 'Send a simple notification message to user when contents was copied to the clipboard'
    notify-send 'Contents have been copied to the clipboard.' --urgency='normal'
end
