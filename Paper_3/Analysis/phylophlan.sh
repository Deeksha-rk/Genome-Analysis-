#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J Phylophlan
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se


#Load Module 
module load conda
export CONDA_ENVS_PATH=/proj/uppmax2024-2-7/Genome_Analysis/conda_envs
source conda_init.sh
conda activate phylophlan

#Your Command

export outdir=/home/deeksha/Genome-Analysis-/Paper_3/raw_data/Phylogeny
export configs=~/envs/configs

cd $outdir

phylophlan_assign_sgbs -i /home/deeksha/Genome-Analysis-/Paper_3/raw_data/metagenome -o /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Phylogeny --nproc 4 -n 1 -d SGB.Jan21 --database_folder /proj/uppmax2024-2-7/Genome_Analysis/conda_envs/SGB/phylophlan_databases  
     
