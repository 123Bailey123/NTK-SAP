# This contains the sample script of running NTK-SAP

args=(
    --dataset cifar10 \
    --model vgg16-bn \
    --model-class lottery \
    --optimizer sgd \
    --train-batch-size 128 \
    --lr 0.1 \
    --lr-drops 80 120 \
    --weight-decay 1e-4 \
    # --pre-epochs 160 \
    --post-epochs 160 \
    --pruner NTKSAP \
    --prune-epochs 20 \
    --experiment singleshot \
    --expid NTKSAP-vgg16bn \
    --level-list 1 \
    --compression 256 \
    --prune-train-mode True \
    --ntksap_R 5 \
)

python3 main.py "${args[@]}"