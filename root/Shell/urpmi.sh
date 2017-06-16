function sui {
    sudo urpmi "$@"
}

function urpmil {
    rpm -ql urpmi | grep /usr/share/man
}

function update {
    urpmi.update -a && urpmi --auto-select
}
