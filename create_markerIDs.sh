bcftools annotate --set-id +'%CHROM\_%POS\_%REF\_%FIRST_ALT' glyma.Wm82.gnm1.div.QXZK.SNPData.vcf.gz | bgzip > glyma.Wm82.gnm1.div.QXZK.SNPData.markerIDsAdded.vcf.gz

#Use this to overwrite any marker IDs that were there originally
bcftools annotate -x ID glyma.Wm82.gnm1.div.QXZK.SNPData.vcf.gz | bcftools annotate --set-id +'%CHROM\_%POS\_%REF\_%FIRST_ALT' | bgzip > glyma.Wm82.gnm1.div.QXZK.SNPData.markerIDsAdded.ogRemoved.vcf.gz