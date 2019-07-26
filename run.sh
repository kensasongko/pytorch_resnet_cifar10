#!/bin/bash
noise=0.06
#for model in resnet20 resnet32 resnet44 resnet56 resnet110 resnet1202
for model in resnet20 resnet110
do
    echo "python -u trainer.py  --arch=$model  --save-dir=save_${model}_$noise |& tee -a log_${model}_$noise"
    python -u trainer.py --arch=$model --save-dir=save_${model}_$noise |& tee -a log_${model}_$noise
done
