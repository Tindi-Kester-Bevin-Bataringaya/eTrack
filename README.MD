# Tracing Origins and Transmission Dynamics of Antimicrobial Resistance in E. Coli WGS data

## Introduction

Antimicrobial resistance happens when microorganisms (such as bacteria, fungi, viruses, and parasites) change when they are exposed to antimicrobial drugs (such as antibiotics, antifungals, antivirals, antimalarials, and anthelmintics). The overwhelming generation of sequencing data has led to the evolution of prescision medicine. However, there is still a shortage of Bioinformatics skilled people to make sense out of this data  

## Sypnosis

As a response to the collective call to arms against the pandemic Antimicrobial Resistance (AMR) phenomenon, we were tasked to apply our Bioinformatics knowledge to design a tool and analysis workflow that can be applied in rapid detection, monitoring and surveillence of Antimicrobial Resistant pathogens

## eTrack

An analysis pipeline designed to understand and determine the molecular epidemiology, antimicrobial resistance patterns and mechanisms through which E.coli is able to survive within its' diverse environments from Whole Genome Sequence Illumina reads  

The pipeline is able to perform the following:

1. Quality control and trimming  
2. De novo and reference based asssembly, scaffolding and annotation  
3. Variant calling  
4. Antimicrobial Resistance, plasmid and virulence factor detection  
5. MLST  
6. Pangenome analysis  
7. Phylogenetic inferences  
8. `.html` report generation  

## Instalation  

1. Install conda using [miniconda](https://docs.conda.io/en/latest/miniconda.html)  
2. Run the following installation commands:  
   `git clone https://github.com/GunzIvan28/eTrack.git`  
   `cd eTrack`  
   ```conda env create -n eTrack-1.0 --file eTrack-install.yml```
3. When installation is successful, run:  
   `conda activate eTrack-1.0`  
4. List all the installed packages by running:
   `conda --list`  
   `bash setup.sh`  
   `cd .. && bash cleanup.sh`  
5. Run the command below to display the programs menu  
   `eTrack -h`  

## Menu snippets  

```bash
Thanks for using eTrack 1.0

Developed by as a mini-project by Group-4 EanBIT Residential Training 2

SYPNOSIS:
    An E.coli analysis Pipeline for Profiling epidemiology, virulence, phylogeny & resistome

USAGE:
    eTrack [options] --input --output --reference

GENERAL:
    -h/--help       Display this help and exit
    -c/--citation   Show citation and exit
    -v/--version    Print version and exit

MANDATORY OPTIONS:
    -i/--input      Path to the raw sequencces to be analyzed
    -o/--output     Name of ouput directory
    -r/--reference  Path to the reference genome(.fasta, .gb) [default="REF.fasta"]

OTHER OPTIONS:
    -t/--threads    Number of cores to use <integer> [default=4]
```

## Code snippets  

`eTrack --input <INPUT> --output <OUTPUT> --reference <REF.fasta> --threads 8`  
