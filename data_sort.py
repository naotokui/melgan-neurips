#%%

from glob import glob
import random
import shutil

filelist = glob("./data/**/*.wav", recursive=True)
random.shuffle(filelist)

for i, path in enumerate(filelist):
    print(path)
    shutil.copy(path, "./data/bassline/%05d.wav" % i)
#%%
