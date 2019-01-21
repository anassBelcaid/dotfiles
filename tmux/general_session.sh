#!/bin/zsh

#####################################################################
#  Script to create my automatic tmux session for general purpose
# 1) first window for system admin ( like pacman )
# 2) Second window for tasks with taskwarrior
# 3) ranger file manager
# 4) Music player with ncmpcc
####################################################################

session = "general"

#creating the session
tmux new -s $session



#renaming the first window
tmux -t $session rename-window "general"

