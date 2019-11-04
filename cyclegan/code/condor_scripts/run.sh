#!/bin/zsh
source $HOME/.zshrc

conda env list

cd $HOME/Documents/robomaster/sim2real-experiments/cyclegan/code

source activate robo

python train.py \
    --dataroot /scratch/cluster/nimit/data/cyclegan/cityscapes2vizdoom \
    --name cityscapes2vizdoom \
    --model cycle_gan
