#!/bin/bash -l  

#SBATCH --time=12:00:00
#SBATCH --job-name=ambienttoreflec
#SBATCH --partition=a40
#SBATCH --gres=gpu:1
unset SLURM_EXPORT_ENV  
srun  python train.py -v 20 -b 8 -e 24 --amp -c 2 --img_dir $WORK/Datasets/durlar/ambient/data/ --mask_dir $WORK/Datasets/durlar/reflec/data/ 
