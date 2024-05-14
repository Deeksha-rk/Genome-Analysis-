#!/bin/bash -l

#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J metabat_binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se


module load bioinfo-tools
module load MetaBat

cd /home/deeksha/Genome-Analysis-/raw_data/DNA_raw_data/ 

metabat2 -t 2 -i /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Assembly_output/final.contigs.fa  -o /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output
 





