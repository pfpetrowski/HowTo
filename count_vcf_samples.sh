gunzip -c merged.vcf.gz | head -n50 | tail -n1 | awk -F\t '{print NF}'

#The value after head should be the number of lines down that the #CHROM line is on