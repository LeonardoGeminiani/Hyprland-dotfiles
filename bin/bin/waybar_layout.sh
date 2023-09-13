layout=`hyprctl devices -j | jq '.[].[]' | grep at-translated-set-2-keyboard -A 6 | tail -1 | xargs | cut -c 16-`

if [[ $layout == 'Italian,' ]]; then
    printf 'it'
else
    printf 'us'
fi