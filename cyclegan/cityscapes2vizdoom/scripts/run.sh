#!/bin/zsh
source $HOME/.zshrc

conda env list

cd $HOME/Documents/robomaster/sim2real-experiments/cyclegan/cityscapes2vizdoom

source activate robo

python convert_vizdoom.py
