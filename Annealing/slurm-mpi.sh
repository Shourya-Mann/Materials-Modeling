#!/bin/bash
#NOTE the -1 flag!

# Name of the Job
#SBATCH -J ANL

#Standard out and Standard error output files
#SBATCH -o ANL.output
#SBATCH -e ANL.output

#Sends and email (must remove a #)
##SBATCH --mail-user sm4836@rit.edu

##Notify on state change: BEGIN, END, FAIL or ALL
##SBATCH --mail-type=ALL

#Request 24 hours run time MAX, anything over will be KLLED
#SBATCH -t 12:0:0

#Put the job in the work partition and request FOUR cores
#SBATCH -p tier3 -A hea -n 4

#Keep everything on one node because lammps has a meltdown otherwise
#SBATCH --nodes=1

#job memory requirements in MB
#SBATCH --mem=1000

#The job script goes now

# The job script goes now
module load lammps-20181212-gcc-8.2.0-d7ufswbn
orterun -np $SLURM_NTASKS lmp -in in-1.SrTiO3-annealing

