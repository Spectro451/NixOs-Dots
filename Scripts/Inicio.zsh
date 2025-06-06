#!/usr/bin/env zsh

# 1. Ejecutar kitty (Fast)
 kitty --title Fast zsh -c "sleep 0.5; clear; fastfetch; exec zsh" &

# Esperar a que kitty esté lista
while ! hyprctl clients | grep -q "title: Fast"; do
  sleep 0.1
done

# 2. Ejecutar firefox
firefox --name Navegador &

# Esperar a que firefox esté lista
while ! hyprctl clients | grep -q "class: Navegador"; do
  sleep 0.1
done

# 3. chantale focus a fast
hyprctl dispatch focuswindow title:^Fast$
hyprctl dispatch split bottom
# 4. Ejecutar cava
kitty --title Cava zsh -c "clear && cava" &
