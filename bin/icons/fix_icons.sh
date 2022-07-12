#!/bin/sh

#foreground=$(get_xres "foreground")
foreground="#d9e0ee"
# Icons
icon_path=$HOME/.config/bin/icons
for f in $icon_path/*.svg; do
    sed -i "s/:#....../:$foreground/g" $f
done
