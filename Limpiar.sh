#!/bin/bash
#Limpiar Arch
clear
opti=0
echo "Script para Limpiar Arch Linux"
echo "------------------------------"
echo "1 - Consultar tamaño paquetes"
echo "2 - Limpiar Arch"
echo "3 - Salir"
read -r opti
if [ $opti -eq 1 ]; then
  echo "PAQUETES"
  LC_ALL=C.UTF-8 pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | LC_ALL=C.UTF-8 sort -h
elif [ $opti -eq 2 ]; then
  echo "Limpiando Arch Linux..."
  # 1. Limpiar caché de pacman (mantener 2 versiones)
  echo "Limpiando cache de pacman..."
  sudo paccache -rk2
  sudo paccache -ruk0

  # 2. Eliminar paquetes huérfanos
  echo "Buscando paquetes huerfanos..."
  orphans=$(pacman -Qtdq)
  if [ -n "$orphans" ]; then
    sudo pacman -Rns $orphans
  else
    echo "No hay paquetes huerfanos"
  fi

  # 3. Limpiar logs antiguos
  echo "Limpiando logs del sistema..."
  sudo journalctl --vacuum-time=7d

  # 4. Limpiar caché del usuario
  echo "Limpiando cache del usuario..."
  rm -rf ~/.cache/

  echo "Limpieza completada"
else
  opti=3
fi
