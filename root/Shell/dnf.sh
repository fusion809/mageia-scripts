function diy {
    dnf install -y "$@"
}

function duy {
    dnf update -y "$@"
}

function duyr {
    duy --refresh
}

function update {
    duyr
    su - fusion809 -c "flatpak update ; nix-channel --update ; nix-env --upgrade"
}
