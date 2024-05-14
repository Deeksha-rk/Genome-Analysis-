#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J Prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user deeksha.r-kurthkoti.0170@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

# commands

prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_1 --prefix bin_1 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.1.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_2 --prefix bin_2 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.2.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_3 --prefix bin_3 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.3.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_4 --prefix bin_4 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.4.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_5 --prefix bin_5 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.5.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_6 --prefix bin_6 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.6.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_7 --prefix bin_7 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_outputBinning_output.7.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_8 --prefix bin_8 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.8.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_9 --prefix bin_9 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.9.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_10 --prefix bin_10 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.10.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_11 --prefix bin_11 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.11.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_12 --prefix bin_12 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.12.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_13 --prefix bin_13 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.13.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_14 --prefix bin_14 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.14.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_15 --prefix bin_15 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.15.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_16 --prefix bin_16 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.16.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_17 --prefix bin_17 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.17.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_18 --prefix bin_18 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.18.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_20 --prefix bin_20 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.20.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_21 --prefix bin_21 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.21.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_23 --prefix bin_23 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.23.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_24 --prefix bin_24 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.24.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_25 --prefix bin_25 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.25.fa
prokka --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_26 --prefix bin_26/home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.26.fa

prokka --kingdom Archaea --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_19 --prefix bin_19 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.19.fa
prokka --kingdom Archaea --outdir /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Annotation/bin_22 --prefix bin_22 /home/deeksha/Genome-Analysis-/Paper_3/raw_data/Binning_output/Binning_output.22.fa
