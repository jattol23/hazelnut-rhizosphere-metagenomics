# Update MAG naming convention
sed -i 's/rhizo_MAG_00/MAG_/' final_MAGs/*
rename 's/rhizo_MAG_00/MAG/' final_MAGs/*

# Taxonomically classify the MAGs
gtdbtk classify_wf --genome_dir final_MAGs/ --out_dir GTDB-tk_classification/ --cpus 16 --mash_db /databasedisk1/GTDB-tk/gtdb.mash.msh --extension fasta # Run GTDB-tk

# Rename the MAGs
mkdir bacterial_MAGs/
mkdir archaeal_MAGs/
cp final_MAGs/MAG02.fasta archaeal_MAGs/Nitrososphaeraceae_archaeon_QU-JR-MAG-02.fasta
cp final_MAGs/MAG09.fasta archaeal_MAGs/Nitrososphaeraceae_archaeon_QU-JR-MAG-09.fasta
cp final_MAGs/MAG21.fasta archaeal_MAGs/Nitrososphaeraceae_archaeon_QU-JR-MAG-21.fasta
cp final_MAGs/MAG33.fasta archaeal_MAGs/Nitrososphaeraceae_archaeon_QU-JR-MAG-33.fasta
cp final_MAGs/MAG28.fasta bacterial_MAGs/Pyrinomonadaceae_bacterium_QU-JR-MAG-28.fasta
cp final_MAGs/MAG05.fasta bacterial_MAGs/Thermoanaerobaculia_bacterium_QU-JR-MAG-15.fasta
cp final_MAGs/MAG12.fasta bacterial_MAGs/Thermoanaerobaculia_bacterium_QU-JR-MAG-12.fasta
cp final_MAGs/MAG15.fasta bacterial_MAGs/Multivoradales_bacterium_QU-JR-MAG-15.fasta
cp final_MAGs/MAG01.fasta bacterial_MAGs/Vicinamibacterales_bacterium_QU-JR-MAG-01.fasta
cp final_MAGs/MAG19.fasta bacterial_MAGs/Vicinamibacterales_bacterium_QU-JR-MAG-19.fasta
cp final_MAGs/MAG38.fasta bacterial_MAGs/Ilumatobacteraceae_bacterium_QU-JR-MAG-38.fasta
cp final_MAGs/MAG43.fasta bacterial_MAGs/Mycobacteriales_bacterium_QU-JR-MAG-43.fasta
cp final_MAGs/MAG20.fasta bacterial_MAGs/Marmoricola_sp_QU-JR-MAG-20.fasta
cp final_MAGs/MAG07.fasta bacterial_MAGs/Actinospica_sp_QU-JR-MAG-07.fasta
cp final_MAGs/MAG29.fasta bacterial_MAGs/Streptosporangiaceae_bacterium_QU-JR-MAG-29.fasta
cp final_MAGs/MAG45.fasta bacterial_MAGs/Gaiellaceae_bacterium_QU-JR-MAG-45.fasta
cp final_MAGs/MAG32.fasta bacterial_MAGs/Gaiellaceae_bacterium_QU-JR-MAG-32.fasta
cp final_MAGs/MAG34.fasta bacterial_MAGs/Gaiellaceae_bacterium_QU-JR-MAG-34.fasta
cp final_MAGs/MAG25.fasta bacterial_MAGs/Gaiellaceae_bacterium_QU-JR-MAG-25.fasta
cp final_MAGs/MAG39.fasta bacterial_MAGs/Gaiellaceae_bacterium_QU-JR-MAG-39.fasta
cp final_MAGs/MAG06.fasta bacterial_MAGs/Gaiellales_bacterium_QU-JR-MAG-06.fasta
cp final_MAGs/MAG18.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-18.fasta
cp final_MAGs/MAG03.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-03.fasta
cp final_MAGs/MAG31.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-31.fasta
cp final_MAGs/MAG35.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-35.fasta
cp final_MAGs/MAG41.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-41.fasta
cp final_MAGs/MAG04.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-04.fasta
cp final_MAGs/MAG26.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-26.fasta
cp final_MAGs/MAG37.fasta bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-37.fasta
cp final_MAGs/MAG44.fasta bacterial_MAGs/Actinomycetota_bacterium_QU-JR-MAG-44.fasta
cp final_MAGs/MAG17.fasta bacterial_MAGs/Limnocylindrales_bacterium_QU-JR-MAG-17.fasta
cp final_MAGs/MAG16.fasta bacterial_MAGs/Binatia_bacterium_QU-JR-MAG-16.fasta
cp final_MAGs/MAG36.fasta bacterial_MAGs/Gemmatimonadales_bacterium_QU-JR-MAG-36.fasta
cp final_MAGs/MAG10.fasta bacterial_MAGs/Rokubacteriales_bacterium_QU-JR-MAG-10.fasta
cp final_MAGs/MAG14.fasta bacterial_MAGs/Nitrospiraceae_bacterium_QU-JR-MAG-14.fasta
cp final_MAGs/MAG23.fasta bacterial_MAGs/Beijerinckiaceae_bacterium_QU-JR-MAG-23.fasta
cp final_MAGs/MAG11.fasta bacterial_MAGs/Hyphomicrobiaceae_bacterium_QU-JR-MAG-11.fasta
cp final_MAGs/MAG13.fasta bacterial_MAGs/Methyloceanibacter_sp_QU-JR-MAG-13.fasta
cp final_MAGs/MAG24.fasta bacterial_MAGs/Methyloceanibacter_sp_QU-JR-MAG-24.fasta
cp final_MAGs/MAG40.fasta bacterial_MAGs/Rhizobium_sp_QU-JR-MAG-40.fasta
cp final_MAGs/MAG08.fasta bacterial_MAGs/Pseudolabrys_sp_QU-JR-MAG-08.fasta
cp final_MAGs/MAG27.fasta bacterial_MAGs/Pseudolabrys_sp_QU-JR-MAG-27.fasta
cp final_MAGs/MAG22.fasta bacterial_MAGs/Sphingomicrobium_sp_QU-JR-MAG-22.fasta
cp final_MAGs/MAG30.fasta bacterial_MAGs/Lysobacter_yananisis_MAG30.fasta
cp final_MAGs/MAG42.fasta bacterial_MAGs/Udaeobacter_sp_QU-JR-MAG-42.fasta

# Check the quality since a completeness of 90% is required for submission to NCBI whereas initial threshold was 70%. Decided to be extra strict and allow a maximum of 5% contamination instead of 10%.
checkm lineage_wf -t 16 -x fasta -f checkm_output.txt archaeal_MAGs/ CheckM_output_archaea/
mv checkm_output.txt CheckM_output_archaea/checkm_output_archaea.txt
checkm lineage_wf -t 16 -x fasta -f checkm_output.txt bacterial_MAGs/ CheckM_output_bacteria/
mv checkm_output.txt CheckM_output_bacteria/checkm_output_bacteria.txt

# Get just the MAGs that can be uploaded to NCBI
mkdir MAGs_for_NCBI/
cp archaeal_MAGs/Nitrososphaeraceae_archaeon_QU-JR-MAG-21.fasta MAGs_for_NCBI/
cp archaeal_MAGs/Nitrososphaeraceae_archaeon_QU-JR-MAG-33.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Sphingomicrobium_sp_QU-JR-MAG-22.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-03.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-35.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Pseudolabrys_sp_QU-JR-MAG-27.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Udaeobacter_sp_QU-JR-MAG-42.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Gaiellaceae_bacterium_QU-JR-MAG-45.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Rhizobium_sp_QU-JR-MAG-40.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-04.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Multivoradales_bacterium_QU-JR-MAG-15.fasta MAGs_for_NCBI/
cp bacterial_MAGs/Solirubrobacterales_bacterium_QU-JR-MAG-26.fasta MAGs_for_NCBI/

# Create a phylogeny of just the bacterial MAGs
mkdir bacterial_phylogeny/
gtdbtk identify --genome_dir bacterial_MAGs --out_dir bacterial_phylogeny/markers --extension fasta --cpus 16 --write_single_copy_genes
gtdbtk align --identify_dir bacterial_phylogeny/markers --out_dir bacterial_phylogeny/aligned_markers --skip_gtdb_refs --rnd_seed 58 --cpus 16
cd bacterial_phylogeny/
cp aligned_markers/align/gtdbtk.bac120.user_msa.fasta.gz .
gunzip gtdbtk.bac120.user_msa.fasta.gz
iqtree2 -s gtdbtk.bac120.user_msa.fasta -m MF -T 16 --prefix model
best_model=$(grep 'Best-fit' model.log | cut -f3 -d' ') # LG+F+R4
iqtree2 -s gtdbtk.bac120.user_msa.fasta -m $best_model --alrt 1000 -J 1000 --jack-prop 0.4 -T 16 --prefix Phylogeny

# ANI to check number of species (all are unique based on ANI of 95%)
mkdir ANI/
find *_MAGs/*.fasta | grep -v 'final_MAGs' > ANI/list.txt
fastANI --ql ANI/list.txt --rl ANI/list.txt -o ANI/ani.txt -t 8