#!/bin/bash


# index generated 
#STAR --runMode genomeGenerate \
#--runThreadN 20 \
#--genomeDir /qbio/shjo/reference/mouse/star_index \
#--genomeFastaFiles /qbio/shjo/reference/mouse/GRCm39.primary_assembly.genome.fa \
#--sjdbGTFfile /qbio/shjo/reference/mouse/gencode.vM32.primary_assembly.annotation.gtf



# align 

DATA="CLIP_2J3 CLIP_35L33G CLIP_polyclonal"

for i in $DATA
do
	STAR --runThreadN 20 --readFilesCommand gunzip -c --genomeDir ~/reference/mouse/star_index --readFilesIn /qbio/shjo/23-1_bioinformatics/expansion/scripts/trimmed_$i.fastq.gz --outFileNamePrefix /qbio/shjo/23-1_bioinformatics/expansion/aligned/$i-
done 
