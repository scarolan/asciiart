#!/bin/bash

POS=1

while IFS= read -n1 char; do
  if [[ $LETTER =~ [CHEF] && $POS == 1 ]]; then
    sed "s/[CHEF]/C/g" $char
    echo $char
    POS="2"
  elif [[ $LETTER =~ [CHEF] && $POS == 2 ]]; then
    sed "s/[CHEF]/H/g" $char
    echo $char
    POS="3"
  elif [[ $LETTER =~ [CHEF] && $POS == 3 ]]; then
    sed "s/[CHEF]/E/g" $char
    echo $char
    POS="4"
  elif [[ $LETTER =~ [CHEF] && $POS == 4 ]]; then
    sed "s/[CHEF]/F/g" $char
    echo $char
    POS="4"
  else
    if [[ $char == $"\r" ]]; then
      echo "LINE BREAK FOUND"
    else
      echo $char
    fi
  fi
done < learn_chef_motd.txt
