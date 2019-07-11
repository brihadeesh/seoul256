#!/bin/sh
sed -i \
         -e 's/#dadada/rgb(0%,0%,0%)/g' \
         -e 's/#4e4e4e/rgb(100%,100%,100%)/g' \
    -e 's/#dadada/rgb(50%,0%,0%)/g' \
     -e 's/#af5f5f/rgb(0%,50%,0%)/g' \
     -e 's/#dadada/rgb(50%,0%,50%)/g' \
     -e 's/#4e4e4e/rgb(0%,0%,50%)/g' \
	"$@"
