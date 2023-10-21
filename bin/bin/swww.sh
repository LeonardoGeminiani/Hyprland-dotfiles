img=1;
max_img=4;

swww init

while true; do
    $(`swww img  ~/Pictures/Wallpapers/${img}.jpg`)
    if [[ $img == $max_img ]]; then
        ((img = 0));
    fi
    ((img += 1))
    sleep 180
done