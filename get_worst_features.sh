#! /usr/bin/bash

transducers_ws_wl_aligned_path="datasets/transducers/ws-wl-aligned/"
transducers_ws_wl_aligned_pruned_path="datasets/transducers/ws-wl-aligned-pruned/"
transducers_ws_wl_aligned_hard_path="datasets/transducers/ws-wl-aligned-hard/"
transducers_ws_wl_aligned_hard_pruned_path="datasets/transducers/ws-wl-aligned-hard-pruned/"

neural_models_ws_wl_aligned_path="datasets/neural_models/ws-wl-aligned/"
neural_models_ws_wl_aligned_pruned_path="datasets/neural_models/ws-wl-aligned-pruned/"
neural_models_ws_wl_aligned_hard_path="datasets/neural_models/ws-wl-aligned-hard/"
neural_models_ws_wl_aligned_hard_pruned_path="datasets/neural_models/ws-wl-aligned-hard-pruned/"

neural_models_ws_wl_aligned_transduced_path="datasets/neural_models/ws-wl-aligned-transduced/"
neural_models_ws_wl_aligned_transduced_pruned_path="datasets/neural_models/ws-wl-aligned-transduced-pruned/"
neural_models_ws_wl_aligned_transduced_hard_path="datasets/neural_models/ws-wl-aligned-transduced-hard/"
neural_models_ws_wl_aligned_transduced_hard_pruned_path="datasets/neural_models/ws-wl-aligned-transduced-hard-pruned/"

echo "GETTING WORST FEATURES"
echo "---------------------"

echo "TRANSDUCERS"
echo "---------------------"
echo "Dataset: ws-wl-aligned"
echo "Path:    $transducers_ws_wl_aligned_path"
echo "WER:"
./geval --test-name $transducers_ws_wl_aligned_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $transducers_ws_wl_aligned_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-pruned"
echo "Path:    $transducers_ws_wl_aligned_pruned_path"
echo "WER:"
./geval --test-name $transducers_ws_wl_aligned_pruned_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $transducers_ws_wl_aligned_pruned_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-hard"
echo "Path:    $transducers_ws_wl_aligned_hard_path"
echo "WER:"
./geval --test-name $transducers_ws_wl_aligned_hard_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $transducers_ws_wl_aligned_hard_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-hard-pruned"
echo "Path:    $transducers_ws_wl_aligned_hard_pruned_path"
echo "WER:"
./geval --test-name $transducers_ws_wl_aligned_hard_pruned path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $transducers_ws_wl_aligned_hard_pruned_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"

echo "NEURAL MODELS"
echo "Dataset: ws-wl-aligned"
echo "Path:    $neural_models_ws_wl_aligned_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-pruned"
echo "Path:    $neural_models_ws_wl_aligned_pruned_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_pruned_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_pruned_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-hard"
echo "Path:    $neural_models_ws_wl_aligned_hard_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_hard_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_hard_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-hard-pruned"
echo "Path:    $neural_models_ws_wl_aligned_hard_pruned_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_hard_pruned_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_hard_pruned_path --alt-metric CharMatch --worst-features | head -n 10
echo "Dataset: ws-wl-aligned-transduced"
echo "Path:    $neural_models_ws_wl_aligned_transduced_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-transduced-pruned"
echo "Path:    $neural_models_ws_wl_aligned_transduced_pruned_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_pruned_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_pruned_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-transduced-hard"
echo "Path:    $neural_models_ws_wl_aligned_transduced_hard_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_hard_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_hard_path --alt-metric CharMatch --worst-features | head -n 10
echo "---------------------"
echo "Dataset: ws-wl-aligned-transduced-hard-pruned"
echo "Path:    $neural_models_ws_wl_aligned_transduced_hard_pruned_path"
echo "WER:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_hard_pruned_path --alt-metric WER --worst-features | head -n 10
echo "CharMatch:"
./geval --test-name $neural_models_ws_wl_aligned_transduced_hard_pruned_path --alt-metric CharMatch --worst-features | head -n 10

