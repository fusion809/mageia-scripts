function cdsh {
    cd $HOME/Shell
}

function cdman {
    cd $HOME/Documents/Manpages
}

function cdg {
    cd $HOME/GitHub
}

function cdgm {
    cd $HOME/GitHub/mine
}

function cdsc {
    cdgm "scripts/$1"
}

function cdweb {
    cdgm "websites/$1"
}

function cdfgi {
    cdweb "fusion809.github.io/$1"
}
