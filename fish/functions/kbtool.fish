function kbtool
	if test -n "$argv[1]"
		if test "$argv[1]" = "qmk"
    		echo "Compiling QMK"
    		echo $PWD
    		doas /home/raech/Programs/keyboard/annepro2/target/release/annepro2_tools /home/raech/Programs/keyboard/qmk/annepro2_c18_xendak.bin
		else if test "$argv[1]" = "shine"
    		echo "Compiling SHINE"
    		echo $PWD
            doas /home/raech/Programs/keyboard/annepro2/target/release/annepro2_tools -t led /home/raech/Programs/keyboard/AnnePro2-Shine/build/annepro2-shine-C18.bin
		else if test "$argv[1]" = "edit"
    		cd /home/raech/Programs/keyboard/qmk/keyboards/annepro2/keymaps/xendak/
		end
	else
    		echo "Compiling QMK(default)"
    		echo $PWD
    		doas /home/raech/Programs/keyboard/annepro2/target/release/annepro2_tools /home/raech/Programs/keyboard/qmk/annepro2_c18_xendak.bin
        	popd
	end
end
