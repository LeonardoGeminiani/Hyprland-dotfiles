#!/bin/sh

swayidle -w \
timeout 360 'swaylock -f --screenshots --clock --indicator --indicator-radius 100 --indicator-thickness 7 --effect-blur 7x5 --effect-vignette 0.5:0.5 --ring-color 9400ff --key-hl-color 880033 --line-color 00000000 --inside-color 00000088 --separator-color 00000000 --grace 2 --fade-in 0.2' \
timeout 420 'hyprctl dispatch dpms off' \
resume 'hyprctl dispatch dpms on' \
timeout 1800 'systemctl suspend' \
timeout 1800 'hyprctl dispatch dpms on' \
before-sleep 'swaylock -f --screenshots --clock --indicator --indicator-radius 100 --indicator-thickness 7 --effect-blur 7x5 --effect-vignette 0.5:0.5 --ring-color 9400ff --key-hl-color 880033 --line-color 00000000 --inside-color 00000088 --separator-color 00000000 --grace 2 --fade-in 0.2'

# test: 
# swayidle -w \
# timeout 20 'swaylock -f --screenshots --clock --indicator --indicator-radius 100 --indicator-thickness 7 --effect-blur 7x5 --effect-vignette 0.5:0.5 --ring-color 9400ff --key-hl-color 880033 --line-color 00000000 --inside-color 00000088 --separator-color 00000000 --grace 2 --fade-in 0.2' \
# timeout 23 'hyprctl dispatch dpms off' \
# resume 'hyprctl dispatch dpms on' \
# timeout 30 'systemctl suspend' \
# timeout 30 'hyprctl dispatch dpms on' \
# before-sleep 'swaylock -f --screenshots --clock --indicator --indicator-radius 100 --indicator-thickness 7 --effect-blur 7x5 --effect-vignette 0.5:0.5 --ring-color 9400ff --key-hl-color 880033 --line-color 00000000 --inside-color 00000088 --separator-color 00000000 --grace 2 --fade-in 0.2'

# resume: run when the activity reappears
# after-resume: after systemctl suspend, in the resume
# hyprctl dispatch dpms off: screen off