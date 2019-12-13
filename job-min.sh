#!/bin/bash
#SBATCH --time=00:015:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --mem=10g
#SBATCH --cpus-per-task=2
gmx grompp -f minim.mdp -c 3l6b-ions.gro -p topol.top -o em.tpr
gmx mdrun -v -deffnm em -nb gpu 
