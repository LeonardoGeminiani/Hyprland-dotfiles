monitor=,preferred,auto,1
# monitor=eDP-1,disable

exec-once = waybar 
exec-once = hyprpaper 
# exec-once = fcitx5

input {
    kb_layout = it,us

    follow_mouse = 1

    touchpad {
        natural_scroll = yes
    }
    kb_options = caps:escape
}

general {
    gaps_in = 8
    gaps_out = 10
    border_size = 1
    col.active_border = rgb(11111b)
    col.inactive_border = rgb(11111b)
    cursor_inactive_timeout = 1
    layout = master
}

decoration {
  rounding = 5
}

animations {
    enabled = yes
    bezier = myBezier, 0.16, 1, 0.3, 1

    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, myBezier, popin 80%
    animation = border, 1, 10, myBezier
    animation = fade, 1, 7, myBezier
    animation = workspaces, 1, 5, default
}

master {
    new_on_top = true
}

gestures {
    workspace_swipe = on
}

windowrule = float, Rofi
windowrule = noborder, Rofi
windowrule = float, title:^(sfml)$
windowrule = center, title:^(sfml)$

$mainMod = SUPER

# keybind for Master layout
bind = $mainMod, SPACE, layoutmsg, orientationnext
bind = $mainMod, comma, layoutmsg, addmaster
bind = $mainMod, period, layoutmsg, removemaster
bind = $mainMod, RETURN, layoutmsg, swapwithmaster

bind = $mainMod SHIFT, RETURN, exec, kitty
bind = $mainMod SHIFT, C, killactive
bind = $mainMod SHIFT, Q, exit,
bind = $mainMod, R, exec, sh $HOME/.config/rofi/bin/launcher
bind = $mainMod, P, exec, sh $HOME/.config/rofi/bin/powermenu
bind = $mainMod, V, togglefloating, 
bind = $mainMod, F, fullscreen
bind = $mainMod, W, exec, pkill -SIGUSR1 '^waybar$'

# volume control
bind = , xf86audioraisevolume, exec, amixer sset Master 1%+;
bind = , xf86audiolowervolume, exec, amixer sset Master 1%-;

# brightneww control
bind = , xf86monbrightnessup, exec, brightnessctl set 5%+
bind = , xf86monbrightnessdown, exec, brightnessctl set 5%-

# screenshot
bind = , print, exec, grim ~/Pictures/$(date '+%Y-%m-%d-%H:%M:%S').png
bind = $mainMod, S, exec, grim ~/Pictures/$(date '+%Y-%m-%d-%H:%M:%S').png

bind = $mainMod, h, movefocus, l
bind = $mainMod, l, movefocus, r
bind = $mainMod, k, movefocus, u
bind = $mainMod, j, movefocus, d

bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9

bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9

bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
