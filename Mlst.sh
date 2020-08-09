#! bin/bash

for i in `cat list.txt`
do	mlst --csv --scheme ecoli /home/akiyaga/Miniproject/assembly/${i}_out/assembly.fasta  > mlst/${i}_mlst.csv # Multi-locus Sequence typing
done 
cat mlst/*.csv > mlst.csv
