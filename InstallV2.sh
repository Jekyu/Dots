#!/bin/bash

#!/bin/bash
# Archivo ejecutable paso a paso y explicativo

# ---------------- Aplicaciones -----------
terminal= foot
dinst= pacman -S

sudo $dinst sway waybar $terminal rofi flameshot qtwayland5 xdg-desktop-portal xdg-desktop-portal-gtk

# -------------- Enlaces ---------------

# Sway
ln -sf ~/Dots/sway/ ~/.config/sway

# Terminal
ln -sf ~/Dots/$terminal/ ~/.config/$terminal

# Waybar
ln -sf ~/Dots/waybar/ ~/.config/waybar

# Rofi
ln -sf ~/Dots/rofi ~/.config/rofi

# nvim
ln -sf ~/Dots/nvim/ ~/.config/nvim

# Ranger
ln -sf ~/Dots/ranger/ ~/.config/ranger

#fonts
ln -sf ~/Dots/fonts/ ~/.local/share/fonts
fc-cache -fv
