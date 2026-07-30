#!/bin/bash 

#NOTE - this script will get you VIM - and nothing more. See my companion script for ALE and other pre-defined lint settings... 
#This is a failsafe when you really need vim and this will compile. You just need git installed which is usually on any distro. 

# 1. Clone the Vim repository
git clone https://github.com/vim/vim.git || echo 'error' 
pushd vim

# 2. Configure the build to install inside your home directory
./configure --prefix=$HOME/.local

# 3. Compile and install
make || echo 'error'
make install || echo 'error'

