#!/bin/bash
GPU=$1
export CUDA_VISIBLE_DEVICES=${GPU}
export PYTHONUNBUFFERED=1
if [ -z "$GPU" ]
then
      echo "Starting generation on CPU."
else
      echo "Starting generation on GPU ${GPU}."
fi
python3 -u code/generate.py --cfg code/cfg/cfg_file_generate.yml
echo "Done."
