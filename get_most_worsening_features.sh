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

echo "GETTING MOST WORSENING FEATURES"
echo "Comparison direction in the commands: '[NEURAL-MODELS] --most-worsening-features [TRANSDUCERS]'"
echo "---------------------"

echo "Dataset: ws-wl-aligned"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_path/expected.tsv | head -n 10
echo "---------------------"

echo "Dataset: ws-wl-aligned-pruned"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_pruned_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_pruned_path/expected.tsv | head -n 10
echo "---------------------"

echo "Dataset: ws-wl-aligned-hard"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_hard_path/in.tsv \
  -o $neural_models_ws_wl_aligned_hard_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_path/out.tsv \
  -e $neural_models_ws_wl_aligned_hard_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_hard_path/in.tsv \
  -o $neural_models_ws_wl_aligned_hard_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_path/out.tsv \
  -e $neural_models_ws_wl_aligned_hard_path/expected.tsv | head -n 10
echo "---------------------"

echo "Dataset: ws-wl-aligned-hard-pruned"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_hard_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_hard_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_hard_pruned_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_hard_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_hard_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_hard_pruned_path/expected.tsv | head -n 10

echo "Dataset: ws-wl-aligned-transduced"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_transduced_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_transduced_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_path/expected.tsv | head -n 10
echo "---------------------"

echo "Dataset: ws-wl-aligned-transduced-pruned"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_transduced_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_pruned_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_transduced_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_pruned_path/expected.tsv | head -n 10
echo "---------------------"

echo "Dataset: ws-wl-aligned-transduced-hard"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_transduced_hard_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_hard_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_hard_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_transduced_hard_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_hard_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_hard_path/expected.tsv | head -n 10
echo "---------------------"

echo "Dataset: ws-wl-aligned-transduced-hard-pruned"
echo "Charmatch:"
./geval --metric CharMatch \
  -i $neural_models_ws_wl_aligned_transduced_hard_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_hard_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_hard_pruned_path/expected.tsv | head -n 10
echo "WER:"
./geval --metric WER \
  -i $neural_models_ws_wl_aligned_transduced_hard_pruned_path/in.tsv \
  -o $neural_models_ws_wl_aligned_transduced_hard_pruned_path/out.tsv \
  --most-worsening-features $transducers_ws_wl_aligned_hard_pruned_path/out.tsv \
  -e $neural_models_ws_wl_aligned_transduced_hard_pruned_path/expected.tsv | head -n 10

