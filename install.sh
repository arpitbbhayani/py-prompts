#!/bin/sh

set -e

ROOT_DIR=~/.py-prompts
git clone https://github.com/arpitbbhayani/py-prompts $ROOT_DIR

if [ -f "~/.bashrc" ]; then
  echo "export PATH=$PATH:~/.py-prompts" >> ~/.bashrc
elif [ -f "~/.zshrc" ]; then
  echo "export PATH=$PATH:~/.py-prompts" >> ~/.zshrc
else
  echo "could not detect your rc file. kindly add the following line in your RC file"
  echo "export PATH=$PATH:~/.py-prompts"
fi
