#!/bin/bash

pandoc $1.md \
  --from=markdown_github+yaml_metadata_block \
  --output=$1.tex \
  --template=template.latex \
  --variable=documentclass:scrartcl \
  --variable=pagenumbering \
  --variable=numbersections \
  --variable=graphics \
  --variable=colorlinks
