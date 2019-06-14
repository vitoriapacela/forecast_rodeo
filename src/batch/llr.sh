#!/bin/bash

#SBATCH --qos=low                     
#SBATCH --cpus-per-task=4
#SBATCH --mem=20G                              
#SBATCH --time=24:00:00                        
#SBATCH -o /network/tmp1/barinpvi/slurm-%j.out
#SBATCH --job-name llr
#SBATCH --output /network/home/barinpvi/forecast_rodeo/src/batch/logs/slurm-%j.log

# activate conda environment
conda activate geo

python ../experiments/2011-2018_backward_stepwise.py contest_tmp2m 56w 56 mean False 20170418 4
