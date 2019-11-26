zcat myvcf.vcf.gz | sed 's/^Chr/Gm/' | sed 's/<ID=Chr/<ID=Gm/' | bgzip -c > myvcf.corrected.vcf.gz

#'Chr' is the string we want to replace
#Gm is the replacement
