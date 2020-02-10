#!/bin/zsh
source $HOME/.zshrc

conda env list

cd $HOME/Documents/robomaster/sim2real-experiments/cyclegan/code

source activate robo

python train.py \
    --dataroot /scratch/cluster/nimit/data/cyclegan/test2test \
    --name supertux-lighthouse2carla \
    --model cycle_gan \
    --preprocess none \
    #--crop_size 384 \
    --batch_size 8 \
    --checkpoints_dir /scratch/cluster/nimit/cyclegan_checkpoints \
    --netG resnet_9blocks
