#!/bin/bash

#SBATCH --job-name=mind-vis
#SBATCH --output=mind-vis.out
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH -t 0-1:00:00 
#SBATCH --mem=64g

cd ..
python code/stageA1_mbm_pretrain.py