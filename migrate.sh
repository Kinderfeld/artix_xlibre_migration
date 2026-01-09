#!/usr/bin/env sh
#
# Copyright waiver for <https://github.com/Kinderfeld/artix_xlibre_migration>
#
# I dedicate any and all copyright interest in this software to the
# public domain. I make this dedication for the benefit of the public at
# large and to the detriment of my heirs and successors. I intend this
# dedication to be an overt act of relinquishment in perpetuity of all
# present and future rights to this software under copyright law.
#
# To the best of my knowledge and belief, my contributions are either
# originally authored by me or are derived from prior works which I have
# verified are also in the public domain and are not subject to claims
# of copyright by other parties.
#
# To the best of my knowledge and belief, no individual, business,
# organization, government, or other entity has any copyright interest
# in my contributions, and I affirm that I will not make contributions
# that are otherwise encumbered.

main()
{
    [ "$(id -u)" -ne 0 ] && {
        printf "[!] This script must be run as root.\n"
        exit 1
    }

    printf "[...] Updating package lists...\n"
    pacman -Syu

    printf "[...] Installing packages...\n"
    pacman -S \
        xlibre-xserver \
        xlibre-xserver-common \
        xlibre-xserver-devel \
        xlibre-xserver-xvfb \
        xlibre-input-libinput \
        xlibre-input-evdev \
        xlibre-input-vmmouse \
        xorg-xdpyinfo \
        xorg-xinit \
        xorg-xmodmap \
        xorg-xprop \
        xorg-xrandr \
        xorg-xset \
        xorg-xsetroot \
        xlibre-video-vesa \
        xlibre-video-amdgpu \
        xlibre-video-fbdev \
        xlibre-video-ati \
        xlibre-video-dummy \
        && printf "[*] Installation complete.\n" || printf "[*] Installation failed.\n"
}

main
