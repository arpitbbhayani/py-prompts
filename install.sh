#!/bin/sh

set -e

ROOT_DIR=$HOME/.pyprompts
rm -rf $ROOT_DIR

git clone https://github.com/arpitbbhayani/py-prompts $ROOT_DIR

if [ -f $HOME/.bashrc ]; then
  echo ".bashrc detected. updating PATH variable and exporting it through $HOME/.bashrc"
  grep ".pyprompts" $HOME/.bashrc > /dev/null
  if [ $? -ne 0 ]; then
    echo "export PATH=$PATH:$HOME/.pyprompts" >> $HOME/.bashrc
  fi
  echo "pyprompts is now installed on your machine. call command pyprompts to use it."
elif [ -f $HOME/.zshrc ]; then
  echo ".zshrc detected. updating PATH variable and exporting it through $HOME/.zshrc"
  grep ".pyprompts" $HOME/.bashrc > /dev/null
  if [ $? -ne 0 ]; then
    echo "export PATH=$PATH:$HOME/.pyprompts" >> $HOME/.zshrc
  fi
  echo "pyprompts is now installed on your machine. call command pyprompts to use it."
else
  echo "could not detect your rc file. kindly add the following line in your rc file"
  echo "export PATH=$PATH:$HOME/.pyprompts"
fi
