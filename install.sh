#!/bin/sh

ROOT_DIR=$HOME/.py-prompts
rm -rf $ROOT_DIR

git clone https://github.com/arpitbbhayani/py-prompts $ROOT_DIR

if [ -f $HOME/.bashrc ]; then
  echo ".bashrc detected. updating PATH variable and exporting it through $HOME/.bashrc"
  grep ".py-prompts" $HOME/.bashrc
  if [ $? -ne 0 ]; then
    echo "export PATH=$PATH:$HOME/.py-prompts" >> $HOME/.bashrc
  fi
  echo "py-prompts is now installed on your machine. call command py-prompts to use it."
elif [ -f $HOME/.zshrc ]; then
  echo ".zshrc detected. updating PATH variable and exporting it through $HOME/.zshrc"
  grep ".py-prompts" $HOME/.bashrc
  if [ $? -ne 0 ]; then
    echo "export PATH=$PATH:$HOME/.py-prompts" >> $HOME/.zshrc
  fi
  echo "py-prompts is now installed on your machine. call command py-prompts to use it."
else
  echo "could not detect your rc file. kindly add the following line in your rc file"
  echo "export PATH=$PATH:$HOME/.py-prompts"
fi
