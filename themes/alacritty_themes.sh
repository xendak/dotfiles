#!/bin/sh

themeColors=$(basename "$1")

background=$(cat $1  | grep -i 'background:'   | cut -d"#" -f 2)
foreground=$(cat $1  | grep -i 'foreground:'   | cut -d"#" -f 2)
cursor=$(cat $1  	 | grep -i 'cursorColor:'  | cut -d"#" -f 2)

color0=$(cat $1  | grep -i 'r0:'  | cut -d"#" -f 2)
color1=$(cat $1  | grep -i 'r1:'  | cut -d"#" -f 2)
color2=$(cat $1  | grep -i 'r2:'  | cut -d"#" -f 2)
color3=$(cat $1  | grep -i 'r3:'  | cut -d"#" -f 2)
color4=$(cat $1  | grep -i 'r4:'  | cut -d"#" -f 2)
color5=$(cat $1  | grep -i 'r5:'  | cut -d"#" -f 2)
color6=$(cat $1  | grep -i 'r6:'  | cut -d"#" -f 2)
color7=$(cat $1  | grep -i 'r7:'  | cut -d"#" -f 2)
color8=$(cat $1  | grep -i 'r8:'  | cut -d"#" -f 2)
color9=$(cat $1  | grep -i 'r9:'  | cut -d"#" -f 2)
color10=$(cat $1 | grep -i 'r10:' | cut -d"#" -f 2)
color11=$(cat $1 | grep -i 'r11:' | cut -d"#" -f 2)
color12=$(cat $1 | grep -i 'r12:' | cut -d"#" -f 2)
color13=$(cat $1 | grep -i 'r13:' | cut -d"#" -f 2)
color14=$(cat $1 | grep -i 'r14:' | cut -d"#" -f 2)
color15=$(cat $1 | grep -i 'r15:' | cut -d"#" -f 2)


echo "
$themeColors: &$themeColors
    primary:
      background:			'0x$background'
      foreground:			'0x$foreground'
    cursor:
      text:       			'0x$background'
      cursor:     			'0x$cursor'
    selection:
      text:       			'0x$background'
      background: 			'0x$foreground'
    normal:
      black:   				'0x$color0'
      red:     				'0x$color1'
      green:   				'0x$color2'
      yellow:  				'0x$color3'
      blue:    				'0x$color4'
      magenta: 				'0x$color5'
      cyan:    				'0x$color6'
      white:   				'0x$color7'
    bright:
      black:   				'0x$color8'
      red:     				'0x$color9'
      green:   				'0x$color10'
      yellow:  				'0x$color11'
      blue:    				'0x$color12'
      magenta: 				'0x$color13'
      cyan:    				'0x$color14'
      white:   				'0x$color15'
" >> "$HOME/.config/alacritty/alacritty.yml"
