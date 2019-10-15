#!/bin/bash

echo -n -e '\033[31m Digite o caminho para a pasta: \033[m'

read FOLDER
ls -l $FOLDER | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/) *2^(8-i));if(k)printf("%0o ",k);print}'

echo -e "Your folder is $FOLDER"


echo "funcionou"
