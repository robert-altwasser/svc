# Overview
Short pipeline that forks `umi-processing` call structural variance of targeted sequencing data. It calls `delly` for calling and genotyping.

# Input:
- mapped BAM files (`umi-processing` until the `fastqc` step)
- reference genome

# Output:
- `filtered`: somatic SVC
- `merged`: genotyped SVC

### Workflow
- A: SV calling on the BAM files of samples
- A: merge all SV calls into unified site list
- A: use merged calls list to genotype samples
- A: merge all genotyped samples
- ############  Skipped! ##########
- A: use merged genotype list for germline filtering
- ############  end Skipped! ######
- B: SV calling on the BAM files of control
- B: merge all control SV calls into unified site list
- C: "setDIFF" sample SV calls with contol SV calls
