function sdiy {
    sudo dnf install -y "$@"
}

function sdry {
    sudo dnf remove -y "$@"
}

function sds {
    sudo dnf search "$@"
}
