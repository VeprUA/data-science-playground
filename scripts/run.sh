#!/bin/bash

notebook_dir="$(pwd)/notebooks"

docker run -i -t -p 8888:8888 \
-v "$notebook_dir":/opt/notebooks \
continuumio/anaconda3 /bin/bash \
-c "/opt/conda/bin/jupyter notebook \
--notebook-dir=/opt/notebooks --ip='*' --port=8888 \
--no-browser --allow-root"