#!/bin/bash

# 3' adapter clipping & quality filtering with cutadapt

DATA="CLIP_2J3 CLIP_35L33G CLIP_polyclonal"
for i in $DATA
do
	cutadapt -a CTGTAGGCACCATCAATTCGTATGCCGTCTTCTGCTTG -m 21 -j 15 -o trimmed_$i.fastq.gz ~/23-1_bioinformatics/expansion/data/$i.fastq.gz  
done
