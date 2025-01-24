#!/bin/bash

ID=0x5e1

while :
do
    N=$(date +"%Y%m%dT%H%M%S")
    xwd -display :1.0 -id $ID -out $N.xwd
    convert $N.xwd $N.png
    rm -rf $N.xwd
    # Здесь можно указать куда копировать скриншоты. По умолчанию копируются в папку со скриптом
    # cp $N.png /сетевой или локальный путь к желаемой папке
    sleep 5
done
