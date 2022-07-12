#!/bin/dash

SCREENSHOTS_DIR=$HOME/Pictures/Screenshots
TIMESTAMP="$(date +%Y-%m-%d_%H:%M:%S)"
FILENAME=$SCREENSHOTS_DIR/$TIMESTAMP"_grim.png"
PHOTO_ICON_PATH=$HOME/.config/bin/icons/screenshot.svg

if [ "$1" = "-s" ]; then
    # Area/window selection.
    notify-send 'Select area to capture.' --urgency low -i $PHOTO_ICON_PATH
    grim -g "$(slurp)" $FILENAME
    if [ "$?" = "0" ]; then
        notify-send "Screenshot taken." --urgency low -i $PHOTO_ICON_PATH
    fi
elif [ "$1" = "-c" ]; then
    # Copy selection to clipboard
    notify-send 'Select area to copy to clipboard.' --urgency low -i $PHOTO_ICON_PATH
    grim -g "$(slurp)" - | wl-copy --type image/png
elif [ "$1" = "-b" ]; then
    # Browse with sxiv
    cd $SCREENSHOTS_DIR ; sxiv $(ls -t) &
elif [ "$1" = "-e" ]; then
    # Edit last screenshot with GIMP
    cd $SCREENSHOTS_DIR ; gimp $(ls -t | head -n1) & notify-send 'Opening last screenshot with GIMP' --urgency low -i $HOME/.config/bin/icons/gimp.svg
else
    notify-send "Screenshot taken." --urgency low -i $PHOTO_ICON_PATH
fi
