#!/usr/bin/env bash

DIR="$HOME/.config/polybar"

get_bars () {
    find -H $DIR -name "config.ini" | xargs cat | grep -e "\[bar\/" | sort -u | sed "s/\[bar\//    /g" | sed "s/.$//g"
}

error () {
cat <<- EOF
Usage : launch.sh [bar] [theme]

bars (defined in any config.ini):
EOF

get_bars

cat <<- EOF
themes:
    rounded
    grayblocks
EOF
exit 0
}

# Launch the bar
launch-bar () {
    # Terminate already running bar instances
    killall -q polybar

    if [[ -f ~/.config/bspwm/bspwmrc ]]; then
        sed -i -e "s/polybar.*/polybar\/launch\.sh $bar $style \&/g" ~/.config/bspwm/bspwmrc
    fi

    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

    if type "xrandr"; then
        for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
            POLYBAR_MONITOR=$m polybar --reload $bar -c "$DIR"/"$style"/config.ini &
        done

        else
            polybar --reload $bar -c "$DIR"/"$style"/config.ini &
    fi
}

if [[ "$1" = "bspwm" ]]; then
    bar="bspwm"
elif [[ "$1" = "awesomewm" ]]; then
    bar="awesomewm"
else
    error
fi


if [[ "$2" = "rounded" ]]; then
    style="rounded"
    launch-bar
elif [[ "$2" = "grayblocks" ]]; then
    style="grayblocks"
    launch-bar
else
    error
fi
