WORK_HOME=src/GTR
SRC=src
OUT=out
cp "$HOME"/$WORK_HOME/$SRC/*.bib "$HOME"/$WORK_HOME/$OUT
cd "$HOME"/$WORK_HOME/$SRC || exit
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory="$HOME"/$WORK_HOME/$OUT main.tex
cd "$HOME"/$WORK_HOME/$OUT || exit
makeindex main.idx
bibtex main
cd "$HOME"/$WORK_HOME/$SRC || exit
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory="$HOME"/$WORK_HOME/$OUT main.tex
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory="$HOME"/$WORK_HOME/$OUT main.tex
