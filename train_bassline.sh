#!/bin/bash
export PYTHONPATH=$PWD:$PYTHONPATH
conda activate melgan
python scripts/train.py --save_path logs/bassline --data_path ./data/bassline --n_mel_channels 64 --seq_len 2000 --downsamp_factor 4 --epochs 30000 --n_layers_D 4 --num_D 3 --downsamp_factor 4 --batch_size 32