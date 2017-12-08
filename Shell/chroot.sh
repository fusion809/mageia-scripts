function groot {
    if ! [[ -f /gentoo/proc/config.gz ]]; then
        sudo mount -t proc /proc /gentoo/proc
        sudo mount --rbind /dev /gentoo/dev
        sudo mount --make-rslave /gentoo/dev
        sudo mount --rbind /sys /gentoo/sys
        sudo mount --make-rslave /gentoo/sys
        sudo rm /gentoo/etc/resolv.conf
        sudo cp /etc/resolv.conf /gentoo/etc
    fi

    sudo chroot /gentoo /usr/local/bin/su-fusion809
}

function vroot {
    if ! [[ -f /void/proc/config.gz ]]; then
        sudo mount -t proc /proc /void/proc
        sudo mount --rbind /dev /void/dev
        sudo mount --make-rslave /void/dev
        sudo mount --rbind /sys /void/sys
        sudo mount --make-rslave /void/sys
        sudo rm /void/etc/resolv.conf
        sudo cp /etc/resolv.conf /void/etc
    fi

    sudo chroot /void /usr/local/bin/su-fusion809
}

# Whatever my "arch" distro install is
function aroot {
    if ! [[ -f /arch/proc/config.gz ]]; then
        sudo mount -t proc /proc /arch/proc
        sudo mount --rbind /dev /arch/dev
        sudo mount --make-rslave /arch/dev
        sudo mount --rbind /sys /arch/sys
        sudo mount --make-rslave /arch/sys
        sudo rm /arch/etc/resolv.conf
        sudo cp /etc/resolv.conf /arch/etc
    fi

    if [[ -f /arch/usr/local/bin/su-fusion809 ]]; then
         sudo chroot /arch /usr/local/bin/su-fusion809
    else
         sudo chroot /arch /bin/bash
    fi
}
