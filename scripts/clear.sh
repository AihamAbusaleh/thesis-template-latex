#!/bin/bash

files="*.log *.aux *.lot *.lol *.lof *.synctex.gz *.toc *.bbl *.blg *.dvi *.ilg *.nlo *.nls *.out"
cd ../../  # go to the BA Folder and search the files in the folders inside BA with "find ."
for f in $files; do  find . -name "$f" -print0 | xargs -0 rm -f; done

