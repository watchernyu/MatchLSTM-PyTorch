#!/bin/sh
#
#SBATCH --verbose
#SBATCH --job-name=any_2
#SBATCH --output=hpclogs/adv_any_2_%j.out
#SBATCH --error=hpclogs/adv_any_2_%j.err
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --mem=16GB
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cw1681@nyu.edu

cd MatchLSTM-PyTorch/
source activate matchlstm
python train.py -name any_2 -d advdata/advdata_any_2 -h5 adv_any_2.h5

