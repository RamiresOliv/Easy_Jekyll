#! /bin/bash

echo hello world!!
IFS="="

while read line; do
read -a strarr <<< "$line"
echo arr[0]
echo arr[1]
echo arr[2]

done < DB.conf