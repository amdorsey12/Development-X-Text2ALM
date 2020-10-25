#!/bin/bash
python CommandCenter.py text2alm --input $1
echo "${1##*/}"
fbname=$(basename "$1" .txt)
echo "$fbname"
echo $2
java -jar sparc.jar Output/Text2ALM_Outputs/$fbname/CALM/$fbname$".tp.sparc" -A --disable-empty-sort-check -o Temp/$fbname$".tp.lp"
python xclingo/xclingo.py Temp/$fbname$".tp.lp" $2 > XclingoOutput/$fbname$".tp.xlp"