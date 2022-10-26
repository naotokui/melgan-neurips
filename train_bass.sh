#!/bin/bash
export PYTHONPATH=$PWD:$PYTHONPATH
#conda activate melgan
#cd /fsx/naotokui/melgan-neurips
CUDA_VISIBLE_DEVICES=6 python scripts/train.py --load_path ./logs/bassline --save_path ./logs/bassline2 --data_path ./data/bassline --batch_size 8
#sbatch --partition=gpu --nodes=1 --gpus=2 --cpus-per-gpu=6 --job-name=melgan --comment harmonai -t 6-0 --output output2.txt --error error2.txt train_idm.sh &