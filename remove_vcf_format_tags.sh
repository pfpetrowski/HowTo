#Will remove all format tags except for the GT tag

bcftools annotate -x ^FORMAT/GT infile.vcf > outfile.vcf

#Can also zip the file

bcftools annotate -x ^FORMAT/GT infile.vcf | bgzip > outfile.vcf.gz