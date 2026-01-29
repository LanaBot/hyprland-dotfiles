# hyprland-dotfiles

my arch hyprland dotfiles so I am not stranded the next time Nvidia :  ) breaks my config 

## packages to install

`sudo pacman -S hyprpaper hypridle hyprlock hyprpicker hyprshot imv vlc krita nautilus ttf-jetbrains-mono-nerd telegram-desktop btop bluetui impala wiremix git`

### yay install

1. `sudo pacman -Syu --needed base-devel git`

2. `git clone https://aur.archlinux.org/yay.git`

3. `cd yay`

4. `makepkg -si`

5. `yay -S code` (or code-oss)

### GTK theming

1. `gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'`

2. `gsettings set org.gnome.desktop.interface document-font-name 'JetBrainsMono Nerd Font 12'`

3. `gsettings set org.gnome.desktop.interface font-name 'JetBrainsMono Nerd Font 11'`

4. `gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMono Nerd Font 11'`
