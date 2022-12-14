#!/bin/bash

pandoc $1.md \
  --from=markdown_github+yaml_metadata_block+link_attributes \
  --output=$1.pdf \
  --template=template.latex \
  --variable=documentclass:scrartcl \
  --variable=pagenumbering \
  --variable=numbersections \
  --variable=graphics \
  --variable=colorlinks
