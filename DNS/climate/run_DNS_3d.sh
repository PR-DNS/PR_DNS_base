#!/bin/bash
#SBATCH -q regular
##SBATCH -q debug
#SBATCH -A m4856
#SBATCH -J dns

#SBATCH  --nodes=1
#SBATCH  --output=logs/debug.%j
#SBATCH  --error=logs/error.%j
#SBATCH  --exclusive
#SBATCH  --time=2:30:00
#SBATCH  --constraint=cpu

ulimit -s unlimited

cd /pscratch/sd/z/zhangtao/PR_DNS/PR_DNS_CC/DNS/climate
srun -n 128  ./climate -d 3 -p 8 4 4  -i input-pr-dns/in-entrainment3dd_caseS11   -o  out-entrainment3dd_caseS11
