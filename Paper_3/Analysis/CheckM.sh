#!/bin/bash -l

#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J metabat_binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se


module load bioinfo-tools
module load CheckM/1.0.12

checkm lineage_wf -t 4 -x fa --reduced_tree /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_eval1

