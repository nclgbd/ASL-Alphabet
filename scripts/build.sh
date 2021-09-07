#!/bin/bash --login

mkdir -p /workdir/media/ /workdir/incorrect_images/ /workdir/saved_models/

# get zip file from google doc
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1QZj_E8ixxh4n2Bv4AcSCcFayNejeBQV0' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1QZj_E8ixxh4n2Bv4AcSCcFayNejeBQV0" -O temp_data.zip && rm -rf /tmp/cookies.txt
zip -FFv /workdir/temp_data.zip --out /workdir/data.zip
unzip -f /workdir/data.zip
rm -f /workdir/data.zip
