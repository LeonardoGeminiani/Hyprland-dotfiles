
if [[ $(cat $HOME/.local/bin/screen_state) == 0 ]]; then
    echo 4 > $HOME/.local/bin/screen_state;
    hyprctl keyword monitor eDP-1,preferred,auto,1,transform,4;
else
    echo 0 > $HOME/.local/bin/screen_state;
    hyprctl keyword monitor eDP-1,preferred,auto,1,transform,0;
fi