#!/bin/bash

snakemake \
    --snakefile svc.snk \
    --nt \
    --jobs 120 \
    --cluster-config ~/work/umi-data-processing/config/cluster_scv.yaml \
    --profile=cubi-v1 \
    --restart-times 1 \
    --keep-going \
    --rerun-incomplete \
    --use-conda --conda-prefix=/fast/users/altwassr_c/work/conda-envs/
