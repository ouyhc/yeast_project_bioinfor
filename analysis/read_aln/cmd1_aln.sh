 
# samtools flagstat EV_strain_2.bam
# 18326665 + 0 in total (QC-passed reads + QC-failed reads)
#    1586774 + 0 secondary
#    0 + 0 supplementary
#   0 + 0 duplicates
#   15982673 + 0 mapped (87.21% : N/A)
#   0 + 0 paired in sequencing
#   0 + 0 read1
#   0 + 0 read2
#   0 + 0 properly paired (N/A : N/A)
#   0 + 0 with itself and mate mapped
#   0 + 0 singletons (N/A : N/A)
#   0 + 0 with mate mapped to a different chr
#   0 + 0 with mate mapped to a different chr (mapQ>=5)

# hisat2 -x ../../yeast_project/reference/yeast_ref -U ../../yeast_project/RNA_seq/SRR1916154.fastq |samtools view -bS -|samtools sort -o EV_strain_2.nsrt.bam

#nohup  hisat2 -x ../../yeast_project/reference/yeast_ref -U ../../yeast_project/RNA_seq/SRR1916154.fastq > EV_strain_2.sam &

#samtools view -bS EV_strain_2.sam -o EV_strain_2.bam

#samtools sort EV_strain_2.bam -o EV_strain_2.srt.bam
