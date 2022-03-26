#! /bin/bash

echo hello world!!
IFS="="

while read line; do
echo $line

done < DB.conf