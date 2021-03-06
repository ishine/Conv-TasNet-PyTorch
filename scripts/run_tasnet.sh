#!/bin/bash

# Copyright  2018  Northwestern Polytechnical University (author: Ke Wang)

set -euo pipefail

lr="1e-3"
data_dir="data"
norm_type='gLN'
active_func="relu"
date=$(date "+%Y%m%d")
encoder_norm_type='cLN'
save_name="tasnet_${date}_${active_func}_${encoder_norm_type}_${norm_type}_${lr}"
mkdir -p exp/${save_name}

num_gpu=2
batch_size=$[num_gpu*4]

python -u steps/run_tasnet.py \
    --decode="false" \
    --batch-size=${batch_size} \
    --learning-rate=${lr} \
    --weight-decay=1e-5 \
    --epochs=100 \
    --data-dir=${data_dir} \
    --model-dir="exp/${save_name}" \
    --use-cuda="true" \
    --autoencoder-channels=256 \
    --autoencoder-kernel-size=20 \
    --bottleneck-channels=256 \
    --convolution-channels=512 \
    --convolution-kernel-size=3 \
    --number-blocks=8 \
    --number-repeat=4 \
    --number-speakers=2 \
    --normalization-type=${norm_type} \
    --active-func=${active_func}
