#! bin/bash

## Ran the annotation with Prokka using Shahid's assembly and list.txt

for i in `cat list.txt`
do	prokka --outdir ${i}_prokka_out /home/akiyaga/Miniproject/assembly/${i}_out/assembly.fasta
done 
