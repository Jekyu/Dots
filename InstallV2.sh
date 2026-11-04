# Archivo ejecutable paso a paso y explicativo

# ---------------- Aplicaciones -----------

sudo apt install sway waybar wezterm rofi flameshot qtwayland5 xdg-desktop-portal xdg-desktop-portal-gtk

# ---------------- Curls --------------
curl de nvim

# -------------- Enlaces ---------------
ln -sf ~/Dots/fonts/ ~/.local/share/fonts
fc-cache -fv

ln -sf ~/Dots/foot/ ~/.config/foot

# Sway
ln -sf ~/Dots/sway/ ~/.config/sway

# Wezterm
ln -sf ~/Dots/wezterm/ ~/.config/wezterm

# Waybar
ln -sf ~/Dots/waybar/ ~/.config/waybar

# Wofi
ln -sf ~/Dots/rofi ~/.config/rofi

# nvim
ln -sf ~/Dots/nvim/ ~/.config/nvim

# ------------- Fuentes -----------------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
