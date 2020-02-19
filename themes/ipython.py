# -*- coding: utf-8 -*-
import sys

class IPythonPromptPS1(object):
  def __init__(self):
    self.line = 0

  def __str__(self):
    self.line += 1
    return "\n\033[92mIn [%d]:\033[0m " % (self.line)

sys.ps1 = IPythonPromptPS1()
sys.ps2 = "    \033[91m...\033[0m "
