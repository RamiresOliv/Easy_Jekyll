#! /bin/bash

echo hello world!!
IFS="="

dir
while read line; do
echo $line

done < ./DB.conf