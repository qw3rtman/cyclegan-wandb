from pathlib import Path
from PIL import Image
import numpy as np

pathlist = Path('/scratch/cluster/nimit/data/vizdoom').glob('**/frame_*.npy')
for path in pathlist:
    split = str(path).split('/')[-3]
    name = '_'.join(str(path).split('/')[-2:]).split('.')[0]

    img = Image.fromarray(np.load(str(path)))
    img_resized = img.resize((256, 256), Image.BICUBIC)
    img_resized.save('/scratch/cluster/nimit/data/cyclegan/cityscapes2vizdoom/{}/{}.jpg'.format(split, name))

print('done!')
