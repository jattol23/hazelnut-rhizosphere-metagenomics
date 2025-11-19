## Overview

This repository contains scripts that were used for processing, assembling, and analyzing metagenomics data from complex soil microbial communities enabling characterization of the taxonomic and functional features of the rhizosphere microbial communities of hazelnut trees differing in their levels of resistance to the biotrophic fungal pathogen Anisogramma anomala: highly tolerant Corylus americana, and resistant and susceptible Corylus avellana. 

## Directory Structure

### The "annotation" directory contains:
- "kraken2_workflow_confidence_0.51_2024_03_15.sh" - used for annotation of raw Illumina reads with kraken2/bracken.
- "krona_from_kreport.sh" - calls combine_kreports.py and kreport2krona.py from KrakenTools to generate krona plots from kraken2 data.
- "antismash_rhizo_0.5K_assemblies.sh" - used for annotation of the metagenome assemblies with antiSMASH.
- "reduced_assemblies_modify_sequencing_depth_mmseqs2_classification_uniref90.sh" - used for taxonomic characterization of the metagenome assemblies. 
- "format_megahit.py" - called by "reduced_assemblies_modify_sequencing_depth_mmseqs2_classification_uniref90.sh".
- "fix_mmseqs_taxonomy.pl" - called by "reduced_assemblies_modify_sequencing_depth_mmseqs2_classification_uniref90.sh". 
- "filter_based_on_taxonomy_level.sh" - used to filter krona_input/.txt files from "reduced_assemblies_modify_sequencing_depth_mmseqs2_classification_uniref90.sh" by taxonomy level (phylum, class, genus, species).
- "filter_bac_arc_euk.sh" - used to extract bacterial, archaeal, and eukaryotic taxa from the krona_input/.txt files produced by "reduced_assemblies_modify_sequencing_depth_mmseqs2_classification_uniref90.sh".
- "filter_based_on_taxonomy_level_bac.sh" - used to filter "filter_bac_arc_euk.sh" bacterial output files by taxonomy level (phylum, class, genus, species).
- "filter_based_on_taxonomy_level_arc.sh" - used to filter "filter_bac_arc_euk.sh" archaeal output files by taxonomy level (phylum, class, genus, species).
- "filter_based_on_taxonomy_level_euk.sh" - used to filter "filter_bac_arc_euk.sh" eukaryote output files by taxonomy level (phylum, class, genus, species).
- "combine_krona_input_files_and_generate_combined_plots.sh" - used to combine desired krona_input/.txt files from "reduced_assemblies_modify_sequencing_depth_mmseqs2_classification_uniref90.sh" and generate krona plots. 
- "antismash_rhizo_MAGs.sh" - used for antiSMASH annotation of metagenome assembled genomes (MAGs).

### The "cleaning" directory contains:
- "bbduk_2024_02_14.sh" - used for initial cleaning of raw paired-end Illumina reads.
- "trimmomatic_2024_02_14.sh" - used for subsequent cleaning of reads.

### The "assembly" directory contains:
- "megahit_1.sh"-"megahit_19.sh" - used to generate metagenomes from trimmomatic output files using MEGAHIT.
- "reduced_assemblies_500_2024_02_15.sh" - used for filtering contigs based on size threshold (500bp) from assemblies.
- "reduced_assemblies_1000_2024_02_15.sh" - used for filtering contigs based on size threshold (1000bp) from assemblies.
- "reduced_assemblies_1500_2024_02_15.sh" - used for filtering contigs based on size threshold (1500bp) from assemblies.
- "stats_2024_02_15.sh" - used to generate summary statistics for metagenome assemblies.
- "count_data_from_trimmomatic.sh" - used to determine number of reads across trimmomatic samples.
- "trimmomatic_sample_data.txt" - used to define the input for "count_data_from_trimmomatic.sh".
- "extract_classified_bac_arc_euk_contigs_and_run_bowtie2.sh" - used to determine read counts for classified contigs through read mapping.
- "samples_for_bowtie2.txt" - used to define the input for "extract_classified_bac_arc_euk_contigs_and_run_bowtie2.sh".

### The "subset" directory contains:
- "subsample_trimmomatic_output_large.sh" - used for subsampling reads from the output of trimmomatic.
- "megahit_1.sh"-"megahit_19.sh" - used to generate subset metagenomes from subsampled trimmomatic files using MEGAHIT. 
- "reduced_assemblies_500_subset_2024_10_02.sh" - used for filtering contigs based on size threshold (500bp) from the subset assemblies.
- "reduced_assemblies_subset_modify_sequencing_depth_mmseqs2_classification_uniref90.sh" - used for taxonomy assignment of subset assemblies by mmseqs2.
- "format_megahit.py" - called by "reduced_assemblies_subset_modify_sequencing_depth_mmseqs2_classification_uniref90.sh".
- "fix_mmseqs_taxonomy.pl" - called by "reduced_assemblies_subset_modify_sequencing_depth_mmseqs2_classification_uniref90.sh".

### The "binning" directory contains:
- "binning_03_26_2024.sh" - used to generate MAGs.
- "binning_input.txt" - used to define the input for "binning_03_26_2024.sh".
- "dereplicate_2024_04_08.sh" - used for dereplication of MAGs.
- "rename_MAGs.pl" - called by "dereplicate_2024_04_08.sh".

### Additional scripts
- "MAG_analysis.sh" - includes the code used to generate the bacterial MAG phylogeny with GTDB-Tk. 
- "R_rhizosphere_analysis.qmd" - contains R code used for analyzing/visualizing relevant metagenomic data.
