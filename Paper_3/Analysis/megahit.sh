#!/bin/bash -l

#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 24:00:00
#SBATCH -J megahit_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se

module load bioinfo-tools
module load megahit


 

megahit --kmin-1pass -1 /home/deeksha/Genome-Analysis-/raw_data/DNA_raw_data/SRR4342129_1.paired.trimmed.fastq.gz,/home/deeksha/Genome-Analysis-/raw_data/DNA_raw_data/SRR4342133_1.paired.trimmed.fastq.gz -2 /home/deeksha/Genome-Analysis-/raw_data/DNA_raw_data/SRR4342129_2.paired.trimmed.fastq.gz,/home/deeksha/Genome-Analysis-/raw_data/DNA_raw_data/SRR4342133_2.paired.trimmed.fastq.gz -o /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Assembly_output  --k-list 69,79,89
