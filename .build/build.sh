#!/bin/bash

# Run docker image to build the themes.
docker run -e PATTERN=iterm -v $PWD/output/:/src/output daylerees/rainglow:latest

# Kill old themes.
rm -rf ../themes/*

# Move themes to the root.
cp -R output/iterm/* ../themes/

# Delete temp themes.
rm -rf output