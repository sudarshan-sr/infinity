#!/bin/bash

counter=0
filecounter=0
while true;
do
    if [ $counter -gt 1000 ]
        then 
            break
    else
        date >> test1.txt
    fi
    ((counter++))
done;
echo "Now creating the big file"
while true;
do
    if [ $filecounter -gt 2000 ]
        then 
            break
    else
        cat test1.txt >> bigfile.txt
    fi
    ((filecounter++))
done;
ls -ltrh bigfile.txt