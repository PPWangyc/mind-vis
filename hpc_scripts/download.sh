#!/bin/bash

#SBATCH --job-name=download-required-dataset
#SBATCH --output=download-required-dataset.out
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --cpus-per-task=8
#SBATCH -t 1-1:00:00 
#SBATCH --mem=64G

wget https://figshare.com/ndownloader/files/38057451?private_link=94cd778e6afafb00946e
wget https://figshare.com/ndownloader/files/38106231?private_link=94cd778e6afafb00946e