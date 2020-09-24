zcat myvcf.vcf.gz | sed 's/^Chr/Gm/' | sed 's/<ID=Chr/<ID=Gm/' | bgzip -c > myvcf.corrected.vcf.gz

#'Chr' is the string we want to replace
#Gm is the replacement


#Another way
bcftools annotate -Oz --rename-chrs fixChrom.txt --threads 16  imputed.fullsequences_tagsremoved_sorted_markerIDs.vcf.gz -o imputed.fullsequences_tagsremoved_sorted_markerIDs_fixChrom.vcf.gz

#fixChrom.txt is a text file containing the new mapping in the form of
#oldval newval \n pairs
# --threads is optional
# -Oz specifies that the output file is to be gzipped. use -Ov for a normal vcf