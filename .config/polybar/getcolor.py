import sys
import numpy as np
import matplotlib as mpl

offset = 20
hot = 80
temp = (float(sys.argv[1]) - offset) / hot
temp = max(0, temp)
temp = min(1, temp)
c1=np.array(mpl.colors.to_rgb('green'))
c2=np.array(mpl.colors.to_rgb('red'))
print(mpl.colors.to_hex((1-temp)*c1 + temp*c2))
