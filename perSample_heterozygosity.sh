# https://www.biostars.org/p/291147/
#credit to Kevin blighe

#NB - this does NOT support multi-allelic records. If you have these, split them via bcftools norm -m-any
#
#----------------------
#Assuming that you're confident that your VCF is normalised and that you genuinely just want to count occurrences of heterozygous calls per line, then the following will work for either phased (0|1 or 1|0) or unphased (0/1 or 1/0) genotypes, or a mixture of these.
#
#Here, I'm actually accessing a BCF and it's the imputed 1000 Genomes Phase III data. So, the genotypes are phased.
#
#The gsub function in AWK conveniently returns the number of matched patterns.


paste <(bcftools view my.vcf |\
    awk -F"\t" 'BEGIN {print "CHR\tPOS\tID\tREF\tALT"} \
      !/^#/ {print $1"\t"$2"\t"$3"\t"$4"\t"$5}') \
    \
  <(bcftools query -f '[\t%SAMPLE=%GT]\n' my.vcf |\
    awk 'BEGIN {print "nHet"} {print gsub(/0\|1|1\|0|0\/1|1\/0/, "")}')