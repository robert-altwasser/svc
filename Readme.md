Short pipeline that forks `umi-processing` to CNV-calling of targeted sequencing data. The calls are adjusted for tumor purity and ploidy. Uses cnvKIT for the CNV calling and PureCN to estimate tumor purity and chromosomal ploidy.

Input:
- `umi-processing`-style config file
- `umi-processing` until the `vardict` step

Output:
- `vcf`: directory containing purity and ploidy adjusted CNV-calls
- `plots`: scatterplots of CNV-calls
