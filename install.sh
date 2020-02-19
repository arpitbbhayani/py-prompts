#!/bin/sh

ROOT_DIR=$HOME/.pypropmts
rm -rf $ROOT_DIR

git clone https://github.com/arpitbbhayani/pypropmts $ROOT_DIR

if [ -f $HOME/.bashrc ]; then
  echo ".bashrc detected. updating PATH variable and exporting it through $HOME/.bashrc"
  grep ".pypropmts" $HOME/.bashrc > /dev/null
  if [ $? -ne 0 ]; then
    echo "export PATH=$PATH:$HOME/.pypropmts" >> $HOME/.bashrc
  fi
  echo "pypropmts is now installed on your machine. call command pypropmts to use it."
elif [ -f $HOME/.zshrc ]; then
  echo ".zshrc detected. updating PATH variable and exporting it through $HOME/.zshrc"
  grep ".pypropmts" $HOME/.bashrc > /dev/null
  if [ $? -ne 0 ]; then
    echo "export PATH=$PATH:$HOME/.pypropmts" >> $HOME/.zshrc
  fi
  echo "pypropmts is now installed on your machine. call command pypropmts to use it."
else
  echo "could not detect your rc file. kindly add the following line in your rc file"
  echo "export PATH=$PATH:$HOME/.pypropmts"
fi
