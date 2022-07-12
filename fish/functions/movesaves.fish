function movesaves
    if test -d "$argv"
        echo "Needs parameters"
    else
        set win "/mnt/drive/f/Emulators/Yuzu/user/nand/user/save/0000000000000000"
        set unix "/home/raech/.local/share/yuzu/nand/user/save/0000000000000000"
        if test "$argv[2]" = "bdsp"
        	set game "0100000011D90000"
        else if test "$argv[2]" = "mario"
        	set game "0100A3900C3E2000"
        else if test "$argv[2]" = "sword"
        	set game "0100ABF008968000"
        end

        set lprofile (ls "$unix/")
        set wprofile (ls "$win/")
        
        if test "$argv[1]" = "linux"
            echo "Copying saved from $win/$wprofile/$game; to $unix/$lprofile"
            cp -r "$win/$wprofile/$game" $unix/$lprofile
        else if test "$argv[1]" = "windows"
            echo "Copying saved from $unix/$lprofile/$game to $win/$wprofile"
            cp -r "$unix/$lprofile/$game" $win/$wprofile
        end
    end
end

