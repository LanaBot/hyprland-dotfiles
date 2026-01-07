#!/bin/bash

if pgrep -x wofi > /dev/null; then
    killall wofi
    exit 1
fi

display_names=("Hyprland" "Hyprpaper" "Hyprlock" "Hypridle" "Kitty" "Waybar conf" "Waybar style")
file_paths=(
    "~/.config/hypr/hyprland.conf"
    "~/.config/hypr/hyprpaper.conf"
    "~/.config/hypr/hyprlock.conf"
    "~/.config/hypr/hypridle.conf"
    "~/.config/kitty/kitty.conf"
    "~/.config/waybar/config.jsonc"
    "~/.config/waybar/style.css"
)

selection=$(printf '%s\n' "${display_names[@]}"  | wofi --dmenu --insensitive --conf ~/.config/wofi-dotfiles/config --style ~/.config/wofi-dotfiles/style.css)

for i in "${!display_names[@]}"; do
  if [[ "${display_names[i]}" == "$selection" ]]; then
    file_path="${file_paths[i]//~\//$HOME/}"
    exec kitty --title "Editing: ${display_names[i]}" sh -c "nano '$file_path'"
    break
  fi
done
