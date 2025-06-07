
# Mis Dotfiles para NixOs

Este repositorio contiene mis configuraciones personalizadas para NixOS, incluyendo archivos de configuración del sistema, scripts personales y wallpapers.

## Secciones

<details>
<summary><strong>Español</strong></summary>

- [Lista de objetivos](#lista-de-objetivos)
- [Objetivo](#objetivo)
- [Instalación](#instalación)



  
## Lista de objetivos

- [x] Configurar `configuration.nix` completamente
- [x] Personalizar mi sistema a gusto
- [x] Añadir vscode
- [x] Configurar waybar
- [x] Darle un layout de inicio a mi hyprland
- [ ] Declarar las extensiones que quiero para VsCode
- [x] Permitir cambiar de fondo desde waybar y automatico
- [x] Tener un PowerMenu en waybar
- [ ] Poder cambiar el tema en base al fondo
- [x] Crear un Script de instalacion
- [ ] Aprender a manejar el sistema por home-manager
- [ ] Modularizar mi sistema en base a flakes
- [ ] Agregar binds utiles en el sistema
- [ ] Aprender a usar nvim sin de comandos con ":"
- [ ] Bloqueo de pantalla automatico
- [ ] Suspension del equipo automatica
- [ ] Agregar y personalizar Spotify
- [ ] ...

## Objetivo

Mi objetivo principal es poder tener un sistema totalmente reproducible, por lo cual quiero aprender a hacer flakes siguiendo una metodologia de empezar por un `configuration.nix` simple, a un home-manager y por ultimo tener un sistema modular y organizado en flake
para el final de esto espero poder manejarme completamente en nix y poder usarlo como mi sistema para trabajar

## Instalación

```bash
# Clona el repositorio en tu HOME o donde prefieras
git clone https://github.com/tu-usuario/.NixOs-Dots.git ~/.NixOs-Dots

# Entra a la carpeta
cd ~/.NixOs-Dots

# Da permisos si no los tiene (opcional)
chmod +x install.sh

# Ejecuta el script
./install.sh
```
</details>
<details>
<summary><strong>English</strong></summary>

- [Checklist](#Checklist)
- [Main objective](#main-objective)
- [Installation](#installation)


## Checklist

- [x] Fully configure `configuration.nix`
- [x] Customize system to my liking
- [x] Add VSCode
- [x] Configure waybar
- [x] Set up an initial layout for Hyprland
- [ ] Declare the VSCode nsions I want
- [x] Allow wallpaper changes from waybar and automatically
- [x] Have a PowerMenu in waybar
- [ ] Change theme based on the wallpaper
- [x] Create an installation script
- [ ] Learn to manage the system with home-manager
- [ ] Modularize my system using flakes
- [ ] Add useful keybinds to the system
- [ ] Learn to use nvim without needing ":" commands
- [ ] Automatic screen lock
- [ ] Automatic system suspend
- [ ] Install Spotify and tune it
- [ ] ...

## Main objective

My main goal is to have a fully reproducible system.  
I want to learn how to use flakes by starting with a simple `configuration.nix`, then moving on to home-manager, and finally building a modular and well-organized flake-based setup.  
By the end of this process, I aim to be fully proficient with Nix and use it as my daily working system.

## Installation

```bash
# Clone the repository into your HOME or preferred location
git clone https://github.com/your-username/.NixOs-Dots.git ~/.NixOs-Dots

# Enter the folder
cd ~/.NixOs-Dots

# Make it executable if necessary (optional)
chmod +x install.sh

# Run the script
./install.sh
```
</details>
