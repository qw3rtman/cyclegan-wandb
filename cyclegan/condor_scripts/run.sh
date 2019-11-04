#!/bin/zsh
source $HOME/.zshrc

conda env list

cd $HOME/Documents/robomaster/sim2real-experiments/cyclegan/pytorch-CycleGAN-and-pix2pix

source activate robo

python train.py \
    --dataroot ./datasets/monet2photo \
    --name monet2photo \
    --model cycle_gan
