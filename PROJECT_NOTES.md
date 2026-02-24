# OXPHOS Project — Lab Notes

**Date:** 24 Feb 2026  
**Author:** Bhavya Gudhka  
**Project:** Rate of molecular evolution in OXPHOS genes across mammals  

---

## 1. Project Setup

**Goal:** Organize project structure, prepare trait data, genome files, and scripts for analysis.  

**Actions Taken:**

- Created main project folder `OXPHOS/` on local machine.
- Created subfolders for organization:

- Organized trait data in `config/trait_data/`:
- `AnAge_filtered.csv`
- `PanTHERIA_filtered.csv`
- `PanTHERIA_1-0_WR05_Aug2008.txt`
- `anage_data.txt`
- Moved species list and relevant meta files to `config/`.

**Observations / Notes:**

- All trait data files are now centralized.
- Project folder is ready for downstream analysis and version control.

---

## 2. Genome Data Organization

**Goal:** Store all downloaded mitochondrial genomes in a structured manner.

**Actions Taken:**

- Verified downloaded genome files (.fasta and .gb) in `data/genomes/`.
- Created `data/cds_nuc/` folder for storing extracted coding sequences.
- Created `data/raw_genomes/` folder for raw genome backup if needed.

**Observation:**

- Folder structure ensures separation of raw and processed data.

---

## 3. COX1 Gene Extraction Preparation

**Goal:** Prepare environment for extracting COX1 coding sequences from mitochondrial genomes.

**Actions Taken:**

- Checked one GenBank file (`EU450583.1.gb`) to confirm COX1 naming:

```text
/gene="COX1"

Verified that /gene="COX1" is consistent across species.

Observation:

All mitochondrial COX1 genes can be extracted reliably using Biopython.


## 4. Created virtual python environment

**Goal:** Create isolated Python environment for reproducibility


Actions Taken:

Installed python3-venv: 

Created virtual environment in project root:

python3 -m venv venv

Activated environment:

source venv/bin/activate

Installed Biopython:

pip install biopython

Observation / Notes:

Environment ensures Python dependencies do not interfere with system Python.

Biopython ready for genome parsing.


# 5. COX1 extraction script 
Goal: Extract COX1 coding sequences from all GenBank files and save as FASTA.

Actions Taken:

Created script scripts/extract_cox1.py:
