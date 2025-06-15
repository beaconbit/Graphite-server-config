#!/bin/bash

for dir in */; do
  if [[ -d "$dir/EN" && -d "$dir/site" ]]; then
    mv "$dir/EN" "$dir/site/"
  fi
done

