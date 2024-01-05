import sys
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM
import torch
from tqdm import tqdm
import os


DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print("Device:", DEVICE)


def get_file_len(filename):
    file_len = len(open(filename, encoding="utf-8").readlines())
    return file_len


def main(input_filepath, model_identifier, hf_token_filepath):
    input_file_dir, input_filename = os.path.split(input_filepath)

    hf_token = open(hf_token_filepath, encoding="utf-8").read().strip()
    tokenizer = AutoTokenizer.from_pretrained(
        model_identifier, use_auth_token=hf_token
    )
    model = AutoModelForSeq2SeqLM.from_pretrained(
        model_identifier, use_auth_token=hf_token
    )
    model.to(DEVICE)
    model_max_len = tokenizer.model_max_length

    with open(input_filepath, encoding="utf-8") as in_f, open(
        f"{input_file_dir}/out.tsv", "w", encoding="utf-8"
    ) as out_f:
        input_file_len = get_file_len(input_filepath)
        for line in tqdm(in_f, total=input_file_len, desc="File progress"):
            source_str = line.strip()

            source_tokens = (
                tokenizer(
                    [source_str],
                    return_tensors="pt",
                    max_length=model_max_len,
                    truncation=True,
                    return_overflowing_tokens=True,
                    padding="max_length",
                )
                .to(DEVICE)
                .input_ids
            )

            # To join several chunks correctly, the chunk separator is inferred based on the first character of the first token of each chunk. For details, T5 tokenizer docs should be referenced
            sep_map = [
                " "
                if tokenizer.convert_ids_to_tokens(chunk[0].item())[0] == "▁"
                else ""
                for chunk in source_tokens[1:]
            ] + [""]

            pred_raw = model.generate(
                source_tokens,
                max_new_tokens=model_max_len
            )
            pred_str_chunks = tokenizer.batch_decode(
                pred_raw,
                skip_special_tokens=True
            )
            pred_str = "".join(
                [chunk + sep for chunk, sep in zip(pred_str_chunks, sep_map)]
            )

            tqdm.write(pred_str + "\n")
            out_f.write(pred_str + "\n")


if __name__ == "__main__":
    input_filepath = sys.argv[1]
    model_identifier = sys.argv[2]
    hf_token_filepath = sys.argv[3]
    main(input_filepath, model_identifier, hf_token_filepath)

# CUDA_VISIBLE_DEVICES=0 python run.py ../../datasets/neural_models/ws-wl-aligned/in.tsv pl-diachronic-normalizer/plt5-large-normalizer ../../../.hf_token.txt
