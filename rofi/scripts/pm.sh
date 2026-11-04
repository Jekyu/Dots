#!/usr/bin/env bash

# Opciones que se mostrarán en el menú
lock=" Bloquear"
logout="󰈆 Salir"
shutdown="⏻ Apagar"
reboot="⟳ Reiniciar"
suspend="⏾ Suspender"

# Mostrar el menú con Rofi y guardar la opción seleccionada
selected_option=$(echo -e "$lock\n$logout\n$suspend\n$reboot\n$shutdown" | rofi -dmenu \
  -i \
  -p "Power Menu")

# Ejecutar la acción correspondiente
case "$selected_option" in
"$lock")
  # Reemplaza 'betterlockscreen' con el comando que uses para bloquear
  betterlockscreen -l
  ;;
"$logout")
  # El comando exacto depende de tu entorno de escritorio
  # (i3: i3-msg exit, bspwm: bspc quit, qtile: qtile cmd-obj -o cmd -f shutdown)
  sway-msg exit
  ;;
"$shutdown")
  systemctl poweroff
  ;;
"$reboot")
  systemctl reboot
  ;;
"$suspend")
  systemctl suspend
  ;;
*)
  echo "No se seleccionó ninguna opción válida"
  ;;
esac
