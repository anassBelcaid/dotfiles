#!/usr/bin/env bash

###############################################################################
#                      content                                   #
# Author : Anass.belcaid
###############################################################################

# user name
git config --global user.name "anass"

#configure email
git config --global user.email "anass.belcaid@gmail.com"

#choose vim a default editor
sudo git config --system core.editor vim

#cache credential
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'

#default pushing method
git config --global push.default simple

# TODO: configure github security #
