#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu
#SBATCH --mem=10g
gmx grompp -f md-short.mdp -c npt.gro -t npt.cpt -p topol.top -o md-short.tpr
gmx mdrun -deffnm md-short -nb gpu 
