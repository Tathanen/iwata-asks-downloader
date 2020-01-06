#!/bin/bash

cd _html
find ./ -maxdepth 1 -iname "*.html" -type f -exec sh -c 'pandoc "${0}" --toc --toc-depth=1 --metadata-file=meta/metadata.yaml --css=css/epub.css -o "../_epub/${0%.html}.epub"' {} \;
cd ..