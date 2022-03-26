#! /bin/bash

echo hello world!!

while read line; do
IFS="="
read -ra arr <<< "$line"
echo arr[0]
echo arr[1]
echo arr[2]

done < DB.conf