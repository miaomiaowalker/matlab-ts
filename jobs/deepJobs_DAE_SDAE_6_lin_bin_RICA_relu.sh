#!/bin/bash

#SBATCH --partition=mono
#SBATCH --ntasks=1
#SBATCH --time=4-0:00
#SBATCH --mem-per-cpu=8000
#SBATCH -J Deep-DAE_SDAE_6_lin_bin_RICA_relu
#SBATCH -e Deep-DAE_SDAE_6_lin_bin_RICA_relu.err.txt
#SBATCH -o Deep-DAE_SDAE_6_lin_bin_RICA_relu.out.txt

source /etc/profile.modules

module load gcc
module load matlab
cd ~/deepLearn && srun ./deepFunction 6 'DAE' 'SDAE' '128  1000  1000  1000  1000    10' '0  1  1  1  1  1' '6_lin_bin' 'RICA_relu' "'iteration.n_epochs', 'learning.lrate', 'use_tanh', 'noise.drop', 'noise.level', 'rica.cost', 'cae.cost'" '200 1e-3 2 0 0 0.1 0' "'iteration.n_epochs', 'use_tanh'" '200 2'