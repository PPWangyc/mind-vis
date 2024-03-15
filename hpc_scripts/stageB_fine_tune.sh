#!/bin/bash

#SBATCH --job-name=mind-vis-stageB2_ldm_finetune
#SBATCH --output=mind-vis-stageB2_ldm_finetune.out
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:v100:1
#SBATCH -t 7-0:00:00 
#SBATCH --mem=64g

conda activate mind-vis
cd ..
python code/stageB_ldm_finetune.py
conda deactivate
cd hpc_scripts