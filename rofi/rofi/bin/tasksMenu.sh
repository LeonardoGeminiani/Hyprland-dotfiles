#!/usr/bin/env bash
rofi_command="rofi -theme $HOME/.config/rofi/config/tasks.rasi"

# Buttons
layout=`cat $HOME/.config/rofi/config/screenshot.rasi | grep BUTTON | cut -d'=' -f2 | tr -d '[:blank:],*/'`
if [[ "$layout" == "TRUE" ]]; then
	mark="✔"
	move="->"
    edit="✎"
    change="🗃️"
else
	mark="✔ Mark Task as done"
	move="-> Move to next Task"
    edit="✎ edit current file"
    change="🗃️ change current file"
fi

# Variable passed to rofi
options="$mark\n$move\n$edit\n$change"

chosen="$(echo -e "$options" | $rofi_command -p 'Tasks menu' -dmenu -selected-row 0)"
case $chosen in
    $mark)
    # run mark
        ~/.config/tasks_waybar/CeckTask.py
        ;;
    $move)
    # run move
        ~/.config/tasks_waybar/MoveToNextTask.py
        ;;
    $edit)
        ~/.config/tasks_waybar/EditCurrentFile.py
        ;;
    $change)
        $($HOME/.config/rofi/bin/tasksCurrentFileMenu.sh)
        ;;
esac

