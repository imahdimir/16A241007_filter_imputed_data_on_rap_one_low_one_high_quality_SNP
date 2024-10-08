#!/usr/bin/zsh

dx run --instance-type mem1_ssd1_v2_x72 app-cloud_workstation

dx ssh job-GpQkY4QJzVpQ0FB33Xb9pvJ9

# after ssh connected
unset DX_WORKSPACE_ID
dx cd $DX_PROJECT_CONTEXT_ID


# downlad chr22 imputed data by their ids
# bgen
dx download file-FxY62b8JkF66qV4X0p7KGzgf
# bgi
dx download file-FxZ2f1jJkF6B5yVBPkVvZf1P
# sample
dx download file-Gqy8B4QJ5Yx3jGBky1kyGB50


# uploaded the 14A240924_find_sibs_based_on_kinship_CSF/out/one_low_one_high_quality_snp_on_chr22.txt manually to WGS project under 16A*/inp
# uploaded the 14A240924_find_sibs_based_on_kinship_CSF/out/qualified_iids.txt manually to WGS project under 16A*/inp
# I then downloaded the files to the cloud workstation by their assinged ids
dx download file-Gv26PyQJq1jq2v63b3ZbPX0f
dx download file-Gv28PF0Jq1jyXxZqy8xQF8Fy


sudo apt install plink2
mkdir plink_out
