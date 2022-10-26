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


from glob import glob
import random
import shutil

filelist = glob("../data/idm/*.mp3", recursive=True)
random.shuffle(filelist)
print(len(filelist))

for i, path in enumerate(filelist):
    print(path)
    shutil.move(path, "../data/idm/%05d.mp3" % i)
# %%
