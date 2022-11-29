#!/bin/bash
# Created by : A.Belcaid
# Created on : 2022-11-29 15:36
# project : bspwm scratch pad

# Class of the variable by xdotool
winclass=$(xdotool search --class scpad);

if [[ -z "$winclass" ]]; then
  alacritty --class scpad
else
  if [[ ! -f /tmp/scpad ]]; then
    touch /tmp/scpad && xdo hide "$winclass"
  elif [[ -f /tmp/scpad ]]; then
    rm /tmp/scpad && xdo show "$winclass"
  fi
fi
