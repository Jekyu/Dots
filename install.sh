# Instalador SH de mi configuración

#Instalar aplicaciones

sudo apt update && sudo apt install -y polybar alacritty btop feh dmenu rofi playerctl obsidian mate-screenshot

#Instalar ZED
curl -f https://zed.dev/install.sh | sh

#


echo "Aplicaciones instaladas completamente"

# ----- ENLACES SIMBOLICOS

#Enlace i3
ln -sf ~/Dots/i3 ~/.config/i3

#Enlace polybar
ln -sf ~/Dots/polybar ~/.config/polybar

#Enlace Zed
ln -sf ~/Dots/zed ~/.config/zed

#Enlace rofi
ln -sf ~/Dots/rofi ~/.config/rofi


echo "Enlaces simbolicos creados"

echo "Dotfiles instalados completamente"
