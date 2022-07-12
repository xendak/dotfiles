if status is-interactive
    if ps (pgrep Xorg) | grep -i tty1
        #pgrep awesome || exec startx -- vt1
        fortune -s
    end
end

eval (dircolors -c ~/.config/dircolors/dir_colors)
set WINEPREFIX $HOME/Programs/Wine
set -gx EDITOR kak
set -gx VISUAL kak
set QT_QPA_PLATFORMTHEME qt5ct
set XDG_CONFIG_HOME $HOME/.config
set -gx NNN_FCOLORS "030201050006060009060402"

tput smkx
if string match -q "*xterm*" "$TERM"
        clear
	fortune -s
    set -e VTE_VERSION
end
