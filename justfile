

# a wayland desktop with Hyprland
wayland-deploy:
  #!/usr/bin/env bash
  {{bash_cfg}}

  {{ensure}} kitty hyprland xdg-desktop-portal-hyprland-git dunst firefox pipewire wireplumber\
  qt6-wayland qt5-wayland cliphist grim slurp speech-dispatcher fuzzel pavucontrol-qt\
  fcitx5 fcitx5-qt fcitx5-configtool 

  {{aur_ensure}} eww-tray-wayland-git  hyprpicker-git  watershot\
  noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-daddytime-mono-nerd\
  ttf-cascadia-code-nerd  ttf-cascadia-code-nerd
