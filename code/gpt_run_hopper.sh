
#####################################################
for seed in 666 42 1024;
do
CUDA_LAUNCH_BLOCKING=1 CUDA_VISIBLE_DEVICES=0 python3 experiment.py --env hopper --dataset medium --model_type dt -w --seed $seed --pretrained_lm gpt2  --outdir "checkpoints/gpt22_kmeans_medium_positions_hopper_$seed" --extend_positions --gpt_kmeans 1000 --kmeans_cache "kmeans_cache/gpt2_1000.pt" --gpt_kmeans_const 0.1 --dropout 0.2 --share_input_output_proj &
done

wait
