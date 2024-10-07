#!/usr/bin/env bash
rofi_command="rofi -theme $HOME/.config/rofi/config/tasks.rasi"

# Buttons
layout=`cat $HOME/.config/rofi/config/screenshot.rasi | grep BUTTON | cut -d'=' -f2 | tr -d '[:blank:],*/'`
if [[ "$layout" == "TRUE" ]]; then
	mark="✔"
	move="->"
else
	mark="✔ Mark Task as done"
	move="-> Move to next Task"
fi

# Variable passed to rofi
options="$mark\n$move"

chosen="$(echo -e "$options" | $rofi_command -p 'Tasks menu' -dmenu -selected-row 0)"
case $chosen in
    $mark)
    # run mark
        ;;
    $move)
    # run move
        ;;
esac

