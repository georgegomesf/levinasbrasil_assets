#!/bin/bash
#redutor de imagens
#diretorio atual
currentdir="."
#diretorio de destino
dirtemp="."
#cria o diretorio caso não tenha
if [ ! -e $dirtemp ];
    then
    mkdir $dirtemp
fi
# buscar todos os arquivos do tipo *.jpg
for original in *.jpg; do
    echo $original
    convert -resize 50% $currentdir/$original $dirtemp/$original
done
echo "FINALIZADO";