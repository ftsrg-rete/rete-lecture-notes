#!/bin/bash

pandoc $1.md \
  --from=markdown_github+yaml_metadata_block \
  --output=$1.html \
  --css=pandoc.css \
  --standalone \
  --variable=numbersections
