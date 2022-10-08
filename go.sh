#!/bin/bash
# Run script
method="$1"
epochs=80
val_last=20
step=20

# Train
CUDA_VISIBLE_DEVICES=$2 python train.py --ckpt_dir ckpt/${method} --epochs ${epochs} --testsets DIS-VD+DIS-TE1+DIS-TE2+DIS-TE3+DIS-TE4


nvidia-smi
hostname