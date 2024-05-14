#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J HTseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se

#load modules 
module load bioinfo-tools
module load htseq/0.9.1

bam_file_dir=/home/deeksha/Genome-Analysis-/Paper_3/raw_data/BWA_Alignment_new
gff_file_dir=/home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation 
output=/home/deeksha/Genome-Analysis-/Paper_3/raw_data/htseq_results_new 



for n in 26 
do
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_37_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/bin_${n}.gff) > ${output}/${n}_37.out
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_39_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/bin_${n}.gff) > ${output}/${n}_39.out
done
for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 23 24 25 
do
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_37_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/bin_${n}.gff) > ${output}/${n}_37.out
	htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_39_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/bin_${n}.gff) > ${output}/${n}_39.out
done
