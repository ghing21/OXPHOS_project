
#Install Apptainer on Ubuntu WSL
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:apptainer/ppa
sudo apt update
sudo apt install -y apptainer

#Pull the OMM_MACSE container
apptainer pull oras://ghcr.io/ranwez/macse_v2_pipelines/omm_macse:v12.02

#Run OMM_MACSE on COX1 sequences
apptainer run omm_macse_v12.02.sif \
  --in_seq_file data/cds_nuc/COX1.fasta \
  --out_dir COX1_MASCE \
  --out_file_prefix COX1

#View the alignment in AliView
aliview COX1_MASCE/COX1_aligned_final_align_NT.aln
