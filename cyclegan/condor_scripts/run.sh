#!/bin/zsh
source $HOME/.zshrc

conda env list

cd $HOME/Documents/robomaster/sim2real-experiments/cyclegan

source activate robo

python train.py \
    --dataroot ./datasets/monet2photo \
    --name monet2photo \
    --model cycle_gan
