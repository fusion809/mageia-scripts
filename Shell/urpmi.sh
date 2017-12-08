function sui {
    sudo urpmi "$@"
}

function urpmil {
    rpm -ql urpmi | grep /usr/share/man
}

function update {
    sudo urpmi.update -a && sudo urpmi --auto-select
}

function sus {
    sudo urpmq -Y "$@"
}
