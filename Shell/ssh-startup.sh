    SSH_ENV="$HOME/.ssh/environment"

    # start the ssh-agent
    function start_agent {
        echo "Initializing new SSH agent..."
        # spawn ssh-agent
        ssh-agent | sed 's/^echo/#echo/' > "$SSH_ENV"
        echo succeeded
        chmod 600 "$SSH_ENV"
        . "$SSH_ENV" > /dev/null
        ssh-add
    }
