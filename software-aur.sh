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


cd "${HOME}"

# FOR MULLVAD KEYS
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org

PKGS=(

    # PRODUCTIVITY -----------------------------------------------------------

    'brave-bin'                 # Web browser that just works
    'mullvad-browser-bin'       # Privacy-focused web browser
    'vscodium-bin'              # Kickass text editor

)


cd ${HOME}

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
