#!/usr/bin/zsh

cwd=$(pwd)
bgen_fp="$cwd/ukb22828_c22_b0_v3.bgen"
sample_fp="$cwd/ukb22828_c22_b0_v3.sample"
iids="$cwd/qualified_iids.txt"
snps="$cwd/one_low_one_high_quality_snp_on_chr22.txt"
out_dir="$cwd/plink_out"

plink2 --bgen "$bgen_fp" ref-first --export bgen-1.2 --sample "$sample_fp" --keep "$iids" --extract "$snps" --out "$out_dir/two_snps"
