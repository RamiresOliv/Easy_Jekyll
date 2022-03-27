#! /bin/bash

echo hello world!!
IFS="="

condition1 = false
condition2 = false

while read line; do
if $line = "condition1=true" then
    condition1 = true
else
    condition1 = false
done
if $line = "condition2=true" then
    condition2 = true
else
    condition2 = false
done
done < bin/CircleCI/jobs/StartUp/configurations.conf

if condition1 == true then
    echo "condition1 its true"
else
    echo "condition1 its false"
done


if condition2 == true then
    echo "condition2 its true"
else
    echo "condition2 its false"
done
