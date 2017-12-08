function cdsh {
    cd $HOME/Shell/$1
}

function cdman {
    cd $HOME/Documents/Manpages
}

function cdg {
    cd $HOME/GitHub/$1
}

function cdgm {
    cd $HOME/GitHub/mine/$1
}

function cded {
    cdgm "editors/$1"
}

function cdvm {
    cded "vim/$1"
}

function cdsc {
    cdgm "scripts/$1"
}

function cdms {
    cd "$HOME/GitHub/mine/scripts/mageia-scripts/$1"
}

function cdweb {
    cdgm "websites/$1"
}

function cdfgi {
    cdweb "fusion809.github.io/$1"
}

function cdvi {
    cd "$HOME/VirtualBox VMs/ISOs/$1"
}

function cdp {
    cd "$HOME/Programs/$1"
}
