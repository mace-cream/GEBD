CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=2 PC_train.py \
--dataset kinetics_multiframes \
--train-split train \
--val-split valnew \
--num-classes 2 \
--batch-size 32 \
--n-sample-classes 2 \
--n-samples 16 \
--lr 0.01 \
--warmup-epochs 0 \
--epochs 30 \
--decay-epochs 10 \
--model multiframes_resnet \
--pin-memory \
--balance-batch \
--sync-bn \
--amp \
--native-amp \
--eval-metric loss \
--log-interval 50 