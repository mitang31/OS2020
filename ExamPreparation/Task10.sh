// Pasting here the file I use, name - task10.txt

s61988:x:1219:504:Stoian Genchev,SI,2,5:/home/SI/s61988:/bin/bash
s81430:x:1234:503:Iordan Petkov, KN, k2, g7:/home/KN/s81430:/bin/bash
s61807:x:1248:504:Elica Venchova:/home/SI/s61807:/bin/bash
s62009:x:1254:504:Denitsa Dobreva, 2, 6:/home/SI/s62009:/bin/bash
s61756:x:1258:504:Katrin Kartuleva, SI, 4, 1:/home/SI/s61756:/bin/bash
s855287:x:1195:504:Vaska Kichukova,SI,2,5:/home/SI/s855287:/bin/bash


cat task10.txt | rev | cut -d ':' -f2- | rev | grep "SI" | sed 's/s//' | sort -n | cut -d ':' -f5- | tr -d ',' | sed 's/\(^.*va\|^.*v\)\(.*:\)\(.*$\)/\1:\3/'

or


cat task10.txt | rev | cut -d ':' -f2- | rev | grep "SI" | cut -c2- | sort -n | cut -d ':' -f5- | tr ':' ' ' | tr ',' ' ' | awk '{print $1,$2,":" $NF}' | sed 's/ //2'
