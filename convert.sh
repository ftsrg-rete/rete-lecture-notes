#!/bin/bash

cd docs
for doc in *.md; do
  filename="${doc%.*}"
  echo Compiling $filename
  ../compile-html.sh $filename
  ../compile-latex.sh $filename
  ../compile-pdf.sh $filename
done
cd ..
