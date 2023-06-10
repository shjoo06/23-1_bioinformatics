samtools view -Sb -q 4 -F 16 CLIP_polyclonal-Aligned.out.sam | samtools sort -@ 20 > polyclonal.sorted.bam
samtools calmd -b -@ 20 polyclonal.sorted.bam ~/reference/mouse/GRCm39.primary_assembly.genome.fa > polyclonal.MD.bam
samtools index polyclonal.MD.bam

