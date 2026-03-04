# Instalador SH de mi configuración

#Instalar aplicaciones

sudo apt update && sudo apt install -y polybar kitty ranger htop feh dmenu rofi pulseaudio flameshot git

sudo apt install pcmanfm

#Instalar ZED
curl -f https://zed.dev/install.sh | sh

echo "Aplicaciones instaladas completamente"

# ----- ENLACES SIMBOLICOS

#Enlace i3
ln -sf ~/Dots/i3 ~/.config/i3

#Enlace wezterm
ln -sf ~/Dots/wezterm ~/.config/wezterm

#Enlace polybar
ln -sf ~/Dots/polybar ~/.config/polybar

#Enlace rofi
ln -sf ~/Dots/rofi ~/.config/rofi

ln -sf ~/Dots/nvim/ ~/.config/nvim

#Establece qpdfview como visor para pdf
xdg-mime default qpdfview.desktop application/pdf

echo "Enlaces simbolicos creados"

echo "Dotfiles instalados completamente"
