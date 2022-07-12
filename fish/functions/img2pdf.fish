function img2pdf
    if test (count $argv) -lt 1
	echo "needs argument"
    else
	convert $argv out.pdf
	qpdf out.pdf out_final.pdf --rotate=90
	rm out.pdf
	echo "done"
	rm $argv
	echo "deleted old files"
    end
end

