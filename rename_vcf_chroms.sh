zcat myvcf.vcf.gz | sed 's/^Chr/Gm/' | sed 's/<ID=Chr/<ID=Gm/' | bgzip -c > myvcf.corrected.vcf.gz
