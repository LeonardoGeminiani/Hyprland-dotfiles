
if [[ $(cat $HOME/.local/bin/screen_state) == 0 ]]; then
    echo 2 > $HOME/.local/bin/screen_state
    hyprctl keyword monitor ,preferred,auto,1,transform,2;
else
    echo 0 > $HOME/.local/bin/screen_state
    hyprctl keyword monitor ,preferred,auto,1,transform,0;
fi
