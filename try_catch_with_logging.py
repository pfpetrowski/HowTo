#! usr/bin/env

import subprocess
import logging
import os



#Works just fine
try:
	subprocess.run(['ls', '-lh'], check = True)
except:
	logging.exception("Command has failed")

print("Try catch 1 has executed \n")




#Exception is logged because there is no file named fakefile.txt but the program does not quit
try:
	subprocess.run(['ls', '-lh', 'fakefile.txt'], check = True)
except subprocess.CalledProcessError:
	logging.exception("Command has failed")

print("Try catch 2 has executed \n")




#Exception is logged because there is no file named fakefile.txt and the program quits
try:
	subprocess.run(['ls', '-lh', 'fakefile.txt'], check = True)
except subprocess.CalledProcessError:
	logging.exception("Command has failed")
	quit()

print("Try catch 3 has executed \n")  #Statement does not print because the program has exited