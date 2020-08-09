#! /bin/bash

## Checking Read Quality

mkdir Fastqc_files # Create out put directory for the fastqc files
fastqc data/*.fastq -o Fastqc_files # Run fastqc on all fastq files in the data directory

## Perform multiqc for the Forward and Reverse Reads separately
multiqc Fastqc_files/ --ignore *_trim2_* && mv multiqc_data multiqc_R1_data && mv multiqc_report.html multiqc_report_R1.html #Forward
multiqc Fastqc_files/ --ignore *_trim1_* && mv multiqc_data multiqc_R2_data && mv multiqc_report.html multiqc_report_R2.html #Reverse
