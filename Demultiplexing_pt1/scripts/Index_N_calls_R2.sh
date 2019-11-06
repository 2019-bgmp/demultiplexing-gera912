#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=demu_R2_N
#SBATCH --output=slurm-%j-%x.out

#SBATCH --time=0-12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1

conda deactivate
conda deactivate
conda deactivate
conda deactivate
conda activate bgmp_py3




file2="/projects/bgmp/shared/2017_sequencing/1294_S1_L008_R2_001.fastq.gz"






/usr/bin/time -v zcat $file2 | sed -n '2~4p' | grep -c "N"
