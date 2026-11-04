## Descripción
En este proyecto se demuestra como se puede gestionar personalización de entornos mediante configuraciones a varios Dotfiles apoyándonos de Scripts de automatización (`.sh`) y del control de versiones mediante Git.
Para este caso se uso el entorno de gestor de ventanas **Sway** el cual se caracteriza por reducir el uso del mouse amplificando las funcionalidades del teclado mediante combinaciones de teclas que agilizan la interacción.
## Objetivos
- Crear un entorno personalizado
- Documentar las configuraciones establecidas
- Facilitar una rápida configuración al momento de usar un nuevo dispositivo
## Aplicaciones
Esta fueron las aplicaciones que se instalaron junto al entorno.

| Programa        | Función                                                                      |
| --------------- | ---------------------------------------------------------------------------- |
| Sway              | Windows Manger (WM)                                                                  |
| dmenu           | Menú con el que se puede acceder fácilmente tanto a comandos como programas. |
| Rofi            | Menú visual con el cual acceder sencillamente a los programas                |
| Waybar         | Barra de estado personalizable                                               |
| Btop            | Gestor de tareas                                                             |
| Feh             | Visor de imágenes que nos permite establecer un fondo de pantallas           |
| Playerctl       | Control de reproducción de medios para las teclas especiales                 |
| Foot| Terminal                                                                     |
| Obsidian        | Gestor de notas markdown                                                     |
| flameshot | Captura de pantalla de mate                                                  |

## Combinación teclas
Se configuró como `$mod` a la tecla de Windows
### SWAY

| Combinación           | Proceso ejecutado     | Acción realizada             |
| --------------------- | --------------------- | ---------------------------- |
| `$mod+Shift+c`        | `reload`              | Recargar configuración de WM |
| `$mod+Shift+r`        | `restart`             | Reiniciar WM                |
| `$mod+Shift+e`        | `exit`                | Salir del WM                  |

### Gestión ventanas
Selección de teclas con las cuales navegaremos a través de las ventanas, sus funciones van desde mover ventanas hasta cambiar su tamaño.

| Combinación        | Proceso ejecutado     | Acción realizada                             |
| ------------------ | --------------------- | -------------------------------------------- |
| `$mod+Left`        | `focus left`          | Cambiar foco a la ventana izquierda          |
| `$mod+Down`        | `focus down`          | Cambiar foco a la ventana inferior           |
| `$mod+Up`          | `focus up`            | Cambiar foco a la ventana superior           |
| `$mod+Right`       | `focus right`         | Cambiar foco a la ventana derecha            |
| `$mod+Shift+Left`  | `move left`           | Mover ventana a la izquierda                 |
| `$mod+Shift+Down`  | `move down`           | Mover ventana hacia abajo                    |
| `$mod+Shift+Up`    | `move up`             | Mover ventana hacia arriba                   |
| `$mod+Shift+Right` | `move right`          | Mover ventana a la derecha                   |
| `$mod+q`           | `kill`                | Cerrar ventana actual                        |
| `$mod+b`           | `split h`             | Dividir ventana horizontalmente              |
| `$mod+v`           | `split v`             | Dividir ventana verticalmente                |
| `$mod+f`           | `fullscreen toggle`   | Alternar pantalla completa                   |
| `$mod+s`           | `layout stacked`      | Cambiar a disposición apilada                |
| `$mod+w`           | `layout tabbed`       | Cambiar a disposición en pestañas            |
| `$mod+e`           | `layout toggle split` | Alternar entre divisiones                    |
| `$mod+Shift+z`     | `floating toggle`     | Alternar modo flotante                       |
| `$mod+z`           | `focus mode_toggle`   | Cambiar foco entre ventanas flotantes/tiling |
| `$mod+a`           | `focus parent`        | Enfocar contenedor padre                     |
| `$mod+r`           | `mode "resize"`       | Entrar en modo de redimensionamiento         |

### Workspace

| Combinación      | Proceso ejecutado                  | Acción realizada                |
| ---------------- | ---------------------------------- | ------------------------------- |
| `$mod+1-0`       | `workspace $workspace1-10`         | Cambiar al workspace 1-10       |
| `$mod+Shift+1-0` | `move container to workspace 1-10` | Mover ventana al workspace 1-10 |
### Teclas especiales

| Combinación             | Proceso ejecutado              | Acción realizada                    |
| ----------------------- | ------------------------------ | ----------------------------------- |
| `Ctrl+F6` | `xbacklight -dec 20`           | Disminuir brillo de pantalla en 20% |
| `Ctrl+F7`   | `xbacklight -inc 20`           | Aumentar brillo de pantalla en 20%  |
| `Ctrl+F8`         | `pactl set-sink-mute 0 toggle` | Silenciar/desilenciar audio         |
| `Ctrl+F9`  | `pactl set-sink-volume 0 -5%`  | Disminuir volumen en 5%             |
| `Ctrl+F10`  | `pactl set-sink-volume 0 +5%`  | Aumentar volumen en 5%              |
| `Ctrl+F4`                 | '--no-startup-id flameshot gui'  | Menu interactivo de flameshot |

### Atajos a aplicaciones
Se definieron unas selecciones de teclas para abrir rápidamente aplicaciones de constante uso.

| Combinación    | Proceso ejecutado            | Acción realizada                            |
| -------------- | ---------------------------- | ------------------------------------------- |
| `$mod+d`       | `rofi -modi drun -show drun` | Abrir menú de aplicaciones (Rofi)           |
| `$mod+Shift+d` | `dmenu_run`                  | Abrir menú de aplicaciones (Dmenu)          |
| `$mod+F1`      | `zen`                        | Ejecutar aplicación "zen" (no especificada) |
| `$mod+F2`      | `$Browser`                        | Ejecutar Navegador |
| `$mod+F3`      | `thunar`                     | Ejecutar gestor de archivos Thunar          |
| `$mod+F4`      | `obsidian`                   | Ejecutar aplicación Obsidian                |
| `$mod+F5`      | `btop`                       | Ejecutar monitor de sistema Btop            |
| `$mod+Return`  | `kitty`                  | Abrir terminal |
## Instalación
```bash
#Clonar la carpeta
 git clone git@github.com:Jekyu/Dots.git

#Ir hasta la carpeta
cd ~/Dots

# Ejecutar el instalador
sh install.sh
```
