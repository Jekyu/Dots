# Instalador SH de mi configuración

#Instalar aplicaciones
#
# alacritty -> Terminal
# dmenu -> Menu comandos
# rofi -> Menu Apps
# playerctl -> Control de la reproducción
# feh -> Wallpaper
# polybar -> Barra de estado
# btop
#
# sudo apt install

# ----- ENLACES SIMBOLICOS

#Enlace i3
ln -sf ~/Dots/i3 ~/.config/i3
#Enlace polybar
ln -sf ~/Dots/polybar ~/.config/polybar

echo "Dotfiles instalados completamente"
