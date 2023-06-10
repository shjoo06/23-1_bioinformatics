#!/bin/bash

# download 3 CLIP datasets
DATA=(SRR458760 SRR458759 SRR458758)
NAMES=(CLIP_polyclonal CLIP_2J3 CLIP_35L33G)

for (( i=0; i<3; i++ ));
do
	fasterq-dump ${DATA[$i]} -O /qbio/shjo/23-1_bioinformatics/expansion/data/${NAMES[$i]} -p
done 
