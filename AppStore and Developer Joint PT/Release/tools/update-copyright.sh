#!/bin/bash

git clone https://gitee.com/edgegallery/user-mgmt.git --branch master

cd user-mgmt

for filename in `git ls-tree -r --name-only HEAD`
do
    addYear=$(git log --pretty=format:"%ad %H %an" -- $filename | tail -1 | awk '{print $5}')
    modYear=$(git log -1 --pretty=format:"%ad %H %an" -- $filename | awk '{print $5}')
    if [ $modYear -gt $addYear ]; then
        sed -i "s/Copyright \([0-9]\{4\}\(-[0-9]\{4\}\)*\)/Copyright $addYear-$modYear/g" $filename
    elif [ $modYear -eq $addYear ]; then
        sed -i "s/Copyright \([0-9]\{4\}\(-[0-9]\{4\}\)*\)/Copyright $addYear/g" $filename
    fi
done
