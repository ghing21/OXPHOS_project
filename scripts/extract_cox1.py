from Bio import SeqIO
import os

genome_dir = "../data/genomes"
output_file = "../data/cds_nuc/COX1.fasta"

# Make sure output directory exists
os.makedirs("../data/cds_nuc", exist_ok=True)

with open(output_file, "w") as out_handle:
    for file in os.listdir(genome_dir):
        if file.endswith(".gb") or file.endswith(".gbff"):
            filepath = os.path.join(genome_dir, file)
            
            for record in SeqIO.parse(filepath, "genbank"):
                species_name = record.annotations.get("organism", "Unknown_species")
                species_name = species_name.replace(" ", "_")
                
                for feature in record.features:
                    if feature.type == "CDS":
                        gene = feature.qualifiers.get("gene", [""])[0]
                        
                        if gene.upper() == "COX1":
                            seq = feature.extract(record.seq)
                            
                            out_handle.write(f">{species_name}\n")
                            out_handle.write(str(seq) + "\n")
                            
                            print(f"Extracted COX1 from {species_name}")
