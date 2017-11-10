import random
import os

f = open('message', 'w')
msg = random.randint(2**50, 2**80)
f.write(str(msg))
f.close()


