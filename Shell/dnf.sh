function sdiy {
    sudo dnf install -y "$@"
}

function sdry {
    sudo dnf remove -y "$@"
}

function sds {
    sudo dnf search "$@"
}

function update {
    sudo dnf update -y
    if `which flatpak > /dev/null 2>&1`; then
         flatpak update
    fi
}
