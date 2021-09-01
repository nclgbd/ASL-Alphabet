#!/bin/bash --login

mkdir -p /workdir/media/ /workdir/incorrect_images/ /workdir/saved_models/
dvc get # https://github.com/iterative/dataset-registry tutorials/versioning/data.zip
unzip data.zip
