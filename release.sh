#!/bin/bash

PS3='Please enter your choice: '
options=("MAJOR version when you make incompatible API changes," "MINOR version when you add functionality in a backwards-compatible manner" "PATCH version when you make backwards-compatible bug fixes" "Quit")
select opt in "${options[@]}"
do
  case $opt in
    "MAJOR version when you make incompatible API changes,")
      echo "you chose MAJOR"
      npm version major
      break
      ;;
    "MINOR version when you add functionality in a backwards-compatible manner")
      echo "you chose MINOR"
      npm version minor
      break
      ;;
    "PATCH version when you make backwards-compatible bug fixes")
      echo "you chose PATCH"
      npm version patch
      break
      ;;
    "Quit")
      break
      ;;
    *) echo "invalid option $REPLY";;
  esac
done
