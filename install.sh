# Instalador SH de mi configuración

#Instalar aplicaciones

sudo apt update && sudo apt install -y polybar alacritty btop feh dmenu rofi playerctl obsidian mate-screenshot

echo "Aplicaciones instaladas completamente"

# ----- ENLACES SIMBOLICOS

#Enlace i3
ln -sf ~/Dots/i3 ~/.config/i3
#Enlace polybar
ln -sf ~/Dots/polybar ~/.config/polybar

echo "Enlaces simbolicos creados"

echo "Dotfiles instalados completamente"
