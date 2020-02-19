# -*- coding: utf-8 -*-
import sys
from datetime import datetime

class DatePromptPS1(object):
  def __str__(self):
    return "\n\033[92m[%s]:\033[0m " % (datetime.now().strftime('%H:%M'))

sys.ps1 = DatePromptPS1()
sys.ps2 = "     \033[91m...\033[0m "
