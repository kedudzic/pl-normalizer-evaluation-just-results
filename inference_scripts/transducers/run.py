import sys
import os
import subprocess
from tqdm import tqdm


def get_file_len(filename):
    file_len = len(open(filename, encoding="utf-8").readlines())
    return file_len


def run_java_normalizer(input_text):
    # Modify the path to the .jar accordingly (see: https://git.wmi.amu.edu.pl/filipg/lucene-transducers/src/branch/master/README.md)
    jar_path = "/path/to/lucene-transducers/target/lucene-transducers-0.26.jar"

    command = "java"
    classpath = "-cp"
    main_class = "pl.odkrywka.lucene.PolishDiachronicNormalizer"
    args = [command, classpath, jar_path, main_class]

    process = subprocess.Popen(
        args,
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    output, error = process.communicate(input=input_text)

    if process.returncode != 0:
        raise Exception(error)

    return output


def main(input_filepath):
    input_file_dir, input_filename = os.path.split(input_filepath)

    with open(input_filepath, encoding="utf-8") as in_f, open(
        f"{input_file_dir}/out.tsv", "w", encoding="utf-8"
    ) as out_f:
        input_file_len = get_file_len(input_filepath)
        for line in tqdm(in_f, total=input_file_len, desc="File progress"):
            source = line.strip()
            pred = run_java_normalizer(source)
            tqdm.write(pred)
            out_f.write(pred)


if __name__ == "__main__":
    input_filepath = sys.argv[1]
    main(input_filepath)

# python run.py ../../datasets/transducers/ws-wl-aligned/in.tsv
