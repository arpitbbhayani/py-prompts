# -*- coding: utf-8 -*-
import sys

class VersionPromptPS1(object):
  def __str__(self):
    return "\n\033[92m[PY %d.%d] >>>\033[0m " % (sys.version_info.major, sys.version_info.minor)

sys.ps1 = VersionPromptPS1()
sys.ps2 = "         \033[91m...\033[0m "
