
ensure := "sudo pacman -S --needed"
aur_ensure := "paru -S --needed"
build := "$HOME/build"
bash_cfg := "set -euxo pipefail "
dotgit := "git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

# a wayland desktop with Hyprland
deploy:
  #!/usr/bin/env bash
  {{bash_cfg}}

  {{ensure}} hyprland kitty hyprland xdg-desktop-portal-hyprland dunst firefox pipewire wireplumber \
  qt6-wayland qt5-wayland cliphist grim slurp speech-dispatcher fuzzel pavucontrol-qt \
  fcitx5 fcitx5-qt fcitx5-configtool

  {{aur_ensure}} eww-tray-wayland-git  hyprpicker-git  watershot \
  noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-daddytime-mono-nerd \
  ttf-cascadia-code-nerd  ttf-cascadia-code-nerd
