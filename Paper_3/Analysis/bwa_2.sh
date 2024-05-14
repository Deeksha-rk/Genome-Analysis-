#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J BWA_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa
module load samtools/1.9

input=/home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation

mkdir -p /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new

for n in 1 2 3 4 5 6 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
do
  bwa index /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_${n}/bin_${n}.fna
  bwa mem -t 2 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_${n}/bin_${n}.fna /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342137_1P.fastq.gz /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342137_2P.fastq.gz> /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_37.sam
  samtools view -S -b /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_37.sam > /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_37.bam
  samtools sort /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_37.bam > /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_37_sorted.bam
  rm /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_37.sam
  rm /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_37.bam
done

for n in 1 2 3 4 5 6 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25   
do
  bwa index /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_${n}/bin_${n}.fna
  bwa mem -t 2 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_${n}/bin_${n}.fna /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342139_1P.fastq.gz /home/deeksha/Genome-Analysis-/Paper_3/raw_data/RNA_trimmed/SRR4342139_2P.fastq.gz> /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_39.sam
  samtools view -S -b /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_39.sam > /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_39.bam
  samtools sort /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_39.bam > /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_39_sorted.bam
  rm /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_39.sam
  rm /home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new/${n}_map_39.bam
done


