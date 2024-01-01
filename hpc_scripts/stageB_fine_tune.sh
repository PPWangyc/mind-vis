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

conda activate mind-vis
cd ..
python code/stageB_ldm_finetune.py --dataset BOLD5000 --num_epoch 500 --batch_size 5
conda deactivate
cd hpc_scripts