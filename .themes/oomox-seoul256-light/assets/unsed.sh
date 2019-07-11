#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#dadada/g' \
         -e 's/rgb(100%,100%,100%)/#4e4e4e/g' \
    -e 's/rgb(50%,0%,0%)/#dadada/g' \
     -e 's/rgb(0%,50%,0%)/#af5f5f/g' \
 -e 's/rgb(0%,50.196078%,0%)/#af5f5f/g' \
     -e 's/rgb(50%,0%,50%)/#dadada/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#dadada/g' \
     -e 's/rgb(0%,0%,50%)/#4e4e4e/g' \
	"$@"
