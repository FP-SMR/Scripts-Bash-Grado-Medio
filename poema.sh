#!/bin/bash

# JVJIXFMCQ=

tput clear
tput setaf 180

tcols=$(tput cols)
tlines=$(tput lines)
tcolsthirds=$(($tcols/3))
tlinesthirds=$(($tlines/4))
count=0

gomid(){
tput cup $(($tlinesthirds +$count)) $tcolsthirds
count=$(($count+2))
sleep $1
}
line=("Where is the wisdom we have lost in knowledge?" "Where is the knowledge we have lost in information?" "                  Extract from Choruses by T. S. Eliot")
linea=("Â¿DÃ³nde estÃ¡ la sabidurÃ­a que hemos perdido en el conocimiento?" "Â¿DÃ³nde estÃ¡ el conocimiento que hemos perdido en la informaciÃ³n?" "-                          Extracto de Coros de T. S. Eliot ")

for ((i=0;i<${#linea[@]};i++));do
gomid 3.5
##En ingles
#echo "${line[$i]}"
##En espaÃ±ol
echo "${linea[$i]}"
done
gomid 0.5
read -rs -p '- Press any key to clear the screen -'

tput sgr0
tput clear
