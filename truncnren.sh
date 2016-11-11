#!/bin/bash

if [ "$#" -ne 1 ] || [ ! -d $1 ] ; then
	echo "Uso: $0 [Punto de Montaje de OSADA]"
	echo 
	exit 33
fi

OSADADIR=$1

echo "Usando $OSADADIR..."

mkdir -p dir1/dir2/dir3
truncate -s 40900 dir1/dir2/dir3/file-40900.txt
truncate -s 1000 dir1/dir2/dir3/file-40900.txt
mv dir1 mydir
stat dir1/dir2/dir3/file-40900.txt

