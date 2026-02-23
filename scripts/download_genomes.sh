#!/bin/bash
# Script to generate accession.txt and download mitochondrial genomes

# Step 1: Remove carriage returns from accession.txt (if any)
sed -i 's/\r$//' config/accession.txt

# Step 2: Create genome folder
mkdir -p data/genomes

# Step 3: Download genomes from NCBI
while read acc; do
  efetch -db nucleotide -id "$acc" -format fasta > data/genomes/${acc}.fasta
done < config/accession.txt
