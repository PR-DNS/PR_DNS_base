#!/bin/bash
#SBATCH -q debug
#SBATCH -A m4402
#SBATCH -J dns

#SBATCH  --nodes=1
#SBATCH  --output=../../../PR_DNS_out/debug.%j
#SBATCH  --error=../../../PR_DNS_out/error.%j
#SBATCH  --exclusive
#SBATCH  --time=0:30:00
#SBATCH  --constraint=cpu

ulimit -s unlimited

#cd /sdcc/u/tzhang/PR_DNS_base/DNS/climate
srun -n 128  /pscratch/sd/z/zhangtao/PR_DNS/PR_DNS_heffte/PR_DNS_base/DNS/climate/climate -d 3 -p 8 4 4  -i input-pr-dns/in-entrainment3dd_case3_abdullah  -o /pscratch/sd/z/zhangtao/PR_DNS/PR_DNS_heffte/PR_DNS_base/DNS/climate/out-entrainment3dd_case3
