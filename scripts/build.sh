#!/bin/bash --login

mkdir -p /workdir/media/ /workdir/incorrect_images/ /workdir/saved_models/
dvc get https://github.com/nclgbd/ASL-Alphabet.git data.zip
unzip data.zip
