function sdiy {
    sudo dnf install -y "$@"
}

function sdry {
    sudo dnf remove -y "$@"
}

function sds {
    sudo dnf search "$@"
}

function sduy {
    sudo dnf update -y
}


function update {
    sduy
    # Flatpak
    if `which flatpak > /dev/null 2>&1`; then
         flatpak update
    fi
    # Nix
    nixup
}
