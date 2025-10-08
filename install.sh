# Instalador SH de mi configuración

#Instalar aplicaciones

sudo apt update && sudo apt install -y polybar kitty ranger htop feh dmenu rofi playerctl obsidian flameshot

#Instalar ZED
curl -f https://zed.dev/install.sh | sh

echo "Aplicaciones instaladas completamente"

# ----- ENLACES SIMBOLICOS

#Enlace i3
ln -sf ~/Dots/i3 ~/.config/i3

#Enlace Kitty
ln -sf ~/Dots/kitty ~/.config/kitty

#Enlace polybar
ln -sf ~/Dots/polybar ~/.config/polybar

#Enlace rofi
ln -sf ~/Dots/rofi ~/.config/rofi

#Enlace Zed
ln -sf ~/Dots/zed ~/.config/zed


echo "Enlaces simbolicos creados"

echo "Dotfiles instalados completamente"
