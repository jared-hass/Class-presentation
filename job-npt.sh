#!/bin/bash
#SBATCH --time=00:15:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu
#SBATCH --mem=10g

gmx grompp -f npt.mdp -c nvt.gro -t nvt.cpt -r nvt.gro -p topol.top -o npt.tpr
gmx mdrun -deffnm npt -nb gpu -v
