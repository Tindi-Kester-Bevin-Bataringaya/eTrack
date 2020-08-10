#! bin/bash
for i in `cat list.txt`
do      abricate --csv --db vfdb /home/akiyaga/Miniproject/assembly/${i}_out/assembly.fasta > Virulence/${i}_virulence.csv
done
abricate --summary Virulence/*.csv > Virulence.csv
