#!/bin/sh

echo -n "Install additional software? [y/n] "
read install

echo -n "Move dotfiles to which user? "
read user

if [[ $install == y ]]; then
    pkg_add feh conky i3lock nnn scrot rofi wireshark firefox gimp vlc transmission-gtk ImageMagick git vim cmus slim slim-themes
fi

echo "[*] Copying dotfiles..."
cp .fvwmrc /home/$user/.fvwmrc
cp .conkyrc /home/$user/.conkyrc
cp .vimrc /home/$user/.vimrc
cp .Xdefaults /home/$user/.Xdefaults
mv .config /home/$user/

echo "conky &" > /home/$user/.xinitrc
echo "exec fvwm" >> /home/$user/.xinitrc

chown -R $user /home/$user

cp -R ./openbsd-dark /usr/local/share/slim/themes/
cat <<EOT >> /etc/rc.local
if [ -x /usr/local/bin/slim ]; then
    echo -n ' slim'; ( sleep 5; /usr/local/bin/slim -nodaemon ) &
fi
EOT
echo "[*] Change the variable current_theme in /etc/slim.conf to openbsd-dark"

echo "[*] Done."
