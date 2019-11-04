import torch
from torchvision import transforms
from PIL import Image

def convert(imgs, dir):
    for i, img in enumerate(imgs):
        # img is (3, h, w)
        img_pil = transforms.functional.to_pil_image(img)
        img_resized = img_pil.resize((256, 256), Image.BICUBIC)
        img_resized.save('/scratch/cluster/nimit/data/cyclegan/cityscapes2vizdoom/{}/{}.jpg'.format(dir, i))

imgs_train = torch.load('/scratch/cluster/nimit/data/cityscapes_preload/imgs_train.pt')
convert(imgs_train, 'trainA')

imgs_test = torch.load('/scratch/cluster/nimit/data/cityscapes_preload/imgs_test.pt')
convert(imgs_test, 'testA')

print('done!')
