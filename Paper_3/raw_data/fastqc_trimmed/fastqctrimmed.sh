#!/bin/bash -l

#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J fastqc_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se

# Load the FastQC module
module load bioinfo-tools
module load FastQC

# Create a directory for FastQC results
mkdir -p /home/deeksha/Genome-Analysis-/Paper_3/raw_data/fastqc_trimmed

# Run FastQC on the trimmed files
fastqc -o /home/deeksha/Genome-Analysis-/Paper_3/raw_data/fastqc_trimmed \
    /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342139_1P.fastq.gz \
    /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342139_1U.fastq.gz \
    /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342139_2P.fastq.gz \
    /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342139_2U.fastq.gz

echo "FastQC analysis completed."

