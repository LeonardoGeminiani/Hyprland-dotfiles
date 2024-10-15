#!/usr/bin/env bash
rofi_command="rofi -theme $HOME/.config/rofi/config/tasks.rasi"

chosen="$(echo -e "$(~/.config/tasks_waybar/GetCurrentFileList.py)" | $rofi_command -p 'Change Current File' -dmenu -selected-row 0)"

$(~/.config/tasks_waybar/SetCurrentFile.py "$chosen")