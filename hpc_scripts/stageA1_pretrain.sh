#!/bin/bash

#SBATCH --job-name=mind-vis-stageA1_mbm_pretrain
#SBATCH --output=mind-vis-stageA1_mbm_pretrain.out
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH -t 2-1:00:00 
#SBATCH --mem=64g -C V100

cd ..
python code/stageA1_mbm_pretrain.py