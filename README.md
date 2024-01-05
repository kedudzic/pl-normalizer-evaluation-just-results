# pl-normalizer-evaluation

## evaluation results (based on ./evaluate.sh output)
| Method    | Dataset                   | Path                                              | CER    | CharMatch | WAR    | WER    |
| ------------- | ------------------------- | ------------------------------------------------- | ------ | --------- | ------ | ------ |
| Transducers   | ws-wl-aligned             | datasets/transducers/ws-wl-aligned/               | 0.0164 | 0.1641    | 0.9534 | 0.0466 |
| Transducers   | ws-wl-aligned-pruned      | datasets/transducers/ws-wl-aligned-pruned/        | 0.0319 | 0.1845    | 0.9173 | 0.0827 |
| Transducers   | ws-wl-aligned-hard        | datasets/transducers/ws-wl-aligned-hard/          | 0.0182 | 0.1853    | 0.9440 | 0.0560 |
| Transducers   | ws-wl-aligned-hard-pruned | datasets/transducers/ws-wl-aligned-hard-pruned/   | 0.0281 | 0.2004    | 0.9156 | 0.0844 |
| Neural  | ws-wl-aligned             | datasets/neural_models/ws-wl-aligned/             | 0.0488 | 0.1436    | 0.9346 | 0.0654 |
| Neural  | ws-wl-aligned-pruned      | datasets/neural_models/ws-wl-aligned-pruned/      | 0.0728 | 0.2051    | 0.8989 | 0.1011 |
| Neural  | ws-wl-aligned-hard        | datasets/neural_models/ws-wl-aligned-hard/        | 0.0632 | 0.1046    | 0.9068 | 0.0932 |
| Neural  | ws-wl-aligned-hard-pruned | datasets/neural_models/ws-wl-aligned-hard-pruned/ | 0.0398 | 0.3231    | 0.9263 | 0.0737 |
| Neural | ws-wl-aligned-transduced             | datasets/neural_models/ws-wl-aligned-transduced/             | 0.0601 | 0.1146    | 0.9190 | 0.0810 |
| Neural | ws-wl-aligned-transduced-pruned      | datasets/neural_models/ws-wl-aligned-transduced-pruned/      | 0.0622 | 0.2368    | 0.9076 | 0.0924 |
| Neural | ws-wl-aligned-transduced-hard        | datasets/neural_models/ws-wl-aligned-transduced-hard/        | 0.0520 | 0.1328    | 0.9172 | 0.0828 |
| Neural | ws-wl-aligned-transduced-hard-pruned | datasets/neural_models/ws-wl-aligned-transduced-hard-pruned/ | 0.0471 | 0.2750    | 0.9191 | 0.0810 |

