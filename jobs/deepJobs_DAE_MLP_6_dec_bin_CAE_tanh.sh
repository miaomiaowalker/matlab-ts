#!/bin/bash

#SBATCH --partition=mono
#SBATCH --ntasks=1
#SBATCH --time=4-0:00
#SBATCH --mem-per-cpu=8000
#SBATCH -J Deep-DAE_MLP_6_dec_bin_CAE_tanh
#SBATCH -e Deep-DAE_MLP_6_dec_bin_CAE_tanh.err.txt
#SBATCH -o Deep-DAE_MLP_6_dec_bin_CAE_tanh.out.txt

source /etc/profile.modules

module load gcc
module load matlab
cd ~/deepLearn && srun ./deepFunction 6 'DAE' 'MLP' '128  2000  1500  1000   500    10' '0  1  1  1  1  1' '6_dec_bin' 'CAE_tanh' "'iteration.n_epochs', 'learning.lrate', 'use_tanh', 'noise.drop', 'noise.level', 'rica.cost', 'cae.cost'" '200 1e-3 1 0 0 0.01 0' "'iteration.n_epochs', 'use_tanh'" '200 1'