#!/bin/bash

BINARY=2
T=1
number=$RANDOM

let "number %= $BINARY"

if [ "$number" -eq $T ]
then
  echo 1
  exit 1 
else
  echo 0
  exit 0
fi  
