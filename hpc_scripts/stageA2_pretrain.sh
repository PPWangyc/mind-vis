#!/bin/bash

#SBATCH --job-name=mind-vis-stageA2_mbm_finetune
#SBATCH --output=mind-vis-stageA2_mbm_finetune.out
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH -t 2-1:00:00 
#SBATCH --mem=64g -C V100

cd ..
python code/stageA2_mbm_finetune.py --dataset GOD --pretrain_mbm_path results/fmri_pretrain/01-10-2023-12-01-39/checkpoints/checkpoint.pth