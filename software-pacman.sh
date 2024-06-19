#!/bin/bash
# version 2024.05.08-2

cat <<"EOF"
  _______   ____  _  ______
 / ___/ /  / __ \/ |/ / __/
/ /__/ /__/ /_/ /    / _/
\___/____/\____/_/|_/___/

EOF
echo
echo "INSTALLING SOFTWARE"
echo


PKGS=(

    # UTILITIES --------------------------------------------------

    'git'                   # Git
    'curl'                  # Curl
    'btop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'tlp'                   # Advanced laptop power management
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'gparted'               # Disk utility
    'neofetch'              # System info
    'ttf-agave-nerd'        # Nerd fonts

    # MEDIA ---------------------------------------------------------------

    'lollypop'              # Music player
    'obs-studio'            # Record your screen

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gimp'                  # GNU Image Manipulation Program
    'pinta'                 # Simpler image editor
    'inkscape'              # Vector image creation app
    'kvantum'               # Theme

    # PRODUCTIVITY --------------------------------------------------------

    'libreoffice-fresh'     # Libre office with extra features
    'thunderbird'           # Mail client
    'korganizer'            # Calendar
    'ktimer'                # Timer
    #pomatez kalo yang biasanya mah
    'uget'                  # Download Manager
    'ktorrent'              # KDE BitTorrent client
    'musescore'             # Music Tablature

    #transmission kalo yang biasanya mah

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
