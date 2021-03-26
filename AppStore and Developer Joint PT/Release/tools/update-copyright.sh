#!/bin/bash

git clone https://gitee.com/edgegallery/appstore-be.git --branch master

cd appstore-be

for filename in `git ls-tree -r --name-only HEAD`
do
    addYear=$(git log --pretty=format:"%ad %H %an" -- $filename | tail -1 | awk '{print $5}')
    modYear=$(git log -1 --pretty=format:"%ad %H %an" -- $filename | awk '{print $5}')
    if [ $modYear -gt $addYear ]; then
        sed -i "s/Copyright \([0-9]\{4\}\(-[0-9]\{4\}\)*\)/Copyright $addYear-$modYear/" $filename
    elif [ $modYear -eq $addYear ]; then
        sed -i "s/Copyright \([0-9]\{4\}\(-[0-9]\{4\}\)*\)/Copyright $addYear/" $filename
    fi
done
