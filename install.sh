#!/bin/sh

set -e

ROOT_DIR=~/.py-prompts
rm -rf $ROOT_DIR

git clone https://github.com/arpitbbhayani/py-prompts $ROOT_DIR

if [ -f ~/.bashrc ]; then
  echo ".bashrc detected. updating PATH variable and exporting it through ~/.bashrc"
  echo "export PATH=$PATH:~/.py-prompts" >> ~/.bashrc
  echo "py-prompts is now installed on your machine. call command py-prompts to use it."
elif [ -f ~/.zshrc ]; then
  echo ".zshrc detected. updating PATH variable and exporting it through ~/.zshrc"
  echo "export PATH=$PATH:~/.py-prompts" >> ~/.zshrc
  echo "py-prompts is now installed on your machine. call command py-prompts to use it."
else
  echo "could not detect your rc file. kindly add the following line in your rc file"
  echo "export PATH=$PATH:~/.py-prompts"
fi
