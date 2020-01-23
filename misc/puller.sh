#!/bin/bash
#for i in `ls`; do
for i in `find . -maxdepth 1 -type d | egrep -v "\.\s*$"`; do
echo "********************"
echo "Pulling $i"
git -C $i pull
done

